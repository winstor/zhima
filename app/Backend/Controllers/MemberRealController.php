<?php

namespace App\Backend\Controllers;

use App\MemberReal;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;
use Illuminate\Support\Facades\Storage;

class MemberRealController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '会员认证';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new MemberReal());
        $grid->selector(function (Grid\Tools\Selector $selector) {
            $selector->select('real_state', '认证状态', ['待审核','审核通过','审核未通过']);
        });
        $grid->model()->orderBy('id','desc');
        $grid->column('id', __('ID'));
        $grid->column('member.name', __('用户名称'));
        $grid->column('member.name', __('用户名称'));
        $grid->column('real_state', __('审核状态'))->using(['待审核','审核通过','审核未通过'])
            ->label(['warning','success','default'])->sortable();
        //$grid->column('real_type', __('Real type'));
        $grid->column('created_at', __('申请时间'));
        $grid->column('updated_at', __('admin.updated_at'));
        $grid->disableFilter();
        $grid->disableCreateButton();
        $grid->disableColumnSelector();
        $grid->disableExport();
        $grid->disableBatchActions();

        $grid->actions(function (Grid\Displayers\Actions $actions) {
            // 添加操作
            $actions->disableEdit();
            $actions->disableDelete();
            if(!$actions->row['real_state']){
                $actions->disableView();
                $actions->append('<a title="认证审核" href="'.route('member-reals.edit',$actions->getKey()).'" class="grid-row-edit"><i class="fa fa-paper-plane"></i></a>');
            }

        });
        //使用旧版本
        $grid->setActionClass(Grid\Displayers\Actions::class);
        return $grid;
    }

    public function edit($id, Content $content)
    {
        $memberReal = MemberReal::find($id);
        if(!$memberReal){
            return back();
        }
        if($memberReal['real_state']){
            return $this->show($id,$content);
        }else{
            return $content
                ->title($this->title())
                ->description(' ')
                ->body($this->form()->edit($id));
        }
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $real = MemberReal::findOrFail($id);
        $show = new Show($real);
        $show->setResource(route('member-reals.index'));
        $show->panel()->title('认证信息');
        $show->field('username', __('用户账户'))->as(function($value)use($real){
            return $real->member->username??'';
        });
        $show->field('mobile', __('用户电话'))->as(function($value)use($real){
            return $real->member->mobile??'';
        });
        $show->field('id_card_front', __('身份证正面'))->unescape()->as(function($value){
            if($value){
                $data = explode('/',$value);
                return '<img height="200" src="'.route('MemberRealImages',$data,false).'" />';
            }
            return '';
        });
        $show->field('id_card_back', __('身份证反面'))->unescape()->as(function($value){
            if($value){
                $data = explode('/',$value);
                return '<img height="200" src="'.route('MemberRealImages',$data,false).'" />';
            }
            return '';
        });
        $show->field('license_picture', __('营业执照'))->unescape()->as(function($value){
            if($value){
                $data = explode('/',$value);
                return '<img height="200" src="'.route('MemberRealImages',$data,false).'" />';
            }
            return '';
        });
        $show->field('created_at', __('申请时间'));
        //"<span class='label-danger'></span>"
        $show->field('real_state', __('审核状态'))->unescape()->using([
            '<span class="label label-warning">待审核</span>',
            '<span class="label label-success">审核通过</span>',
            '<span class="label label-danger">审核未通过</span>',
            ]);
        $show->field('real_type', __('认证类型'))->unescape()->using([
            '1'=>'<span class="label label-info">个人认证</span>',
            '2'=>'<span class="label label-primary">企业认证</span>',
        ]);

        $show->field('reviewUser', __('审核人'))->as(function($reviewUser){
            return $reviewUser['name']??'';
        });
        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new MemberReal());
        $form->setTitle('审核');
        $form->display('member.username', __('会员'));
        $form->display('id_card_front', __('身份证正面'))->with(function($value){
            if($value){
                $data = explode('/',$value);
                return '<img height="200" src="'.route('MemberRealImages',$data,false).'" />';
            }
            return '';
        });
        $form->display('id_card_back', __('身份证反面'))->with(function($value){
            if($value){
                $data = explode('/',$value);
                return '<img height="200" src="'.route('MemberRealImages',$data,false).'" />';
            }
            return '';
        });
        $form->display('license_picture', __('营业执照'))->with(function($value){
            if($value){
                $data = explode('/',$value);
                return '<img height="200" src="'.route('MemberRealImages',$data,false).'" />';
            }
            return '';
        });
        //$form->switch('real_state', __('Real state'));
        $form->display('real_type', __('认证类型'))->with(function($value){
            return data_get([
                1=>'<span class="label label-info">个人认证</span>',
                2=>'<span class="label label-primary">企业认证</span>'
            ],$value);
        });
        $form->radio('real_state','认证审核')->options(['待审核','通过','不通过'])->rules('required',['required'=>'请选择审核状态'])
            ->help('不通过需在审核备注中说明原因');
        $form->textarea('review_remark','审核备注');
        $form->hidden('review_user_id');
        $form->saving(function(Form $form){
            if($form->model()->real_state){
                admin_toastr('审核完成');
                return back();
            }
            $user = Admin::user();
            $form->review_user_id = $user['id'];
        });
        $form->saved(function(Form $form){
            $member = $form->model()->member;
            $member->real_state = $form->model()->real_state;
            $member->real_type = $form->model()->real_type;
            $member->save();
        });
        return $form;
    }
    public function realImageShow($user_id,$imageName)
    {
        $path = $user_id.'/'.$imageName;
        if(!Storage::disk('member_real')->exists($path)){
            abort('404');
        }
        header('content-type:image/png;');
        echo Storage::disk('member_real')->get($path);
    }
}
