<?php

namespace App\Admin\Controllers;

use App\PatentSale;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class PatentSaleController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'App\PatentSale';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new PatentSale());

        $grid->column('id', __('Id'));
        $grid->column('user_id', __('User id'));
        $grid->column('patent_sn', __('Patent sn'));
        $grid->column('patent_name', __('Patent name'));
        $grid->column('patent_person', __('Patent person'));
        $grid->column('patent_domain_id', __('Patent domain id'));
        $grid->column('patent_type_id', __('Patent type id'));
        $grid->column('patent_state_id', __('Patent state id'));
        $grid->column('cert_state_id', __('Cert state id'));
        $grid->column('apply_date', __('Apply date'));
        $grid->column('image', __('Image'));
        $grid->column('price', __('Price'));
        $grid->column('state', __('State'));
        $grid->column('reserve_number', __('Reserve number'));
        $grid->column('reserve_state', __('Reserve state'));
        $grid->column('remark', __('Remark'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

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
        $show = new Show(PatentSale::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', __('User id'));
        $show->field('patent_sn', __('Patent sn'));
        $show->field('patent_name', __('Patent name'));
        $show->field('patent_person', __('Patent person'));
        $show->field('patent_domain_id', __('Patent domain id'));
        $show->field('patent_type_id', __('Patent type id'));
        $show->field('patent_state_id', __('Patent state id'));
        $show->field('cert_state_id', __('Cert state id'));
        $show->field('apply_date', __('Apply date'));
        $show->field('image', __('Image'));
        $show->field('price', __('Price'));
        $show->field('state', __('State'));
        $show->field('reserve_number', __('Reserve number'));
        $show->field('reserve_state', __('Reserve state'));
        $show->field('remark', __('Remark'));
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
        $form = new Form(new PatentSale());

        $form->number('user_id', __('User id'));
        $form->text('patent_sn', __('Patent sn'));
        $form->text('patent_name', __('Patent name'));
        $form->text('patent_person', __('Patent person'));
        $form->number('patent_domain_id', __('Patent domain id'));
        $form->number('patent_type_id', __('Patent type id'));
        $form->number('patent_state_id', __('Patent state id'));
        $form->number('cert_state_id', __('Cert state id'));
        $form->datetime('apply_date', __('Apply date'))->default(date('Y-m-d H:i:s'));
        $form->image('image', __('Image'));
        $form->decimal('price', __('Price'))->default(0.00);
        $form->switch('state', __('State'));
        $form->number('reserve_number', __('Reserve number'));
        $form->switch('reserve_state', __('Reserve state'));
        $form->textarea('remark', __('Remark'));

        return $form;
    }
}
