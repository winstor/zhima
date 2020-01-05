<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    const TYPE=[
        'about'=>'公司简介',
        'business'=>'业务领域',
        'news'=>'公司新闻',
        'Industry'=>'行业动态',
        'knowledge'=>'知识中心',
        'case'=>'典型案例'
    ];
    //
}
