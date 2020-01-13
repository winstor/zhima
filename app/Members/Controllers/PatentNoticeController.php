<?php

namespace App\Members\Controllers;

use App\Admin\Actions\Post\ImportPost;
use App\Admin\Extensions\Import\ImportPatentNotice;
use App\PatentNotice;
use Chumper\Zipper\Zipper;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;
use Illuminate\Support\Facades\Storage;

class PatentNoticeController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '通知书';

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
        return $show;
    }

    public function create(Content $content)
    {
        return $content
            ->title('添加专利')
            ->description('上传通知书')
            ->body($this->form());
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
//        $zipper = new Zipper();
//        $files = glob('1/GA000196188357/*');
//        $zipper->make('1/GA000196188357.zip')->add($files)->close();
//        dump($files);
//        exit;
        $form = new Form(new PatentNotice());
        $form->setTitle('请选择文件');
        $form->file('notice_file', __('文件'));
        $form->saving(function(Form $form){
            $file = request()->file('notice_file');
            dump($file->getSize());exit;
            $zipper = new Zipper();
            $zipper->make($file->getRealPath())->extractTo(storage_path('notices/file'));
        });
        return $form;
    }
}
