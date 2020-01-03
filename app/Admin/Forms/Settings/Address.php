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
    public $title = '联系方式';
    public $type ='company';
    public function handle(Request $request)
    {
        $data  = $request->except(['company_qr_code']);
        if($request->has('company_qr_code')){
            $data['company_qr_code'] = $request->file('company_qr_code')->store('images','public');
        }
        Config::createOrUpdate(collect($data),$this->type);
        admin_toastr('设置成功','success');
        return back();
    }

    public function form()
    {
        $this->text('company_tel','公司电话');
        $this->text('company_email','公司邮箱');
        $this->text('company_address','公司地址');
        $this->image('company_qr_code','二维码');
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