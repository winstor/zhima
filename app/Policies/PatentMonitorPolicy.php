<?php

namespace App\Policies;

use App\MemberUser;
use App\PatentMonitor;
use Illuminate\Auth\Access\HandlesAuthorization;

class PatentMonitorPolicy
{
    use HandlesAuthorization;

    public function show(MemberUser $user, PatentMonitor $patentMonitor)
    {
        return $user->id == $patentMonitor->user_id;
    }

    public function edit(MemberUser $user, PatentMonitor $patentMonitor)
    {
        return $user->id == $patentMonitor->user_id;
    }
    /**
     * Determine whether the user can update the patent monitor.
     *
     * @param  \App\MemberUser  $user
     * @param  \App\PatentMonitor  $patentMonitor
     * @return mixed
     */
    public function update(MemberUser $user, PatentMonitor $patentMonitor)
    {
        return $user->id == $patentMonitor->user_id;
    }

    /**
     * Determine whether the user can delete the patent monitor.
     *
     * @param  \App\MemberUser  $user
     * @param  \App\PatentMonitor  $patentMonitor
     * @return mixed
     */
    public function delete(MemberUser $user, PatentMonitor $patentMonitor)
    {
        return $user->id == $patentMonitor->user_id;
    }

    /**
     * Determine whether the user can restore the patent monitor.
     *
     * @param  \App\MemberUser  $user
     * @param  \App\PatentMonitor  $patentMonitor
     * @return mixed
     */
    public function restore(MemberUser $user, PatentMonitor $patentMonitor)
    {
        return $user->id == $patentMonitor->user_id;
    }

    /**
     * Determine whether the user can permanently delete the patent monitor.
     *
     * @param  \App\MemberUser  $user
     * @param  \App\PatentMonitor  $patentMonitor
     * @return mixed
     */
    public function forceDelete(MemberUser $user, PatentMonitor $patentMonitor)
    {
        return $user->id == $patentMonitor->user_id;
    }
}
