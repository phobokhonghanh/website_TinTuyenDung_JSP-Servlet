<%@ page import="vn.edu.hcmuaf.fit.service.modelQuanLy.QuanLyDoanhThu" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.google.gson.Gson" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 06/01/2023
  Time: 9:53 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% List<QuanLyDoanhThu> listDoanhThu = (List<QuanLyDoanhThu>) request.getAttribute("listDoanhThu");
    List<QuanLyDoanhThu> listDoanhThuAll = (List<QuanLyDoanhThu>) request.getAttribute("listDoanhThuAll");
    Gson gson = new Gson();
    String json = gson.toJson(listDoanhThuAll);
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin | Quản lý</title>
    <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="css/theme.css" rel="stylesheet">
    <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
    <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
          rel='stylesheet'>
    <link rel="stylesheet" href="css/quan-ly-bai-dang.css">
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
                        <h5 class="mb-0">Quản lý doanh thu</h5>
                    </div>
                    <button class="btn" onclick="exportToExcel('doanhthu', 'Doanh thu')">
                        Xuất file Excel
                    </button>
                    <form class="navbar-search pull-left input-append"
                          action="<%=request.getContextPath()%>/admin/Pay?action=quanlydoanhthu" method="post">
                        <%--                        <input type="text" style="height:30px" class="span3" name="keywords" placeholder="Tìm kiếm">--%>
                        <input style="height:30px; width: 130px;" type="month" min="2010-01" max="" id="inputTime"
                               class="span3" name="keywords"/>
                        <select tabindex="1" data-placeholder="Vui lòng chọn.." name="statusSearch"
                                style="right: 0px;top: 0px; width: 123px">
                            <option selected="selected" value="3">Tất cả</option>
                            <option value="1">Đã xem</option>
                            <option value="0">Chưa xem</option>
                        </select>
                        <script>
                            var now = new Date();
                            var maxDate = now.getFullYear() + '-0' + (now.getMonth() + 1)
                            document.getElementById("inputTime").setAttribute("max", maxDate);
                        </script>
                        <button class="btn" type="submit">
                            <i class="icon-search"></i>
                        </button>

                    </form>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="example" class="table table-striped table-bordered second"
                                   style="width:100%">
                                <thead>
                                <tr>
                                    <th>Tên người dùng</th>
                                    <th>Số tài khoản</th>
                                    <th>Số bài đăng</th>
                                    <th>Tổng tiền</th>
                                    <th>Ngày thanh toán</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <% if (listDoanhThu != null || listDoanhThu.size() > 0) {
                                    for (QuanLyDoanhThu doanhThu : listDoanhThu) { %>
                                <tr>
                                    <td><%=doanhThu.getName()%>
                                    </td>
                                    <td><%=doanhThu.getNumAccount()%>
                                    </td>
                                    <td><%=doanhThu.getSoBai()%>
                                    </td>
                                    <td class="cv"><%=doanhThu.getMoney()%> VND</td>
                                    <td class="mt"><%=doanhThu.getCreateDate()%>
                                    </td>
                                    <td class="mt">
                                        <div class="btn-group ml-auto" style="width: 10px">
                                            <% if (doanhThu.getStatus() == 1) { %>
                                            <a href="<%=request.getContextPath()%>/business/Post?action=tintuyendung&billID=<%=doanhThu.getId()%>"
                                               class="btn btn-sm btn-outline-light" style="outline: none">
                                                <i class="icon-eye-open" style="right: 5px;"></i>
                                            </a>
                                            <% } else { %>
                                            <a href="<%=request.getContextPath()%>/business/Post?action=tintuyendung&billID=<%=doanhThu.getId()%>"
                                               class="btn btn-sm btn-outline-light"
                                               style="outline: none;background: #8ff118;">
                                                <i class="icon-eye-open" style="right: 5px;"></i>
                                            </a>
                                            <% }%>
                                        </div>
                                    </td>
                                </tr>
                                <%
                                        }
                                    }
                                %>
                                </tbody>
                            </table>
                        </div>
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
                                if (request.getAttribute("statusSearch") == null && request.getAttribute("keywords") == null) {
                            %>
                            <!-- Tạo liên kết đến trang khác -->
                            <a href="Pay?action=quanlydoanhthu&trang=<%= pageNumber %>"
                               class="btn btn-link"><%= pageNumber %>
                            </a>
                            <% } else {%>
                            <a href="Pay?action=quanlydoanhthu&trang=<%= pageNumber %>&statusSearch=<%=request.getAttribute("statusSearch")%>&keywords=<%=request.getAttribute("keywords") == null ? "":request.getAttribute("keywords")%>"
                               class="btn btn-link"><%= pageNumber %>
                            </a>
                            <% } %>
                            <% } %>
                            <% } %>
                            <% } %>
                            <% } %>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- end data table  -->
            <!-- ============================================================== -->
        </div>
    </div>

</div>
<!--/.content-->
</body>
<script>
    var myData = <%=json%>;

    function exportToExcel(fileName, sheetName) {
        if (myData.length === 0) {
            console.error('Chưa có data');
            return;
        }
        let wb;
        const ws = XLSX.utils.json_to_sheet(myData);
        // console.log('ws', ws);
        wb = XLSX.utils.book_new();
        XLSX.utils.book_append_sheet(wb, ws, sheetName);
        console.log('wb', wb);
        XLSX.writeFile(wb, fileName + `.xlsx`);
    }
</script>
<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="scripts/xlsx.full.min.js" type="text/javascript"></script>
</html>
