<?php


namespace App\Admin\Extensions\patent;


use App\Patent;
use App\PatentCase;
use App\PatentType;
use App\Services\MemberServer;
use Carbon\Carbon;
use Encore\Admin\Grid\Tools\Selector;
use Encore\Admin\Widgets\Box;
use Illuminate\Support\Facades\DB;

class HeaderSearch
{
    public function html()
    {
        $filter = request()->all();
        $memberServer = new MemberServer();
        $user_id = $memberServer->getUserId();
        $patentCases = PatentCase::pluck('name','id');
        $patentNumber = Patent::select(DB::raw('count(*) as count,patent_case_id'))->where('user_id',$user_id)->groupBy('patent_case_id')->pluck('count','patent_case_id');
        $patentTypes = PatentType::get(['name','id']);
        $monitorStates = ['未监控','监控中'];
        $saleStates = ['未发布','待交易','已下架'];
        try {
            return view('member.patent.header-search',
                compact('patentCases', 'patentNumber', 'filter', 'patentTypes', 'monitorStates', 'saleStates'))->render();
        } catch (\Throwable $e) {
            return '';
        }
    }

    public function monitor()
    {
        $selector = new Selector();
        $selector->selectOne('patent_type_id', '专利类型', PatentType::pluck('name','id'),function($query, $value){
            $query->where('patent_type_id',$value);
        });
        $selector->selectOne('deadline', '监控状态', ['待维护','紧急滞纳','年费正常'],function($query, $value){
            if(!$value){
                $query->where('deadline',null);
            }elseif($value == 1){
                $query->where('deadline','<',Carbon::now());
            }elseif($value == 2){
                $query->where('deadline','>',Carbon::now());
            }
        });
        $selector->selectOne('last_time', '到期时间', ['30天以内','半年以内','一年以内'],function($query, $value){
            $where = [30,180,365];
            if(isset($where[$value])){
                $query->where('deadline','<=',Carbon::now()->addDays($where[$value]));
            }
        });
        $selector->selectOne('patent_case_id', '案件状态', PatentCase::pluck('name','id'),function($query, $value){
            $query->where('patent_case_id',$value);
        });
        $selector = $selector->render();
        $filter = request()->all();
        $memberServer = new MemberServer();
        $user_id = $memberServer->getUserId();
        $patentCases = PatentCase::pluck('name','id');
        $patentNumber = Patent::select(DB::raw('count(*) as count,patent_case_id'))->where('user_id',$user_id)->groupBy('patent_case_id')->pluck('count','patent_case_id');
        $patentTypes = PatentType::get(['name','id']);
        $monitorStates = ['未监控','监控中'];
        $saleStates = ['未发布','待交易','已下架'];
        try {
            return view('member.patent.monitor-header-search',
                compact('selector','patentCases', 'patentNumber', 'filter', 'patentTypes', 'monitorStates', 'saleStates'))->render();
        } catch (\Throwable $e) {
            return '';
        }
    }
    public function __toString()
    {
        return $this->html();
    }
}
