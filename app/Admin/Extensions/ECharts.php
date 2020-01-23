<?php


namespace App\Admin\Extensions;


use Encore\Admin\Extension;

class ECharts extends Extension
{
    public $name = 'member';
    public $views = __DIR__ . '/../resources/views';
    public $assets = __DIR__.'/../resources/assets';
    static public function content($option=[]){
        $time=$option.'_'.time();
        $html=<<<EOF
		<div id="{$time}" style="width: 100%;height:100%;">加载中....</div>
EOF;

        return view('member.echarts.'.$option,['chart'=>$time,'chart_html'=>$html]);
    }

}
