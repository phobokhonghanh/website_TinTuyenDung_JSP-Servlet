<%@ page import="vn.edu.hcmuaf.fit.model.Contact" %>
<%@ page import="vn.edu.hcmuaf.fit.service.DAOContact" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 06/01/2023
  Time: 4:08 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% Contact contact = (Contact) request.getAttribute("contact");
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin | Cài đặt giao diện</title>
    <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="css/theme.css" rel="stylesheet">
    <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
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
                    <h4> Chỉnh sửa thông tin liên hệ </h4>
                    <form action="<%=request.getContextPath()%>/admin/Update?action=changeContact" method="post">
                        <label> Tên công ty </label>
                        <input class="" style="height: auto;" type="text" name="name" placeholder="Nhập tên công ty"
                               value="<%=contact.getName()%>">
                        <label> Địa chỉ: </label>
                        <input class="" style="height: auto;" type="text" name="address" placeholder="Nhập địa chỉ"
                               value="<%=contact.getAddress()%>">
                        <label> Hotline: </label>
                        <input style="height: auto;"
                               type="number" name="phone" placeholder="Nhập hotline" value="<%=contact.getPhone()%>">
                        <label> Email </label>
                        <input class="" style="height: auto;" type="email" name="email" placeholder="example@gmail.com"
                               value="<%=contact.getEmail()%>">
                        <button type="submit" style="height: auto" class="btn">
                            Lưu
                        </button>
                    </form>
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
