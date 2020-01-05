<?php

namespace App\Admin\Extensions;

use Encore\Admin\Form\Field;

class Ueditor extends Field
{
    protected $view = 'admin.ueditor';

    /*protected static $css = [

    ];*/

    protected static $js = [
        '/vendor/ueditor/ueditor.config.js',
        '/vendor/ueditor/ueditor.all.js',
    ];

    public function render()
    {
        $this->script = <<<EOT

UE.delEditor('container');
var ue = UE.getEditor('container', {
    initialFrameWidth: '100%',
    initialFrameHeight:500
});

EOT;

        return parent::render();
    }
}