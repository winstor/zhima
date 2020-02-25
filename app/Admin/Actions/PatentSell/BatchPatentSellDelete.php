<?php

namespace App\Admin\Actions\PatentSell;

use App\MemberUser;
use App\PatentSell;
use App\Admin\Actions\BatchAction;
use Illuminate\Database\Eloquent\Collection;

class BatchPatentSellDelete extends BatchAction
{
    public $name = '批量删除';
    public function authorize(MemberUser $user, Collection $collection)
    {
        foreach ($collection as $model) {
            if($user->id != $model->user_id || !($model instanceof PatentSell)){
                return false;
            }
        }
        return true;
    }

    public function handle(Collection $collection)
    {
        $collection->each->forceDelete();
        return $this->response()->swal()->success('删除成功')->refresh();
    }

    public function rename()
    {
        return <<<HTML
<span class="btn btn-sm btn-danger"><i class="fa fa-trash"></i>&nbsp;{$this->name}</span>
HTML;
    }

    public function dialog()
    {
        $this->confirm('您确定删除吗？');
    }

}
