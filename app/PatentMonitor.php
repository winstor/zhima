<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class PatentMonitor extends Model
{
    public $table = 'patents';

    public function member()
    {
        return $this->belongsTo(Member::class,'user_id');
    }
    //缴费记录
    public function payLogs()
    {
        return $this->hasMany(PatentPayLog::class, 'patent_id');
    }

    public function type()
    {
        return $this->belongsTo(PatentType::class, 'patent_type_id');
    }

    public function case()
    {
        return $this->belongsTo(PatentCase::class, 'patent_case_id');
    }

    //监控专利滞纳金统计
    public function yearFeeLog()
    {
        if ($this->payLogs) {
            return $this->payLogs->where('type', 1)->where('state', 0)->first();
        }
        return null;
    }

    //监控专利滞纳金统计
    public function lateFeeTotal()
    {
        if ($this->payLogs) {
            return $this->payLogs->where('state', 0)->where('type', 2)->sum('amount');
        }
        return 0;
    }

    //监控专利恢复费统计
    public function recoveryFeeTotal()
    {
        if ($this->payLogs) {
            return $this->payLogs->where('state', 0)->where('type', 3)->sum('amount');
        }
        return 0;
    }

    //监控状态 0,未监控，1监控中，2待审核，3待维护，4，紧急滞纳
    public function state()
    {
        if ($this->monitor_state == 1) {
        if (Carbon::now()->gt($this->monitor_end_time)){
                //监控已过期
                return 5;
            } elseif ($this->payLogs->isEmpty()) {
                //待维护
                return 3;
            }  else {
                $res = $this->payLogs->where('type', 1)->where('state', 0)->where('deadline', '<=', Carbon::now()->addMonths(2))->count();
                if($res){
                    //紧急滞纳
                    return 4;
                }
            }
        }
        return $this->monitor_state;
    }

}
