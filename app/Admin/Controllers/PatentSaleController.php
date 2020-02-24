<?php

namespace App\Admin\Controllers;

use App\Good;
use App\Patent;
use Encore\Admin\Admin;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class PatentSaleController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '我发布的专利';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Patent());
        $grid->column('id', __('序号'));
        $grid->column('type.logo', __('专利信息'))->image('/','',30)
            ->display(function($logo){
                return $logo.$this->patent_sn.'<br/>'.$this->patent_name;
            });

        $grid->column('patent_person', __('member.patent_person'));
        $grid->column('apply_date', __('member.apply_date'));
        $grid->column('domain.name', __('member.domain_name'));
        $grid->column('case.name', __('member.patent_case').'/'.__('member.patent_cert'))
        ->display(function($case_name){
            $cert_name = $this->cert?$this->cert->name:'';
            return $case_name.'<br/>'.$cert_name;
        });
        $sale_state = Good::SALE_STATE;
        unset($sale_state[0]);
        $grid->column('sale_state', __('member.state'))->width(150)
            ->editable('select', [1=>'待交易',2=>'已预约','3'=>'已下架']);
        $grid->column('price', __('member.parent_price'))->width(150)->editable();
        $grid->column('sale_remark', __('member.sale_remark'))
            ->display(function($sale_remark){return $sale_remark?:'';})->width(200)->editable('textarea');
        $grid->disableBatchActions(false);

        Admin::script('$("td").css("vertical-align","middle")');
        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Patent::findOrFail($id));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Patent());

        //$form->number('patent_domain_id', __('Patent domain id'));
        //$form->number('patent_type_id', __('Patent type id'));
        //$form->number('patent_case_id', __('Patent case id'));
        //$form->number('patent_cert_id', __('Patent cert id'));
        //$form->number('electron_user_id', __('Electron user id'));
        //$form->text('inventor', __('Inventor'));

        //$form->image('image', __('Image'));
        $form->decimal('price', __('Price'))->default(0.00);
        //是否特价
        //$form->switch('is_cheap', __('Is cheap'));
        //是否优质
        //$form->switch('is_best', __('Is best'));
        $form->switch('sale_state', __('售卖状态'));
        $form->textarea('remark', __('Remark'));
        return $form;
    }
}
