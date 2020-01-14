<?php

namespace App\Admin\Actions\Patent;

use App\Member;
use App\Services\MemberServer;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Collection;
use App\Admin\Actions\BatchAction;
class BatchMonitor extends BatchAction
{
    public function handle(Collection $collection)
    {
        $memberServer = new MemberServer();
        $user = $memberServer->getUser();
        foreach ($collection as $model) {
            if($model->user_id == $user->id && $model->monitor_state == 0){
                $model->monitor_state = 1;
                if(Carbon::parse($model->monitor_end_date)->lt($user->monitor_end_date)){
                    $model->monitor_end_date = $user->monitor_end_date;
                }
                $model->save();
            }
        }

        return $this->response()->success('加入监控成功')->refresh();
    }

    public function rename()
    {
        return '<span class="btn btn-sm d_jiankong" style="margin-right:10px;">加入年费监控</span>';
    }
}