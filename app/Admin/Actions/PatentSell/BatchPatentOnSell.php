<?php

namespace App\Admin\Actions\PatentSell;

use App\MemberUser;
use App\Admin\Actions\BatchAction;
use App\PatentSell;
use App\Services\Members\PatentServer;
use Illuminate\Database\Eloquent\Collection;

/**
 * Class BatchSell
 * @package App\Admin\Actions\Patent
 */
class BatchPatentOnSell extends BatchAction
{
    public $name = '批量上架';

    public function authorize(MemberUser $user, Collection $collection)
    {
        foreach ($collection as $model) {
            if ($user->id != $model->user_id || !($model instanceof PatentSell)) {
                return false;
            }
        }
        return true;
    }

    public function handle(Collection $collection)
    {
        foreach ($collection as $model) {
            if ($model->sale_state == 6 || $model->sale_state === 0 || $model->sale_state === "0") {
                $model->sale_state = 1;
                $model->save();
            }
        }
        return $this->response()->swal()->success('批量上架成功')->refresh();
    }
//    public function form()
//    {
//        $this->text('tt');
//    }

    public function rename()
    {
        return '<span class="btn btn-sm btn-success" style="margin-right:10px;"><i class="fa fa-paper-plane-o"></i>&nbsp;' . $this->name() . '</span>';
    }


}
