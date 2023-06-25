<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 01/01/2023
  Time: 10:36 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>


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
                    <a data-v-61ae721f="" href="<%=request.getContextPath()%>/candidate/candi-tai-khoan.jsp"
                       aria-current="page"
                       class="list-group-item list-group-item-action border-0 nuxt-link-exact-active nuxt-link-active bg-white">
                        <i data-v-61ae721f="" class="fa mr-2 fa-user"></i> Thông tin cá nhân
                    </a>
                    <a data-v-61ae721f="" href="<%=request.getContextPath()%>/candidate/candi-tao-cv.jsp" aria-current="page"
                       class="list-group-item list-group-item-action border-0 bg-none">
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
                <div class="container">
                    <div class="content">
                        <div class="module">
                            <div class="module-body">
                                <br>
                                <form action="<%=request.getContextPath()%>/candidate/CV?action=taocv" method="post" class="form-horizontal row-fluid">
                                    <div class="module-head">
                                        <label class="control-label">Tên CV:</label>
                                        <div class="controls">
                                            <input type="text" id="title" name="title" onkeyup="checkBulletinBoard()"
                                                   class="span8"></div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">Họ và Tên</label>
                                        <div class="controls">
                                            <input type="text" id="name" name="name" onkeyup="checkBulletinBoard()"
                                                   placeholder="Nhập họ tên" class="span8">
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">Vị trí ứng tuyển</label>
                                        <div class="controls">
                                            <input type="text" id="rank" name="rank" onkeyup="checkBulletinBoard()"
                                                   placeholder="Nhập vị trí mong muốn" class="span8">
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">Email</label>
                                        <div class="controls">
                                            <input type="text" id="email" name="email" onkeyup="checkBulletinBoard()"
                                                   placeholder="Nhập email" class="span8">
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">SĐT</label>
                                        <div class="controls">
                                            <input type="text" id="phone" name="phone" onkeyup="checkBulletinBoard()"
                                                   placeholder="Nhập số điện thoại" class="span8">
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">Giới tính</label>
                                        <div class="controls">
                                            <div class="input-prepend">
                                            <span class="help-inline">
                                                <label class="radio inline">
                                                    <input type="radio" name="gen" value="Nam" checked>
                                                    Nam
                                                </label>
                                                <label class="radio inline">
                                                    <input type="radio" name="gen" value="Nữ">
                                                     Nữ
                                                </label>
                                             </span>
                                            </div>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                        <label class="control-label">Giới thiệu bản thân</label>
                                        <div class="controls">
                                            <textarea class="span8" id="introduce" name="introduce"
                                                      onkeyup="checkBulletinBoard()" rows="5"></textarea>
                                        </div>
                                         </div>
                                        <div class="control-group">
                                            <label class="control-label">Nơi ở hiện tại</label>
                                            <div class="controls">
                                                <input type="text" id="address" name="address"
                                                       onkeyup="checkBulletinBoard()" placeholder="Quận/Huyện/Thành phố"
                                                       class="span8">
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label">Mức lương mong muốn</label>
                                            <div class="controls">
                                                <div class="input-append">
                                                    <input type="text" id="salary" name="salary" placeholder=" VND"
                                                           onkeyup="checkBulletinBoard()" class="span8">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label">Các kỹ năng mềm</label>
                                            <div class="controls">
                                            <textarea class="span8" id="skill" name="skill"
                                                      onkeyup="checkBulletinBoard()" rows="5"></textarea>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label">Kinh nghiệm làm việc</label>
                                            <div class="controls">
                                            <textarea class="span8" id="exp" name="exp" onkeyup="checkBulletinBoard()"
                                                      rows="5"></textarea>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label">Học vấn, chứng chỉ</label>
                                            <div class="controls">
                                            <textarea class="span8" id="lv" name="lv" onkeyup="checkBulletinBoard()"
                                                      rows="5"></textarea>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <div class="form-actions">
                                                <button type="submit" id="tạo" class="btn">Tạo</button>
                                            </div>
                                        </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!--                end form-->
            </div>
        </div>
    </div>
    <style>
        .form-horizontal .control-group {
            margin-bottom: 20px;
        }
        .form-horizontal .control-group .controls .span8 {
            width: 100%;
            padding: 10px;
            font-weight: bold;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .form-horizontal .control-group label.control-label {
            font-weight: bold;
            color: #337ab7;
        }
        .form-horizontal .form-actions {
            text-align: center;
            margin-top: 20px;
        }
        .module-body {
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            padding: 10px;
        }
        .module-head {
            margin-top: 5px;
            margin-bottom: 10px;
        }
        .module-head .control-label {
            font-weight: bold;
            color: #00b14f;
        }
    </style>
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
