<style>
    .qxjk-ul li {
        float: left;
        font-size: 14px;
        margin: 5px 20px 10px 20px;
        list-style: none;
    }
    .qxjk-ul li a {display:block; padding:5px 8px;}
    .qxjk-ul li a.hover { background:#C6E8FF;border-radius:12px !important;}
    .qxjk-ul {
        list-style: none;
        padding: 0px;
        margin: 0px;
        display: block;
        overflow: hidden;
    }

</style>
<div class="box box-danger box-solid">

    <div class="box-header with-border">
        <h3 class="box-title">监控状态统计</h3>
        <div class="box-tools pull-right">
            <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
        </div><!-- /.box-tools -->
    </div>
    <div class="box-body">
       {!! $selector !!}
    </div>

</div>
<div class="box box-warning box-solid">
    <div class="box-body">
        <div class="col-md-12">
            <form action="{{route('members.monitors.index')}}" method="get">
                <div class="row">
                    <div class="col-md-6">
                        <div class="row">
                            <div class="col-md-6" style="max-width: 180px;">
                                <div class="form-group">
                                    <label>专利类型</label>
                                    <select class="form-control" tabindex="1" name="patent_type_id">
                                        <option value="">全部</option>
                                        @foreach($patentTypes as $patentType)
                                            <option @if(isset($filter['patent_type_id']) && $filter['patent_type_id'] == $patentType['id']) selected="selected" @endif value="{{$patentType['id']}}">{{$patentType['name']}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6" style="max-width: 200px;">
                                <div class="form-group">
                                    <label>案件状态</label>
                                    <select class="form-control" tabindex="1" name="patent_case_id">
                                        <option value="">全部</option>
                                        @foreach($patentCases as $key=>$vo)
                                            <option @if(isset($filter['patent_case_id']) && $filter['patent_case_id'] == $key && (empty($filter['defaultCode']) || $filter['defaultCode'] != 'top')) selected="selected" @endif value="{{$key}}">{{$vo}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3" style="">
                                <div class="form-group">
                                    <label>监控状态</label>
                                    <select class="form-control" tabindex="1" name="monitor_state">
                                        <option value="">全部</option>
                                        @foreach($monitorStates as $key=>$monitorState)
                                            <option @if(isset($filter['monitor_state']) && $filter['monitor_state'] == $key) selected @endif value="{{$key}}">{{$monitorState}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="row">
                            <div class="col-md-8" style="padding-right:0px;">
                                <div class="form-group">
                                    <label>关键字</label>
                                    <input style="" name="keyword" id="keywordId" value="" placeholder="申请号/名称/申请人" class="form-control spinner">
                                </div>
                            </div>
                            <div class="col-md-2" style="padding-left:0px;">
                                <div class="form-group">
                                    <label>&nbsp;</label>
                                    <button class="btn d_baocun" style="display:block;width:100%" type="submit">查询</button>
                                </div>
                            </div>
                            <div class="col-md-2" style="padding-left:0px;">
                            </div>
                        </div>
                    </div>

                </div>
            </form>
        </div>

    </div>
</div>

