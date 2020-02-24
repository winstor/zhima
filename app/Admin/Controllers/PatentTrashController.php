<?php

namespace App\Admin\Controllers;

use App\MemberUser;
use App\Patent;
use Encore\Admin\Grid;
use Encore\Admin\Controllers\AdminController;
use App\Admin\Actions\Patent\BatchRecovery;
use App\Admin\Actions\Patent\BatchTrashDelete;
use Encore\Admin\Layout\Content;
use Illuminate\Routing\Controller;

class PatentTrashController extends Controller
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '回收站';
    public function index(Content $content)
    {
        return $content
            ->title($this->title)
            ->description(trans('admin.list'))
            ->body($this->grid());
    }
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Patent());
        $user = MemberUser::user();
        $grid->column('id', __('序号'));
        $grid->model()->where('user_id',$user->id)->with(['type','case'])
            ->whereNotNull('deleted_at')->withTrashed();
        $grid->column('type.name', __('专利类型'));
        $grid->column('patent_sn', __('member.patent_sn'));
        $grid->column('patent_name', __('member.patent_name'));
        $grid->column('patent_person', __('member.patent_person'));
        $grid->column('apply_date', __('member.apply_date'));
        $grid->column('case.name', __('member.patent_case'));
        $grid->disableBatchActions(false);
        $grid->batchActions(function(Grid\Tools\BatchActions $batchActions){
            $batchActions->disableDeleteAndHodeSelectAll();
        });
        $grid->tools(function(Grid\Tools $tools){
            $tools->append(new BatchRecovery());
            $tools->append(new BatchTrashDelete());
        });
        return $grid;
    }
}
