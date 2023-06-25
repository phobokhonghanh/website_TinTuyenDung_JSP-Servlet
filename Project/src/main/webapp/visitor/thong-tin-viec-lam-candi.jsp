<%@ page import="vn.edu.hcmuaf.fit.model.Post" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Company" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Account" %>
<%@ page import="vn.edu.hcmuaf.fit.control.UtilSession" %>
<%@ page import="vn.edu.hcmuaf.fit.model.CV" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.service.DAOPost" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% Post post2 = (Post) request.getAttribute("post2");%>
<% Company company = (Company) request.getAttribute("company");%>
<% Account account1 = (Account) request.getAttribute("account1");%>
<% List<CV> cvs = (List<CV>) request.getAttribute("cvs");%>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Việc làm</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/img/favicon.ico">

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

    <!-- Breadcrumb Start-->

    <div class="ctn-breadcrumb-detail">
        <a href="<%=request.getContextPath()%>/visitor/trang-chu-candi.jsp" class="text-highlight bold">Trang chủ</a> <i
            class="fa-solid fa-angle-right"></i>
        <a href="<%=request.getContextPath()%>/Post?action=danhsanhvieclam" class="text-highlight bold">Việc làm</a> <i
            class="fa-solid fa-angle-right"></i>
        <span class="text-dark-blue"><%=post2.getTitle()%></span>
    </div>
    <!-- Breadcrumb End -->
    <!-- job post company Start -->
    <div class="job-post-company pt-120 pb-120">

        <div class="container">
            <div class="row justify-content-between">
                <!-- Left Content -->
                <div class="col-xl-7 col-lg-8">
                    <!-- job single -->
                    <div class="single-job-items mb-50">
                        <div class="job-items">
                            <div class="company-img company-img-details">
                                <a href="#"><img src="<%=request.getContextPath()%>/assets/img/icon/job-list1.png"
                                                 alt=""></a>
                            </div>
                            <div class="job-tittle">
                                <h4><%=post2.getTitle()%>
                                </h4>
                                </a>
                                <ul>
                                    <li><i class="fas fa-map-marker-alt"></i><%=post2.getAddress()%>
                                    </li>
                                    <li><%=post2.getSalary()%> VNĐ</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- job single End -->

                    <div class="job-post-details">
                        <div class="post-details1 mb-50">
                            <br>

                            <!-- tab start -->
                            <div id="tab-company" class="container">
                                <ul class="nav nav-pills">
                                    <li class="active"><a href="#tab-info" data-toggle="tab">Mô tả công việc</a>
                                    </li>
                                    <li><a href="#t ">Thông tin công ty</a></li>
                                    <li><a href="#v">Việc làm liên quan</a></li>
                                </ul>
                            </div>
                            <!-- tab end -->
                            <br>
                            <!-- Small Section Tittle -->
                            <div id="t" class="small-section-tittle">
                                <h4>Mô tả công việc</h4>
                            </div>
                            <ul style=" white-space: pre-wrap;"><%=post2.getDescription()%>
                            </ul>
                        </div>
                        <div class="post-details2  mb-50">
                            <!-- Small Section Tittle -->
                            <div class="small-section-tittle">
                                <h4>Yêu cầu ứng viên</h4>
                            </div>
                            <ul style=" white-space: pre-wrap;"><%=post2.getRequest()%>
                            </ul>
                        </div>
                        <div id="v" class="post-details2  mb-50">
                            <!-- Small Section Tittle -->
                            <div class="small-section-tittle">
                                <h4>Quyền lợi</h4>
                            </div>
                            <ul style=" white-space: pre-wrap;"><%=post2.getRights()%>
                            </ul>
                        </div>
                    </div>

                </div>
                <!-- Right Content -->
                <div class="col-xl-4 col-lg-4">
                    <div class="post-details3  mb-50">
                        <!-- Small Section Tittle -->
                        <div class="small-section-tittle">
                            <h4>Tổng quan về công việc</h4>
                        </div>
                        <ul class="post-details4">
                            <li>Chức vụ: <span><%=post2.getRank()%></span></li>
                            <li>Hình thức làm việc: <span><%=post2.getType()%></span></li>
                            <li>Địa điểm: <span><%=post2.getAddress()%></span></li>
                            <li>Mức lương: <span><%=post2.getSalary()%> VNĐ</span></li>
                            <li>Hạn nộp hồ sơ: <span><%=post2.getEndDate()%></span></li>
                        </ul>
                        <% if (UtilSession.getInstance().getValue(request, "account").getRole() == 1) {
                            if (DAOPost.checkApplied(post2.getId(), UtilSession.getInstance().getValue(request, "account").getId())) {
                        %>
                        <div class="apply-btn2"><span class="btn">Đã Ứng Tuyển</span>
                        </div>
                        <%
                        } else {
                        %>
                        <div class="apply-btn2">
                            <a class="btn" onclick="toggleForm()">Ứng Tuyển</a>
                        </div>
                        <div id="hiddenForm" class="hidden-form-container">
                            <!-- Form content goes here -->
                            <form action="<%=request.getContextPath()%>/candidate/Post_details?action=nopcv"
                                  method="post">
                                <input type="hidden" name="postId" value="<%= post2.getId() %>">
                                <!-- Form fields -->
                                <% if (cvs.isEmpty()) { %>
                                <div class="apply-btn2"><a
                                        href="<%=request.getContextPath() + "/candidate/candi-tao-cv.jsp"%>" id="taocv"
                                        class="btn">Tạo CV</a></div>
                                <% } else { %>
                                <% for (CV cv : cvs) { %>
                                <label class="checkbox inline">
                                    <input type="radio" id="cv" name="cv" value="<%=cv.getId()%>">
                                    <%=cv.getTitle()%>
                                </label>
                                <br>
                                <% } %>
                                <div class="apply-btn2">
                                    <button type="submit" id="nopcv" class="btn">Nộp CV</button>
                                </div>
                                <% } %>
                            </form>
                        </div>
                        <% }
                        %>
                        <%
                            } %>
                    </div>
                    <!-- Small Section Tittle -->
                    <div class="small-section-tittle">
                        <h4><a href="#">Thông tin công ty</a></h4>
                    </div>
                    <span><%=company.getName()%></span>
                    <p><%=company.getDescription()%>
                    </p>
                    <ul>
                        <li>Tên: <span><%=company.getName()%> </span></li>
                        <li>Phone : <span><%=company.getPhone()%></span></li>
                        <li>Email: <span><%=account1.getEmail()%></span></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!-- job post company End -->
</main>
<jsp:include page="footter-candi.jsp"></jsp:include>

<script>
    function toggleForm() {
        var hiddenForm = document.getElementById("hiddenForm");
        var applyButton = document.getElementsByClassName("apply-btn2")[0];

        if (hiddenForm.classList.contains("active")) {
            hiddenForm.classList.remove("active");
            applyButton.style.display = "inline-block";
        } else {
            hiddenForm.classList.add("active");
            applyButton.style.display = "none";
            document.querySelector('input[name="cv"]:first-of-type').checked = true; // Chọn radio title đầu tiên
        }
    }
</script>


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
<style>
    .small-section-tittle {
        margin-bottom: 20px;
    }

    .small-section-tittle h4 {
        font-size: 18px;
        margin: 0;
        color: #333;
    }

    .post-details4 ul {
        list-style: none;
        padding: 0;
        margin-bottom: 20px;
    }

    .post-details4 ul li {
        font-size: 14px;
        margin-bottom: 10px;
    }

    .post-details4 ul li span {
        font-weight: bold;
    }

    .hidden-form-container {
        display: none;
        margin-top: 10px;
    }

    .hidden-form-container.active {
        display: block;
        background-color: #fff;
        padding: 20px;
        border-radius: 4px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    }

    .hidden-form-container.active form {
        margin: 0;
    }

    .hidden-form-container.active input[type="submit"] {
        display: block;
        margin-top: 10px;
    }
</style>

</html>
