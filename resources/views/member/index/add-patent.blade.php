@if(empty($type))
<ul class="row d-row">
    <li class="col-md-2 col-sm-2 col-xs-2">
        <a style="text-decoration:none" target="_blank" style="" href="{{route('members.noticeUpload',[],false)}}">
            <img src="/new_temp/images/sune1.png" />
            <span>上传通知书</span>
        </a>
    </li>
    <li class="col-md-2 col-sm-2 col-xs-2">
        <a style="text-decoration:none" target="_blank" href="{{route('members.uploadPatent',[],false)}}">
            <img src="/new_temp/images/sune2.png" />
            <span>上传专利表格</span>
        </a>
    </li>
    <li class="col-md-2 col-sm-2 col-xs-2">
        <a style="text-decoration:none" target="_blank" href="{{route('members.patents.create',[],false)}}">
            <img src="/new_temp/images/sune4.png" />
            <span>输入专利添加</span>
        </a>
    </li>
    <li class="col-md-2 col-sm-2 col-xs-2">
        <a style="text-decoration:none" target="_blank" href="{{route('members.monitors.index',[],false)}}">
            <img src="/new_temp/images/sune6.png" />
            <span>年费监控</span>
        </a>
    </li>
    <li class="col-md-2 col-sm-2 col-xs-2">
        <a style="text-decoration:none" target="_blank" href="{{route('members.electron-accounts.index',[],false)}}">
            <img src="/new_temp/images/sune5.png" />
            <span>电子用户</span>
        </a>
    </li>
    <li class="col-md-2 col-sm-2 col-xs-2">
        <a style="text-decoration:none" target="_blank" href="{{route('members.patentSales.index',[],false)}}">
            <img src="/new_temp/images/sune5.png" />
            <span>售卖专利</span>
        </a>
    </li>
</ul>
@elseif($type =='patent-list')
    <ul class="row d-row">
        <li class="col-md-6">
            <a style="text-decoration:none" target="_blank" href="{{route('members.patents.index',[],false)}}">
                <img src="/new_temp/images/sune3.png" />
                <span>我的专利</span>
            </a>
        </li>
        <li class="col-md-6">
            <a style="text-decoration:none" target="_blank" href="{{route('members.patentRecycles.index',[],false)}}">
                <img src="/new_temp/images/sune2.png" />
                <span>回收站</span>
            </a>
        </li>
    </ul>
@endif
