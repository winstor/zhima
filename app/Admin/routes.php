<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('admin.home');
    //配置项
    $router->resource('configs', 'ConfigController');
    //热门领域
    $router->resource('patent-domains','PatentDomainController');
    //专利分类
    $router->resource('patent-categories','PatentCategoryController');
    //专利类型
    $router->resource('patent-types', 'PatentTypeController');
    //专利状态
    $router->resource('patent-states', 'PatentStateController');
    //专利管理
    $router->resource('patents', 'PatentController')->only(['index','show','destroy']);
    //高校
    $router->resource('colleges', 'CollegeController');
    //电子用户、数字证书
    $router->resource('electron-users', 'ElectronUserController')->only(['index','destroy']);
    //文章
    $router->resource('articles', 'ArticleController');








});
