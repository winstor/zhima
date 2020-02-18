<?php


namespace App\Services;


class MonitorSyncApiServer
{
    public function getMonitors()
    {
        $data = \App\PatentMonitor::where('monitor_state',1)
            ->where('monitor_end_time','>=',date('Y-m-d'))->pluck('patent_sn');
        return $data;
    }

    public function syncAnnualFee($data)
    {
        file_put_contents('111111111111111111.txt',var_export($data,true),FILE_APPEND);
        return true;
    }
}
