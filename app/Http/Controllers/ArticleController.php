<?php

namespace App\Http\Controllers;

use App\Article;
use App\Config;
use App\Services\ArticleService;
use Illuminate\Http\Request;

class ArticleController extends Controller
{
    protected $configs;
    protected $articleService;
    public function __construct(ArticleService $articleService)
    {
        $this->articleService = $articleService;
        $this->configs['configs'] = Config::getConfig();
    }
    //公司简介
    public function about()
    {
        return view('about',[
            'lists'=>$this->articleService->getArticle(1)
        ])->with($this->configs);
    }
    //业务领域
    public function business()
    {
        return view('business',[
            'lists'=>$this->articleService->getArticle(2)
        ])->with($this->configs);
    }
    //新闻中心
    public function news()
    {
        return view('news',[])->with($this->configs);
    }
    //联系我们
    public function contact()
    {
        return view('contact',[])->with($this->configs);
    }
    public function detail($id)
    {
        $article = Article::find($id);
        if(!$article){
            return back();
        }
        $where[] = ['article_type_id',$article['article_type_id']];
        $pre_article = Article::where($where)->where('id','<',$id)->orderBy('id','desc')->first(['id','title']);
        $next_article = Article::where($where)->where('id','>',$id)->first(['id','title']);
        return view('article-detail',compact('article','pre_article','next_article'))->with($this->configs);
    }
}
