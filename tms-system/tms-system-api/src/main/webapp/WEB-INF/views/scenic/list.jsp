<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2017/12/18
  Time: 13:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>TSM-景区信息</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <%@include file="../include/css.jsp"%>

    <style>
        .name-avatar {
            display: inline-block;
            width: 50px;
            height: 50px;
            background-color: #353535;
            border-radius: 50%;
            text-align: center;
            line-height: 50px;
            font-size: 24px;
            color: #FFF;
        }
        .table>tbody>tr:hover {
            cursor: pointer;
        }
        .table>tbody>tr>td {
            vertical-align: middle;
        }
        .star {
            font-size: 20px;
            color: #dcf4ff;
        }
        .pink {
            background-color: #ff3177;
        }
    </style>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="hold-transition skin-blue sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">

    <!-- 顶部导航栏部分 -->
    <%@include file="../include/header.jsp"%>

    <!-- =============================================== -->

    <!-- 左侧菜单栏 -->
    <%@include file="../include/left.jsp"%>
    <%--    <jsp:include page="../include/left.jsp">
            <jsp:param name="menu" value="customer_my"/>
        </jsp:include>--%>
    <!-- =============================================== -->


    <!-- 右侧内容部分 -->
    <div class="content-wrapper">
        <!-- Main content -->
        <section class="content">

            <!-- Default box -->
            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">景区信息列表</h3>
                    <c:if test="${not empty message}">
                        <div class="btn btn-primary btn-sm">${message}</div>
                    </c:if>

                    <div class="box-tools pull-right">
                        <a href="/scenic/new" class="btn btn-success btn-sm" id="addCustomer"><i class="fa fa-plus"></i> 添加景区</a>
                    </div>
                </div>
                <div class="box-body no-padding">
                    <table class="table table-hover">
                        <tbody>
                        <tr>
                            <th width="80"></th>
                            <th>景区名</th>
                            <th>景区地址</th>
                            <th>景区星级</th>
                            <th>景区经度</th>
                            <th>景区纬度</th>
                            <th>景区负责人</th>
                            <th>景区电话</th>
                        </tr>
                        <c:forEach items="${scenicList}" var="scenic">
                            <tr class="dataRow" rel="${scenic.id}">
                                <td width="80"></td>
                                <td>${scenic.scenicName}</td>
                                <td>${scenic.scenicAddress}</td>
                                <td>${scenic.scenicLevel}</td>
                                <td>${scenic.scenicGeoLongitude}</td>
                                <td>${scenic.scenicGeoLatitude}</td>
                                <td>${scenic.scenicManager}</td>
                                <td>${scenic.scenicTel}</td>
                            </tr>
                        </c:forEach>

                        </tbody>
                    </table>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <!-- 底部 -->
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 1.0
        </div>
        <strong>Copyright &copy; 2010 -2017 <a href="http://almsaeedstudio.com">凯盛软件</a>.</strong> All rights
        reserved.
    </footer>

</div>
<!-- ./wrapper -->

<%@include file="../include/js.jsp"%>

<script>


    $(function() {

        $(".dataRow").click(function () {
            var id = $(this).attr("rel");
            window.location.href="/scenic/detail/" + id;
        });

    });

</script>
</body>
</html>
