<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="robots" content="noindex,nofollow">
    <link href="/css/login.css" type="text/css" rel="stylesheet" />
    <title>会员登录-郑州芝麻知识产权-专利申请|专利代理|版权登记|技术转移|高新技术企业郑州芝麻知识产权</title><meta name="Keywords" content="专利申请,专利代理,信息检索,专利预警分析,专利无效诉讼,高价值专利培育挖掘,版权登记,高新技术企业申报,技术转移,知识产权服务"><meta name="Description" content="郑州芝麻知识产权代理事务所专注于知识产权领域，包括专利、商标、版权、科技项目申报、专利信息检索、专利预警分析、专利无效诉讼等各类知识产权服务.">
    <script src="/js/jquery-1.9.1.min.js"></script>
</head>
<style>
    .has-error span{
        color: #dd4b39;
        float: left;
    }
</style>
<body>
<div class="main dl">
    <div class="mainbody">
        <div class="top">
            <div class="l"><img src="/images/logo.jpg" /></div>
            <div class="r"><span>0371-63302335</span></div>
        </div>
        <div class="cnt">
            <div class="r">
                <div class="r1">
                    登录交易平台
                </div>
                <form method="post" action="{{ admin_url('auth/login') }}">
                    <div class="r2 {!! !$errors->has('username') ?: 'has-error' !!}" >
                        @if($errors->has('username'))
                            @foreach($errors->get('username') as $message)
                                <span>{{$message}}</span><br>
                            @endforeach
                        @endif
                        <label>
                            <img src="/images/rens1.png" />
                            <input id="username" name="username" value="{{ old('username') }}" type="text" autofocus="autofocus" maxlength="30" placeholder="请输入用户名" autocomplete="off"/>
                        </label>
                    </div>
                    <div class="r2 {!! !$errors->has('password') ?: 'has-error' !!}" >
                        @if($errors->has('password'))
                            @foreach($errors->get('password') as $message)
                                <span>{{$message}}</span><br>
                            @endforeach
                        @endif
                        <label>
                            <img src="/images/rens2.png" />
                            <input id="password" name="password" type="password" maxlength="30" autofocus="autofocus" placeholder="请输入密码" autocomplete="off"/>
                        </label>
                    </div>
                    <input type="hidden" name="_token" value="{{ csrf_token() }}">
                    <div class="r4">
                        <a href="/" class="r41">忘记密码？</a>
                        <a href="{{route('members.register')}}"class="r42">免费注册></a>
                    </div>
                    <div class="r5">
                        <input id="Submit1" type="submit"  class="button" value="登录" />
                    </div>
                </form>
            </div>
        </div>
        <div class="btn">
            <p>
                <a href="/">网站首页</a> <a href="/about">公司简介</a> <a href="/supply/tejia">特价专利</a>
                <a href="/supply">专利超市</a> <a href="/news">企业新闻</a> <a href="/teams">专家团队</a> <a
                        href="/contact">联系我们</a>
            </p>
            <p>
                Copyright © 2019-2022 芝麻知识产权 版权所有 地址：郑州市高新区长椿路与梧桐街交叉口河南省国家大学科技园孵化1号楼3A16</p>
        </div>
    </div>
</div>
</body>
</html>
