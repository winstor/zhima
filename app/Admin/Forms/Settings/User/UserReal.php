<?php


namespace App\Admin\Forms\Settings\User;


use Encore\Admin\Facades\Admin;
use Encore\Admin\Widgets\Form;
use Illuminate\Http\Request;

class UserReal extends Form
{
    public $title = '会员认证';
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
        $this->image('id_card_front', __('身份证正面'))->disk('');
        $this->image('id_card_back', __('身份证反面'));
        $this->image('license_picture', __('营业执照'));
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
            'id_card_front'=>$user->real->id_card_front??'',
            'id_card_back'=>$user->real->id_card_back??'',
            'license_picture'=>$user->real->license_picture??'',
        ];

    }
    public function user()
    {
        return Admin::user();
    }

}
