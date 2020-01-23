<?php


namespace App\Backend\Extensions\Nav;


use App\Services\MemberServer;

class Audit
{
    public function __toString()
    {
        $realServer = new MemberServer();
        $real_count = $realServer->realCount();
        return view('backend.nav.audit')->with(compact('real_count'))->render();
    }




}
