<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2017/12/18
  Time: 15:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>TMS-持卡人信息</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <%@include file="../include/css.jsp"%>
    <style>
        .td_title {
            font-weight: bold;
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
    <!-- =============================================== -->

    <!-- 右侧内容部分 -->
    <div class="content-wrapper">
        <!-- Main content -->
        <section class="content">

            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">持卡人信息</h3>
                    <c:if test="${not empty message}">
                        <div class="btn btn-primary btn-sm">${message}</div>
                    </c:if>
                    <div class="box-tools pull-right">
                        <a class="btn btn-primary btn-sm" href="/checkTicket/check">返回验票界面</a>
                    </div>
                </div>
                <div class="box-body no-padding">
                    <table class="table">
                        <tr>
                            <td class="td_title">顾客姓名</td>
                            <td>${customer.customerName}</td>
                            <td class="td_title">联系电话</td>
                            <td>${customer.customerTel}</td>
                        </tr>
                        <tr>
                            <td class="td_title">办理时间</td>
                            <td><fmt:formatDate value="${customer.createTime}" pattern="YYYY年MM月dd日"/></td>
                        </tr>

                    </table>
                </div>
                <div class="box-footer">
                    <span style="color: #ccc" class="pull-right">创建日期：<fmt:formatDate value="${customer.createTime}" pattern="YYYY年MM月dd日"/></span>
                </div>
                <div class="col-md-2">
                    <img src="http://
ozp5bpxi8.bkt.clouddn.com/${customer.customerPhoto}?imageView2/1/w/200/h/200" alt="">
                </div>
               <%-- <div class="col-md-2">
                    <img src="http://
ozp5bpxi8.bkt.clouddn.com/${customer.customerIdCardPhoto}?imageView2/1/w/200/h/200" alt="">
                </div>
                <div class="col-md-2">
                    <img src="http://
ozp5bpxi8.bkt.clouddn.com/${customer.customerIdCardPhotoBack}?imageView2/1/w/200/h/200" alt="">
                </div>--%>
            </div>


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

<!-- jQuery 2.2.3 -->
<%@include file="../include/js.jsp"%>
<script src="/static/plugins/layer/layer.js"></script>

</body>
</html>
