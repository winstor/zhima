<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Storage;

class PatentType extends Model
{
    //
    protected $appends = ['logo_url'];
    public function getLogoUrlAttribute()
    {
        if(!empty($this->attributes['logo']) && Storage::disk('public')->exists($this->attributes['logo'])){
            return Storage::disk('public')->url($this->attributes['logo']);
        }
        return '';
    }
}
