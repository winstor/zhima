<?php

namespace App\Members\Controllers;

use App\Http\Controllers\Controller;
use App\Member;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class MemberController extends Controller
{
    public function register()
    {
        return view('register');
    }
    public function store(Request $request)
    {
        $this->validator($request->all())->validate();
        $user = $this->add($request->all());
        $this->guard()->login($user);
        return $this->registered($request, $user)
            ?: redirect($this->redirectPath());
        //return $this->form()->store();
    }
    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'username' => 'required|string|max:100|unique:member_users',
            'email' => 'required|string|email|max:255|unique:member_users',
            'mobile'=> 'required|regex:/^1[345678]\d{9}$/',
            'password' => 'required|string|min:6|confirmed',
            'password_confirmation'=>'required|same:password',
            'qq'=>'nullable|regex:/^[1-9]\d{1,11}$/',
        ],[
            'username.required'=>'请输入账号',
            'username.unique'=>'用户名已存在',
            'email.required'=>'请输入邮箱',
            'email.email'=>'请输入有效邮箱',
            'email.unique'=>'邮箱已存在',
            'password.required'=>'密码不能为空',
            'password.confirmed'=>'两次输入的密码不一致',
            'mobile.required'=>'请输入手机号码',
            'mobile.regex'=>'手机号格式不正确',
            'qq.regex'=>'请输入有效的QQ',
        ]);
    }
    protected function add(array $data)
    {
        return Member::create([
            'username' => $data['username'],
            'name'     =>$data['name']??$data['username'],
            'email' => $data['email'],
            'password' => bcrypt($data['password']),
            'mobile'=>$data['mobile']??'',
            'qq'=>$data['qq']??''
        ]);
    }
}
