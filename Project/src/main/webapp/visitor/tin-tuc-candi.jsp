<%@ page import="java.util.Date" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Post" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.service.DAOPost" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Category" %>
<%@ page import="vn.edu.hcmuaf.fit.service.DAOCategory" %>
<%--
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 04/01/2023
  Time: 4:51 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    DAOPost daoPost = new DAOPost();
    List<Category> category = DAOCategory.getInstance().getCategoryAll();
%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Tin tức</title>
    <meta name=" description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="../assets/img/favicon.ico">
    <!-- CSS here -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/bootstrapost.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/slicknav.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/animate.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/price_rangs.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>//assets/css/magnific-popupost.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/themify-icons.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/themify-icons.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/slick.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/nice-select.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/responsive.css">
</head>
<body>
<div id="preloader-active">
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="preloader-inner position-relative">
            <div class="preloader-circle"></div>
            <div class="preloader-img pere-text">
                <img src="../assets/img/logo/logo.png" alt="">
            </div>
        </div>
    </div>
</div>
<jsp:include page="header-candi.jsp"></jsp:include>
<!-- Hero Area Start-->


<div class="slider-area ">
    <div class="single-slider section-overly slider-height2 d-flex align-items-center"
         data-background="<%=request.getContextPath()%>/assets/img/hero/about.jpg">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="hero-cap text-center">
                        <h2>Tin tức</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Hero Area End -->
<!--================Blog Area =================-->
<%--<form action="Page" method="post">--%>
<section class="blog_area section-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 mb-5 mb-lg-0">
                <div class="blog_left_sidebar">
                    <article class="blog_item">
                        <div class="blog_item_img">
                            <img class="card-img rounded-0" src="../assets/img/blog/single_blog_1.png" alt="">
                            <a href="#" class="blog_item_date">
                                <h3>15</h3>
                                <p>Tháng 2</p>
                            </a>
                        </div>

                        <div class="blog_details">
                            <a class="d-inline-block" href="tin-tuc-chi-tiet-candi.jsp">
                                <h2>Cơ hội kiếm tiền từ đề tài tốt nghiệp ngành công nghệ thông tin </h2>
                            </a>
                            <ul class="blog-info-link">
                                <li><a href="#"><i class="fa fa-user"></i> Tin nóng</a></li>
                            </ul>
                        </div>
                    </article>

                    <article class="blog_item">
                        <div class="blog_item_img">
                            <img class="card-img rounded-0" src="../assets/img/blog/single_blog_2.png" alt="">
                            <a href="#" class="blog_item_date">
                                <h3>23</h3>
                                <p>Tháng 7</p>
                            </a>
                        </div>

                        <div class="blog_details">
                            <a class="d-inline-block" href="tin-tuc-chi-tiet-candi.jsp">
                                <h2>Thị trường lao động công nghệ thông tin: Xu hướng và thách thức</h2>
                            </a>
                            <ul class="blog-info-link">
                                <li><a href="#"><i class="fa fa-user"></i> Tin nóng</a></li>
                            </ul>
                        </div>
                    </article>

                    <article class="blog_item">
                        <div class="blog_item_img">
                            <img class="card-img rounded-0" src="../assets/img/blog/single_blog_3.png" alt="">
                            <a href="#" class="blog_item_date">
                                <h3>14</h3>
                                <p> Tháng 9</p>
                            </a>
                        </div>

                        <div class="blog_details">
                            <a class="d-inline-block" href="tin-tuc-chi-tiet-candi.jsp">
                                <h2>Tự hào là lực lượng nòng cốt bảo vệ chủ quyền quốc gia trên không gian mạng</h2>
                            </a>
                            <ul class="blog-info-link">
                                <li><a href="#"><i class="fa fa-user"></i> Tin nóng</a></li>
                            </ul>
                        </div>
                    </article>

                    <article class="blog_item">
                        <div class="blog_item_img">
                            <img class="card-img rounded-0" src="../assets/img/blog/single_blog_4.png" alt="">
                            <a href="#" class="blog_item_date">
                                <h3>21</h3>
                                <p>Tháng 12</p>
                            </a>
                        </div>

                        <div class="blog_details">
                            <a class="d-inline-block" href="tin-tuc-chi-tiet-candi.jsp">
                                <h2>Cuối năm, nhu cầu tuyển dụng ngành công nghệ thông tin tăng cao</h2>
                            </a>
                            <ul class="blog-info-link">
                                <li><a href="#"><i class="fa fa-user"></i> Tin nóng</a></li>
                            </ul>
                        </div>
                    </article>

                    <article class="blog_item">
                        <div class="blog_item_img">
                            <img class="card-img rounded-0" src="../assets/img/blog/single_blog_5.png" alt="">
                            <a href="#" class="blog_item_date">
                                <h3>29</h3>
                                <p>Tháng 3</p>
                            </a>
                        </div>

                        <div class="blog_details">
                            <a class="d-inline-block" href="tin-tuc-chi-tiet-candi.jsp">
                                <h2>Hà Nội đẩy mạnh ứng dụng công nghệ thông tin trong công tác giải quyết việc làm</h2>
                            </a>
                            <ul class="blog-info-link">
                                <li><a href="#"><i class="fa fa-user"></i> Tin nóng</a></li>
                            </ul>
                        </div>
                    </article>

                    <nav class="blog-pagination justify-content-center d-flex">
                        <ul class="pagination">
                            <li class="page-item">
                                <a href="#" class="page-link" aria-label="Previous">
                                    <i class="ti-angle-left"></i>
                                </a>
                            </li>
                            <li class="page-item">
                                <a href="#" class="page-link">1</a>
                            </li>
                            <li class="page-item active">
                                <a href="#" class="page-link">2</a>
                            </li>
                            <li class="page-item">
                                <a href="#" class="page-link" aria-label="Next">
                                    <i class="ti-angle-right"></i>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="blog_right_sidebar">
                    <aside class="single_sidebar_widget search_widget">
                        <form action="#">
                            <div class="form-group">
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" placeholder='Từ khóa tìm kiếm'
                                           onfocus="this.placeholder = ''"
                                           onblur="this.placeholder = 'Từ khóa tìm kiếm'">
                                    <div class="input-group-append">
                                        <button class="btns" type="button"><i class="ti-search"></i></button>
                                    </div>
                                </div>
                            </div>
                            <button class="button rounded-0 primary-bg w-100 btn_1 boxed-btn"
                                    type="submit">Tìm kiếm
                            </button>
                        </form>
                    </aside>

                    <aside class="single_sidebar_widget post_category_widget">
                        <h4 class="widget_title">Việc làm</h4>
                        <ul class="list cat-list">

                            <%
                                for (Category c : category) { %>
                            <li>
                                <a href="" class="d-flex">
                                    <a href="<%=request.getContextPath()%>/Category?action=category&id=<%=c.getId()%>&name=<%=c.getName()%>"><%=c.getName()%>
                                    </a>
                                    <p>(<%=daoPost.getPostofCategoryByID(c.getId()).size()%>)</p>
                                </a>
                            </li>
                            <%}%>

                        </ul>
                    </aside>

                    <aside class="single_sidebar_widget popular_post_widget">
                        <h3 class="widget_title">Bài viết gần đây</h3>
                        <div class="media post_item">
                            <img src="../assets/img/post/post_1.png" alt="post">
                            <div class="media-body">
                                <a href="single-blog.html">
                                    <h3>Rộn ràng ngày hội Việc làm Công nghệ thông tin...</h3>
                                </a>
                                <p> 1 giờ trước</p>
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
                                    <h3>Thị trường hoạt động công nghệ thông tin...</h3>
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
                    <aside class="single_sidebar_widget tag_cloud_widget">
                        <h4 class="widget_title">Tìm kiếm gần đây</h4>
                        <ul class="list">
                            <li>
                                <a href="danh-sach-viec-lam-candi.jsp">PHP</a>
                            </li>
                            <li>
                                <a href="danh-sach-viec-lam-candi.jsp">Java</a>
                            </li>
                            <li>
                                <a href="danh-sach-viec-lam-candi.jsp">C++</a>
                            </li>
                            <li>
                                <a href="danh-sach-viec-lam-candi.jsp">C#</a>
                            </li>
                            <li>
                                <a href="danh-sach-viec-lam-candi.jsp">Lập trình viên</a>
                            </li>
                            <li>
                                <a href="danh-sach-viec-lam-candi.jsp">Hệ thống thông tin</a>
                            </li>
                            <li>
                                <a href="danh-sach-viec-lam-candi.jsp">An toàn mạng</a>
                            </li>
                            <li>
                                <a href="danh-sach-viec-lam-candi.jsp">Trí tuệ nhân tạo</a>
                            </li>
                        </ul>
                    </aside>
                </div>
            </div>
        </div>
    </div>
</section>
<%--</form>--%>
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
<script src="../assets/js/plugins.js"></script>
<script src="../assets/js/main.js"></script>
</html>

