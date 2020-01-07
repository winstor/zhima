<?php

Route::get('/', 'HomeController@index');
Route::resource('patent-notices','PatentNoticeController');
