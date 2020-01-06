<?php

namespace App\Admin\Controllers;

use App\Admin\Extensions\Export\ArticleExporter;
use App\Article;
use App\ArticleType;
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
        $grid->selector(function (Grid\Tools\Selector $selector) {
            $selector->select('article_type_id', '文章类型', ArticleType::pluck('name','id'));
        });
        $grid->model()->with('type');
        $grid->column('id', __('ID'));
        $grid->column('title', __('文章标题'));
        $grid->column('type.name', __('类型'));
        $grid->column('created_at', __('admin.created_at'));
        $grid->column('updated_at', __('admin.updated_at'));
        $grid->exporter(new ArticleExporter());
        $grid->disableFilter();
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

        $form->text('title', __('标题'))->required();
        $form->select('article_type_id', __('类型'))->options(ArticleType::pluck('name','id'))->required();
        //$form->text('author', __('作者'));
        //$form->text('from', __('内容来源'));
        $form->image('logo', __('Logo'));
        //$form->textarea('desc', __('简介'));
        $form->editor('content', __('内容'));
        return $form;
    }
}
