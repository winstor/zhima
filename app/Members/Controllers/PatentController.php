<?php

namespace App\Members\Controllers;
use App\Good;
use App\Member;
use App\Members\Extensions\Grid\PatentSelect;
use App\Patent;
use App\PatentCase;
use App\PatentCert;
use App\PatentDomain;
use App\PatentType;
use Encore\Admin\Admin;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class PatentController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '专利';
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
        $grid = new Grid(new Patent);

        $grid->filter(function(Grid\Filter $filter){
            $filter->disableIdFilter();
            $filter->column(1/3, function (Grid\Filter $filter) {
                $filter->equal('patent_sn','专利号');
                $filter->equal('patent_type_id','专利类型')->select(PatentType::pluck('name','id'));
            });
            $filter->column(1/3, function (Grid\Filter $filter) {
                $filter->equal('is_monitor','监控状态')->select(['未监控','监控中']);
            });
            $filter->column(1/3, function (Grid\Filter $filter) {
                $filter->equal('patent_domain_id','热门领域')->select(PatentDomain::pluck('name','id'));
            });
        });
        $user = Member::user();
        //$grid->column('id', __('ID'));
        $grid->model()->where('user_id',$user->id)->with(['type','domain','college','member','case','cert','monitor']);
        $grid->column('type.logo_url', __('专利信息'))->image()->display(function($logo_url){
            return $logo_url.$this->patent_sn.'<br/>'.$this->patent_name;
        });
        $grid->column('patent_person', __('申请（人/日期）'))->display(function($patent_person){
                return $patent_person.'<br/>'.$this->apply_date->toDateString();
        });

        $grid->column('apply_date', __('申请日'));
        $grid->column('case.name','案件状态');
        $grid->column('monitor.state','监控状态')->display(function($state){
            return $state?:0;
        })->using([
            '<span class="label label-danger">未监控</span>',
            '<span class="label label-success">监控中</span>',
        ]);
        $grid->column('sale_state','售卖状态')->using(Good::SALE_STATE_LABEL);
        $grid->disableCreateButton();
        Admin::script('$("td").css("vertical-align","middle")');

        $grid->disableFilter();
        $grid->disableExport();
        $grid->disableColumnSelector();
        $grid->tools(function(Grid\Tools $tools){
            //$tools->append(new PatentSelect());
        });
        $grid->actions(function(Grid\Displayers\Actions $actions){
            $actions->disableView();
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

        $show->field('id', __('Id'));
        $show->field('user_id', __('User id'));
        $show->field('electron_user_id', __('Electron user id'));
        $show->field('patent_sn', __('Patent sn'));
        $show->field('patent_name', __('Patent name'));
        $show->field('college_id', __('College id'));
        $show->field('Patent_person', __('Patent person'));
        $show->field('inventor', __('Inventor'));
        $show->field('patent_domain_id', __('Patent domain id'));
        $show->field('patent_type_id', __('Patent type id'));
        $show->field('patent_state_id', __('Patent state id'));
        $show->field('cert_state_id', __('Cert state id'));
        $show->field('apply_date', __('Apply date'));
        $show->field('patent_remark', __('Patent remark'));
        $show->field('image', __('Image'));
        $show->field('is_monitor', __('Is monitor'));
        $show->field('monitor_state', __('Monitor state'));
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
        $form = new Form(new Patent);
        $form->hidden('uuid', __('专利号'));
        $form->text('patent_sn', __('专利号'))->required();
        $form->text('patent_name', __('专利名称'))->required();
        $form->text('patent_person', __('专利权人'))->required();
        $form->select('patent_domain_id', __('技术领域'))->options(PatentDomain::pluck('name','id'))->required();
        $form->select('patent_type_id', __('专利类型'))->options(PatentType::pluck('name','id'))->required();
        $form->select('patent_case_id', __('案件状态'))->options(PatentCase::pluck('name','id'))->required();
        $form->select('patent_cert_id', __('专利状态'))->options(PatentCert::pluck('name','id'))->required();
        $form->datetime('apply_date', __('申请日期'))->format('YYYY-MM-DD')->required();
        $form->image('image', __('专利图'));
        $form->textarea('remark', __('备注'));
        $form->hidden('user_id');
        $form->saving(function(Form $form){
            $user = Member::user();
            if($form->model()->user_id && $form->model()->user_id != $user->id){
                return back();
            }
            $form->user_id = $user->id;
        });
        return $form;
    }
}
