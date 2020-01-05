<?php

namespace App\Admin\Controllers;

use App\Admin\Extensions\Ueditor;
use App\Article;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ArticleController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '文章管理';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Article);

        $grid->column('id', __('ID'));
        $grid->column('title', __('文章标题'));
        $grid->column('type', __('类型'))->using(Article::TYPE);
        $grid->column('created_at', __('admin.created_at'));
        $grid->column('updated_at', __('admin.updated_at'));

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
        $show = new Show(Article::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('type', __('Type'));
        $show->field('title', __('Title'));
        $show->field('desc', __('Desc'));
        $show->field('logo', __('Logo'));
        $show->field('from', __('From'));
        $show->field('author', __('Author'));
        $show->field('content', __('Content'));
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
        $form = new Form(new Article);

        $form->select('type', __('类型'))->options(Article::TYPE);
        $form->text('title', __('标题'));
        $form->text('author', __('作者'));
        $form->text('from', __('内容来源'));
        $form->image('logo', __('Logo'));
        $form->textarea('desc', __('简介'));
        $form->editor('content', __('内容'));

        return $form;
    }
}
