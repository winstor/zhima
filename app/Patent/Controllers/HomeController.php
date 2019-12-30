<?php

namespace App\Patent\Controllers;

use App\Http\Controllers\Controller;
use App\Services\GatherService;
use Encore\Admin\Controllers\Dashboard;
use Encore\Admin\Layout\Column;
use Encore\Admin\Layout\Content;
use Encore\Admin\Layout\Row;
use Encore\Admin\Widgets\Box;

class HomeController extends Controller
{
    public function index(Content $content,GatherService $gatherService)
    {
        return $gatherService->detail();
        $box = new Box('', view('test'));
        return $content
            ->title('Dashboard')
            ->description('Description...')
            ->row($box);
    }
}
