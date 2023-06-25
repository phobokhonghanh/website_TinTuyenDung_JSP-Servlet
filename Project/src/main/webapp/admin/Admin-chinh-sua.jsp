<%@ page import="vn.edu.hcmuaf.fit.model.Contact" %>
<%@ page import="vn.edu.hcmuaf.fit.service.DAOContact" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Price" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Category" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 06/01/2023
  Time: 4:08 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% Price price = (Price) request.getAttribute("price");
    List<Category> categoryList = (List<Category>) request.getAttribute("listCategory");
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin | Cập nhật</title>
    <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="css/theme.css" rel="stylesheet">
    <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
    <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
          rel='stylesheet'>
<%--    <script type="text/javascript" src="https://www.google.com/jsapi"></script>--%>
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
                    <h4> Cập nhật </h4>
                    <form action="<%=request.getContextPath()%>/admin/Update?action=change" method="post">
                        <div style="display: flex;">
                            <div style="width: 50%;">
                                <label> Giá tiền </label>
                                <input style="height: auto;" type="number" name="money"
                                       placeholder="Nhập giá tiền"
                                       value="<%=price.getPrice()%>">
                            </div>
                            <div style="width: 50%;">
                                <label> Thuế : </label>
                                <input style="height: auto;" type="text" name="vat"
                                       placeholder="Nhập thuế (vd:0.01)"
                                       value="<%=price.getVat()%>">
                            </div>
                        </div>
                        <div style="display: flex;">
                            <div style="width: 50%;">
                                <label> Thêm danh mục: </label>
                                <input style="height: auto; width: 95%;"
                                       type="text" name="addCategory"
                                       placeholder="Nhập danh mục muốn thêm (Không trùng với danh mục đang có)">
                            </div>
                            <div style="width: 50%;">
                                <label> Danh mục đang có: </label>
                                <select >
                                    <% for (Category category : categoryList) {%>
                                    <option value="<%=category.getId()%>"><%=category.getName()%>
                                    </option>
                                    <%}%>
                                </select>
                            </div>
                        </div>
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
</body>
<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</html>
