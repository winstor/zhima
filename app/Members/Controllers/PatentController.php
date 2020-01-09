<?php

namespace App\Members\Controllers;
use App\ArticleType;
use App\Members\Extensions\Grid\PatentSelect;
use App\Patent;
use App\PatentDomain;
use App\PatentSale;
use App\PatentState;
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
        $user = \Encore\Admin\Facades\Admin::user();
        //$grid->column('id', __('ID'));
        $grid->model()->where('user_id',$user->id)->with(['type','domain','state','college','member']);
        $grid->column('type.logo_url', __('专利信息'))->image()->display(function($logo_url){
            return $logo_url.$this->patent_sn.'<br/>'.$this->patent_name;
        });
        $grid->column('patent_person', __('第一申请人'));

        $grid->column('apply_date', __('申请日/监控'))->display(function($apply_date){
            return $apply_date.'<br/>'.data_get([
                    '<span class="label label-default">未监控</span>',
                '<span class="label label-success">监控中</span>'
                ],$this->is_monitor);
        });
        $grid->column('state.name','案件状态');
        $grid->column('sale.state','价格/状态')->using(PatentSale::STATE_LABEL)->display(function($state){
            return $state.'<span class="label-danger"></span>';
        });
        $grid->disableCreateButton();
        Admin::script('$("td").css("vertical-align","middle")');

        $grid->disableFilter();
        $grid->disableExport();
        $grid->disableColumnSelector();
        $grid->tools(function(Grid\Tools $tools){
            $tools->append(new PatentSelect());
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

        $form->number('user_id', __('User id'));
        $form->number('electron_user_id', __('Electron user id'));
        $form->text('patent_sn', __('Patent sn'));
        $form->text('patent_name', __('Patent name'));
        $form->number('college_id', __('College id'));
        $form->text('patent_person', __('Patent person'));
        $form->text('inventor', __('Inventor'));
        $form->number('patent_domain_id', __('Patent domain id'));
        $form->number('patent_type_id', __('Patent type id'));
        $form->number('patent_state_id', __('Patent state id'));
        $form->number('cert_state_id', __('Cert state id'));
        $form->datetime('apply_date', __('Apply date'))->default(date('Y-m-d H:i:s'));
        $form->textarea('patent_remark', __('Patent remark'));
        $form->image('image', __('Image'));
        $form->switch('is_monitor', __('Is monitor'));
        $form->switch('monitor_state', __('Monitor state'));
        $form->datetime('monitor_date', __('Monitor date'))->default(date('Y-m-d H:i:s'));
        $form->textarea('fee_remark', __('Fee remark'));

        return $form;
    }
}
