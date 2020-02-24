<?php

namespace App\Admin\Actions\Patent;

use App\Admin\Actions\BatchAction;
use App\MemberUser;
use App\Patent;
use App\Services\MemberServer;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Collection;

class BatchDelete extends BatchAction
{
    public $name = '批量删除专利';

    public function handle(Collection $collection)
    {
        $model = $collection->first();
        $memberServer = new MemberServer();
        $user = $memberServer->getUser();
        foreach ($collection as $model) {
            if($model instanceof Patent && $model->user_id == $user->id && !$model->sale_state){
                $model->sale_state = 1;
                $model->sale_add_time = now();
                $model->save();
            }
        }
        return $this->response()->swal()->success('删除成功')->refresh();
    }

}
