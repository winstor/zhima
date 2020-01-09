<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Patent extends Model
{
    use SoftDeletes;
    protected $dates = ['apply_date'];
    const CERT_STATE = ['1'=>'审查中','2'=>'授权未交费','3'=>'已下证'];
    //
    public function domain()
    {
        return $this->belongsTo(PatentDomain::class,'patent_domain_id');
    }
    public function type()
    {
        return $this->belongsTo(PatentType::class,'patent_type_id');
    }

    public function state()
    {
        return $this->belongsTo(PatentState::class,'patent_state_id');
    }
    public function college()
    {
        return $this->belongsTo(College::class);
    }
    public function member()
    {
        return $this->belongsTo(Member::class,'user_id');
    }
    public function sale()
    {
        return $this->hasOne(PatentSale::class,'patent_id');
    }
}
