<?php

namespace App\Providers;

use App\Patent;
use App\PatentMonitor;
use App\Policies\PatentMonitorPolicy;
use App\Policies\PatentPolicy;
use Illuminate\Support\Facades\Gate;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        // 'App\Model' => 'App\Policies\ModelPolicy',
        Patent::class=>PatentPolicy::class,
        PatentMonitor::class=>PatentMonitorPolicy::class,
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        //
    }
}
