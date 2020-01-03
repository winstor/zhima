<?php


namespace App\Admin\Forms\Settings;

use App\Config;
use Illuminate\Http\Request;
use Encore\Admin\Widgets\Form;
use Illuminate\Support\Facades\Storage;

class Email extends Form
{
    /**
     * The form title.
     *
     * @var string
     */
    public $title = '邮件设置';
    public $type ='email';
    public function handle(Request $request)
    {
        Config::createOrUpdate(collect($request->all()),$this->type);
        admin_toastr('设置成功','success');
        return back();
    }
    public function form()
    {
        $this->text('email_name','邮箱账户');
        $this->text('email_password','邮箱密码');
        $this->text('email_server','SMTP服务器');
        $this->text('email_port','SMTP端口');
        $this->text('email_address','邮箱');
        $this->disableReset();
        if(request()->getMethod() == 'GET'){
            $this->setData();
        }
    }
    protected function setData()
    {
        $this->data =Config::getConfig($this->type)->toArray();
    }
}