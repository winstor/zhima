<?php


namespace App\Members\Extensions\Grid;


use Encore\Admin\Actions\Action;
use Illuminate\Http\Request;

class PatentSelect extends Action
{
    public function html()
    {
        return view('extension.patent_select');
    }
}