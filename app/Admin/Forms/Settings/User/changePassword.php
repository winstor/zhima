<?php


namespace App\Admin\Forms\Settings\User;

use App\MemberUser;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Widgets\Form;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class changePassword extends Form
{
    public $title = '修改密码';
    /**
     * Handle the form request.
     *
     * @param Request $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request)
    {
        //$data = $request->only(['old_password','password']);
        $user = $this->user();
        if(Hash::check($request->old_password,$user['password'])){
            $user->password =  bcrypt($request->password);
            $user->save();
            admin_toastr('修改完成');
        }else{
            admin_toastr('原密码输入错误!!','error');
        }
        return back();
    }
    /**
     * Build a form here.
     */
    public function form()
    {
        $this->password('old_password', '原密码')->required();
        $this->password('password', '新密码')->rules('confirmed|required',[
            'required'=>'新密码不能为空',
            'confirmed'=>'新密码不一致',
        ]);
        $this->password('password_confirmation', '确认新密码')->rules('required');
        $this->disableReset();
    }
    public function user()
    {
        return Admin::user();
    }
}
