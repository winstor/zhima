<?php

namespace App\Admin\Actions\Patent;

use App\Admin\Actions\BatchAction;
use Illuminate\Database\Eloquent\Collection;

class BatchAddGoods extends BatchAction
{
    public $name = '批量发布交易';

    public function handle(Collection $collection)
    {
        foreach ($collection as $model) {
            // ...
        }

        return $this->response()->success('Success message...')->refresh();
    }

    public function rename()
    {
        return '<span class="btn btn-sm d_fabu" style="margin-right:10px;">加入年费监控</span>';
    }


}