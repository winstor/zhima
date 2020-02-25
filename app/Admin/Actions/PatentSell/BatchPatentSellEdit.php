<?php

namespace App\Admin\Actions\PatentSell;

use App\MemberUser;
use App\PatentSell;
use App\Services\Members\PatentServer;
use Encore\Admin\Actions\BatchAction;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Http\Request;

/**
 * Class BatchSell
 * @package App\Admin\Actions\Patent
 */
class BatchPatentSellEdit extends BatchAction
{
    protected $selector = '.edit-patent-sell-posts';
    public $name = '修改交易信息';
    public function authorize(MemberUser $user, Collection $collection)
    {
        foreach ($collection as $model) {
            if($user->id != $model->user_id || !($model instanceof PatentSell)){
                return false;
            }
        }
        return true;
    }

    public function handle(Collection $collection, Request $request)
    {
        $data = $request->only(['sale_state','price','remark']);
        foreach ($collection as $model) {
            if(in_array($model->sale_state,[1,6]) ){
                if(isset($data['sale_state'])){
                    $model->sale_state = intval($data['sale_state']);
                }
                if(isset($data['price']) && is_numeric($data['price'])){
                    $model->price = (float)$data['price'];
                }
                if(isset($data['remark'])){
                    $model->remark = $data['remark'];
                }
                $model->save();
            }
        }

        return $this->response()->swal()->success('修改完成！')->refresh();
    }

    public function form()
    {
        $this->text('tips', '说明')->setView('component.patent-sell-edit-tip');
        $this->select('sale_state', '交易状态')->options(PatentSell::SELL_STATE)
        ->help('不选择状态');
        $this->integer('price','价格')->width('100%');
        $this->textarea('remark', '说明');
    }

    public function html()
    {
        return "<a class='edit-patent-sell-posts btn btn-sm' style='color:#fff;background-color:#9550D8;border-color:#9550D8'><i class='fa fa-edit'></i>&nbsp;修改交易信息</a>";
    }
    public function actionScript()
    {
        $warning = __('未选择数据!');

        return <<<SCRIPT
        var key = $.admin.grid.selected();

        if (key.length === 0) {
            $.admin.toastr.warning('{$warning}', '', {positionClass: 'toast-top-center'});
            return ;
        }

        Object.assign(data, {_key:key});
SCRIPT;
    }

}
