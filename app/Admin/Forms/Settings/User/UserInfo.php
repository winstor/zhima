<?php


namespace App\Admin\Forms\Settings\User;


use App\MemberUser;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Widgets\Form;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class UserInfo extends Form
{
    public $title = '用户信息';
    /**
     * Handle the form request.
     *
     * @param Request $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request)
    {
        $data = $request->only(['name','mobile','email','qq']);
        $user = $this->user();
        if($user){
            $user->name = $data['name']??$user->name;
            $user->mobile = $data['mobile']??$user->mobile;
            $user->email = $data['email']??$user->email;
            $user->qq = $data['qq']??$user->qq;
            $user->save();
        }
        admin_toastr('修改成功');
        return back();
    }
    /**
     * Build a form here.
     */
    public function form()
    {
        $this->text('username','用户名')->disable();
        $this->text('name', __('姓名'))->required();
        $this->mobile('mobile', __('手机号码'))->required()->rules('regex:/^1[3456789][0-9]{9}$/',[
            'regex'=>'请输入正确的电话号码']);
        $this->email('email', __('电子邮件'))->required();
        $this->text('qq', __('QQ'));
        //$this->image('avatar',trans('admin.avatar'));
        $this->disableReset();
    }

    /**
     * The data of the form.
     *
     * @return array $data
     */
    public function data()
    {
        $user = $this->user();
        return [
            'username'=>$user->username??'',
            'name'=>$user->name??'',
            'mobile'=>$user->mobile??'',
            'email'=>$user->email??'',
            'qq'=>$user->qq??'',
            'avatar'=>$user->avatar??'',
        ];
    }
    public function user()
    {
        return Admin::user();
    }
}
