<%@ page import="vn.edu.hcmuaf.fit.model.Contact" %>
<%@ page import="vn.edu.hcmuaf.fit.service.DAOContact" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Price" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Category" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Log" %>
<%@ page import="vn.edu.hcmuaf.fit.control.UtilControl" %>
<%@ page import="java.time.LocalDateTime" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 06/01/2023
  Time: 4:08 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Log> listAll = (List<Log>) request.getAttribute("listAll");
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin | Thông báo</title>
    <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="css/theme.css" rel="stylesheet">
    <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
    <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
          rel='stylesheet'>
</head>
<body>
<jsp:include page="Admin-header.jsp"></jsp:include>
<style>
    /*Admin-thong-bao*/
    .noti-containers {
        min-width: 1000px;
        padding: 0px 0px 50px;
    }

    .noti-container {
        border-radius: 0.214rem !important;
        box-shadow: 0 .125rem .25rem rgba(0, 0, 0, .075) !important;
        background-color: #fff !important;
    }

    .noti {
        padding: 15px;
        display: flex;
    }

    .noti-type {
        width: 10%;
        display: flex;
        align-items: center;
        border-radius: 5px;
    }

    .alert-inf {
        margin: auto;
        font-family: 'Open Sans';
        font-weight: bold;
        color: #fff;
        background-color: #2fc316;
        border-color: #4a8d10;
    }

    .alert-alert {
        margin: auto;
        font-family: 'Open Sans';
        font-weight: bold;
        color: #fff;
        background-color: #fac552;
        border-color: #f9bd39;
    }

    .alert-warning {
        margin: auto;
        font-family: 'Open Sans';
        font-weight: bold;
        color: #ffffff;
        background-color: #ff0007;
        border-color: #a60f0f;
    }

    .alert-danger {
        margin: auto;
        font-family: 'Open Sans';
        font-weight: bold;
        color: #ffffff;
        background-color: #ae393c;
        border-color: #a60f0f;
    }

    .font-black {
        font-weight: bold;
        color: black;
        text-decoration: none !important;
    }

    .bg-green {
        background: #1a9307;
        padding: 4px 13px;
        font-size: 11.844px;
        font-weight: bold;
        border-radius: 20px;
        color: white;
        margin: 5px;
        font-family: 'Open Sans';
    }

    .noti-text {
        margin: auto;
    }

    .m-5 {
        margin: 5px;
    }

    .m-10 {
        margin: 10px;
    }

    .m10-5 {
        margin: 10px 5px;
    }
</style>
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
                    <h4> Thông báo hệ thống </h4>
                    <div class="noti-containers">
                        <div class="noti-container">
                            <% for (Log log : listAll) {
                            %>
                            <div>
                                <div class="noti">
                                    <%
                                        switch (log.getLevel()) {
                                            case 0:
                                    %>
                                    <div class="noti-type alert-inf m-5">
                                        <span class="noti-text" style="">INFO</span>
                                    </div>
                                    <%
                                            break;
                                        case 1:
                                    %>
                                    <div class="noti-type alert-alert m-5">
                                        <span class="noti-text" style="">ALERT</span>
                                    </div>
                                    <%
                                            break;
                                        case 2:
                                    %>
                                    <div class="noti-type alert-warning m-5">
                                        <span class="noti-text" style="">WARNING</span>
                                    </div>
                                    <%
                                            break;
                                        case 3:
                                    %>
                                    <div class="noti-type alert-danger m-5">
                                        <span class="noti-text" style="">DANGER</span>
                                    </div>
                                    <% break;
                                    }
                                    %>
                                    <div class="m10-5"><%=log.getCreateDate()%>
                                    </div>
                                    <a href="javascript:void(0)"
                                       class="m-10 font-black"><%=log.getContent()%>
                                        <span style="display: block"><%=log.getSrc()%></span>
                                    </a>
                                    <div style="float: right">
                                        <%if (UtilControl.dateToCreate(log.getCreateDate())) {%>
                                        <span class="bg-green">Mới</span>
                                        <%}%>
                                    </div>
                                </div>
                                <hr style="margin: 0px !important;">
                            </div>
                            <% } %>
                        </div>
                        <!-- Hiển thị nút phân trang -->
                        <div style="margin: 0 auto; text-align: center;">
                            <%
                                if (request.getAttribute("trang") != null || request.getAttribute("tongSoTrang") != null) {
                                    int tongSoTrang = (int) request.getAttribute("tongSoTrang");
                                    int trang = (int) request.getAttribute("trang");

                                    for (int pageNumber = trang - 2; pageNumber <= trang + 2; pageNumber++) { // Lặp qua 5 trang gần trang hiện tại (2 trang trước và 2 trang sau)
                                        if (pageNumber >= 1 && pageNumber <= tongSoTrang) { // Kiểm tra xem trang có nằm trong phạm vi từ 1 đến tổng số trang hay không
                                            if (pageNumber == trang) { // Kiểm tra xem đây có phải là trang hiện tại hay không
                            %>
                            <span class="current-page"><%= pageNumber %></span> <!-- Hiển thị số trang hiện tại -->
                            <% } else { // Nếu không phải là trang hiện tại
                            %>
                            <!-- Tạo liên kết đến trang khác -->
                            <a href="Log?action=logManager&trang=<%= pageNumber %>"
                               class="btn btn-link"><%= pageNumber %>
                            </a>
                            <% }
                            }
                            }
                            } %>
                        </div>
                    </div>
                </div>

            </div>

        </div>
        <!--/.content-->
    </div>
    <!--/.span9-->
</div>
</body>
<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</html>
