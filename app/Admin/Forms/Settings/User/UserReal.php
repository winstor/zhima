<?php


namespace App\Admin\Forms\Settings\User;


use App\MemberReal;
use App\MemberUser;
use App\Services\Members\MemberRealServer;
use App\Services\MemberServer;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Widgets\Form;
use Illuminate\Http\Request;
use Illuminate\Http\UploadedFile;

class UserReal extends Form
{
    public $title = '申请会员认证';
    protected $user;
    protected $memberReal;
    protected $memberRealServer;
    public function __construct(MemberRealServer $memberRealServer,$data = [])
    {
        $this->memberRealServer = $memberRealServer;
        $this->user = MemberUser::user();
        $this->memberReal = $this->user->real;
        parent::__construct($data);
    }

    /**
     * Handle the form request.
     *
     * @param Request $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request)
    {
        $user = $this->user;
        $real = $this->memberReal;
        if(!$real){
            $real = new MemberReal();
        }elseif($real['real_state'] == 0){
            admin_toastr('请等待审核！');
            return back();
        }elseif($real['real_state'] == 1){
            admin_toastr('认证已通过！');
            return back();
        }
        $data = $request->only(['id_card_front','id_card_back','license_picture']);
        $real_type = data_get([1=>1,2=>2],$request->get('real_type',1),1);
        if($real_type == 2 && !$request->has('license_picture') && empty($real['license_picture'])){
            admin_toastr('请上传营业执照','error');
            return back();
        }
        if(!$this->checkImagesSize($data)){
            admin_toastr('上传文件过大','error');
            return back();
        }
        $real->real_type = $real_type;
        foreach($data as $key=>$value){
            if($value instanceof UploadedFile){
                $real->$key = $this->storeAs($value,$user['id'].'/'.$key.'.png');
            }
        }
        $user->applyReal($real);
        admin_toastr('提交成功');
        return back();
    }
    /**
     * Build a form here.
     */
    public function form()
    {
        if(!$this->memberReal){
            //提价审核
            $this->createForm();
        }elseif($this->memberReal['real_state'] == 2){
            $this->editForm();
            $this->html('<span class="label label-danger">审核未通过</span>','审核状态')->default('');
            $this->display('review_remark','审核备注');
        }else{
            $this->auditForm($this->memberReal['real_state']);
        }
        $this->disableReset();
    }

    protected function createForm()
    {
        $this->image('id_card_front', __('身份证正面'))->required()
            ->help('请上传png,jpg类型图片，图片不能超过1M')->disk('member_real');
        $this->image('id_card_back', __('身份证反面'))->required()
            ->help('请上传png,jpg类型图片，图片不能超过1M')->disk('member_real');
        $this->radio('real_type','认证类型')->options(['1'=>'个人认证',2=>'企业认证']);
        $this->image('license_picture', __('营业执照'))->disk('member_real')
            ->help('<span style="color: red">企业认证</span>请上传png,jpg类型图片，图片不能超过1M');
        $this->buttons = ['submit'=>'提交认证'];
    }
    //待审核
    protected function auditForm($real_state)
    {
        $this->image('id_card_front', __('身份证正面'))->disk('member_real')
            ->disable()
            ->help('请上传png,jpg类型图片，图片不能超过1M');
        $this->image('id_card_back', __('身份证反面'))->disk('member_real')
            ->disable()
            ->help('请上传png,jpg类型图片，图片不能超过1M');
        $this->radio('real_type','认证类型')->options(['1'=>'个人认证','2'=>'企业认证'])->default(1)
            ->disable()
            ->help('企业认证需要上传营业执照');
        $this->image('license_picture', __('营业执照'))->uniqueName()->disk('member_real')
            ->disable()
            ->help('企业认证,请上传png,jpg类型图片，图片不能超过1M');
        $review = [
            '<span class="label label-warning">待审核</span>',
            '<span class="label label-success">审核已通过</span>',
        ];
        $this->html(data_get($review,$real_state,''),'审核状态');
        $this->disableSubmit();
    }
    protected function editForm()
    {
        $this->image('id_card_front', __('身份证正面'))->disk('member_real')
            ->help('请上传png,jpg类型图片，图片不能超过1M');
        $this->image('id_card_back', __('身份证反面'))->disk('member_real')
            ->help('请上传png,jpg类型图片，图片不能超过1M');
        $this->radio('real_type','认证类型')->options(['1'=>'个人认证','2'=>'企业认证'])->default(1)
            ->help('企业认证需要上传营业执照');
        $this->image('license_picture', __('营业执照'))->uniqueName()->disk('member_real')
            ->help('企业认证,请上传png,jpg类型图片，图片不能超过1M');
        $this->buttons = ['submit'=>'提交认证'];
    }
    /**
     * The data of the form.
     *
     * @return array $data
     */
    public function data()
    {
        return [
            'id_card_front'=>$this->realImageUrl('id_card_front'),
            'id_card_back'=>$this->realImageUrl('id_card_back'),
            'license_picture'=>$this->realImageUrl('license_picture'),
            'real_type'=>$this->memberReal['real_type']??1,
            'review_remark'=>$this->memberReal['review_remark']??'',
        ];
    }

    protected function realImageUrl($name)
    {
        $path = $this->memberReal[$name]??'';
        $data = explode('/',trim($path,'/'));
        if(count($data) == 2){
            return route('members.realImage',$data);
        }
        return '';
    }
    public function checkImagesSize($data)
    {
        foreach($data as $key=>$value){
            if($value instanceof UploadedFile){
                if($value->getSize() > 1048600){
                    return false;
                }
            }elseif(!is_string($value)){
                return false;
            }
        }
        return true;
    }
    public function checkSize($file)
    {
        if($file && $file->getSize() > 1048600){
            return false;
        }
        return true;
    }

    protected function storeAs($file,$path,$default='')
    {
        if($file instanceof UploadedFile){
            return $file->storeAs('',$path,'member_real');
        }
        return $default;
    }
}
