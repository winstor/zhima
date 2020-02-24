<?php

namespace App\Policies;

use App\MemberUser;
use App\Patent;
use Illuminate\Auth\Access\HandlesAuthorization;

class PatentPolicy
{
    use HandlesAuthorization;
    public function index(MemberUser $user){
        return true;
    }
    public function update(MemberUser $user, Patent $patent)
    {
        return $user->id == $patent->user_id;
    }

    public function edit(MemberUser $user, Patent $patent)
    {
        return $user->id == $patent->user_id;
    }

    public function show(MemberUser $user, Patent $patent)
    {
        return $user->id == $patent->user_id;
    }

    public function destroy(MemberUser $user,Patent $patent)
    {
        return $user->id == $patent->user_id;
    }

}
