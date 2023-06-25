<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 03/01/2023
  Time: 6:45 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Header</title>
</head>
<body>
<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
                <i class="icon-reorder shaded"></i></a><a class="brand"
                                                          href="<%=request.getContextPath()%>/admin/Admin-trang-chu.jsp">Admin </a>
            <div class="nav-collapse collapse navbar-inverse-collapse">
                <ul class="nav pull-right">
                    <ul class="nav nav-icons">
                        <li><a href="<%=request.getContextPath()%>/visitor/trang-chu-candi.jsp"><i
                                class="icon-eye-open"></i></a></li>
                        <li><a href="<%=request.getContextPath()%>/admin/Log?action=logManager"><i class="icon-bell "></i></a>
                        </li>
                    </ul>
                    <li class="nav-user dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <img src="<%=request.getContextPath()%>/admin/images/user.png" class="nav-avatar"/>
                        <c:if test="${sessionScope.account == null}">
                            <span>User</span>
                        </c:if>
                        <c:if test="${sessionScope.account != null}">
                            <span> Xin chào ${sessionScope.account.username}</span>
                        </c:if>
                        <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li class="divider"></li>
                            <li><a href='<c:url value="/Logout?action=logout"></c:url>'> Đăng xuất</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!-- /.nav-collapse -->
        </div>
    </div>
    <!-- /navbar-inner -->
</div>
</body>
</html>
