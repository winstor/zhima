<?php

namespace App\Backend\Controllers;

use App\Admin\Actions\Patent\BatchMonitorAddTime;
use App\Patent;
use App\PatentCase;
use App\PatentMonitor;
use App\PatentType;
use Carbon\Carbon;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class PatentMonitorController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '监控管理';

    public function index(Content $content)
    {
        return $content
            ->title($this->title())
            ->description($this->description['index'] ?? trans('admin.list'))
            ->body($this->grid());
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $patentType = PatentType::pluck('name','id')->toArray();
        $grid = new Grid(new PatentMonitor());
        $grid->filter(function(Grid\Filter $filter){
            $filter->disableIdFilter();
            $filter->column(1/3, function (Grid\Filter $filter) {
                $filter->equal('patent_sn','专利号');
            });
            $filter->column(1/3, function (Grid\Filter $filter) {
                $filter->where(function ($query) {
                    $query->whereHas('member', function ($query) {
                        $query->where('username','like', "%{$this->input}%")
                            ->orWhere('name','like', "%{$this->input}%")
                            ->orWhere('mobile',"{$this->input}")
                            ->orWhere('email',"{$this->input}");
                    });
                }, '会员')->placeholder('会员账户/名称/电话/邮件');
            });
        });
        $grid->model()->where('monitor_state','>',0)->orderBy('id','desc');
        $grid->column('id', __('ID'));
        $grid->column('type.logo', __('专利信息'))->image('/', '', 30)
            ->display(function ($logo) {
                return $logo . $this->patent_sn . '<br/>' . $this->patent_name;
            });
        $grid->column('patent_person', __('member.patent_person'));
        $grid->column('member.name', __('用户账户'));
        $grid->column('patent_case_id', __('申请日/案件状态'))
            ->using(PatentCase::pluck('name', 'id')->toArray())->display(function ($case_name) {
                return $this->apply_date . '<br/>' . $case_name;
            });
        $grid->column('monitor_state', __('监控状态'))->display(function ($monitor_state) {
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
            $payLog = $this->yearFeeLog();
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
        $grid->column('monitor_end_time', __('监控到期时间'))->date('Y-m-d');
        $grid->disableCreateButton();
        $grid->batchActions(function(Grid\Tools\BatchActions $batchActions){
            $batchActions->disableDeleteAndHodeSelectAll();
        });
        $grid->tools(function(Grid\Tools $tools){
            //$tools->append(new BatchMonitorExport());
            $tools->append(new BatchMonitorAddTime());
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
        $show = new Show(PatentMonitor::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('patent_id', __('Patent id'));
        $show->field('patent_sn', __('Patent sn'));
        $show->field('patent_name', __('Patent name'));
        $show->field('apply_date', __('Apply date'));
        $show->field('state', __('State'));
        $show->field('monitor_date', __('Monitor date'));
        $show->field('fee_remark', __('Fee remark'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new PatentMonitor());

        $form->number('patent_id', __('Patent id'));
        $form->text('patent_sn', __('Patent sn'));
        $form->text('patent_name', __('Patent name'));
        $form->datetime('apply_date', __('Apply date'))->default(date('Y-m-d H:i:s'));
        $form->switch('state', __('State'));
        $form->datetime('monitor_date', __('Monitor date'))->default(date('Y-m-d H:i:s'));
        $form->textarea('fee_remark', __('Fee remark'));

        return $form;
    }
}
