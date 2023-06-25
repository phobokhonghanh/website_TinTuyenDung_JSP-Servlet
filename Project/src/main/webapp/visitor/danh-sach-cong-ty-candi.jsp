<%@ page import="vn.edu.hcmuaf.fit.model.Company" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 05/01/2023
  Time: 6:44 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title> Danh sách công ty </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="../assets/img/favicon.ico">

    <!-- CSS here -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/bootstrapost.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/price_rangs.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/flaticon.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/slicknav.css">
    <link rel="stylesheet" href=".<%=request.getContextPath()%>/assets/css/animate.min.css">
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
<%--<form action="Company" method="post">--%>
<div class="slider-area ">
    <div class="single-slider section-overly slider-height2 d-flex align-items-center" data-background="<%=request.getContextPath()%>/assets/img/hero/about.jpg">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="hero-cap text-center">
                        <h2>Danh sách công ty</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Hero Area End -->
<!--================Blog Area =================-->
<div class="company">
    <div class="featured-companies">
        <div class="company-header text-center">
            <h2 class="title">DANH SÁCH CÁC CÔNG TY NỔI BẬT</h2>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-6">
                    <div class="box-company item-hover">

                        <div class="company-banner">
                            <a href="https://www.topcv.vn/cong-ty/cong-ty-co-phan-dau-tu-giao-duc-va-phat-trien-nguon-luc-quoc-te-pasal/371.html">
                                <div class="cover-wraper">
                                    <img src="https://static.topcv.vn/company_covers/cong-ty-co-phan-dau-tu-giao-duc-va-phat-trien-nguon-luc-quoc-te-pasal-e105dbf3fdc1a694fd162de8e301be9b-6099fe67ba6b6.jpg" alt="Công ty Cổ Phần Đầu tư Giáo dục Và Phát triển Nguồn Lực Quốc Tế Pasal" class="img-fluid">
                                </div>
                            </a>
                            <div class="company-logo">
                                <a href="https://www.topcv.vn/cong-ty/cong-ty-co-phan-dau-tu-giao-duc-va-phat-trien-nguon-luc-quoc-te-pasal/371.html">
                                    <img class="img-fluid" src="https://static.topcv.vn/company_logos/cong-ty-co-phan-dau-tu-giao-duc-va-phat-trien-nguon-luc-quoc-te-pasal-5ad4093c6754b_rs.jpg" alt="Công ty Cổ Phần Đầu tư Giáo dục Và Phát triển Nguồn Lực Quốc Tế Pasal">
                                </a>
                            </div>
                        </div>
                        <div class="company-info">
                            <h3>
                                <a href="https://www.topcv.vn/cong-ty/cong-ty-co-phan-dau-tu-giao-duc-va-phat-trien-nguon-luc-quoc-te-pasal/371.html" class="company-name" target="_blank">CÔNG TY CỔ PHẦN CÂU LẠC BỘ</a>
                            </h3>
                            <div class="company-description">
                                <p>" Tổ chức giáo dục Pasal là nơi hội tụ của những người trẻ chứa đựng khát khao thay đổi tiếng Anh và tư duy của thế hệ trẻ Việt Nam để thành công trên con đường sự nghiệp đầy năng động và thách thức sau này. Họ đã tìm ra “Đam mê” đích thực của mình với sự nghiệp đào tạo tiếng Anh và sẻ chia giá trị cho các..."</p>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="box-company item-hover">
                        <div class="company-banner">
                            <a href="https://www.topcv.vn/cong-ty/cong-ty-co-phan-cau-lac-bo-ky-nghi-viet-nam/89130.html">
                                <div class="cover-wraper">
                                    <img src="https://www.topcv.vn/images/default_cover/topcv_cover_1.jpg" class="img-fluid" alt="CÔNG TY CỔ PHẦN CÂU LẠC BỘ KỲ NGHỈ VIỆT NAM">
                                </div>
                            </a>
                            <div class="company-logo">
                                <a href="https://www.topcv.vn/cong-ty/cong-ty-co-phan-cau-lac-bo-ky-nghi-viet-nam/89130.html">
                                    <img class="img-fluid" src="https://static.topcv.vn/company_logos/T9Lkdgphu8T14RecAJiUfNtFSETMHCPj_1645266507____ac5771125f2dbd4fa092b24bc60920ab.jpg" alt="CÔNG TY CỔ PHẦN CÂU LẠC BỘ KỲ NGHỈ VIỆT NAM">
                                </a>
                            </div>
                        </div>
                        <div class="company-info">
                            <h3>
                                <a href="https://www.topcv.vn/cong-ty/cong-ty-co-phan-cau-lac-bo-ky-nghi-viet-nam/89130.html" class="company-name" target="_blank">CÔNG TY CỔ PHẦN CÂU LẠC BỘ KỲ NGHỈ VIỆT NAM</a>
                            </h3>
                            <div class="company-description">
                                <p>" Vietnam Vacation Club là công ty Quản lý Quỹ Tư vấn, Đầu tư và Phát triển các dự án Timeshares chuyên nghiệp tiên phong tại Việt Nam được đầu tư bởi VPASS Châu Á và các nhà đầu tư uy tín trong lĩnh vực tài chính, ngân hàng và hàng không du lịch.Timeshare là gì?Timeshare là hình thức một nhóm người mua chung phần tài sản là bất động sản..."</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="box-company item-hover">
                        <div class="company-banner">
                            <a href="https://www.topcv.vn/cong-ty/cong-ty-tnhh-bao-hiem-nhan-tho-prudential-viet-nam/22177.html">
                                <div class="cover-wraper">
                                    <img src="https://static.topcv.vn/company_covers/1FQyl7kjH8mcGAMo5XqV.jpg" alt="Công ty TNHH bảo hiểm nhân thọ Prudential Việt Nam" class="img-fluid">
                                </div>
                            </a>
                            <div class="company-logo">
                                <a href="https://www.topcv.vn/cong-ty/cong-ty-tnhh-bao-hiem-nhan-tho-prudential-viet-nam/22177.html">
                                    <img class="img-fluid" src="https://static.topcv.vn/company_logos/cong-ty-tnhh-bao-hiem-nhan-tho-prudential-viet-nam-6108ed8574bae.jpg" alt="Công ty TNHH bảo hiểm nhân thọ Prudential Việt Nam">
                                </a>
                            </div>
                        </div>
                        <div class="company-info">
                            <h3>
                                <a href="https://www.topcv.vn/cong-ty/cong-ty-tnhh-bao-hiem-nhan-tho-prudential-viet-nam/22177.html" class="company-name" target="_blank">Công ty TNHH bảo hiểm nhân thọ Prudential Việt Nam</a>
                            </h3>
                            <div class="company-description">
                                <p>" The Gallerie by Prudential tiền thân là một Trung tâm đào tạo và phát triển. Tại đây, chúng tôi đã đào tạo một lực lượng tư vấn viên đạt tiêu chuẩn cho ngành bảo hiểm nhân thọ.
                                    Để thống lĩnh thị trường khách hàng thành thị, năm 2019, The Gallerie có một sự chuyển đổi ngoạn mục khi được Prudential Việt Nam đầu tư, xây dựng thành một kênh phân..."</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="box-company item-hover">
                        <div class="company-banner">
                            <a href="https://www.topcv.vn/cong-ty/cong-ty-tnhh-techworld-viet-nam/68222.html">
                                <div class="cover-wraper">
                                    <img src="https://www.topcv.vn/images/default_cover/topcv_cover_5.jpg" class="img-fluid" alt="CÔNG TY TNHH TECHWORLD VIỆT NAM">
                                </div>
                            </a>
                            <div class="company-logo">
                                <a href="https://www.topcv.vn/cong-ty/cong-ty-tnhh-techworld-viet-nam/68222.html">
                                    <img class="img-fluid" src="https://static.topcv.vn/company_logos/cong-ty-tnhh-techworld-viet-nam-60b1c0708736f.jpg" alt="CÔNG TY TNHH TECHWORLD VIỆT NAM">
                                </a>
                            </div>
                        </div>
                        <div class="company-info">
                            <h3>
                                <a href="https://www.topcv.vn/cong-ty/cong-ty-tnhh-techworld-viet-nam/68222.html" class="company-name" target="_blank">CÔNG TY TNHH TECHWORLD VIỆT NAM</a>
                            </h3>
                            <div class="company-description">
                                <p>" Hiện tại, Công ty TNHH TECHWORLD VIỆT NAM (Techworldmobile) đã có tuổi đời hơn 8 năm và đã xây dựng cho mình 1 loạt hệ thống cửa hàng, showroom khang trang, đầy đủ tiện nghi, máy móc để đáp ứng nhu cầu mua sắm ngày càng lớn của người tiêu dùng.Tính đến thời điểm tháng 5/2021, Hệ thống cửa hàng Techworldmobile đã có 2 showroom lớn tại Hà Nội gồm..."</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="box-company item-hover">
                        <div class="company-banner">
                            <a href="https://www.topcv.vn/cong-ty/ngan-hang-tmcp-viet-nam-thinh-vuong-vpbank/493.html">
                                <div class="cover-wraper">
                                    <img src="https://static.topcv.vn/company_covers/Nb4sWTWAzahLcXAuffCb.jpg" alt="Ngân Hàng TMCP Việt Nam Thịnh Vượng (VPBank)" class="img-fluid">
                                </div>
                            </a>
                            <div class="company-logo">
                                <a href="https://www.topcv.vn/cong-ty/ngan-hang-tmcp-viet-nam-thinh-vuong-vpbank/493.html">
                                    <img class="img-fluid" src="https://static.topcv.vn/company_logos/ngan-hang-tmcp-viet-nam-thinh-vuong-vpbank-635f9bd524be0.jpg" alt="Ngân Hàng TMCP Việt Nam Thịnh Vượng (VPBank)">
                                </a>
                            </div>
                        </div>
                        <div class="company-info">
                            <h3>
                                <a href="https://www.topcv.vn/cong-ty/ngan-hang-tmcp-viet-nam-thinh-vuong-vpbank/493.html" class="company-name" target="_blank">Ngân Hàng TMCP Việt Nam Thịnh Vượng (VPBank)</a>
                            </h3>
                            <div class="company-description">
                                <p>" VPBank tiếp tục theo đuổi mục tiêu khẳng định vị thế của ngân hàng trên thị trường, đó là nằm trong nhóm 5 Ngân hàng TMCP tư nhân và nhóm 3 Ngân hàng TMCP tư nhân bán lẻ hàng đầu về quy mô cho vay khách hàng, huy động khách hàng và lợi nhuận và chú trọng tăng trưởng chất lượng hoạt động.Những thành quả đạt được trong giai đoạn..."</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="box-company item-hover">
                        <div class="company-banner">
                            <a href="https://www.topcv.vn/cong-ty/cong-ty-cp-kinh-doanh-f88/29631.html">
                                <div class="cover-wraper">
                                    <img src="https://static.topcv.vn/company_covers/cong-ty-cp-kinh-doanh-f88-7ff831d0445045894a626dc75ccf7486-62958030a1c21.jpg" alt="Công ty CP Kinh doanh F88" class="img-fluid">
                                </div>
                            </a>
                            <div class="company-logo">
                                <a href="https://www.topcv.vn/cong-ty/cong-ty-cp-kinh-doanh-f88/29631.html">
                                    <img class="img-fluid" src="https://static.topcv.vn/company_logos/DFtAiouYgEptwb56ISZeWgbcXgmxnLfm_1650885574____64525bcbe563d4a7599cc12cc508db75.png" alt="Công ty CP Kinh doanh F88">
                                </a>
                            </div>
                        </div>
                        <div class="company-info">
                            <h3>
                                <a href="https://www.topcv.vn/cong-ty/cong-ty-cp-kinh-doanh-f88/29631.html" class="company-name" target="_blank">Công ty CP Kinh doanh F88</a>
                            </h3>
                            <div class="company-description">
                                <p>" F88 được thành lập năm 2013 với quyết tâm thay đổi định kiến của xã hội đối với ngành nghề cầm đồ truyền thống đã tồn tại lâu đời tại Việt Nam, F88 đi tiên phong tại thị trường Việt Nam với mô hình Hệ thống Cầm đồ Toàn quốc, cung cấp dịch vụ cầm đồ Tin cậy – Nhanh chóng - Thân thiện.
                                    TIN CẬY: F88 sở hữu hệ..."</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="box-company item-hover">
                        <div class="company-banner">
                            <a href="https://www.topcv.vn/cong-ty/ngan-hang-thuong-mai-co-phan-ky-thuong-viet-nam/16716.html">
                                <div class="cover-wraper">
                                    <img src="https://static.topcv.vn/company_covers/ngan-hang-thuong-mai-co-phan-ky-thuong-viet-nam-5cd6348b681a5844910fad42207a58b1-632bbebd378e8.jpg" alt="NGÂN HÀNG THƯƠNG MẠI CỔ PHẦN KỸ THƯƠNG VIỆT NAM" class="img-fluid">
                                </div>
                            </a>
                            <div class="company-logo">
                                <a href="https://www.topcv.vn/cong-ty/ngan-hang-thuong-mai-co-phan-ky-thuong-viet-nam/16716.html">
                                    <img class="img-fluid" src="https://static.topcv.vn/company_logos/ngan-hang-thuong-mai-co-phan-ky-thuong-viet-nam-632bbf5a763f7.jpg" alt="NGÂN HÀNG THƯƠNG MẠI CỔ PHẦN KỸ THƯƠNG VIỆT NAM">
                                </a>
                            </div>
                        </div>
                        <div class="company-info">
                            <h3>
                                <a href="https://www.topcv.vn/cong-ty/ngan-hang-thuong-mai-co-phan-ky-thuong-viet-nam/16716.html" class="company-name" target="_blank">NGÂN HÀNG THƯƠNG MẠI CỔ PHẦN KỸ THƯƠNG VIỆT NAM</a>
                            </h3>
                            <div class="company-description">
                                <p>" GIỚI THIỆU CÔNG TY:
                                    Techcombank mang sứ mệnh dẫn dắt hành trình số hóa của ngành tài chính, tạo động lực cho mỗi cá nhân, doanh nghiệp và tổ chức phát triển bền vững và bứt phá thành công.
                                    Được thành lập vào tháng 9 năm 1993 và có trụ sở chính tại Hà Nội, Techcombank là một trong những ngân hàng thương mại cổ phần lớn nhất tại Việt..."</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="box-company item-hover">
                        <div class="company-banner">
                            <a href="https://www.topcv.vn/cong-ty/ngan-hang-tmcp-buu-dien-lien-viet/95215.html">
                                <div class="cover-wraper">
                                    <img src="https://www.topcv.vn/images/default_cover/topcv_cover_5.jpg" class="img-fluid" alt="NGÂN HÀNG TMCP BƯU ĐIỆN LIÊN VIỆT">
                                </div>
                            </a>
                            <div class="company-logo">
                                <a href="https://www.topcv.vn/cong-ty/ngan-hang-tmcp-buu-dien-lien-viet/95215.html">
                                    <img class="img-fluid" src="https://static.topcv.vn/company_logos/ngan-hang-tmcp-buu-dien-lien-viet-624feafde6bb2.jpg" alt="NGÂN HÀNG TMCP BƯU ĐIỆN LIÊN VIỆT">
                                </a>
                            </div>
                        </div>
                        <div class="company-info">
                            <h3>
                                <a href="https://www.topcv.vn/cong-ty/ngan-hang-tmcp-buu-dien-lien-viet/95215.html" class="company-name" target="_blank">NGÂN HÀNG TMCP BƯU ĐIỆN LIÊN VIỆT</a>
                            </h3>
                            <div class="company-description">
                                <p>" Ngân hàng Thương mại Cổ phần Bưu điện Liên Việt (LienVietPostBank) tiền thân là Ngân hàng Thương mại Cổ phần Liên Việt (LienVietBank) được thành lập theo Giấy phép thành lập và hoạt động số 91/GP-NHNN ngày 28/03/2008 của Thống đốc Ngân hàng Nhà nước Việt Nam.Cổ đông sáng lập của LienVietPostBank là Công ty Cổ phần Him Lam, Tổng Công ty Thương mại Sài Gòn (SATRA) và Công ty..."</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="box-company item-hover">
                        <div class="company-banner">
                            <a href="https://www.topcv.vn/cong-ty/cong-ty-tnhh-concentrix-service-vietnam/23744.html">
                                <div class="cover-wraper">
                                    <img src="https://static.topcv.vn/company_covers/DdzvuyJVOuBcILv9oMI5.jpg" alt="Công ty TNHH Concentrix Service Vietnam" class="img-fluid">
                                </div>
                            </a>
                            <div class="company-logo">
                                <a href="https://www.topcv.vn/cong-ty/cong-ty-tnhh-concentrix-service-vietnam/23744.html">
                                    <img class="img-fluid" src="https://static.topcv.vn/company_logos/cong-ty-tnhh-concentrix-service-vietnam-5d2887eec8342.jpg" alt="Công ty TNHH Concentrix Service Vietnam">
                                </a>
                            </div>
                        </div>
                        <div class="company-info">
                            <h3>
                                <a href="https://www.topcv.vn/cong-ty/cong-ty-tnhh-concentrix-service-vietnam/23744.html" class="company-name" target="_blank">Công ty TNHH Concentrix Service Vietnam</a>
                            </h3>
                            <div class="company-description">
                                <p>" Concentrix là một công ty hàng đầu thế giới của Mỹ trong lĩnh vực dịch vụ chăm sóc khách hàng có mặt ở trên 44 quốc gia với tổng số nhân sự lên tới trên 250.000 nhân viên.Concentrix Việt Nam luôn đầu tư và nỗ lực nhằm cung cấp môi trường tốt nhất như:Cơ hội học hỏi &amp; phát triểnKết nối thường xuyên với nhân viên, tạo môi trường tốt..."</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="box-company item-hover">
                        <div class="company-banner">
                            <a href="https://www.topcv.vn/cong-ty/cong-ty-cp-dau-tu-va-dich-vu-dat-xanh-mien-nam/18654.html">
                                <div class="cover-wraper">
                                    <img src="https://static.topcv.vn/company_covers/cong-ty-cp-dau-tu-va-dich-vu-dat-xanh-mien-nam-f6d1d2726888a2a1f90682ba3c7894db-62fc5723ce2e9.jpg" alt="Công ty CP Đầu tư và Dịch vụ Đất Xanh Miền Nam" class="img-fluid">
                                </div>
                            </a>
                            <div class="company-logo">
                                <a href="https://www.topcv.vn/cong-ty/cong-ty-cp-dau-tu-va-dich-vu-dat-xanh-mien-nam/18654.html">
                                    <img class="img-fluid" src="https://static.topcv.vn/company_logos/cong-ty-cp-dau-tu-va-dich-vu-dat-xanh-mien-nam-60d3e4afd0fb7.jpg" alt="Công ty CP Đầu tư và Dịch vụ Đất Xanh Miền Nam">
                                </a>
                            </div>
                        </div>
                        <div class="company-info">
                            <h3>
                                <a href="https://www.topcv.vn/cong-ty/cong-ty-cp-dau-tu-va-dich-vu-dat-xanh-mien-nam/18654.html" class="company-name" target="_blank">Công ty CP Đầu tư và Dịch vụ Đất Xanh Miền Nam</a>
                            </h3>
                            <div class="company-description">
                                <p>" Đất Xanh Miền Nam được hình thành từ năm 2009, với mục tiêu mang lại cho khách hàng những sản phẩm bất động sản tốt nhất bằng dịch vụ chuyên nghiệp nhất. Trải qua chặng đường hơn 10 năm hình thành và phát triển, ĐXMN đã là đơn vị phân phối bất động sản uy tín hàng đầu tại TP.HCM và ngày càng chuyển mình mạnh mẽ khi chính thức..."</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="box-company item-hover">
                        <div class="company-banner">
                            <a href="https://www.topcv.vn/cong-ty/cong-ty-co-phan-babylons/10691.html">
                                <div class="cover-wraper">
                                    <img src="https://static.topcv.vn/company_covers/fUO18EkwjslmizyMCfwf.jpg" alt="CÔNG TY CỔ PHẦN BABYLONS" class="img-fluid">
                                </div>
                            </a>
                            <div class="company-logo">
                                <a href="https://www.topcv.vn/cong-ty/cong-ty-co-phan-babylons/10691.html">
                                    <img class="img-fluid" src="https://static.topcv.vn/company_logos/cong-ty-co-phan-babylons-6030ee679da94.jpg" alt="CÔNG TY CỔ PHẦN BABYLONS">
                                </a>
                            </div>
                        </div>
                        <div class="company-info">
                            <h3>
                                <a href="https://www.topcv.vn/cong-ty/cong-ty-co-phan-babylons/10691.html" class="company-name" target="_blank">CÔNG TY CỔ PHẦN BABYLONS</a>
                            </h3>
                            <div class="company-description">
                                <p>" KHÁC BIỆT TẠO THÀNH CÔNGBabylons là một doanh nghiệp hoạt động trong lĩnh vực giáo dục. Với tâm niệm “giáo dục là vũ khí giúp thay đổi thế giới”, ông Phạm Tuấn Sơn - Giám đốc và là người sáng lập Babylons, cho rằng, để đạt được thành công, thì tư duy chiếm đến 80%, còn lại 20% là kỹ năng, không chỉ với Babylons mà các doanh nghiệp khác..."</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="box-company item-hover">
                        <div class="company-banner">
                            <a href="https://www.topcv.vn/cong-ty/cong-ty-co-phan-giao-duc-dao-tao-imap-viet-nam/20324.html">
                                <div class="cover-wraper">
                                    <img src="https://static.topcv.vn/company_covers/cong-ty-co-phan-giao-duc-amp-dao-tao-imap-viet-nam-00e5c5f8d6dcba97c61d6f9f309d1896-5f6abe680ae0d.jpg" alt="Công ty Cổ phần Giáo dục &amp; Đào tạo IMAP Việt Nam" class="img-fluid">
                                </div>
                            </a>
                            <div class="company-logo">
                                <a href="https://www.topcv.vn/cong-ty/cong-ty-co-phan-giao-duc-dao-tao-imap-viet-nam/20324.html">
                                    <img class="img-fluid" src="https://static.topcv.vn/company_logos/cong-ty-co-phan-giao-duc-dao-tao-imap-viet-nam-5da97e1f22484.jpg" alt="Công ty Cổ phần Giáo dục &amp; Đào tạo IMAP Việt Nam">
                                </a>
                            </div>
                        </div>
                        <div class="company-info">
                            <h3>
                                <a href="https://www.topcv.vn/cong-ty/cong-ty-co-phan-giao-duc-dao-tao-imap-viet-nam/20324.html" class="company-name" target="_blank">Công ty Cổ phần Giáo dục &amp; Đào tạo IMAP Việt Nam</a>
                            </h3>
                            <div class="company-description">
                                <p>" Công ty CP Giáo dục và Đào tạo IMAP Việt Nam với hệ thống các thương hiệu Anh ngữ Ms Hoa (Tiền thân Ms Hoa TOEIC) Ms Hoa Giao tiếp, IELTS Fighter, Aland English, IMAP Pro, Ms Hoa Junio, Globalway, IMAP Tech đang từng ngày lớn mạnh với hệ thống hơn 50 cơ sở tại Hà Nội, TP HCM, Đà Nẵng, Nghệ An, Bắc Ninh, Bình Dương, Đồng Nai và..."</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="box-company item-hover">
                        <div class="company-banner">
                            <a href="https://www.topcv.vn/brand/sailun">
                                <div class="cover-wraper">
                                    <img src="https://static.topcv.vn/company_covers/2lAQQ7FpkWGG7z9HsAi5.jpg" alt="Công ty TNHH Sailun Việt Nam" class="img-fluid">
                                </div>
                            </a>
                            <div class="company-logo">
                                <a href="https://www.topcv.vn/brand/sailun">
                                    <img class="img-fluid" src="https://static.topcv.vn/company_logos/AK8dYLObqs47aftcn37npQI1KCtTcVil_1662625881____61718388ab3bdaf566bd08cd670e114a.png" alt="Công ty TNHH Sailun Việt Nam">
                                </a>
                            </div>
                        </div>
                        <div class="company-info">
                            <h3>
                                <a href="https://www.topcv.vn/brand/sailun" class="company-name" target="_blank">Công ty TNHH Sailun Việt Nam</a>
                            </h3>
                            <div class="company-description">
                                <p>" Tập Đoàn Sailun được thành lập năm 2002, là công ty lốp xe tư nhân hạng A đầu tiên của Trung Quốc(Mã chứng khoán: 601058), tích hợp nghiên cứu và phát triển, sản xuất, bán hàng và dịch vụ lốp xe, được xây dựng tại Thanh Đảo, Đông Dương, Thẩm Dương và Việt Nam. Có các nhà máy sản xuất lốp xe hiện đại, với mạng lưới bán hàng và..."</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="box-company item-hover">
                        <div class="company-banner">
                            <a href="https://www.topcv.vn/brand/quoctedaitayduong">
                                <div class="cover-wraper">
                                    <img src="https://static.topcv.vn/company_covers/tap-doan-giao-duc-va-dao-tao-quoc-te-dai-tay-duong-atlantic-group-2ba200df795d973ad273e325de92920c-62bab39e276c0.jpg" alt="Tập đoàn Giáo dục và Đào tạo Quốc tế Đại Tây Dương (Atlantic Group)" class="img-fluid">
                                </div>
                            </a>
                            <div class="company-logo">
                                <a href="https://www.topcv.vn/brand/quoctedaitayduong">
                                    <img class="img-fluid" src="https://static.topcv.vn/company_logos/0epZPx6pPGDmA0yK45EzfcX7cWSt1i4s_1656571106____a45d9bacc902a2eea273dba56af72e3d.jpg" alt="Tập đoàn Giáo dục và Đào tạo Quốc tế Đại Tây Dương (Atlantic Group)">
                                </a>
                            </div>
                        </div>
                        <div class="company-info">
                            <h3>
                                <a href="https://www.topcv.vn/brand/quoctedaitayduong" class="company-name" target="_blank">Tập đoàn Giáo dục và Đào tạo Quốc tế Đại Tây Dương (Atlantic Group)</a>
                            </h3>
                            <div class="company-description">
                                <p>" ATLANTIC GROUP was founded in 2003. Over the last 19 years, Atlantic Group has been ceaselessly growing and become one of the leading education groups in Vietnam. We have done so by providing the following services:1. Study Abroad Consultancy: As certified members of VIECA and ICEF, with more than 17 years of experience in the field of international study consultancy. Atlantic Overseas Studies consultancy company has helped students transition to..."</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="box-company item-hover">
                        <div class="company-banner">
                            <a href="https://www.topcv.vn/brand/elipsport">
                                <div class="cover-wraper">
                                    <img src="https://static.topcv.vn/company_covers/OBLoOkr8YkPtKr9Z6jlj.jpg" alt="Công ty TNHH Elipsport" class="img-fluid">
                                </div>
                            </a>
                            <div class="company-logo">
                                <a href="https://www.topcv.vn/brand/elipsport">
                                    <img class="img-fluid" src="https://static.topcv.vn/company_logos/cong-ty-tnhh-elipsport-6361ea406eb73.jpg" alt="Công ty TNHH Elipsport">
                                </a>
                            </div>
                        </div>
                        <div class="company-info">
                            <h3>
                                <a href="https://www.topcv.vn/brand/elipsport" class="company-name" target="_blank">Công ty TNHH Elipsport</a>
                            </h3>
                            <div class="company-description">
                                <p>" Tập đoàn Elip – Thương hiệu Elipsport là thương hiệu tiên phong trong lĩnh vực Chăm sóc sức khỏe toàn diện tại nhà.
                                    Với hơn 15 năm kinh nghiệm, cùng với mạng lưới hơn 200 cửa hàng phủ đều khắp 63 tỉnh thành trên toàn quốc. Elipsport – bằng sự quan tâm, thấu hiểu của mình… đã mang đến cho hàng triệu khách hàng một tài sản vô cùng quý..."</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="box-company item-hover">
                        <div class="company-banner">
                            <a href="https://www.topcv.vn/brand/sapo">
                                <div class="cover-wraper">
                                    <img src="https://static.topcv.vn/company_covers/cong-ty-co-phan-cong-nghe-sapo-b9ab0c353ae0469021f97fa7db44fdb9-62c4fedaa3fba.jpg" alt="Công ty cổ phần Công nghệ Sapo" class="img-fluid">
                                </div>
                            </a>
                            <div class="company-logo">
                                <a href="https://www.topcv.vn/brand/sapo">
                                    <img class="img-fluid" src="https://static.topcv.vn/company_logos/cong-ty-co-phan-cong-nghe-sapo-6166c32089ac7.jpg" alt="Công ty cổ phần Công nghệ Sapo">
                                </a>
                            </div>
                        </div>
                        <div class="company-info">
                            <h3>
                                <a href="https://www.topcv.vn/brand/sapo" class="company-name" target="_blank">Công ty cổ phần Công nghệ Sapo</a>
                            </h3>
                            <div class="company-description">
                                <p>" Sapo là công ty Công nghệ được thành lập vào 2008, Sapo nhanh chóng khẳng định được vị trí hàng đầu trong việc xây dựng nền tảng công nghệ hỗ trợ lĩnh vực bán lẻ và TMĐT.&nbsp;Tính đến tháng 12/2020, Sapo đã đồng hành cùng hơn 100.000 Doanh nghiệp và chủ kinh doanh trên hành trình phát triển, trở thành Nền tảng quản lý và bán hàng đa kênh..."</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="box-company item-hover">
                        <div class="company-banner">
                            <a href="https://www.topcv.vn/brand/smartosc">
                                <div class="cover-wraper">
                                    <img src="https://static.topcv.vn/company_covers/JAREvfjbD7kDcxVhtUzG.jpg" alt="CÔNG TY CỔ PHẦN SMARTOSC" class="img-fluid">
                                </div>
                            </a>
                            <div class="company-logo">
                                <a href="https://www.topcv.vn/brand/smartosc">
                                    <img class="img-fluid" src="https://static.topcv.vn/company_logos/cong-ty-co-phan-smartosc-61d50e76c4aec.jpg" alt="CÔNG TY CỔ PHẦN SMARTOSC">
                                </a>
                            </div>
                        </div>
                        <div class="company-info">
                            <h3>
                                <a href="https://www.topcv.vn/brand/smartosc" class="company-name" target="_blank">CÔNG TY CỔ PHẦN SMARTOSC</a>
                            </h3>
                            <div class="company-description">
                                <p>" Được thành lập năm 2006, SmartOSC là công ty hàng đầu cung cấp các giải pháp toàn diện về Thương Mại Điện Tử trên nền tảng Magento, Sitecore, Adobe, Hybris, Kentico mang tính hiệu quả cao, từ việc thiết kế cho đến xây dựng các chiến lược kinh doanh hay quản lý hoạt động ở các cửa hàng. Hiện này, SmartOSC đã cung cấp giải pháp cho hơn 500 khách..."</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="box-company item-hover">
                        <div class="company-banner">
                            <a href="https://www.topcv.vn/brand/tek-experts">
                                <div class="cover-wraper">
                                    <img src="https://static.topcv.vn/company_covers/tek-experts-vietnam-e6c9e99f0ee1d1d75c565e940e83f5c3-62a6f70cc2dbb.jpg" alt="Tek Experts Vietnam" class="img-fluid">
                                </div>
                            </a>
                            <div class="company-logo">
                                <a href="https://www.topcv.vn/brand/tek-experts">
                                    <img class="img-fluid" src="https://static.topcv.vn/company_logos/tek-experts-vietnam-62a553577f2a7.jpg" alt="Tek Experts Vietnam">
                                </a>
                            </div>
                        </div>
                        <div class="company-info">
                            <h3>
                                <a href="https://www.topcv.vn/brand/tek-experts" class="company-name" target="_blank">Tek Experts Vietnam</a>
                            </h3>
                            <div class="company-description">
                                <p>" Tek Experts là một công ty đa quốc gia chuyên về giải pháp phần mềm, cung cấp các dịch vụ hỗ trợ kỹ thuật nhanh chóng và chuyên sâu hàng đầu thế giới.Vượt qua các rào cản về địa lý, ngôn ngữ và múi giờ, Tek Experts đảm bảo cung cấp dịch vụ hỗ trợ kỹ thuật 24/7 trong suốt 365 ngày cho hai đối tác lớn mang tầm thế..."</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="box-company item-hover">
                        <div class="company-banner">
                            <a href="https://www.topcv.vn/brand/tksic">
                                <div class="cover-wraper">
                                    <img src="https://www.topcv.vn/images/default_cover/topcv_cover_4.jpg" class="img-fluid" alt="CÔNG TY TNHH TKSIC">
                                </div>
                            </a>
                            <div class="company-logo">
                                <a href="https://www.topcv.vn/brand/tksic">
                                    <img class="img-fluid" src="https://static.topcv.vn/company_logos/tdIQM7vpRQJsm1bnAXD983M2w2kldJxV_1637147953____6a69b820aca1139f96d09b1e4fc88bc1.JPG" alt="CÔNG TY TNHH TKSIC">
                                </a>
                            </div>
                        </div>
                        <div class="company-info">
                            <h3>
                                <a href="https://www.topcv.vn/brand/tksic" class="company-name" target="_blank">CÔNG TY TNHH TKSIC</a>
                            </h3>
                            <div class="company-description">
                                <p>" TKSIC mang đến những giải pháp mới mẻ, toàn diện và chuyên biệt nhất về đầu tư thông minh, đem lại giá trị bền vững cho khách hàng Chúng tôi hướng đến mục tiêu trở thành công ty chuyên cung cấp các sản phẩm và dịch vụ tài chính có hiệu quả vượt trội và đẳng cấp quốc tế tại thị trường Việt Nam"</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="box-company item-hover">
                        <div class="company-banner">
                            <a href="https://www.topcv.vn/brand/vegacorporation">
                                <div class="cover-wraper">
                                    <img src="https://static.topcv.vn/company_covers/oaP711c7rQvWmU4NgHlg.jpg" alt="Vega Corporation" class="img-fluid">
                                </div>
                            </a>
                            <div class="company-logo">
                                <a href="https://www.topcv.vn/brand/vegacorporation">
                                    <img class="img-fluid" src="https://static.topcv.vn/company_logos/vega-corporation-57982df94b6e3_rs.jpg" alt="Vega Corporation">
                                </a>
                            </div>
                        </div>
                        <div class="company-info">
                            <h3>
                                <a href="https://www.topcv.vn/brand/vegacorporation" class="company-name" target="_blank">Vega Corporation</a>
                            </h3>
                            <div class="company-description">
                                <p>" Vega Corporation được thành lập từ tháng 6/2003, thời gian đầu hợp tác với các nhà mạng để triển khai các dịch vụ giá trị gia tăng trên các thiết bị số.&nbsp;Vega là một trong trong các đối tác lớn của các nhà mạng trong và ngoài nước (Viettel, Vinaphone, Mobifone, Metfone,&nbsp;Natcom, Unitel…).Trải qua nhiều năm phát triển và trưởng thành, với đội ngũ nhân viên tài năng..."</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="box-company item-hover">
                        <div class="company-banner">
                            <a href="https://www.topcv.vn/brand/educa">
                                <div class="cover-wraper">
                                    <img src="https://static.topcv.vn/company_covers/educa-corporation-6025408517e96e7aa4be4a7198a8e938-61b05cbdccaaa.jpg" alt="EDUPIA" class="img-fluid">
                                </div>
                            </a>
                            <div class="company-logo">
                                <a href="https://www.topcv.vn/brand/educa">
                                    <img class="img-fluid" src="https://static.topcv.vn/company_logos/cong-ty-cp-giao-duc-educa-corporation-6d67556358b65494d801a26a77be21fb-5ea7b55a0ca31.jpg" alt="EDUPIA">
                                </a>
                            </div>
                        </div>
                        <div class="company-info">
                            <h3>
                                <a href="https://www.topcv.vn/brand/educa" class="company-name" target="_blank">EDUPIA</a>
                            </h3>
                            <div class="company-description">
                                <p>" Edupia là thương hiệu hàng đầu trong lĩnh vực Edtech tại Việt Nam. Được thành lập năm 2018, qua 4 năm hoạt động Edupia hiện có quy mô hơn 700 nhân sự và hàng trăm ngàn học viên tại Việt Nam và Đông Nam Á. Edupia cũng vinh dự nhận giải thưởng Ứng dụng số tốt nhất trong lĩnh vực đào tạo 2018, Top 50 Thương hiệu vàng ASEAN 2019..."</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="box-company item-hover">
                        <div class="company-banner">
                            <a href="https://www.topcv.vn/brand/icanread">
                                <div class="cover-wraper">
                                    <img src="https://static.topcv.vn/company_covers/I2ryfRAfys7baqC8fh3p.jpg" alt="I Can Read" class="img-fluid">
                                </div>
                            </a>
                            <div class="company-logo">
                                <a href="https://www.topcv.vn/brand/icanread">
                                    <img class="img-fluid" src="https://static.topcv.vn/company_logos/i-can-read-5d1c7587834f5.jpg" alt="I Can Read">
                                </a>
                            </div>
                        </div>
                        <div class="company-info">
                            <h3>
                                <a href="https://www.topcv.vn/brand/icanread" class="company-name" target="_blank">I Can Read</a>
                            </h3>
                            <div class="company-description">
                                <p>" Hệ thống I Can Read cung cấp một môi trường giáo dục tiếng Anh chuyên nghiệp được thiết kế dành riêng cho trẻ em từ 2,5 đến 14 tuổi, với phương pháp giảng dạy tập trung tối đa vào việc hỗ trợ khả năng ngôn ngữ của trẻ. Với hơn 140 trung tâm ở 10 quốc gia trên thế giới, hệ thống I Can Read đã đạt được thành tựu..."</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="box-company item-hover">
                        <div class="company-banner">
                            <a href="https://www.topcv.vn/brand/milensea">
                                <div class="cover-wraper">
                                    <img src="https://static.topcv.vn/company_covers/cong-ty-tnhh-milensea-retail-22ed6842f5eef556a54c6ca78f2dfa62-61b1b5a941607.jpg" alt="Công ty TNHH Milensea Retail" class="img-fluid">
                                </div>
                            </a>
                            <div class="company-logo">
                                <a href="https://www.topcv.vn/brand/milensea">
                                    <img class="img-fluid" src="https://static.topcv.vn/company_logos/cong-ty-tnhh-milensea-retail-5f48b397545db.jpg" alt="Công ty TNHH Milensea Retail">
                                </a>
                            </div>
                        </div>
                        <div class="company-info">
                            <h3>
                                <a href="https://www.topcv.vn/brand/milensea" class="company-name" target="_blank">Công ty TNHH Milensea Retail</a>
                            </h3>
                            <div class="company-description">
                                <p>" “Cuộc sống là sẻ chia”, với phương châm sống này, từ năm 2010, Ông Tal Siman Tov cùng vợ là Bà Sima Siman Tov, 2 người con của vùng đất thánh Jerusalem, đã mang những bí truyền làm đẹp từ quê hương sở tại đi khắp khu vực Đông Nam Á với mong muốn chăm sóc và giữ gìn vẻ đẹp cùng làn da cho người phụ nữ Á Đông.Đem..."</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-12">
                </div>
            </div>
        </div>
    </div>
</div>
<%--</form>--%>z
<!--================Blog Area =================-->
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
