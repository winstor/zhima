<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {
    ///test
    $router->get('/', 'HomeController@index');

    $router->get('register', 'AuthController@register')->name('members.register');
    $router->post('register', 'AuthController@postRegister')->name('members.register');
    $router->group(['middleware'=>['member.operation']],function(Router $router){
        //我的专利
        $router->resource('patents','PatentController')->names('members.patents');
        //专利及监控
        $router->resource('monitors','MonitorController')->names('members.monitors');

        $router->resource('patentSells', 'PatentSellController')->names('members.patentSells');
        //回收站
        $router->get('patentTrashes', 'PatentTrashController@index')->name('members.patentTrashes.index');
    });

    $router->resource('electron-accounts', 'ElectronUserController')->names('members.electron-accounts');

    $router->resource('patentSales', 'PatentSaleController')->names('members.patentSales');

    //通知书
    $router->get('notices','PatentNoticeController@index')->name('members.notices.index');
    $router->get('noticeUpload','PatentNoticeController@create')->name('members.noticeUpload');
    $router->post('noticeUpload','PatentNoticeController@store')->name('members.noticeUpload');




    $router->get('userDetail', 'MemberController@index')->name('users.index');
    $router->put('userDetail', 'MemberController@modify')->name('users.modify');
    //修改密码
    $router->get('changePassword','MemberController@changePassword')->name('users.changePassword');
    $router->post('changePassword','MemberController@putPassword')->name('users.putPassword');

    $router->get('uploadPatent','PatentController@showUpload')->name('members.uploadPatent');
    $router->post('uploadPatent','PatentController@import')->name('members.uploadPatent');
    $router->get('downloadPatent','PatentController@download')->name('members.downloadPatent');

    $router->get('realImage/{user_id}/{imageName}','MemberController@realImageShow')->name('members.realImage');

    $router->resource('auth/roles', 'RoleController')->names('admin.auth.roles');
    $router->resource('auth/users', 'RoleController')->names('admin.auth.users');
    $router->resource('auth/permissions', 'RoleController')->names('admin.auth.permissions');
    //$router->resource('auth/menu', 'RoleController')->names('admin.auth.menu');
    //$router->resource('auth/logs', 'RoleController', ['only' => ['index', 'destroy']])->names('admin.auth.logs');
});
