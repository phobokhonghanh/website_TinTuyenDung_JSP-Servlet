<%@ page import="java.util.Date" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Post" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.service.DAOPost" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Category" %>
<%@ page import="vn.edu.hcmuaf.fit.service.DAOCategory" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 04/01/2023
  Time: 5:36 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% DAOPost daoPost = new DAOPost();
    List<Category> category = DAOCategory.getInstance().getCategoryAll();
%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Tin tức chi tiết</title>
    <meta name=" description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="../assets/img/favicon.ico">

    <!-- CSS here -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/bootstrapost.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/slicknav.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/price_rangs.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/animate.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/magnific-popupost.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/fontawesome-all.min.css">
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
                <img src="<%=request.getContextPath()%>/assets/img/logo/logo.png" alt="">
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
<section class="blog_area single-post-area section-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 posts-list">
                <div class="single-post">
                    <div class="feature-img">
                        <img class="img-fluid" src="../assets/img/blog/single_blog_1.png" alt="">
                    </div>
                    <div class="blog_details">
                        <h2>Tự hào là lực lượng nòng cốt bảo vệ chủ quyền quốc gia trên không gian mạng
                        </h2>
                        <ul class="blog-info-link mt-3 mb-4">
                            <li><a href="#"><i class="fa fa-user"></i> Tin nóng </a></li>
                        </ul>
                        <p class="excert">
                            Quá trình hoạt động, thực hiện chức năng, nhiệm vụ, Cục Công nghệ thông tin vừa kiện toàn tổ
                            chức, biên chế, xây dựng cơ sở vật chất, vừa tham mưu xây dựng được hệ thống ngành dọc CNTT
                            trong Quân đội; chỉ đạo lực lượng CNTT toàn quân hoàn thành thắng lợi mọi nhiệm vụ.
                        </p>
                        <p>
                            Từ sự phát triển của khoa học kỹ thuật và công nghệ, nhất là cuộc Cách mạng công nghiệp 4.0,
                            không gian mạng (KGM) đã và đang trở thành “vùng lãnh thổ mới” có vai trò quan trọng trong
                            phát triển kinh tế-xã hội, quốc phòng, an ninh, đối ngoại của các quốc gia. Quán triệt Nghị
                            quyết Đại hội XII của Đảng, Nghị quyết Hội nghị Trung ương 8 (khóa XI) về “Chiến lược bảo vệ
                            Tổ quốc trong tình hình mới” và các kết luận của Bộ Chính trị, ngày 15-8-2017, Thủ tướng
                            Chính phủ ra Quyết định số 1198/QĐ-TTg thành lập BTL Tác chiến không gian mạng (BTL 86) trên
                            cơ sở tổ chức lại Cục CNTT (BTTM). Chức năng, nhiệm vụ của BTL 86 thể hiện trên hai lĩnh
                            vực: Tác chiến không gian mạng và CNTT.
                        </p>
                        <div class="quote-wrapper">
                            <div class="quotes">
                                Tích cực, chủ động tham mưu với Đảng, Nhà nước, QUTƯ, Bộ Quốc phòng ban hành chiến lược,
                                nghị quyết, chương trình, kế hoạch thực hiện nhiệm vụ quân sự, quốc phòng trên KGM. Đề
                                xuất xây dựng và triển khai Chiến lược bảo vệ Tổ quốc trên KGM (năm 2019); tham gia xây
                                dựng Luật An ninh mạng (năm 2018), các nghị định, thông tư về lĩnh vực tác chiến KGM và
                                CNTT. Duy trì nghiêm chế độ SSCĐ; tham gia bảo vệ an toàn các sự kiện chính trị quan
                                trọng của Đảng, của đất nước, Quân đội.
                            </div>
                        </div>
                        <p>
                            BTL đã chủ trì phối hợp xây dựng và triển khai các ứng dụng dùng chung trong Bộ Quốc phòng
                            như Hệ thống thư điện tử quân sự; hệ thông tin chỉ đạo điều hành; quản lý văn bản và hồ sơ
                            ... Chủ động nghiên cứu và triển khai ứng dụng các giải pháp công nghệ trong thực hiện nhiệm
                            vụ bảo vệ chủ quyền quốc gia trên KGM và phát triển Chính phủ điện tử, Chính phủ số trong Bộ
                            Quốc phòng. Tích cực tham gia bảo vệ an ninh, an toàn thông tin, an toàn mạng cho các cơ
                            quan của Đảng, Nhà nước và một số công trình trọng điểm quốc gia; hỗ trợ các giải pháp kỹ
                            thuật giúp các cơ quan, ban, ngành bảo vệ nền tảng tư tưởng của Đảng, đấu tranh chống “diễn
                            biến hòa bình” trên KGM.
                        </p>
                        <p>
                            Những năm tới, tình hình thế giới, khu vực tiếp tục diễn biến nhanh chóng, phức tạp, khó
                            lường; các thế lực thù địch, phản động, cơ hội chính trị sẽ triệt để lợi dụng internet, mạng
                            xã hội tăng cường tán phát thông tin sai sự thật, chống phá, xuyên tạc, đẩy mạnh âm mưu
                            “diễn biến hòa bình”, thúc đẩy “tự diễn biến”, “tự chuyển hóa” và phi chính trị hóa Quân
                            đội, tác động trực tiếp đến nhiệm vụ xây dựng Quân đội nói chung và xây dựng BTL 86 “cách
                            mạng, chính quy, tinh nhuệ, hiện đại” nói riêng.


                        </p>
                    </div>
                </div>


            </div>
            <div class="col-lg-4">
                <div class="blog_right_sidebar">
                    <aside class="single_sidebar_widget search_widget">
                        <form action="#">
                            <div class="form-group">
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" placeholder='Tìm kiếm từ khóa'
                                           onfocus="this.placeholder = ''"
                                           onblur="this.placeholder = 'Tìm kiếm từ khóa'">
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
<script src="<%=request.getContextPath()%>/assets/js/plugins.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/main.js"></script>
</html>


