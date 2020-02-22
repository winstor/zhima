<?php

namespace App\Admin\Controllers;

use App\Admin\Actions\Patent\BatchCancelMonitor;
use App\Member;
use App\Admin\Extensions\Exporter\MonitorExporter;
use App\MemberUser;
use App\Patent;
use App\PatentCase;
use App\PatentMonitor;
use App\PatentType;
use App\Repositories\Member\PatentMonitorRepository;
use App\Services\MemberServer;
use App\Services\PatentMonitorServer;
use Carbon\Carbon;
use Encore\Admin\Admin;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class MonitorController extends AdminController
{
    protected $memberServer;
    protected $patentMonitorServer;
    public $repository;
    public function __construct(MemberServer $memberServer, PatentMonitorServer $patentMonitorServer,PatentMonitorRepository $repository)
    {
        $this->memberServer = $memberServer;
        $this->patentMonitorServer = $patentMonitorServer;
        $this->repository = $repository;
    }

    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '年费监控';


    public function index(Content $content)
    {
        return $content
            ->title($this->title())
            ->description($this->description['index'] ?? trans('admin.list'))
            //->row('<link rel="stylesheet" href="/css/d_newscss.css">')
            ->body($this->grid());
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new PatentMonitor);
        $grid->filter(function (Grid\Filter $filter) {
            $filter->disableIdFilter();
            $filter->column(1 / 3, function (Grid\Filter $filter) {
                $filter->equal('patent_type_id', '专利类型')->select(PatentType::pluck('name', 'id'));
                $filter->where(function ($query) {
                    $query->where('patent_sn', 'like', "%{$this->input}%")
                        ->orWhere('patent_name', 'like', "%{$this->input}%")
                        ->orWhere('patent_person', 'like', "%{$this->input}%");
                }, '关键字')->placeholder('专利号/专利名称/申请人/年费备注');
            });
            $filter->column(1 / 3, function (Grid\Filter $filter) {
                $filter->equal('patent_case_id', '案件类型')->select(PatentCase::pluck('name', 'id'));
                $filter->where(function ($query) {
                    $query->whereHas('payLogs', function ($query) {
                        $query->where('type', 1)->where('state', 0)->where('deadline', '>=', "{$this->input}");
                    });
                }, '缴费截止日期起')->date();
            });
            $filter->column(1 / 3, function (Grid\Filter $filter) {
                $filter->where(function ($query) {
                    $query->whereHas('payLogs', function ($query) {
                        switch ($this->input) {
                            case 0:
                                $query->where('type', 1)->where('state', 0)->where('deadline', '<=', Carbon::now()->addDays(30));
                                break;
                            case 1:
                                $query->where('type', 1)->where('state', 0)->where('deadline', '<=', Carbon::now()->addMonths(6));
                                break;
                            case 2:
                                $query->where('type', 1)->where('state', 0)->where('deadline', '<=', Carbon::now()->addYears(1));
                                break;
                        }
                    });
                }, '监控状态')->select(['30天以内', '半年以内', '一年以内']);
                $filter->where(function ($query) {
                    $query->whereHas('payLogs', function ($query) {
                        $query->where('type', 1)->where('state', 0)->where('deadline', '<=', "{$this->input}");
                    });
                }, '缴费截止日期止')->date();
            });
        });
        $user = MemberUser::user();
        $grid->model()->with(['payLogs']);
        $grid->model()->where('user_id', $user->id)->where('monitor_state','>=', 1);
        //$grid->column('id', __('序号'));
        $grid->column('type.logo', __('专利信息'))->image('/', '', 30)
            ->display(function ($logo) {
                return $logo . $this->patent_sn . '<br/>' . $this->patent_name;
            });
        $grid->column('patent_person', __('申请人'));
        $grid->column('patent_case_id', __('申请日/案件状态'))
            ->using(PatentCase::pluck('name', 'id')->toArray())->display(function ($case_name) {
                return $this->apply_date . '<br/>' . $case_name;
            });
        $grid->column('monitor_state1', __('监控状态'))->display(function ($monitor_state) {
            $state =  $this->state();
            return data_get([
                "<span class='label label-default'>未监控</span>",
                "<span class='label label-success'>年费正常</span>",
                "<span class='label label-warning'>待审核</span>",
                "<span class='label label-info'>待维护</span>",
                "<span class='label label-danger'>紧急滞纳</span>",
                "<span class='label label-default'>已过期</span>"
            ],$state,'');
        });
        $grid->column('year_fee_msg', '年费信息')->display(function () {
            $payLog = $this->payLogs ? $this->payLogs->where('state', 0)->where('type', 1)->first() : null;
            if ($payLog) {
                return '<span style="color:red">' . $payLog->deadline . '</span>前缴<br/>第<span style="color:red">' .
                    $payLog->year_number . '</span>年年费<span style="color:red">' . $payLog->amount . '</span>元';
            }
            return '';
        });
        $grid->column('other_fee', '滞纳金/恢复费')->display(function () {
            $late_fee = $this->lateFeeTotal();
            $recovery_fee = $this->recoveryFeeTotal();
            $late_fee = $late_fee ? '滞纳金<span style="color:red">' . $late_fee . '</span>元<br/>' : '';
            $recovery_fee = $recovery_fee ? '恢复费<span style="color:red">' . $recovery_fee . '</span>元' : '';
            return $late_fee . $recovery_fee;
        });
        $grid->column('monitor_end_time', __('剩余监控天数'))->display(function ($monitor_end_time) {
            if (Carbon::now()->lt($monitor_end_time)) {
                $day = Carbon::now()->diffInDays($monitor_end_time, false);
                if ($day > 30) {
                    return $day . '天';
                }
            } else {
                $day = 0;
            }
            return '<span style="color: red">' . $day . '天</span>';
        })->sortable();
        $grid->column('fee_remark', __('年费备注'))->editable('textarea');
        $grid->disableBatchActions(false);
        $grid->batchActions(function (Grid\Tools\BatchActions $batchActions) {
            $batchActions->disableDeleteAndHodeSelectAll();
        });
        $grid->tools(function (Grid\Tools $tools) {
            //$tools->append(new BatchMonitorExport());
            $tools->append(new BatchCancelMonitor());
        });
        $grid->disableExport(false);
        $grid->disableFilter(false);
        $grid->actions(function (Grid\Displayers\Actions $actions) {
            $actions->disableEdit();
            $actions->disableView();
            $actions->disableDelete();
        });
        //导出
        $grid->exporter(new MonitorExporter());
        Admin::script('$("td").css("vertical-align","middle")');
        $grid->selector(function (Grid\Tools\Selector $selector) {
            $count1 = $this->memberServer->deadlineCount(30);
            $count2 = $this->memberServer->deadlineCount(180);
            $selector->selectOne('deadline', '监控状态统计', ['30天以内(' . $count1 . ')', '半年以内(' . $count2 . ')'], function ($query, $value) {
                $where = [30, 180];
                if (isset($where[$value])) {
                    $query->whereHas('payLogs', function ($query) use ($where, $value) {
                        $query->where('type', 1)->where('state', 0)->where('deadline', '<=', Carbon::now()->addDays($where[$value]));
                    });

                }
            });
        });
        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Patent::findOrFail($id));



        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Patent());

        $form->text('patent_sn', __('Patent sn'));
        $form->text('patent_name', __('Patent name'));
        $form->text('patent_person', __('Patent person'));
        $form->datetime('apply_date', __('Apply date'))->default(date('Y-m-d H:i:s'));
        $form->number('patent_domain_id', __('Patent domain id'));
        $form->number('patent_type_id', __('Patent type id'));
        $form->number('patent_case_id', __('Patent case id'));
        $form->number('patent_cert_id', __('Patent cert id'));
        $form->number('electron_user_id', __('Electron user id'));
        $form->text('inventor', __('Inventor'));
        $form->textarea('remark', __('Remark'));
        $form->image('image', __('Image'));
        $form->decimal('price', __('Price'))->default(0.00);
        $form->switch('is_cheap', __('Is cheap'));
        $form->switch('is_best', __('Is best'));
        $form->switch('sale_state', __('Sale state'));
        $form->switch('monitor_state', __('Monitor state'));
        $form->datetime('monitor_end_time', __('Monitor end time'))->default(date('Y-m-d H:i:s'));
        $form->textarea('fee_remark', __('Fee remark'));
        $form->date('deadline');
        return $form;
    }
}
