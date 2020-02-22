<?php


namespace App\Admin\Controllers;

use App\MemberUser;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Layout\Content;
use Illuminate\Contracts\Auth\Access\Gate;
use Illuminate\Database\Eloquent\Model;

//use Illuminate\Database\Eloquent\Model;

class BaseController extends AdminController
{
    public $repository;

    public function show($id, Content $content)
    {
        return back();
    }

    public function edit($id, Content $content)
    {
        return parent::edit($id, $content); // TODO: Change the autogenerated stub
    }

    public function update($id)
    {
        return parent::update($id);
    }
}
