<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 31/12/2022
  Time: 4:24 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Header</title>
</head>
<body>
<header>
    <!-- Header Start -->
    <div class="header-area header-transparrent">
        <div class="headder-top header-sticky">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-3 col-md-2 padding-left">
                        <!-- Logo -->
                        <div class="logo">
                            <a href="<%=request.getContextPath()%>/visitor/trang-chu-candi.jsp"><img
                                    src="<%=request.getContextPath()%>/assets/img/logo/logo.png" alt=""></a>
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-9">
                        <div class="menu-wrapper">
                            <!-- Main-menu -->
                            <div class="main-menu">
                                <nav class="d-none d-lg-block">
                                    <ul id="navigation">
                                        <li><a href="<%=request.getContextPath()%>/visitor/trang-chu-candi.jsp">Trang
                                            chủ</a></li>
                                        <li><a href="<%=request.getContextPath()%>/Post?action=danhsanhvieclam">Việc
                                            làm </a>
                                        </li>
                                        <li>
                                            <a href="<%=request.getContextPath()%>/candidate/Post_details?action=vieclamdaungtuyen">Đã
                                                ứng tuyển</a></li>
                                        <li><a href="<%=request.getContextPath()%>/visitor/danh-sach-cong-ty-candi.jsp">Công
                                            ty</a>
                                        </li>
                                        <li><a>Trang</a>
                                            <ul class="submenu" id="action">
                                                <li><a href="<%=request.getContextPath()%>/visitor/tin-tuc-candi.jsp"
                                                       target="action">Tin tức</a></li>
                                                <li><a href="<%=request.getContextPath()%>/visitor/lien-he-candi.jsp"
                                                       target="action">Liên hệ</a></li>
                                                <li>
                                                    <a href="<%=request.getContextPath()%>/visitor/ve-chung-toi-candi.jsp"
                                                       target="action">Về Chúng tôi</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                            <!-- Header-btn -->
                            <div class="header-btn d-none f-right d-lg-block">
                                <c:if test="${sessionScope.account == null}">
                                    <a href='<c:url value="/SignUp?action=candidate"/>' class="btn head-btn2">Đăng
                                        kí</a>
                                    <a href='<c:url value="/Login?action=login"/>' class="btn head-btn2">Đăng
                                        nhập</a>
                                </c:if>
                                <a href='<c:url value="/business/busi-trang-chu.jsp"/>' class="btn head-btn1">Nhà tuyển
                                    dụng</a>
                                <c:if test="${sessionScope.account.role == 0}">
                                    <a href='<c:url value="/admin/Admin-trang-chu.jsp"/>'><i
                                            class="fa fa-user-secret"></i> Admin</a>
                                </c:if>
                                <li class="nav-item dropdown pe-2 d-flex align-items-center">

                                    <c:if test="${sessionScope.account != null}">
                                        <a href="<%=request.getContextPath()%>/candidate/candi-tai-khoan.jsp">
                                            <i class="fa fa-user"></i>
                                            <span> Xin chào ${sessionScope.account.name}</span>
                                        </a>

                                        <ul>
                                            <li>
                                                <a class="" href='<c:url value="/Logout?action=logout"/>'>
                                                    Đăng xuất</a></li>
                                        </ul>
                                    </c:if>
                                </li>

                            </div>
                        </div>
                    </div>
                    <%--                    <!-- Mobile Menu -->--%>
                    <%--                    <div class="col-12">--%>
                    <%--                        <div class="mobile_menu d-block d-lg-none"></div>--%>
                    <%--                    </div>--%>
                </div>
            </div>
        </div>
    </div>
    <!-- Header End -->
</header>
</body>
</html>
