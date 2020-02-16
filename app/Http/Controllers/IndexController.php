<?php

namespace App\Http\Controllers;

use App\Config;
use App\Member;
use App\Patent;
use App\PatentCert;
use App\PatentDomain;
use App\Services\ArticleService;
use App\Services\GoodsServer;
use Encore\Admin\Facades\Admin;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class IndexController extends Controller
{
    protected $configs;
    protected $articleService;
    protected $goodsServer;
    public function __construct(ArticleService $articleService,GoodsServer $goodsServer)
    {
        $this->articleService = $articleService;
        $this->goodsServer = $goodsServer;
        $this->configs['configs'] = Config::getConfig();
    }

    //首页
    public function index()
    {
        $news = $this->articleService->getLists([3,4,5,6],3,['id','logo','title','content','updated_at'],80);
        return view('index',compact('news'))->with($this->configs);
    }

    //特价超市
    public function bargain()
    {
        return view('bargain',[])->with($this->configs);
    }
    //专利超市
    public function supply($param='')
    {
        $param = rtrim($param,'.html');
        $param = explode('-',$param);
        $filter  = [
            'domain'=>(isset($param[0])&&is_numeric($param[0]))?$param[0]:0,
            'cert'=>(isset($param[1])&&is_numeric($param[1]))?$param[1]:0,
            'saleState'=>(isset($param[2])&&is_numeric($param[2]))?$param[2]:0
        ];
        $domains = PatentDomain::pluck('name','id');
        $certs = PatentCert::pluck('name','id');
        $lists = $this->goodsServer->paginate(10);
        //Auth::guard()->user()
        $saleStates = [1=>'待交易',2=>'已预约',3=>'已交易'];
        return view('supply',compact('domains','certs','saleStates','filter','lists'))->with($this->configs);
    }


}
