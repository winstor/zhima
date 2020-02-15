<?php


namespace App\Services;


use App\Member;
use App\MemberReal;
use App\MemberUser;
use Carbon\Carbon;

class MemberServer
{
    public function getUser()
    {
        return MemberUser::user();
    }
    public function getUserId()
    {
        return Member::user()->id;
    }
    public function realCount()
    {
        return MemberReal::where('real_state',0)->count();
    }
    public function deadlineCount($last_day)
    {
        return $this->getUser()->monitors()->whereHas('payLogs',function($query)use($last_day){
            $query->where('type',1)->where('state',0)->where('deadline','<=',Carbon::now()->addDays($last_day));
        })->count();
    }
}
