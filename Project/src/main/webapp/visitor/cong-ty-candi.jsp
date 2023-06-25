<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 05/01/2023
  Time: 7:37 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="vn.edu.hcmuaf.fit.service.DAOCompany" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Company" %>
<%@ page import="vn.edu.hcmuaf.fit.service.DAOPost" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Category" %>
<%@ page import="vn.edu.hcmuaf.fit.service.DAOCategory" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.service.DAOImage" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% DAOPost dp = new DAOPost();
    List<Category> category = DAOCategory.getInstance().getCategoryAll();
%>
<% Company company = (Company) request.getAttribute("company");%>;
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title> Công ty </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/img/favicon.ico">


    <!-- CSS here -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/bootstrapost.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/price_rangs.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/flaticon.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/slicknav.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/animate.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/magnific-popupost.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/themify-icons.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/slick.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/nice-select.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/style.css">
</head>
<body>
<!-- Preloader Start -->
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
<!-- Preloader Start -->
<jsp:include page="header-candi.jsp"></jsp:include>
<!-- Hero Area Start-->
<div class="slider-area ">
    <div class="single-slider section-overly slider-height2 d-flex align-items-center"
         data-background="<%=request.getContextPath()%>/assets/img/hero/about.jpg">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="hero-cap text-center">
                        <h2>Công ty</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Hero Area End -->
<!--================Blog Area =================-->
<section class="blog_area single-post-area section-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 posts-list">
                <div class="single-post">
                    <div class="feature-img">
                        <img src="https://static.topcv.vn/company_covers/cong-ty-co-phan-dau-tu-giao-duc-va-phat-trien-nguon-luc-quoc-te-pasal-e105dbf3fdc1a694fd162de8e301be9b-6099fe67ba6b6.jpg"
                             alt="Công ty Cổ Phần Đầu tư Giáo dục Và Phát triển Nguồn Lực Quốc Tế Pasal"
                             class="img-fluid"></div>
                    <div class="blog_details">
                        <h2><%=company.getName()%>
                        </h2>
                        <p class="excert">
                            <%=company.getDescription()%>
                        </p>
                    </div>
                </div>
                <!--Địa chỉ-->
                <div class="bg-white br-8 mt-20">
                    <div class="section ">
                        <div class="contact-section">
                            <div class="section-header">
                                <h2 class="section-title">Liên hệ</h2>
                            </div>
                            <div class="section-body">
                                <div class="info">
                                    <div class="company-logo">
                                        <img src="<%=request.getContextPath() +DAOImage.getURL(company.getImageId())%>"
                                             alt="image" title="" class="company-image-logo">
                                    </div>
                                    <div class="company-name">
                                        <h4><%=company.getName()%><i
                                                class="fa-solid fa-circle-check color-premium"></i></h4>
                                    </div>
                                </div>
                                <hr>
                                <div class="content-contact">
                                    <div class="info-line">
                                        <i class="fa-solid ">Liên hệ: </i>
                                        <a href=""><%=company.getPhone()%>
                                        </a>
                                    </div>
                                    <div class="info-line">
                                        <i class="fa-solid">Website: </i>
                                        <span><a class="" href=""
                                                 target="_blank">company.com</a></span>
                                    </div>
                                    <div class="info-line">
                                        <i class="fa-solid ">Địa chỉ: </i>
                                        <span><%=company.getAddress()%>.</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="col-lg-4">
                <div class="blog_right_sidebar">

                    <aside class="single_sidebar_widget post_category_widget">
                        <h4 class="widget_title">Việc làm</h4>
                        <ul class="list cat-list">
                            <%for (Category c : category) { %>
                            <li>
                                <div class="<%=c.getId()%>">
                                    <h5>
                                        <a href="<%=request.getContextPath()%>/Category?action=category&id=<%=c.getId()%>&name=<%=c.getName()%>"><%=c.getName()%>
                                        </a>
                                    </h5>
                                    <span>(<%=dp.getPostofCategoryByID(c.getId()).size()%>)</span>
                                </div>
                            </li>
                            <li>
                                    <% }%>
                        </ul>
                    </aside>
                    <aside class="single_sidebar_widget popular_post_widget">
                        <h3 class="widget_title">Bài viết gần đây</h3>
                        <div class="media post_item">
                            <img src="<%=request.getContextPath()%>/assets/img/post/post_1.png" alt="post">
                            <div class="media-body">
                                <a href="single-blog.html">
                                    <h3>Rộn ràng ngày hội Việc làm công nghệ thông tin...</h3>
                                </a>
                                <p>1 giờ trước</p>
                            </div>
                        </div>
                        <div class="media post_item">
                            <img src="../assets/img/post/post_2.png" alt="post">
                            <div class="media-body">
                                <a href="single-blog.html">
                                    <h3>Đẩy mạnh ứng dụng công nghệ thông tin</h3>
                                </a>
                                <p>2 giờ trước</p>
                            </div>
                        </div>
                        <div class="media post_item">
                            <img src="../assets/img/post/post_3.png" alt="post">
                            <div class="media-body">
                                <a href="single-blog.html">
                                    <h3>Thị trường hoạt động công nghệ thông tin</h3>
                                </a>
                                <p>3 giờ trước</p>
                            </div>
                        </div>
                        <div class="media post_item">
                            <img src="../assets/img/post/post_4.png" alt="post">
                            <div class="media-body">
                                <a href="single-blog.html">
                                    <h3>Có thật công nghệ thông tin là vua của mọi loại nghề</h3>
                                </a>
                                <p>4 giờ trước</p>
                            </div>
                        </div>
                    </aside>

                </div>
            </div>
        </div>
    </div>
</section>
<!--================ Blog Area end =================-->
<jsp:include page="footter-candi.jsp"></jsp:include>
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

<!-- Jquery Slick , Owl-Carousel Range -->
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
