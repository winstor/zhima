<?php


namespace App\Http\Controllers\Api;


use App\Http\Controllers\Controller;
use App\Services\MonitorSyncApiServer;

class MonitorSyncApiController extends Controller
{
    protected $monitorSyncApiServer;
    public function __construct(MonitorSyncApiServer $monitorSyncApiServer)
    {
        $this->monitorSyncApiServer = $monitorSyncApiServer;
    }

    public function index($type)
    {
        if($type == 'get'){
            return response()->json($this->monitorSyncApiServer->getMonitors());
        }elseif($type == 'sync'){
            $res= $this->monitorSyncApiServer->syncAnnualFee(request()->all());
            return response()->json(['code'=>$res?true:false]);
        }
    }

}
