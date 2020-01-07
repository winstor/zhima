<?php

namespace App\Members\Controllers;

use App\Admin\Actions\Post\ImportPost;
use App\Admin\Extensions\Import\ImportPatentNotice;
use App\PatentNotice;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class PatentNoticeController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'App\PatentNotice';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new PatentNotice());

        $grid->column('id', __('Id'));
        $grid->column('user_id', __('User id'));
        $grid->column('patent_id', __('Patent id'));
        $grid->column('notice_name', __('Notice name'));
        $grid->column('notice_serial', __('Notice serial'));
        $grid->column('notice_type', __('Notice type'));
        $grid->column('notice_date', __('Notice date'));
        $grid->column('pay_deadline_date', __('Pay deadline date'));
        $grid->column('handle_state', __('Handle state'));
        $grid->column('postcode', __('Postcode'));
        $grid->column('address_info', __('Address info'));
        $grid->column('receiver_name', __('Receiver name'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));
        $grid->tools(function(Grid\Tools $tools){
            $tools->append(new ImportPost());
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
        $show = new Show(PatentNotice::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', __('User id'));
        $show->field('patent_id', __('Patent id'));
        $show->field('notice_name', __('Notice name'));
        $show->field('notice_serial', __('Notice serial'));
        $show->field('notice_type', __('Notice type'));
        $show->field('notice_date', __('Notice date'));
        $show->field('pay_deadline_date', __('Pay deadline date'));
        $show->field('handle_state', __('Handle state'));
        $show->field('postcode', __('Postcode'));
        $show->field('address_info', __('Address info'));
        $show->field('receiver_name', __('Receiver name'));
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
        $form = new Form(new PatentNotice());

        $form->number('user_id', __('User id'));
        $form->number('patent_id', __('Patent id'));
        $form->text('notice_name', __('Notice name'));
        $form->text('notice_serial', __('Notice serial'));
        $form->text('notice_type', __('Notice type'));
        $form->datetime('notice_date', __('Notice date'))->default(date('Y-m-d H:i:s'));
        $form->datetime('pay_deadline_date', __('Pay deadline date'))->default(date('Y-m-d H:i:s'));
        $form->switch('handle_state', __('Handle state'));
        $form->text('postcode', __('Postcode'));
        $form->text('address_info', __('Address info'));
        $form->text('receiver_name', __('Receiver name'));

        return $form;
    }
}
