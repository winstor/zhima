<?php

Route::get('/', 'HomeController@index');
Route::resource('patent-notices','PatentNoticeController');

Route::get('register', 'AuthController@register')->name('members.register');
Route::post('register', 'AuthController@postRegister')->name('members.register');

//我的专利
Route::resource('patents','PatentController');

Route::resource('electron-accounts', 'ElectronUserController');
