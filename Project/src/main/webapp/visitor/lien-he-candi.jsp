<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.service.DAOContact" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Contact" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 05/01/2023
  Time: 6:18 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Liên hệ</title>
  <meta name="description" content="">
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
  <div class="single-slider section-overly slider-height2 d-flex align-items-center" data-background="<%=request.getContextPath()%>/assets/img/hero/about.jpg">
    <div class="container">
      <div class="row">
        <div class="col-xl-12">
          <div class="hero-cap text-center">
            <h2>Liên hệ</h2>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Hero Area End -->
<!-- ================ contact section start ================= -->
<%--<form action="Page" method="post">--%>
<section class="contact-section">
  <% Contact contact = DAOContact.getInstance().getContact();%>
  <div class="help-container" style="padding-left: 10%">
    <div data-v-7dd9989e="" class="help-box show">
      <div data-v-7dd9989e="" class="header">
        <div data-v-7dd9989e="" class="greeting flex-m mb-1">
          <div data-v-7dd9989e="" class="circle mr-2 flex-cm"><i data-v-7dd9989e="" class="fas fa-life-ring"></i>
          </div>
          <div data-v-7dd9989e="">Xin chào </div>
        </div>
        <div data-v-7dd9989e="" class="small-text mt-2">
          Chúng tôi là <%=contact.getName()%> rất sẵn lòng được hỗ trợ bạn. Vui lòng liên hệ theo thông tin bên dưới để nhận trợ giúp.
        </div>
      </div>
      <div data-v-7dd9989e="" class="content w-100">
        <div data-v-7dd9989e="" class="item-helper">
          <div data-v-7dd9989e="" class="title mb-1">Tư vấn tuyển dụng</div>
          <div data-v-7dd9989e="" class="text-muted small-text mb-3">Nhân viên tư vấn đang trực tuyến sẵn sàng hỗ
            trợ
          </div>
          <div data-v-7dd9989e="" class="flex-m mb-3">
            <div data-v-2a31697a="" data-v-7dd9989e="" class="mr-2 avatar"
                 style="width: 32px; height: 22px; flex: 0 0 32px; "></div>
          </div>
          <div data-v-7dd9989e="" class="flex-sb contact">
            <div data-v-7dd9989e="" class="flex-m contact-item"><i data-v-7dd9989e=""
                                                                   class="fas fa-phone circle contact-icon flex-cm mr-2"></i>
              <a data-v-7dd9989e="" href="" class="text-decoration-none">
                <%=contact.getPhone()%>
              </a></div>
            <div data-v-7dd9989e="" class="flex-m contact-item contact-email"><i data-v-7dd9989e=""
                                                                                 class="fas fa-envelope circle contact-icon1 flex-cm mr-2"></i>
              <a data-v-7dd9989e="" title="topvieclam@gmail.com" href=""
                 class="text-decoration-none">
                <%=contact.getEmail()%>
              </a></div>
          </div>
        </div>
        </br>
        </br>
        <div data-v-7dd9989e="" class="help-scroll">
          <div data-v-7dd9989e="" class="item-helper">
            <div data-v-7dd9989e="" class="title mb-3">Hotline CSKH &amp; Khiếu nại dịch vụ</div>
            <div data-v-7dd9989e="" class="d-flex align-items-center justify-content-between row">
              <div data-v-7dd9989e="" class="d-flex align-items-center small-text channel-item col">
                <div data-v-7dd9989e=""
                     class="channel-item-icon d-flex align-items-center justify-content-center mr-2"><i
                        data-v-7dd9989e="" class="fas fa-phone"></i></div>
                <a data-v-7dd9989e="" href="tel:(024)71079799"
                   class="text-muted text-decoration-none">
                 +84 354033504
                </a></div>
              <div data-v-7dd9989e="" class="d-flex align-items-center small-text channel-item col">
                <div data-v-7dd9989e=""
                     class="channel-item-icon d-flex align-items-center justify-content-center mr-2"></div>
               </div>
            </div>
            <div data-v-7dd9989e="" class="d-flex align-items-center justify-content-between mt-3 row">
              <div data-v-7dd9989e="" class="d-flex align-items-center small-text channel-item col">
                <div data-v-7dd9989e=""
                     class="channel-item-icon d-flex align-items-center justify-content-center mr-2"><i
                        data-v-7dd9989e="" class="fas fa-envelope"></i></div>
                <a data-v-7dd9989e="" href="mailto:cskh@gmail.com" class="text-muted text-decoration-none">
                20130348@st.hcmuaf.edu.vn
                </a></div>
              <div data-v-7dd9989e="" class="d-flex align-items-center small-text channel-item col">
                <div data-v-7dd9989e=""
                     class="channel-item-icon d-flex align-items-center justify-content-center mr-2"><i
                        data-v-7dd9989e="" class="fas fa-comment"></i></div>
                <a data-v-7dd9989e="" href="https://www.facebook.com/profile.php?id=100092272399230"
                   class="text-muted text-decoration-none">
                  Chat
                </a></div>
            </div>
          </div>
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
