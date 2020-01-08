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
        sleep(30);
        exit;
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
            'username' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:member_users',
            'password' => 'required|string|min:6|confirmed',
        ]);
    }
    protected function add(array $data)
    {
        return Member::create([
            'username' => $data['username'],
            'email' => $data['email'],
            'password' => bcrypt($data['password']),
            'mobile'=>$data['mobile']??'',
            'qq'=>$data['qq']??''
        ]);
    }
}
