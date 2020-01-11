<?php


namespace App\Services;


use App\Article;

class ArticleService
{
    public function getArticle($article_type_id)
    {
        return Article::where('article_type_id',$article_type_id)->get();
    }

    public function getArticleLimit($article_type_id,$limit,$order='DESC')
    {
        return Article::where('article_type_id',$article_type_id)->take($limit)->orderBy('id',$order)->get();
    }
    public function getIndexnews($number=3,$str_limit=50)
    {
        $lists =  Article::where('article_type_id',3)->take($number)->orderBy('id','DESC')->get(['id','logo','title','content','updated_at']);
        foreach($lists as $key=>$list){
            $list['content'] = str_limit(strip_tags($list['content']),$str_limit,'...');
            $lists[$key] = $list;
        }
        return $lists;
    }

}