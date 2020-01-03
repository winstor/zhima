<?php

namespace App\Admin\Controllers;

use App\Admin\Forms\Settings;
use App\Config;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;
use Encore\Admin\Widgets\Tab;

class ConfigController extends AdminController
{

    public function index(Content $content)
    {
        return $content
            ->title('系统设置')
            ->body(Tab::forms([
                'site' => Settings\Site::class,
                'address'=>Settings\Address::class,
                'email'=>Settings\Email::class,
            ]));
    }
}
