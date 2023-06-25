<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="vn.edu.hcmuaf.fit.service.DAOAccount" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Account" %>
<%@ page import="vn.edu.hcmuaf.fit.service.DAOCompany" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 06/01/2023
  Time: 10:36 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    DAOCompany daoCompany = new DAOCompany();
    String roles = request.getAttribute("role") == null ? "3" : (String) request.getAttribute("role");
    String keywords = request.getAttribute("keywords") == null ? "" : (String) request.getAttribute("keywords");
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin | Nguời dùng</title>
    <link type="text/css" href="<%=request.getContextPath()%>/admin/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="<%=request.getContextPath()%>/admin/css/theme.css" rel="stylesheet">
    <link type="text/css" href="<%=request.getContextPath()%>/admin/images/icons/css/font-awesome.css" rel="stylesheet">
    <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
          rel='stylesheet'>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/admin/css/quan-ly-bai-dang.css">
</head>
<body>
<jsp:include page="Admin-header.jsp"></jsp:include>
<div class="wrapper">
    <div class="container">
        <div class="row">
            <div class="span3">
                <jsp:include page="Admin-sidebar.jsp"></jsp:include>
                <!--/.sidebar-->
            </div>
            <!--/.span3-->
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="card">
                    <div class="card-header">
                        <h5 class="mb-0" style="font-size: 15px;">Quản lý người dùng</h5>
                    </div>
                    <form class="navbar-search pull-left input-append"
                          action="<%=request.getContextPath()%>/admin/AccountManager?action=search" method="post">
                        <div style="right: 60px; position: absolute">
                            <input type="text" class="span3" name="keywords" placeholder="Tìm kiếm theo tên, chức vụ">
                            <button class="btn" type="submit">
                                <i class="icon-search"></i>
                            </button>
                            <a href="<%=request.getContextPath()%>/admin/dang-ky-Admin.jsp" class="holder"
                               style="right: -165px; top:5px; position: absolute; outline: none">
                                <i class="icon-plus"></i>
                            </a>
                        </div>
                        <select tabindex="1" data-placeholder="Vui lòng chọn.." name="role"
                                style="right: -72px;top: 0px; width: 123px">
                            <option selected="selected" value="3">Tất cả</option>
                            <option value="0">ADMIN</option>
                            <option value="1">CANDIDATE</option>
                            <option value="2">BUSINESS</option>
                        </select>
                    </form>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="example" class="table table-striped table-bordered second"
                                   style="width:100%">
                                <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Tên người dùng</th>
                                    <th>Email</th>
                                    <th>Đối tượng</th>
                                    <th>Trạng thái</th>
                                    <th>Ngày tạo</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <% List<Account> listAccount = (List<Account>) request.getAttribute("listAccount");
                                    for (Account account : listAccount) {
                                        int role = account.getRole();
                                %>
                                <tr>
                                    <td><%=account.getId()%>
                                    </td>
                                    <td style="width: 130px;"><%=account.getUsername()%> - <%=account.getName()%>
                                    <td><%=account.getEmail()%>
                                    </td>
                                    <%
                                        if (role == 2) {%>
                                    <td>
                                        <a style="font-weight: bold"
                                           href="<%=request.getContextPath()%>/admin/CompanyManager?action=detailsCompany&idAccount=<%=account.getId()%>"><%=account.getNameRole(role)%>
                                        </a>
                                        <br>
                                        <span>Công ty: <%=DAOCompany.getCompany(account.getId()).getName()%></span>
                                    </td>
                                    <% } else {%>
                                    <td><%=account.getNameRole(role)%>
                                    </td>
                                    <% } %>
                                    <td><%=account.getNameStatus(account.getStatus())%>
                                    </td>
                                    <td style="width: 85px">
                                        <%=account.getCreateDate()%>
                                    </td>
                                    <td>
                                        <div class="btn-group ml-auto">
                                            <% if (account.getStatus() == Account.LOCK) {%>
                                            <a href="<%=request.getContextPath()%>/admin/AccountManager?action=unlock&username=<%=account.getUsername()%>"
                                               class="btn btn-sm btn-outline-light"
                                               style="padding-left: 20px;outline: none; background: #c27d86">
                                                <i class="icon-lock"></i>
                                            </a>
                                            <%} else {%>
                                            <a href="<%=request.getContextPath()%>/admin/AccountManager?action=lock&username=<%=account.getUsername()%>"
                                               class="btn btn-sm btn-outline-light"
                                               style="padding-left: 20px;outline: none">
                                                <i class="icon-lock"></i>
                                            </a>
                                            <%}%>
                                        </div>
                                    </td>
                                </tr>
                                <% } %>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- Hiển thị nút phân trang -->
                <div style="margin: 0 auto; text-align: center;">
                    <%
                        if (request.getAttribute("trang") != null || request.getAttribute("tongSoTrang") != null) {
                            int sobd = (int) request.getAttribute("tongSoTrang");
                            int t = (int) request.getAttribute("trang");
                            for (int pageNumber = t - 2; pageNumber <= t + 2; pageNumber++) { // Lặp qua 5 trang gần trang hiện tại (2 trang trước và 2 trang sau)
                                if (pageNumber >= 1 && pageNumber <= sobd) { // Kiểm tra xem trang có nằm trong phạm vi từ 1 đến tổng số trang hay không
                                    if (pageNumber == t) { // Kiểm tra xem đây có phải là trang hiện tại hay không
                    %>
                    <span class="current-page"><%= pageNumber %></span> <!-- Hiển thị số trang hiện tại -->
                    <% } else { // Nếu không phải là trang hiện tại
//                        if (request.getAttribute("role") == null) {
                        if (roles.equals("3") && keywords.equals("")) {

                    %>
                    <!-- Tạo liên kết đến trang khác -->
                    <a href="AccountManager?action=accountManager&trang=<%= pageNumber %>"
                       class="btn btn-link"><%= pageNumber %>
                    </a>
                    <% } else {%>
                    <a href="AccountManager?action=search&trang=<%= pageNumber %>&keywords=<%=keywords%>&role=<%=roles%>"
                       class="btn btn-link"><%= pageNumber %>
                    </a>
                    <% } %>
                    <% } %>
                    <% } %>
                    <% } %>
                    <% } %>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- end data table  -->
            <!-- ============================================================== -->
        </div>
    </div>

</div>
<!--/.wrapper-->
</body>
<script src="<%=request.getContextPath()%>/admin/scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/admin/scripts/jquery-ui-1.10.1.custom.min.js"
        type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/admin/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</html>
