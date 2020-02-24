<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PatentSell extends Model
{
    const SELL_STATE = [1=>'待交易',2=>'已预约',3=>'已交易',6=>'已下架'];
    protected $fillable = ['user_id','patent_sn','patent_name','patent_person','apply_date','patent_domain_id',
        'patent_type_id','patent_case_id','patent_cert_id','price','remark','sale_state','is_cheap','is_best'];
    //
    public function domain()
    {
        return $this->belongsTo(PatentDomain::class,'patent_domain_id');
    }
    public function type()
    {
        return $this->belongsTo(PatentType::class,'patent_type_id');
    }

    public function case()
    {
        return $this->belongsTo(PatentCase::class,'patent_case_id');
    }
    public function cert()
    {
        return $this->belongsTo(PatentCert::class,'patent_cert_id');
    }

    public function college()
    {
        return $this->belongsTo(College::class);
    }
    public function member()
    {
        return $this->belongsTo(Member::class,'user_id');
    }
}
