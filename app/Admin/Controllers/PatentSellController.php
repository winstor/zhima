<?php

namespace App\Admin\Controllers;

use App\Good;
use App\PatentSell;
use Encore\Admin\Admin;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class PatentSellController extends AdminController
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
        $grid = new Grid(new PatentSell());

        $grid->column('id', __('序号'));
        $grid->column('type.logo', __('专利信息'))->image('/','',30)
            ->display(function($logo){
                return $logo.$this->patent_sn.'<br/>'.$this->patent_name;
            });
        $grid->column('patent_person',  __('member.patent_person'));
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
        $show = new Show(PatentSell::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('patent_id', __('Patent id'));
        $show->field('user_id', __('User id'));
        $show->field('patent_sn', __('Patent sn'));
        $show->field('patent_name', __('Patent name'));
        $show->field('patent_person', __('Patent person'));
        $show->field('apply_date', __('Apply date'));
        $show->field('image', __('Image'));
        $show->field('patent_domain_id', __('Patent domain id'));
        $show->field('patent_type_id', __('Patent type id'));
        $show->field('patent_case_id', __('Patent case id'));
        $show->field('patent_cert_id', __('Patent cert id'));
        $show->field('price', __('Price'));
        $show->field('is_cheap', __('Is cheap'));
        $show->field('is_best', __('Is best'));
        $show->field('sale_state', __('Sale state'));
        $show->field('remark', __('Remark'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new PatentSell());

        $form->number('patent_id', __('Patent id'));
        $form->number('user_id', __('User id'));
        $form->text('patent_sn', __('Patent sn'));
        $form->text('patent_name', __('Patent name'));
        $form->text('patent_person', __('Patent person'));
        $form->date('apply_date', __('Apply date'))->default(date('Y-m-d'));
        $form->image('image', __('Image'));
        $form->number('patent_domain_id', __('Patent domain id'));
        $form->number('patent_type_id', __('Patent type id'));
        $form->number('patent_case_id', __('Patent case id'));
        $form->number('patent_cert_id', __('Patent cert id'));
        $form->decimal('price', __('Price'))->default(0.00);
        $form->switch('is_cheap', __('Is cheap'));
        $form->switch('is_best', __('Is best'));
        $form->switch('sale_state', __('Sale state'));
        $form->textarea('remark', __('Remark'));

        return $form;
    }
}
