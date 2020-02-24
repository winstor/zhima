<?php

namespace App\Backend\Controllers;

use App\PatentType;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Admin;
use Encore\Admin\Layout\Content;
use Encore\Admin\Controllers\AdminController;

class PatentTypeController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '专利类型';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new PatentType);

        $grid->column('id', __('ID'));
        $grid->column('name', __('专利类型'));
        $grid->column('logo', __('Logo'))->image('/',40,20);
        $grid->column('created_at', __('admin.created_at'));
        $grid->column('updated_at', __('admin.updated_at'));
        Admin::script('$("td").css("vertical-align","middle")');
        $grid->disableFilter();
        $grid->disableExport();
        $grid->disableBatchActions();
        //$grid->disableColumnSelector();
        return $grid;
    }

    public function show($id, Content $content)
    {
        return back();
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new PatentType);
        $form->text('name', __('类型名称'))->required();
        $form->image('logo', __('Logo'))->disk('public');
        $form->disableCreatingCheck(false);
        $form->saving(function(Form $form){
            $file = request()->file('logo');
            $model = $form->model();
            $model->name = $form->name;
            $model->save();
            if($file){
                $model->logo = $file->storeAs('images','patentType_'.$model->id.'.png','public');
                $model->save();
            }
            admin_toastr('保存成功','success');
            return redirect(route('patent-types.index'));
        });
        return $form;
    }
}
