<?php


namespace App\Admin\Extensions\Grid\Actions;

use App\MemberUser;
use App\Services\MemberServer;
use Encore\Admin\Actions\Response;
use Encore\Admin\Actions\RowAction;
use Illuminate\Database\Eloquent\Model;
class Delete extends RowAction
{
    public function passesAuthorization($model = null)
    {
        if(!$model->user_id){
            return false;
        }
        $user = MemberUser::user();
        return $user && $user->id == $model->user_id;
    }

    /**
     * @return array|null|string
     */
    public function name()
    {
        return __('admin.delete');
    }

    /**
     * @param Model $model
     *
     * @return Response
     */
    public function handle(Model $model)
    {
        $trans = [
            'failed'    => trans('admin.delete_failed'),
            'succeeded' => trans('admin.delete_succeeded'),
        ];

        try {
            $user = MemberUser::user();
            if($model->user_id == $user->id){
                $model->delete();
            }else{
                abort(404);
            }

        } catch (\Exception $exception) {
            return $this->response()->error("{$trans['failed']} : {$exception->getMessage()}");
        }

        return $this->response()->success($trans['succeeded'])->refresh();
    }

    /**
     * @return void
     */
    public function dialog()
    {
        $this->question(trans('admin.delete_confirm'), '', ['confirmButtonColor' => '#d33']);
    }
}
