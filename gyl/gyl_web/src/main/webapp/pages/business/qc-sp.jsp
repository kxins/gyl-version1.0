<%--
  Created by IntelliJ IDEA.
  User: XHW
  Date: 2020/2/17
  Time: 22:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>期初单审批</title>
    <meta name="description" content="AdminLTE">
    <meta name="keywords" content="AdminLTE">

    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
          name="viewport">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/iCheck/square/blue.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/morris/morris.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/datepicker/datepicker3.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.theme.default.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/select2/select2.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.skinNice.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-slider/slider.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
</head>

<body class="hold-transition skin-purple sidebar-mini">
<div class="wrapper">
    <!-- 页面头部 -->
    <jsp:include page="../../header.jsp"/>
    <!-- 页面头部 /-->
    <!-- 导航侧栏 -->
    <jsp:include page="../../aside.jsp"/>
    <!-- 导航侧栏 /-->

    <!-- 内容区域 -->
    <div class="content-wrapper">
        <!-- 内容头部 -->
        <section class="content-header">
            <h1>
                期初单-审批
            </h1>
            <ol class="breadcrumb">
                <li>
                    <a href="${pageContext.request.contextPath}/index.jsp">
                        <i class="fa fa-dashboard"></i> 首页
                    </a>
                </li>
                <li>
                    <a href="#">业务</a>
                </li>
                <li>
                    <a href="#">库存管理</a>
                </li>
                <li>
                    <a href="#">期初</a>
                </li>
                <li class="active">期初单审批</li>
            </ol>
        </section>
        <!-- 内容头部 /-->

        <%--查询部分--%>
        <%-- id = query 按钮查询--%>
        <form id="form" method="post">
            <section class="content">
                <div class="panel panel-default">
                    <div class="panel-heading">查询(已审批或者未审批)</div>
                    <div class="row data-type">
                        <div class="col-md-2 title">公司</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="gs"
                                   placeholder="公司" value="">
                        </div>
                        <div class="col-md-2 title">单据号</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="djh"
                                   placeholder="单据号" value="">
                        </div>
                        <div class="col-md-2 title">单据日期</div>
                        <div class="col-md-4 data">
                            <div class="input-group date">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input type="text" class="form-control pull-right dateTimePicker" name="djrq">
                            </div>
                        </div>
                        <div class="col-md-2 title">仓库(编码)</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="ckbm"
                                   placeholder="仓库(编码)" value="">
                        </div>
                        <div class="col-md-2 title">库存员名称（唯一）</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="kcy"
                                   placeholder="库存员名称（唯一）" value="">
                        </div>
                        <div class="col-md-2 title">部门</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="bm"
                                   placeholder="部门" value="">
                        </div>
                        <div class="col-md-2 title">制单人</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="zdr"
                                   placeholder="制单人" value="">
                        </div>
                        <div class="col-md-2 title">制单日期</div>
                        <div class="col-md-4 data">
                            <div class="input-group date">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input type="text" class="form-control pull-right dateTimePicker" name="zdrq">
                            </div>
                        </div>
                        <div class="col-md-2 title">签字人</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="qzr"
                                   placeholder="签字人" value="">
                        </div>
                        <div class="col-md-2 title">签字日期</div>
                        <div class="col-md-4 data">
                            <div class="input-group date">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input type="text" class="form-control pull-right dateTimePicker" name="qzrq">
                            </div>
                        </div>
                        <div class="col-md-2 title">是否审批</div>
                        <div class="col-md-4 data">
                            <select class="form-control" name="sfsp">
                                <option value="1">是</option>
                                <option selected="selected" value="0">否</option>
                            </select>
                        </div>
                        <div class="col-md-2 title">审批是否通过</div>
                        <div class="col-md-4 data">
                            <select class="form-control" name="spsftg">
                                <option value="1">是</option>
                                <option selected="selected" value="0">否</option>
                            </select>
                        </div>
                        <div class="col-md-2 title">修改人</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="xgr"
                                   placeholder="修改人" value="">
                        </div>
                        <div class="col-md-2 title">修改日期</div>
                        <div class="col-md-4 data">
                            <div class="input-group date">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input type="text" class="form-control pull-right dateTimePicker" name="xgrq">
                            </div>
                        </div>
                        <div class="col-md-2 title">单据状态</div>
                        <div class="col-md-4 data">
                            <select class="form-control" name="status">
                                <option value="0">未结束</option>
                            </select>
                        </div>
                    </div>
                </div>

                <!--工具栏-->
                <div class="box-tools text-right">
                    <button id="query" type="button" class="btn bg-red">搜索</button>
                    <button type="reset" class="btn bg-orange">重置</button>
                    <button type="button" class="btn bg-yellow"
                            onclick="history.back(-1);">返回
                    </button>
                </div>
                <!--工具栏/-->
            </section>
        </form>

        <!--数据列表-->
        <%-- 1：主表--%>
        <from>
            <div style="padding-left: 20px"><h4></h4></div>
            <div style="overflow: scroll;overflow-y:scroll;height: 200px;width: 99%;">
                <table id="dataList_zhu" class="table table-bordered table-striped table-hover dataTable"
                       style="min-width:2700px;border:solid grey 1px">
                    <thead>
                    <th class="" style="padding-right:0px;">
                        <input id="selall_zhu" type="checkbox" class="icheckbox_square-blue">
                    </th>
                    <th class="sorting_asc" width="200px">单据号</th>
                    <th class="text-center sorting" width="200px">公司</th>
                    <th class="text-center sorting" width="200px">单据日期</th>
                    <th class="text-center sorting" width="200px">仓库(编码)</th>
                    <th class="text-center sorting" width="200px">库存员名称（唯一）</th>
                    <th class="text-center sorting" width="200px">部门</th>
                    <th class="text-center sorting" width="200px">制单人</th>
                    <th class="text-center sorting" width="200px">制单日期</th>
                    <th class="text-center sorting" width="200px">签字人</th>
                    <th class="text-center sorting" width="200px">签字日期</th>
                    <th class="text-center sorting" width="200px">是否审批</th>
                    <th class="text-center sorting" width="200px">审批是否通过</th>
                    <th class="text-center sorting" width="200px">修改人</th>
                    <th class="text-center sorting" width="200px">修改日期</th>
                    <th class="text-center sorting" width="200px">单据状态</th>
                    </thead>
                    <%--内容--%>
                    <tbody id="zhub_tbody">
                    </tbody>
                </table>
            </div>
            <%--工具栏--%>
            <div class="pull-left">
                <div class="form-group form-inline">
                    <span id="zhub_count" count="">共 0 条记录</span>
                </div>
            </div>
            <%--工具栏/--%>
        </from>
        <br><br>
        <div class="form-group">
            <input id="djh" class="form-control" type="text" readonly="readonly" style="width: 17%;"
                   placeholder="双击已查询的单据号进行选择" value="">
        </div>
        <%--2：子表--%>
        <from id="zib_form" zhub_id="-1">
            <div style="padding-left: 20px;"><h4></h4></div>
            <div style="overflow: scroll;overflow-y:scroll;height: 300px;width: 99%;">
                <table id="dataList_zi" class="table table-bordered table-striped table-hover dataTable"
                       style="min-width:2000px;border:solid grey 1px">
                    <thead>
                    <th class="" style="padding-right:0px;">
                        <input id="selall_zi" type="checkbox" class="icheckbox_square-blue">
                    </th>
                    <th class="sorting_asc" width="350px">行号</th>
                    <th class="text-center sorting" width="350px">存货编码</th>
                    <th class="text-center sorting" width="350px">规格</th>
                    <th class="text-center sorting" width="350px">型号</th>
                    <th class="text-center sorting" width="350px">单位</th>
                    <th class="text-center sorting" width="350px">批次</th>
                    <th class="text-center sorting" width="350px">数量</th>
                    <th class="text-center sorting" width="350px">单价</th>
                    <th class="text-center sorting" width="350px">金额</th>
                    <th class="text-center sorting" width="350px">入库日期</th>
                    </thead>
                    <%--内容--%>
                    <tbody id="zib_tbody">
                    </tbody>
                </table>
            </div>
            <%--工具栏--%>
            <div class="pull-left">
                <div class="form-group form-inline">
                    <span id="zib_count" count="">共 0 条记录</span>
                </div>
            </div>
            <%--工具栏/--%>
        </from>
        <br><br>
        <div class="panel panel-default">
            <div class="row data-type">
                <div class="col-md-2 title">审核人</div>
                <div class="col-md-4 data">
                    <input id="sp_spr" type="text" class="form-control"
                           placeholder="审核人" value="">
                </div>
                <div class="col-md-2 title">审核日期</div>
                <div class="col-md-4 data">
                    <div class="input-group date">
                        <div class="input-group-addon">
                            <i class="fa fa-calendar"></i>
                        </div>
                        <input id="sp_sprq" type="text" class="form-control pull-right dateTimePicker" value="">
                    </div>
                </div>
            </div>
        </div>
        <%--工具栏--%>
        <div class="pull-left">
            <div class="form-group form-inline">
                <div class="btn-group">
                    <button id="sp_forbidden_btn" onclick="sp_forbidden(this)" type="button" class="btn bg-red">审批禁止</button>
                </div>
            </div>
        </div>
        <div class="pull-right">
            <div class="form-group form-inline">
                <div class="btn-group">
                    <button id="sp_adopt_btn" onclick="sp_adopt(this)" type="button" class="btn bg-green">审批通过</button>
                </div>
            </div>
        </div>
        <%--工具栏/--%>
        <br><br><br><br><br><br>
    </div>
    <!-- 内容区域 /-->

    <!-- 底部导航 -->
    <jsp:include page="../../footer.jsp"/>
    <!-- 底部导航 /-->
</div>


<script
        src="${pageContext.request.contextPath}/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/jQueryUI/jquery-ui.min.js"></script>
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/raphael/raphael-min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/morris/morris.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/sparkline/jquery.sparkline.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/knob/jquery.knob.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/daterangepicker/moment.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/datepicker/bootstrap-datepicker.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/fastclick/fastclick.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/iCheck/icheck.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/adminLTE/js/app.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/select2/select2.full.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/markdown.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/to-markdown.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/ckeditor/ckeditor.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.extensions.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/datatables/jquery.dataTables.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/chartjs/Chart.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.resize.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.pie.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.categories.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-slider/bootstrap-slider.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.min.js"></script>

<script>
    $(document).ready(function () {

        // 选择框
        $(".select2").select2();

        // WYSIHTML5编辑器
        $(".textarea").wysihtml5({
            locale: 'zh-CN'
        });

        //日期控件
        // datetime picker
        $('.dateTimePicker').datetimepicker({
            format: "yyyy-mm-dd hh:ii",
            autoclose: true,
            todayBtn: true,
            language: 'zh-CN'
        });

        // 列表按钮
        $("#dataList_zhu td input[type='checkbox']").iCheck({
            checkboxClass: 'icheckbox_square-blue',
            increaseArea: '20%'
        });
        $("#dataList_zi td input[type='checkbox']").iCheck({
            checkboxClass: 'icheckbox_square-blue',
            increaseArea: '20%'
        });

        // 全选操作:主表
        $("#selall_zhu").click(function () {
            var clicks = $(this).is(':checked');
            if (!clicks) {
                $("#dataList_zhu td input[type='checkbox']").iCheck("uncheck");
            } else {
                $("#dataList_zhu td input[type='checkbox']").iCheck("check");
            }
            $(this).data("clicks", !clicks);
        });

        // 全选操作：子表
        $("#selall_zi").click(function () {
            var clicks = $(this).is(':checked');
            if (!clicks) {
                $("#dataList_zi td input[type='checkbox']").iCheck("uncheck");
            } else {
                $("#dataList_zi td input[type='checkbox']").iCheck("check");
            }
            $(this).data("clicks", !clicks);
        });

    });

    // 设置激活菜单
    function setSidebarActive(tagUri) {
        var liObj = $("#" + tagUri);
        if (liObj.length > 0) {
            liObj.parent().parent().addClass("active");
            liObj.addClass("active");
        }
    }

    $(document).ready(function () {
        $('#datepicker-a3').datetimepicker({
            format: "yyyy-mm-dd hh:ii",
            autoclose: true,
            todayBtn: true,
            language: "zh-CN"
        });
    });

    $(document).ready(function () {
        // 激活导航位置
        setSidebarActive("order-manage");
        $("#datepicker-a3").datetimepicker({
            format: "yyyy-mm-dd hh:ii",
        });

    });

    /*发表单查询*/
    $(document).ready(function () {

        //功能：主表：点击查询按钮，根据主表一部分信息查询出所有满足的主表集合
        $("#query").click(function () {
            var params = $("#form").serialize();
            $.ajax({
                url: "${pageContext.request.contextPath}/qc/findZhubByMany",
                type: "post",
                data: params,
                dataType: "json",
                // async: false, 是否是异步: 同步会阻塞UI渲染线程，不会执行ajax后面的代码。
                //使用trigger功能时候，会导致页面卡住:因为这里已经设置async为false，导致被调用的函数执行时候，需要UI渲染线程，但是被阻塞，被调用的函数执行不了，所有会导致页面卡住。
                success: function (data) {
                    //清除$("#zhub_tbody")里面的内容
                    $("#zhub_tbody").innerHTML = '';
                    var qc_zhubs = data;
                    var html = '';
                    for (var i = 0; i < qc_zhubs.length; i++) {
                        html += '<tr>\n' +
                            '<td><input id="checkbox-pos-' + i + '" class="ids my-checkbox" name="zhub_ids" type="checkbox" value="' + qc_zhubs[i].qc_zhub_id + '"></td>\n' +
                            '<td><button id="zhub_ddh_btn-" i="' + i + '" ddh="' + qc_zhubs[i].djh + '" checked="" ondblclick="find_zib(this)" zhubId="' + qc_zhubs[i].qc_zhub_id + '" style="width: 100%;height: 99%">' + qc_zhubs[i].djh + '</button></td>\n' +
                            '<td>' + qc_zhubs[i].gs + '</td>\n' +
                            '<td>' + qc_zhubs[i].djrqStr + '</td>\n' +
                            '<td>' + qc_zhubs[i].ckbm + '</td>\n' +
                            '<td>' + qc_zhubs[i].kcy + '</td>\n' +
                            '<td>' + qc_zhubs[i].bm + '</td>\n' +
                            '<td>' + qc_zhubs[i].zdr + '</td>\n' +
                            '<td>' + qc_zhubs[i].zdrqStr + '</td>\n' +
                            '<td>' + qc_zhubs[i].qzr + '</td>\n' +
                            '<td>' + qc_zhubs[i].qzrqStr + '</td>\n' +
                            '<td>' + qc_zhubs[i].sfspStr + '</td>\n' +
                            '<td>' + qc_zhubs[i].spsftgStr + '</td>\n' +
                            '<td>' + qc_zhubs[i].xgr + '</td>\n' +
                            '<td>' + qc_zhubs[i].xgrqStr + '</td>\n' +
                            '<td>' + qc_zhubs[i].statusStr + '</td>\n' +
                            '</tr>';
                    }
                    $("#zhub_tbody").html(html);
                    $("#zhub_count").html("共 " + qc_zhubs.length + " 条记录");
                    $("#zhub_count").attr("count", qc_zhubs.length);
                },
                error: function () {
                    alert("查询失败！")
                }
            });
        });

    });

    //功能：双击主表总ddh按钮触发，根据主表的id查询所有的子表信息，并添加到子表
    function find_zib(x) {
        //移除属性checked
        $(".my-checkbox").removeAttr('checked');
        //把当前设置为true
        var i = $(x).attr("i");
        $("#checkbox-pos-" + i).prop("checked", true);
        //获取id
        var qc_zhub_id = $(x).attr("zhubId");
        //获取ddh:对应了子表上面的 单据号：input[xxx],将单据号添加到里面显示，方便查看
        var djh = $(x).attr("ddh");
        $.ajax({
            url: "${pageContext.request.contextPath}/qc/findZibsByZhubId",
            type: "GET",
            data: {"qc_zhub_id": qc_zhub_id},
            dataType: "json",
            async: false,
            success: function (data) {
                //先清除$("#zib_tbody")里面的内容
                $("#zib_tbody").innerHTML = '';
                //给子表form的zhub_id赋值
                $("#zib_form").attr("zhub_id", qc_zhub_id);
                /*单据号：<input id="djh"...*/
                $("#djh").attr("value", djh);
                //添加内容
                qc_zibs = data;
                var html = '';
                for (var i = 0; i < qc_zibs.length; i++) {
                    html += '<tr>\n' +
                        '<td><input name="zib_ids" type="checkbox" value="' + qc_zibs[i].qc_zib_id + '"></td>\n' +
                        '<td>' + qc_zibs[i].hh + '</td>\n' +
                        '<td>' + qc_zibs[i].chbm + '</td>\n' +
                        '<td>' + qc_zibs[i].gg + '</td>\n' +
                        '<td>' + qc_zibs[i].xh + '</td>\n' +
                        '<td>' + qc_zibs[i].dw + '</td>\n' +
                        '<td>' + qc_zibs[i].pc + '</td>\n' +
                        '<td>' + qc_zibs[i].count + '</td>\n' +
                        '<td>' + qc_zibs[i].dj + '</td>\n' +
                        '<td>' + qc_zibs[i].je + '</td>\n' +
                        '<td>' + qc_zibs[i].rkrqStr + '</td>\n' +
                        '</tr>';
                }
                $("#zib_tbody").html(html);
                $("#zib_count").attr("count", qc_zibs.length);
                $("#zib_count").html("共 " + qc_zibs.length + " 条记录");
            },
            error: function () {
                alert("查询失败！")
            }
        });
    }

    //功能：审批禁止功能 ： 单击子表下面的 审批禁止按钮 触发，给已经选择的订单修改信息
    //在服务器 判断是否该订单已经审批 若是，则抛出异常，否则 修改订单中 sfsp 和 设置 spsftg = 0;
    function sp_forbidden(x) {
        var ddh = $("#djh").attr("value");
        if(ddh.length <= 0 || ddh == null || ddh == undefined){
            alert("请选择要审批单据号进行审批!");
        }else {
            var msg = "确认审批禁止此出库单?";
            if(confirm(msg) == true){
                var spr = $("#sp_spr").val();
                var sprq = $("#sp_sprq").val();
                if(spr.length <= 0 || spr == null || spr == undefined){
                    alert("请填写审批人!")
                }else {
                    if(sprq.length <= 0 || sprq == null || sprq == undefined){
                        alert("请填写审批日期!")
                    }else {
                        $.ajax({
                            url: "${pageContext.request.contextPath}/qc/spForbidden",
                            type: "GET",
                            data: {"djh":ddh,"spr":spr,"sprq":sprq},
                            dataType: "text",
                            //async: false,
                            success: function (data) {
                                $("#query").trigger("click");
                                alert("审批禁止成功！");
                            },
                            error: function () {
                                alert("审批禁止失败,该订单已经审批或者其他异常！");
                            }
                        });
                    }
                }
            }
        }
    }

    //功能：审批通过功能 ： 单击子表下面的 审批通过按钮 触发，给已经选择的订单修改信息
    //在服务器 判断是否该订单已经审批 若是，则抛出异常，否则 修改订单中 sfsp 和 设置 spsftg = 1;
    function sp_adopt(x) {
        var ddh = $("#djh").attr("value");
        if(ddh.length <= 0 || ddh == null || ddh == undefined){
            alert("请选择要审批单据号进行审批!");
        }else {
            var msg = "确认审批通过此出库单?";
            if(confirm(msg) == true) {
                var spr = $("#sp_spr").val();
                var sprq = $("#sp_sprq").val();
                if(spr.length <= 0 || spr == null || spr == undefined){
                    alert("请填写审批人!")
                }else {
                    if(sprq.length <= 0 || sprq == null || sprq == undefined){
                        alert("请填写审批日期!")
                    }else {
                        $.ajax({
                            url: "${pageContext.request.contextPath}/qc/spAdopt",
                            type: "GET",
                            data: {"djh":ddh,"spr":spr,"sprq":sprq},
                            dataType: "text",
                            //async: false,
                            success: function (data) {
                                $("#query").trigger("click");
                                alert("审批通过成功！");
                            },
                            error: function () {
                                alert("审批通过失败,该订单已经审批或者其他异常！");
                            }
                        });
                    }
                }
            }
        }
    }

</script>


</body>

</html>



