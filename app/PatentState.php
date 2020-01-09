<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PatentState extends Model
{

    public function patent()
    {
        return $this->hasMany(Patent::class);
    }
}
