<?php


namespace App\Admin\Forms\Settings;

use App\Config;
use Illuminate\Http\Request;
use Encore\Admin\Widgets\Form;

class Address extends Form
{
    /**
     * The form title.
     *
     * @var string
     */
    public $title = '联系方式设置';
    public $type ='contact';

    /**
     * 提交处理数据
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse|mixed
     */
    public function handle(Request $request)
    {
        Config::createOrUpdate(collect($request->all()),$this->type);
        admin_toastr('设置成功','success');
        return back();
    }

    public function form()
    {
        $this->text('company_tel','公司电话');
        $this->text('company_email','公司邮箱');
        $this->text('company_address','公司地址');
        $this->image('company_qr_code','公众号二维码');
        $this->disableReset();
        $this->setData();
    }

    protected function setData()
    {
        if(request()->getMethod() == 'GET'){
            $this->data =Config::getConfig($this->type)->toArray();
        }
    }

}