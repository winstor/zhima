<?php


namespace App\Repositories\Member;

use App\Repositories\Eloquent\Repository;

class PatentRepository extends Repository
{
    function model()
    {
        return 'App\Patent';
    }
}
