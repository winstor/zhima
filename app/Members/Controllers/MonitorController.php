<?php

namespace App\Members\Controllers;

use App\Patent;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class MonitorController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'App\Patent';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Patent());

        $grid->column('id', __('Id'));
        $grid->column('user_id', __('User id'));
        $grid->column('patent_sn', __('Patent sn'));
        $grid->column('patent_name', __('Patent name'));
        $grid->column('patent_person', __('Patent person'));
        $grid->column('apply_date', __('Apply date'));
        $grid->column('patent_domain_id', __('Patent domain id'));
        $grid->column('patent_type_id', __('Patent type id'));
        $grid->column('patent_case_id', __('Patent case id'));
        $grid->column('patent_cert_id', __('Patent cert id'));
        $grid->column('electron_user_id', __('Electron user id'));
        $grid->column('inventor', __('Inventor'));
        $grid->column('remark', __('Remark'));
        $grid->column('image', __('Image'));
        $grid->column('price', __('Price'));
        $grid->column('is_cheap', __('Is cheap'));
        $grid->column('is_best', __('Is best'));
        $grid->column('sale_state', __('Sale state'));
        $grid->column('monitor_state', __('Monitor state'));
        $grid->column('monitor_end_time', __('Monitor end time'));
        $grid->column('fee_remark', __('Fee remark'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));
        $grid->column('deleted_at', __('Deleted at'));

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
        $show->field('patent_sn', __('Patent sn'));
        $show->field('patent_name', __('Patent name'));
        $show->field('patent_person', __('Patent person'));
        $show->field('apply_date', __('Apply date'));
        $show->field('patent_domain_id', __('Patent domain id'));
        $show->field('patent_type_id', __('Patent type id'));
        $show->field('patent_case_id', __('Patent case id'));
        $show->field('patent_cert_id', __('Patent cert id'));
        $show->field('electron_user_id', __('Electron user id'));
        $show->field('inventor', __('Inventor'));
        $show->field('remark', __('Remark'));
        $show->field('image', __('Image'));
        $show->field('price', __('Price'));
        $show->field('is_cheap', __('Is cheap'));
        $show->field('is_best', __('Is best'));
        $show->field('sale_state', __('Sale state'));
        $show->field('monitor_state', __('Monitor state'));
        $show->field('monitor_end_time', __('Monitor end time'));
        $show->field('fee_remark', __('Fee remark'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));
        $show->field('deleted_at', __('Deleted at'));

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

        $form->number('user_id', __('User id'));
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

        return $form;
    }
}
