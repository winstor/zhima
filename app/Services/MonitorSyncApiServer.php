<?php


namespace App\Services;


class MonitorSyncApiServer
{
    public function getMonitors()
    {
        $lists = \App\PatentMonitor::where('monitor_state',1)
            ->where('monitor_end_time','>=',date('Y-m-d'))->pluck('patent_sn');
        return ['code'=>'success','total'=>$lists->count(),'data'=>$lists->toArray()];
    }

    public function syncAnnualFee($data)
    {
        file_put_contents('111111111111111111.txt',var_export($data,true),FILE_APPEND);
        return true;
    }
}
