<?php

Route::get('/', 'HomeController@index');
Route::resource('patent-notices','PatentNoticeController');

Route::get('register', 'MemberController@register')->name('members.register');
Route::post('register', 'MemberController@store')->name('members.register');

//我的专利
Route::resource('patents','PatentController');
