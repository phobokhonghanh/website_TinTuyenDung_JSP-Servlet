<%@ page import="vn.edu.hcmuaf.fit.service.DAOPost" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Post" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.control.UtilSession" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 03/01/2023
  Time: 6:53 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% DAOPost dp = new DAOPost();%>
<html>
<head>
    <title></title>
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur"
     navbar-scroll="true">
    <div class="container-fluid py-1 px-3">
        <nav aria-label="breadcrumb">
            <a href="<%=request.getContextPath()%>/visitor/trang-chu-candi.jsp"><h6 class="font-weight-bolder mb-0">Trang Chủ TopViecLam</h6></a>
        </nav>
        <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
            <div class="ms-md-auto pe-md-3 d-flex align-items-center">
            </div>
            <ul class="navbar-nav  justify-content-end">
                <li class="nav-item d-flex align-items-center">
                    <!--button-->
                    <a class="btn btn-outline-primary btn-sm mb-0 me-3"
                       href="<%=request.getContextPath()%>/business/busi-dang-tin.jsp">Đăng tin</a>
                    <a class="btn btn-outline-primary btn-sm mb-0 me-3"
                       href="<%=request.getContextPath()%>/business/CV?action=busiquanlycv">Xem CV</a>
                    <a class="btn btn-outline-primary btn-sm mb-0 me-3"
                       href="<%=request.getContextPath()%>/business/busi-tro-giup.jsp">Trợ giúp</a>
                </li>
            </ul>
        </div>
        <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="" style="width: 0px">
            <div class="ms-md-auto pe-md-3 d-flex align-items-center"></div>
            <ul class="navbar-nav  justify-content-end">
                <!--           st         -->
                <i class="nav-item  pe-2 d-flex align-items-center">
                    <%--                    <a href="../business/busi-gio-hang.jsp" class="nav-link text-body" style="margin-right: 15px;">--%>
                    <a href="<%=request.getContextPath()%>/business/Post?action=giohang" class="nav-link text-body"
                       style="margin-right: 15px;">
                        <i class="fa fa-shopping-cart  " style="width: 20px; padding-left: 7px;"></i>
                        <span class=" d-sm-inline d-none font-weight-bold text-sm"
                              style="margin-right: 10px"> (<%=dp.getPost(UtilSession.getInstance().getValue(request, "account").getId(), 0).size()%>) </span>
                    </a>

                </i>

                <li class="nav-item dropdown pe-2 d-flex align-items-center">
                    <a href="javascript:;" class="nav-link text-body p-0"
                       data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="fa fa-user me-sm-1"></i>
                        <span class=" d-sm-inline d-none font-weight-bold text-sm"> ${sessionScope.account.name} </span>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-end px-2 py-3 me-sm-n4">
                        <% if (UtilSession.getInstance().getValue(request, "account").getRole() == 0) {%>
                        <% if (UtilSession.getInstance().getUrlSession(request, "url2") == null) {%>
                        <li class="mb-2 font-weight-bold" style="text-align: center">
                            <a href="<%=request.getContextPath()%>/admin/Admin-trang-chu.jsp">Trang chủ admin</a>
                        </li>
                        <%} else {%>
                        <li class="mb-2 font-weight-bold" style="text-align: center">
                            <a href="<%=request.getContextPath()%>/<%=UtilSession.getInstance().getUrlSession(request,"url2")%>">Trở
                                về trang admin</a>
                        </li>
                        <% UtilSession.getInstance().removeValue(request, "url2");
                        }%>
                        <%}%>
                        <li class=" mb-2 font-weight-bold" style="text-align: center">
                            <a href='<c:url value="/Logout?action=logout"/>'> Đăng xuất</a>
                        </li>
                    </ul>
                </li>
                <!--             end       -->
            </ul>
        </div>
    </div>
</nav>
<!-- End Navbar -->
</body>
</html>
