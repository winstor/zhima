


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="robots" content="noindex,nofollow">
    <link href="/css/zhuce.css" type="text/css" rel="stylesheet" />
    <title>会员注册-郑州芝麻知识产权-专利申请|专利代理|版权登记|技术转移|高新技术企业郑州芝麻知识产权</title>
    <meta name="Keywords" content="专利申请,专利代理,信息检索,专利预警分析,专利无效诉讼,高价值专利培育挖掘,版权登记,高新技术企业申报,技术转移,知识产权服务">
    <meta name="Description" content="郑州芝麻知识产权代理事务所专注于知识产权领域，包括专利、商标、版权、科技项目申报、专利信息检索、专利预警分析、专利无效诉讼等各类知识产权服务.">
    <script src="/js/jquery-1.9.1.min.js"></script>
</head>
<body>
<input type="text" style="display: none;">
<input type="password" style="display: none;">
<div class="main dl">
    <div class="mainbody">
        <div class="cnt">
            <form class="form-horizontal" method="POST" >
                {{ csrf_field() }}
            <div class="l">
                <img src="/images/zhuce.jpg" />
            </div>
            <div class="r">
                <div class="r1">
                    登录交易平台
                </div>
                <div class="r2">
                    <label>
                        <img src="/images/rens1.png" />
                        <input id="username" name="username" type="text"  placeholder="请输入6-30位由字母与数字组成的用户名[必填]" required="required"/>
                    </label>
                </div>
                <div class="r2">
                    <label>
                        <img src="/images/rens2.png" />
                        <input id="password" name="password" type="password"  maxlength="18" autofocus="autofocus" placeholder="请输入6-18位由字母与数字组成的密码[必填]" />
                    </label>
                </div>
                <div class="r2">
                    <label>
                        <img src="/images/rens2.png" />
                        <input id="password_confirmation" type="password" name="password_confirmation"  maxlength="18" autofocus="autofocus"  placeholder="再次输入密码[必填]" />
                    </label>
                </div>
                <div class="r2">
                    <label>
                        <img src="/images/rens3.png" />
                        <input id="email" name="email" type="text" maxlength="40" autofocus="autofocus" placeholder="请输入真实邮箱，用于密码找回[必填]" />
                    </label>
                </div>
                <div class="r2">
                    <label>
                        <img src="/images/rens4.png" />
                        <input id="mobile" name="mobile" type="text"  maxlength="11" autofocus="autofocus" placeholder="请输入手机号码[必填]" />
                    </label>
                </div>
                <div class="r2">
                    <label>
                        <img src="/images/rens5.png" />
                        <input id="qq" name="qq" type="text"  maxlength="12" autofocus="autofocus" placeholder="请输入QQ号[必填]" />
                    </label>
                </div>
                <div class="r4">
                    <span>已有账号，</span><a href="/register/">返回登录></a>
                </div>
                <div class="r5">
                    <input id="submit" onclick="login()" class="button" value="注册" />
                </div>
            </div>
            </form>
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
<script>
    var count =0;
    var login = (function () {
        if(count>0){
            return false;
        }
        $.ajax({
            //请求方式
            type : "POST",
            //请求地址
            url : "{{route('members.register')}}",
            beforeSend: function () {
                // 禁用按钮防止重复提交
                count = 1;
            },
            //数据，json字符串
            data : $('form').serializeArray(),
            //请求成功
            success : function(result) {
                console.log(result);
            },
            complete: function () {
                count = 0;
            },
            //请求失败，包含具体的错误信息
            error : function(e){
                console.log(e.status);
                console.log(e.responseText);
            }
        });
    })
</script>
</body>
</html>
