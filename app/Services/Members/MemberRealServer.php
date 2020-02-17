<?php


namespace App\Services\Members;


use App\MemberReal;
use App\MemberUser;
use Illuminate\Http\Request;

class MemberRealServer
{
    //
    public function updateReal(MemberReal $memberReal,$state=0)
    {
        $member  = $memberReal->member;
        //0待审核,1审核通过，2审核未通过
        $memberReal->real_state = $state;
        $member->real->save($memberReal);
        $member->real_state = $state;
        //类型 1个人认证，2企业认证
        $member->real_type = $memberReal->real_type;
        $member->save();
    }


}
