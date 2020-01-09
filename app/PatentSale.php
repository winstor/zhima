<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PatentSale extends Model
{
    const STATE = ['未发布','待交易','已预定','已交易','已下架'];
    const STATE_LABEL = [
        '<span class="label label-default">未发布</span>',
        '<span class="label label-danger">待交易</span>',
        '<span class="label label-info">已预定</span>',
        '<span class="label label-success">已交易</span>',
        '<span class="label label-default">已下架</span>'
    ];
    //
}
