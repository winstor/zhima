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




});
