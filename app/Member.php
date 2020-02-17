<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Member extends MemberUser
{
    protected $table = 'member_users';
    protected $fillable = ['username','name','email','password','mobile','qq'];

}
