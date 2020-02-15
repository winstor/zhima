<?php


namespace App\Services;


use App\Patent;
use App\PatentMonitor;

class PatentMonitorServer
{
    public function monitorAuditCount()
    {
        return Patent::where('monitor_state',2)->count();
    }

}
