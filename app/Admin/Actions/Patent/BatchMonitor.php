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
        $monitor_end_time = Carbon::now()->lte($user->monitor_end_time)?null:$user->monitor_end_time;
        foreach ($collection as $model) {
            if($model->user_id == $user->id &&  !$model->monitor_state){
                $model->monitor_state = $monitor_end_time?1:2;
                $model->monitor_add_time = now();
                $model->monitor_end_time = $monitor_end_time;
                $model->save();
            }
        }
        if(!$monitor_end_time){
            return $this->response()->swal()->success('加入监控成功<br/>请联系平台完成审核')->refresh();
        }else{
            return $this->response()->swal()->success('加入监控成功')->refresh();
        }

    }

    public function rename()
    {
        return '<span class="btn btn-sm d_jiankong" style="margin-right:10px;">加入年费监控</span>';
    }
}
