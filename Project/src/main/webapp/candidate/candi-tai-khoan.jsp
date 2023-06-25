<%@ page import="vn.edu.hcmuaf.fit.model.Account" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.service.DAOAccount" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 01/01/2023
  Time: 10:36 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<% Account account = (Account) session.getAttribute("account");%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Tài khoản</title>
    <meta name=" description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/img/favicon.ico">

    <!-- CSS here -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/bootstrapost.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/flaticon.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/price_rangs.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/slicknav.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/animate.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/magnific-popupost.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/slick.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/nice-select.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/themify-icons.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/tai-khoan.css">
</head>
<body>
<div id="preloader-active">
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="preloader-inner position-relative">
            <div class="preloader-circle"></div>
            <div class="preloader-img pere-text">
                <img src="<%=request.getContextPath()%>/assets/img/logo/logo.png" alt="">
            </div>
        </div>
    </div>
</div>
<jsp:include page="../visitor/header-candi.jsp"></jsp:include>
<main>

    <div data-v-c4f347a8="" class="container-fluid1 py-4" style="margin-top: 30px">
        <div data-v-c4f347a8="" class="d-flex shadow-sm">
            <div data-v-c4f347a8="">
                <div data-v-61ae721f="" data-v-c4f347a8="" class="list-group1 rounded">
                    <a data-v-61ae721f="" href="<%=request.getContextPath()%>/candidate/candi-doi-mat-khau.jsp"
                       class="list-group-item list-group-item-action border-0 nuxt-link-exact-active nuxt-link-active bg-white">
                        <i data-v-61ae721f="" class="fa mr-2 fa-lock"></i> Đổi mật khẩu
                    </a>
                    <a data-v-61ae721f="" href="<%=request.getContextPath()%>/candidate/candi-tai-khoan.jsp" aria-current="page"
                       class="list-group-item list-group-item-action border-0 bg-none">
                        <i data-v-61ae721f="" class="fa mr-2 fa-user"></i> Thông tin cá nhân
                    </a>
                    <a data-v-61ae721f="" href="<%=request.getContextPath()%>/candidate/candi-tao-cv.jsp" aria-current="page"
                       class="list-group-item list-group-item-action border-0 nuxt-link-exact-active nuxt-link-active bg-white">
                        <i data-v-61ae721f="" class="fa mr-2 fa-upload"></i> Tạo CV
                    </a>
                    <a data-v-61ae721f="" href="<%=request.getContextPath()%>/candidate/CV?action=quanlycv"
                       aria-current="page"
                       class="list-group-item list-group-item-action border-0 nuxt-link-exact-active nuxt-link-active bg-white">
                        <i data-v-61ae721f="" class="fa mr-2 fa-tv"></i> Quản lý CV
                    </a>
                </div>
            </div>
            <div data-v-c4f347a8="" class="bg-white w-100 rounded">
                <!--               form -->
                <form action="<%=request.getContextPath()%>/Account?action=updateAccount" method="post">
                    <div data-v-c4f347a8="" class="">
                        <div data-v-c4f347a8="" class="card-header bg-white" style="border: none; box-shadow: none">
                            <h5> Thông tin cá nhân</h5>
                        </div>
                        <div data-v-c4f347a8="" class="card-body setting-form">
                            <div data-v-c4f347a8="" class="row">
                                <!--                                -->
                                <!--
                                                          avt end-->
                                <div data-v-c4f347a8="" class="form-group col-md-6">
                                    <label data-v-c4f347a8="" class="col-form-label">Ngày tạo: <%=account.getCreateDate()%></label>

                                </div>
                                <div data-v-c4f347a8="" class="row" style="width: 60%">
                                    <div data-v-c4f347a8="" class="form-group col-md-6">
                                        <label data-v-c4f347a8="">Họ và tên</label>
                                        <div data-v-8c64d55c="" data-v-c4f347a8="">
                                            <div data-v-8c64d55c="" class="input-container ml-auto position-relative">
                                                <input id="name" name="name" type="text"
                                                       placeholder="Nhập họ và tên" autocomplete="true"
                                                       class="form-control" value="<%=account.getName()%>">
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <%--                                            --%>
                                <div data-v-c4f347a8="" class="row " style="width: 60%">
                                    <div data-v-c4f347a8="" class="form-group col-md-6">
                                        <div data-v-c4f347a8="" class="d-flex justify-content-between">
                                            <label data-v-c4f347a8="">Email</label>

                                        </div>
                                        <div class="">
                                            <input id="email" name="email" placeholder="Nhập email"
                                                   class="form-control hidden-spin-button"
                                                   value="<%=account.getEmail()%>" disabled>
<%--                                            --%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div data-v-c4f347a8="" class="row" style="width: 60%">
                                <div data-v-c4f347a8="" class="form-group col-md-6">
                                    <label data-v-c4f347a8="">Ngày tạo tài khoản</label>
                                    <div data-v-8c64d55c="" data-v-c4f347a8="">
                                        <div data-v-8c64d55c="" class="input-container ml-auto position-relative">
                                            <input id="createdate" name="createdate"
                                                   class="form-control" value="<%=account.getCreateDate()%>"disabled>
                                        </div>
                                    </div>
                                </div>

                            </div>
<%--                            <form action="update" method="post">--%>
                            <div data-v-c4f347a8="" class="form-group mb-0">
                                <a data-v-c4f347a8="" href="/app/dashboard" class="btn head-btn1"
                                   style="background: crimson">Hủy</a>
                                <button id="btn" name="btn" type="submit" class="btn head-btn1"
                                        style="background: #0e90d2">
                                    Lưu
                                </button>
                            </div>
<%--                            </form>--%>

                        </div>
                    </div>
                </form>
                <!--                end form-->
            </div>
        </div>
    </div>
</main>
<jsp:include page="../visitor/footter-candi.jsp"></jsp:include>

</body>
<!-- JS here -->

<!-- All JS Custom Plugins Link Here here -->
<script src="<%=request.getContextPath()%>/assets/js/vendor/modernizr-3.5.0.min.js"></script>
<!-- Jquery, Popper, Bootstrap -->
<script src="<%=request.getContextPath()%>/assets/js/vendor/jquery-1.12.4.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/popper.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/bootstrapost.min.js"></script>
<!-- Jquery Mobile Menu -->
<script src="<%=request.getContextPath()%>/assets/js/jquery.slicknav.min.js"></script>

<!-- Jquery Slick , Owl-Carousel Plugins -->
<script src="<%=request.getContextPath()%>/assets/js/owl.carousel.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/slick.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/price_rangs.js"></script>

<!-- One Page, Animated-HeadLin -->
<script src="<%=request.getContextPath()%>/assets/js/wow.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/animated.headline.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.magnific-popupost.js"></script>

<!-- Scrollup, nice-select, sticky -->
<script src="<%=request.getContextPath()%>/assets/js/jquery.scrollUpost.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.nice-select.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.sticky.js"></script>

<!-- contact js -->
<script src="<%=request.getContextPath()%>/assets/js/contact.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.form.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.validate.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/mail-script.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.ajaxchimpost.min.js"></script>

<!-- Jquery Plugins, main Jquery -->
<script src="<%=request.getContextPath()%>/assets/js/plugins.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/main.js"></script>

</html>
