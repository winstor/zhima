<?php


namespace App\Services;


use App\Patent;

class GoodsServer
{
    public function model()
    {
        return app('App\Patent');
    }

    public function paginate($size=10)
    {
        return $this->model()->with(['type','cert'])->where('sale_state',1)->paginate($size);
    }
}
