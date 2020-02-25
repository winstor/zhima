<?php

namespace App\Admin\Controllers;

use App\Admin\Actions\PatentSell\BatchPatentOnSell;
use App\Admin\Actions\PatentSell\BatchPatentSellDelete;
use App\Admin\Actions\PatentSell\BatchPatentSellEdit;
use App\Admin\Actions\PatentSell\BatchSell;
use App\Good;
use App\PatentCase;
use App\PatentCert;
use App\PatentSell;
use App\PatentType;
use Encore\Admin\Admin;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class PatentSellController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '我发布的专利';
    public function index(Content $content)
    {
        return $content
            ->title($this->title())
            ->row('<link rel="stylesheet" href="/css/d_newscss.css">')
            ->description($this->description['index'] ?? trans('admin.list'))
            ->body($this->grid());
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new PatentSell());
        $grid->filter(function(Grid\Filter $filter){
            $filter->disableIdFilter();
            $filter->column(1/3,function(Grid\Filter $filter){
                $filter->equal('patent_type_id','专利类型')->select(PatentType::pluck('name','id'));
                $filter->between('created_at', '发布日期')->date();
            });
            $filter->column(1/3,function(Grid\Filter $filter){
                $filter->equal('patent_case__id','专利状态')->select(PatentCase::pluck('name','id'));
                $filter->where(function ($query) {
                    $query->where('patent_sn', 'like', "%{$this->input}%")
                        ->orWhere('patent_name', 'like', "%{$this->input}%")
                        ->orWhere('patent_person', 'like', "%{$this->input}%")
                        ->orWhere('remark', 'like', "%{$this->input}%");
                }, '关键字')->placeholder('申请号/名称/申请人/说明');
            });
            $filter->column(1/3,function(Grid\Filter $filter){
                $filter->equal('patent_cert_id','下证状态')->select(PatentCert::pluck('name','id'));
                $filter->equal('sale_state','交易状态')->select(PatentSell::SELL_STATE);
            });
        });
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
        $grid->column('sale_state', __('member.state'))->using(PatentSell::SELL_STATE)
            ->label([1=>'danger',2=>'info',3=>'success',6=>'default']);
            //->width(150)->editable('select', PatentSell::SELL_STATE);
        $grid->column('price', __('member.parent_price'));//->width(150)->editable();
        $grid->column('remark', __('member.sale_remark'));
            //->display(function($sale_remark){return $sale_remark?:'';})->width(200)->editable('textarea');
        $grid->disableBatchActions(false);
        $grid->disableFilter(false);
        $grid->batchActions(function (Grid\Tools\BatchActions $batchActions) {
            $batchActions->disableDeleteAndHodeSelectAll();
        });
        $grid->tools(function(Grid\Tools $tools){
            $tools->append(new BatchPatentOnSell());
            $tools->append(new BatchPatentSellEdit());
            $tools->append(new BatchPatentSellDelete());
        });

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
