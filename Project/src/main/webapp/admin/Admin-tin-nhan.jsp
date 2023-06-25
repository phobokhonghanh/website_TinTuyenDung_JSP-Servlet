<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 06/01/2023
  Time: 11:16 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin | Tin nhắn</title>
    <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
    <link type="text/css" href="css/theme.css" rel="stylesheet">
    <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
    <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
          rel='stylesheet'>
</head>
<body>
<jsp:include page="Admin-header.jsp"></jsp:include>
<div class="wrapper">
    <div class="container">
        <div class="row">
            <div class="span3">
                <div class="sidebar">
                    <ul class="widget widget-menu unstyled">
                        <li>
                            <a href="<%=request.getContextPath()%>/admin/Admin-trang-chu.jsp">
                                <i class="menu-icon icon-dashboard"></i> Bảng điều khiển
                            </a>
                        </li>
                        <li><a class="collapsed" data-toggle="collapse" href="#togglePages"><i
                                class="menu-icon icon-cogs">
                        </i><i class="icon-chevron-down pull-right"></i><i class="icon-chevron-up pull-right">
                        </i> Quản lý </a>
                            <ul id="togglePages" class=" collapse unstyled">
                                <li>
                                    <a href='<c:url value="/PostManager?action=quanlybaidang"/>'>
                                        <i class="icon-inbox"></i> Quản lý bài đăng
                                    </a>
                                </li>
                                <li><a href="<%=request.getContextPath()%>/admin/Admin-quan-li-doanh-thu.jsp"><i
                                        class="icon-inbox"></i> Quản lý doanh thu</a></li>
                                <li><a href="<%=request.getContextPath()%>/admin/Admin-quan-li-nguoi-dung.jsp"><i
                                        class="icon-inbox"></i> Quản lý người dùng</a></li>
                            </ul>
                        </li>

                        <li>
                            <a href="<%=request.getContextPath()%>/admin/Admin-baocao-thongke.jsp">
                                <i class="menu-icon icon-tasks"></i> Báo cáo - thống kê
                            </a>
                        </li>
                        <li><a class="collapsed" data-toggle="collapse" href="#togglePages2"><i
                                class="menu-icon icon-cog">
                        </i><i class="icon-chevron-down pull-right"></i><i class="icon-chevron-up pull-right">
                        </i> Cài đặt giao diện </a>
                            <ul id="togglePages2" class="collapse unstyled">
                                <%--                                <li><a href=""><i class="icon-inbox"></i> Màu sắc </a></li>--%>
                                <%--                                <li><a href=""><i class="icon-inbox"></i> Hình ảnh </a></li>--%>
                                <li><a href="<%=request.getContextPath()%>/admin/Admin-tin-tuc.jsp"><i
                                        class="icon-inbox"></i> Tin tức </a></li>
                                <li><a href="<%=request.getContextPath()%>/admin/Admin-cài-đặt.jsp"><i
                                        class="icon-inbox"></i> Liên hệ </a></li>
                                <%--                                <li><a href=""><i class="icon-inbox"></i> Giới thiệu </a></li>--%>
                                <%--                                <li><a href=""><i class="icon-inbox"></i> Quảng cáo </a></li>--%>
                            </ul>
                        </li>
                    </ul>
                    <ul class="widget widget-menu unstyled">
                        <li><a href="'<c:url value="/Logout?action=logout"/>'"><i class="menu-icon icon-signout"></i>
                            Đăng xuất </a></li>
                    </ul>
                </div>
                <!--/.sidebar-->
            </div>
            <!--/.span3-->
            <div class="span9">
                <div class="content">
                    <div class="module message">
                        <div class="module-head">
                            <h3>
                                Tin nhắn</h3>
                        </div>
                        <div class="module-option clearfix">
                            <div class="pull-left">
                                <div class="btn-group">
                                    <button class="btn">
                                        Hộp thoại</button>
                                    <button class="btn dropdown-toggle" data-toggle="dropdown">
                                        <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Tin nhắn(11)</a></li>
                                        <li><a href="#">Đã gửi</a></li>
                                        <li><a href="#">Tin nhắn nháp(2)</a></li>
                                        <li><a href="#">Thùng rác</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Cài đặt</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="pull-right">
                                <a href="#" class="btn btn-primary">Soạn</a>
                            </div>
                        </div>
                        <div class="module-body table">
                            <table class="table table-message">
                                <tbody>
                                <tr class="heading">
                                    <td class="cell-check">
                                        <input type="checkbox" class="inbox-checkbox">
                                    </td>
                                    <td class="cell-icon">
                                    </td>
                                    <td class="cell-author hidden-phone hidden-tablet">
                                        Người gửi
                                    </td>
                                    <td class="cell-title">
                                        Chủ đề
                                    </td>
                                    <td class="cell-icon hidden-phone hidden-tablet">
                                    </td>
                                    <td class="cell-time align-right">
                                        Thời gian
                                    </td>
                                </tr>
                                <tr class="unread">
                                    <td class="cell-check">
                                        <input type="checkbox" class="inbox-checkbox">
                                    </td>
                                    <td class="cell-icon">
                                        <i class="icon-star"></i>
                                    </td>
                                    <td class="cell-author hidden-phone hidden-tablet">
                                        Nhất Trương
                                    </td>
                                    <td class="cell-title">
                                        Tiêu đề kiểm tra
                                    </td>
                                    <td class="cell-icon hidden-phone hidden-tablet">
                                        <i class="icon-paper-clip"></i>
                                    </td>
                                    <td class="cell-time align-right">
                                        18:01
                                    </td>
                                </tr>
                                <tr class="unread starred">
                                    <td class="cell-check">
                                        <input type="checkbox" class="inbox-checkbox">
                                    </td>
                                    <td class="cell-icon">
                                        <i class="icon-star"></i>
                                    </td>
                                    <td class="cell-author hidden-phone hidden-tablet">
                                        Nguyên Bùi
                                    </td>
                                    <td class="cell-title">
                                        Tiêu đề kiểm tra
                                    </td>
                                    <td class="cell-icon hidden-phone hidden-tablet">
                                        <i class="icon-paper-clip-no"></i>
                                    </td>
                                    <td class="cell-time align-right">
                                        18:24
                                    </td>
                                </tr>
                                <tr class="unread">
                                    <td class="cell-check">
                                        <input type="checkbox" class="inbox-checkbox">
                                    </td>
                                    <td class="cell-icon">
                                        <i class="icon-star"></i>
                                    </td>
                                    <td class="cell-author hidden-phone hidden-tablet">
                                        Thảo Dương
                                    </td>
                                    <td class="cell-title">
                                        Gửi cv công việc
                                    </td>
                                    <td class="cell-icon hidden-phone hidden-tablet">
                                        <i class="icon-paper-clip"></i>
                                    </td>
                                    <td class="cell-time align-right">
                                        20:58
                                    </td>
                                </tr>
                                <tr class="unread">
                                    <td class="cell-check">
                                        <input type="checkbox" class="inbox-checkbox">
                                    </td>
                                    <td class="cell-icon">
                                        <i class="icon-star"></i>
                                    </td>
                                    <td class="cell-author hidden-phone hidden-tablet">
                                        Phước Nguyễn
                                    </td>
                                    <td class="cell-title">
                                        Muốn tìm hiểu công việc
                                    </td>
                                    <td class="cell-icon hidden-phone hidden-tablet">
                                        <i class="icon-paper-clip"></i>
                                    </td>
                                    <td class="cell-time align-right">
                                        23:17
                                    </td>
                                </tr>
                                <tr class="read starred">
                                    <td class="cell-check">
                                        <input type="checkbox" class="inbox-checkbox">
                                    </td>
                                    <td class="cell-icon">
                                        <i class="icon-star"></i>
                                    </td>
                                    <td class="cell-author hidden-phone hidden-tablet">
                                        Chan Chan
                                    </td>
                                    <td class="cell-title">
                                        Lương của công việc
                                    </td>
                                    <td class="cell-icon hidden-phone hidden-tablet">
                                        <i class="icon-paper-clip-no"></i>
                                    </td>
                                    <td class="cell-time align-right">
                                        21 tháng 1
                                    </td>
                                </tr>
                                <tr class="read">
                                    <td class="cell-check">
                                        <input type="checkbox" class="inbox-checkbox">
                                    </td>
                                    <td class="cell-icon">
                                        <i class="icon-star"></i>
                                    </td>
                                    <td class="cell-author hidden-phone hidden-tablet">
                                        Nhất Trương
                                    </td>
                                    <td class="cell-title">
                                        Gửi CV công việc
                                    </td>
                                    <td class="cell-icon hidden-phone hidden-tablet">
                                        <i class="icon-paper-clip"></i>
                                    </td>
                                    <td class="cell-time align-right">
                                        2 tháng 3
                                    </td>
                                </tr>
                                <tr class="read starred">
                                    <td class="cell-check">
                                        <input type="checkbox" class="inbox-checkbox">
                                    </td>
                                    <td class="cell-icon">
                                        <i class="icon-star"></i>
                                    </td>
                                    <td class="cell-author hidden-phone hidden-tablet">
                                        Hoài Ngọc
                                    </td>
                                    <td class="cell-title">
                                        Gửi cv công việc
                                    </td>
                                    <td class="cell-icon hidden-phone hidden-tablet">
                                        <i class="icon-paper-clip"></i>
                                    </td>
                                    <td class="cell-time align-right">
                                        15 tháng 3
                                    </td>
                                </tr>
                                <tr class="unread">
                                    <td class="cell-check">
                                        <input type="checkbox" class="inbox-checkbox">
                                    </td>
                                    <td class="cell-icon">
                                        <i class="icon-star"></i>
                                    </td>
                                    <td class="cell-author hidden-phone hidden-tablet">
                                        Nguyên Bùi
                                    </td>
                                    <td class="cell-title">
                                        Gửi CV công việc
                                    </td>
                                    <td class="cell-icon hidden-phone hidden-tablet">
                                        <i class="icon-paper-clip"></i>
                                    </td>
                                    <td class="cell-time align-right">
                                        14 tháng 4
                                    </td>
                                </tr>
                                <tr class="unread starred">
                                    <td class="cell-check">
                                        <input type="checkbox" class="inbox-checkbox">
                                    </td>
                                    <td class="cell-icon">
                                        <i class="icon-star"></i>
                                    </td>
                                    <td class="cell-author hidden-phone hidden-tablet">
                                        Thành Nhân
                                    </td>
                                    <td class="cell-title">
                                        Gửi CV công việc
                                    </td>
                                    <td class="cell-icon hidden-phone hidden-tablet">
                                        <i class="icon-paper-clip-no"></i>
                                    </td>
                                    <td class="cell-time align-right">
                                        23 tháng 5

                            </table>
                        </div>

                    </div>
                </div>
                <!--/.content-->
            </div>
            <!--/.span9-->
        </div>
    </div>
    <!--/.container-->
</div>
<!--/.wrapper-->
</body>
<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</html>
