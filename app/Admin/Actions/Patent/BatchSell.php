<?php

namespace App\Admin\Actions\Patent;

use App\Admin\Actions\BatchAction;
use App\MemberUser;
use App\PatentSell;
use App\Services\Members\PatentServer;
use App\Services\MemberServer;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Collection;

/**
 * Class BatchSell
 * @package App\Admin\Actions\Patent
 */
class BatchSell extends BatchAction
{
    public $name = '批量发布交易';
    public function handle(Collection $collection)
    {
        $user = MemberUser::user();
        $patentServer = new PatentServer();
        foreach ($collection as $model) {
            if($model->user_id == $user->id){
                $patentServer->addSell($model);
            }
        }
        return $this->response()->swal()->success('批量发布成功')->refresh();
    }

    public function rename()
    {
        return '<span class="btn btn-sm d_fabu" style="margin-right:10px;">'.$this->name().'</span>';
    }


}
