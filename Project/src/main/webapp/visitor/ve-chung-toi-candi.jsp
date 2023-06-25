<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 05/01/2023
  Time: 6:35 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title> Về chúng tôi </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
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
    <link rel="stylesheet" href=".<%=request.getContextPath()%>/assets/css/themify-icons.css">
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
<main>

    <!-- Hero Area Start-->
    <div class="slider-area ">
        <div class="single-slider section-overly slider-height2 d-flex align-items-center"
             data-background="<%=request.getContextPath()%>/assets/img/hero/about.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>Về TopViecLam</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Hero Area End -->
    <!-- Support Company Start-->
    <div class="support-company-area fix section-padding2">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-xl-6 col-lg-6">
                    <div class="right-caption">
                        <!-- Section Tittle -->
                        <div class="section-tittle section-tittle2">
                            <span>Chúng tôi đang làm gì?</span>
                            <h2>24.000 Người tài năng đang nhận được việc làm</h2>
                        </div>
                        <div class="support-caption">
                            <p class="pera-top">
                                Kết nối đúng người đúng việc là một bài toán rất khó ở Việt Nam, là thách thức của bất
                                kỳ nền tảng tuyển dụng nào. Với năng lực lõi là công nghệ, đặc biệt là trí tuệ nhân tạo
                                (AI), sứ mệnh của TopViecLam đặt ra cho mình là thay đổi thị trường tuyển dụng - nhân sự
                                ngày một hiệu quả hơn.</p>
                            <p>Bằng công nghệ, TopViecLam mang đến các giải pháp toàn diện giúp doanh nghiệp giải quyết
                                đồng thời các bài toán xoay quanh vấn đề tuyển dụng, từ việc quảng bá thương hiệu, xây
                                dựng quy trình, đăng tin tuyển dụng, tìm kiếm ứng viên, sàng lọc cho đến đánh giá ứng
                                viên và đo lường hiệu quả.

                                Mỗi ngày, chúng tôi kết nối hàng nghìn ứng viên tiềm năng với các doanh nghiệp phù hợp,
                                đồng hành cùng hơn 110.000 doanh nghiệp tuyển dụng hiệu quả, từ các tập đoàn đa quốc gia
                                đến các công ty khởi nghiệp trẻ.</p>
                            <a href="../bussiness/pages/dang-nhap.html" class="btn post-btn">Đăng tuyển</a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6">
                    <div class="support-location-img">
                        <img src="../assets/img/service/support-img.jpg" alt="">
                        <div class="support-img-cap text-center">
                            <p>Từ</p>
                            <span>1994</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Support Company End-->
    <!-- How  Apply Process Start-->
    <div class="apply-process-area apply-bg pt-150 pb-150" data-background="assets/img/gallery/how-applybg.png">
        <div class="container">
            <!-- Section Tittle -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-tittle white-text text-center">
                        <span><b class="tittle">Áp dụng quy trình</b></span>
                        <h2>Nó hoạt động như thế nào</h2>
                    </div>
                </div>
            </div>
            <!-- Apply Process Caption -->
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="single-process text-center mb-30">
                        <div class="process-ion">
                            <span class="flaticon-search"></span>
                        </div>
                        <div class="process-cap">
                            <h5>1. Tìm kiếm việc làm</h5>
                            <p>Tìm kiếm việc làm theo nhu cầu, mong muốn của bạn.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single-process text-center mb-30">
                        <div class="process-ion">
                            <span class="flaticon-curriculum-vitae"></span>
                        </div>
                        <div class="process-cap">
                            <h5>2. Xin ứng tuyển</h5>
                            <p>Tạo CV và gửi nó đi để có cơ hội được tuyển dụng</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single-process text-center mb-30">
                        <div class="process-ion">
                            <span class="flaticon-tour"></span>
                        </div>
                        <div class="process-cap">
                            <h5>3. Nhận việc làm</h5>
                            <p>Khi được thông báo kết quả, hãy đến nơi và nhận việc .</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- How  Apply Process End-->
    <!-- Testimonial Start -->
    <div class="testimonial-area testimonial-padding">
        <div class="container">
            <!-- Testimonial contents -->
            <div class="row d-flex justify-content-center">
                <div class="col-xl-8 col-lg-8 col-md-10">
                    <div class="h1-testimonial-active dot-style">
                        <!-- Single Testimonial -->
                        <div class="single-testimonial text-center">
                            <!-- Testimonial Content -->
                            <div class="testimonial-caption ">
                                <!-- founder -->
                                <div class="testimonial-founder  ">
                                    <div class="founder-img mb-30">
                                        <img src="../assets/img/testmonial/testimonial-founder.png" alt="">
                                        <span>Nguyễn Đình Nguyên</span>
                                        <p>Giám đốc sáng tạo</p>
                                    </div>
                                </div>
                                <div class="testimonial-top-cap">
                                    <p>“Không có việc gì khó, chỉ sợ lòng không bền.”</p>
                                </div>
                            </div>
                        </div>
                        <!-- Single Testimonial -->
                        <div class="single-testimonial text-center">
                            <!-- Testimonial Content -->
                            <div class="testimonial-caption ">
                                <!-- founder -->
                                <div class="testimonial-founder  ">
                                    <div class="founder-img mb-30">
                                        <img src="../assets/img/testmonial/testimonial-founder.png" alt="">
                                        <span>Trương Đoàn Nhất</span>
                                        <p>Giám đốc điều hành</p>
                                    </div>
                                </div>
                                <div class="testimonial-top-cap">
                                    <p>“Hãy là người khôn, nhưng đừng khôn lõi”</p>
                                </div>
                            </div>
                        </div>
                        <!-- Single Testimonial -->
                        <div class="single-testimonial text-center">
                            <!-- Testimonial Content -->
                            <div class="testimonial-caption ">
                                <!-- founder -->
                                <div class="testimonial-founder  ">
                                    <div class="founder-img mb-30">
                                        <img src="../assets/img/testmonial/testimonial-founder.png" alt="">
                                        <span>Lê Hửu Phước</span>
                                        <p>Giám đốc dự án</p>
                                    </div>
                                </div>
                                <div class="testimonial-top-cap">
                                    <p>“Không có người thất bại, chỉ có người chưa thành công”</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Testimonial End -->
    <!-- Online CV Area Start -->
    <div class="online-cv cv-bg section-overly pt-90 pb-120"
         data-background="<%=request.getContextPath()%>/assets/img/gallery/cv_bg.jpg">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-10">
                    <div class="cv-caption section-tittle text-center">
                        <span><b class="tittle">NỔI BẬT</b></span>
                        <p class="pera2">Nộp CV để chớp lấy cơ hội việc làm mơ ước</p>
                        <a href="<%=request.getContextPath()%>/candidate/candi-tao-cv.jsp"
                           class="border-btn2 border-btn4">Tải CV của bạn</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Online CV Area End-->

    <!-- Blog Area Start -->
    <div class="home-blog-area blog-h-padding">
        <div class="container">
            <!-- Section Tittle -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-tittle text-center">
                        <span>Bài viết mới nhất</span>
                        <h2>Tin tức gần đây</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-6 col-lg-6 col-md-6">
                    <div class="home-blog-single mb-30">
                        <div class="blog-img-cap">
                            <div class="blog-img">
                                <a href="tin-tuc-chi-tiet.html"> <img src="../assets/img/blog/home-blog1.jpg"
                                                                      alt=""></a>
                                <!-- Blog date -->
                                <div class="blog-date text-center">
                                    <span>24</span>
                                    <p>Hôm nay</p>
                                </div>
                            </div>
                            <div class="blog-cap">
                                <p>| Tin nóng</p>
                                <h3><a href="tin-tuc-chi-tiet.html">Hệ thống thông tin phát triển vượt bậc...</a></h3>
                                <a href="tin-tuc-chi-tiet.html" class="more-btn">Xem thêm »</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6">
                    <div class="home-blog-single mb-30">
                        <div class="blog-img-cap">
                            <div class="blog-img">
                                <a href="tin-tuc-chi-tiet.html"> <img src="../assets/img/blog/home-blog2.jpg"
                                                                      alt=""></a>
                                <!-- Blog date -->
                                <div class="blog-date text-center">
                                    <span>24</span>
                                    <p>Hôm nay</p>
                                </div>
                            </div>
                            <div class="blog-cap">
                                <p>| Tin mới</p>
                                <h3><a href="tin-tuc-chi-tiet.html">Trên con đường thành công ...</a></h3>
                                <a href="tin-tuc-chi-tiet.html" class="more-btn">Xem thêm »</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Blog Area End -->

</main>
<jsp:include page="footter-candi.jsp"></jsp:include>
</body>
<!-- JS here -->

<!-- All JS Custom Plugins Link Here here -->
<script src="<%=request.getContextPath()%>/assets/js/vendor/modernizr-3.5.0.min.js"></script>
<!-- Jquery, Popper, Bootstrap -->
<script src="<%=request.getContextPath()%>/assets/js/vendor/jquery-1.12.4.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/popper.min.js"></script>
<script src="../assets/js/bootstrapost.min.js"></script>
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
