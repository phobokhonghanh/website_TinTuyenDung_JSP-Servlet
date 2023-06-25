<%@ page import="vn.edu.hcmuaf.fit.service.DAOPost" %>
<%@ page import="vn.edu.hcmuaf.fit.service.DAOBill" %>
<%@ page import="vn.edu.hcmuaf.fit.service.DAOAccount" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 06/01/2023
  Time: 3:04 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    DAOPost daoPost = new DAOPost();
    DAOBill daoBill = new DAOBill();
    DAOAccount daoAccount = new DAOAccount();
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin | Bảng điều khiển</title>
    <link type="text/css" href="<%=request.getContextPath()%>/admin/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="<%=request.getContextPath()%>/admin/css/theme.css" rel="stylesheet">
    <link type="text/css" href="<%=request.getContextPath()%>/admin/images/icons/css/font-awesome.css" rel="stylesheet">
    <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
          rel='stylesheet'>

</head>
<body>
<jsp:include page="Admin-header.jsp"></jsp:include>
<!-- /navbar -->
<div class="wrapper">
    <div class="container">
        <div class="row">
            <div class="span3">
                <jsp:include page="Admin-sidebar.jsp"></jsp:include>
                <!--/.sidebar-->
            </div>
            <!--/.span3-->
            <div class="span9">
                <div class="content">
                    <div class="btn-controls">
                        <div class="btn-box-row row-fluid">
                            <a class="btn-box big span4">
                                <i class=" menu-icon icon-bullhorn"></i><b><%=daoPost.getPostNew().size()%>
                            </b>
                                <p class="text-muted"> Bài đăng mới</p></a>
                            <a class="btn-box big span4">
                                <i class="icon-group"></i><b><%=daoAccount.getListAccount().size()%>
                            </b>
                                <p class="text-muted">Tổng số tài khoản trong hệ thống </p></a>
                            <a class="btn-box big span4">
                                <i class="menu-icon icon-paste"></i><b><%=daoBill.getSumBillByMonth()%> VND
                            </b>
                                <p class="text-muted">Doanh thu </p>
                            </a>
                        </div>
                    </div>
                    <div class="module">
                        <div class="module-head">
                            <h3>Thống kê theo tuần</h3>
                            <div class="float-md-right">
                                <a href="<%=request.getContextPath()%>/admin/Statistics?action=adminThongke" class="btn"
                                   style="background: darkgrey; position: absolute; bottom: 100px; right: 200px;">Tạo
                                    thống kê</a>
                            </div>
                        </div>
                        <%--                        <div class="module-body" style="display: flex">--%>
                        <%--                            <div class="col-12 col-lg-6" style="flex: 0 0 auto;width: 50%;">--%>
                        <%--                                <div class="app-card app-card-chart h-100 shadow-sm">--%>
                        <%--                                    <div class="app-card-header p-3">--%>
                        <%--                                        <div class="row justify-content-between align-items-center"--%>
                        <%--                                             style="margin-left: auto;">--%>
                        <%--                                            <div class="col-auto">--%>
                        <%--                                                <h4 class="app-card-title">Doanh thu</h4>--%>
                        <%--                                            </div><!--//col-->--%>
                        <%--                                        </div><!--//row-->--%>
                        <%--                                    </div><!--//app-card-header-->--%>
                        <%--                                    <div class="app-card-body p-3 p-lg-4">--%>
                        <%--                                        <div class="mb-3 d-flex" id="data_line_previous"--%>
                        <%--                                             data-list="<%=daoBill.doanhThuTuanTruoc()%>">--%>
                        <%--                                        </div>--%>
                        <%--                                        <div class="chart-container" id="data_line"--%>
                        <%--                                             data-list="<%= daoBill.doanhThuTuan() %>">--%>
                        <%--                                            <canvas id="canvas-linechart"></canvas>--%>
                        <%--                                        </div>--%>
                        <%--                                    </div><!--//app-card-body-->--%>
                        <%--                                </div><!--//app-card-->--%>
                        <%--                            </div>--%>
                        <%--                            <div class="col-12 col-lg-6" style="flex: 0 0 auto;width: 50%;">--%>
                        <%--                                <div class="app-card app-card-chart h-100 shadow-sm">--%>
                        <%--                                    <div class="app-card-header p-3">--%>
                        <%--                                        <div class="row justify-content-between align-items-center"--%>
                        <%--                                             style="margin-left: auto;">--%>
                        <%--                                            <div class="col-auto">--%>
                        <%--                                                <h4 class="app-card-title">Bài đăng</h4>--%>
                        <%--                                            </div><!--//col-->--%>
                        <%--                                        </div><!--//row-->--%>
                        <%--                                    </div><!--//app-card-header-->--%>
                        <%--                                    <div class="app-card-body p-3 p-lg-4">--%>
                        <%--                                        <div class="mb-3 d-flex">--%>
                        <%--                                        </div>--%>
                        <%--                                        <div class="chart-container" id="data_bar" data-list="">--%>
                        <%--                                            <canvas id="canvas-barchart"></canvas>--%>
                        <%--                                        </div>--%>
                        <%--                                    </div><!--//app-card-body-->--%>
                        <%--                                </div><!--//app-card-->--%>
                        <%--                            </div><!--//col-->--%>
                        <%--                        </div><!--//col-->--%>
                        <jsp:include page="Admin-bieu-do.jsp"></jsp:include>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/.content-->
</div>
</body>
<script src="<%=request.getContextPath()%>/admin/scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/admin/scripts/jquery-ui-1.10.1.custom.min.js"
        type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/admin/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

</html>
