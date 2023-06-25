<%@ page import="vn.edu.hcmuaf.fit.service.DAOContact" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Contact" %><%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 31/12/2022
  Time: 4:26 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% Contact contact = DAOContact.getInstance().getContact();%>
<html>
<head>
    <title></title>
</head>
<body>
<footer>
    <!-- Footer Start-->
    <div class="footer-area footer-bg padding">
        <div class="container">
            <!-- logo -->
            <div class="foot-logo">
                <a href="trang-chu.html"><img src="<%=request.getContextPath()%>/assets/img/logo/logo2_footer.png"
                                              alt=""></a>
            </div>
            <div class="row d-flex justify-content-between">
                <div class="col-xl-3 col-lg-3 col-md-4 col-sm-5 padding-left">
                    <div class="single-footer-caption mb-50">
                        <div class="footer-tittle">
                            <h4>Về <%=contact.getName()%>
                            </h4>
                            <ul>
                                <li><a href="<%=request.getContextPath()%>/visitor/ve-chung-toi-candi.jsp">Giới thiệu</a></li>
                                <li><a href="<%=request.getContextPath()%>/visitor/tin-tuc-candi.jsp">Góc báo chí</a></li>
                                <li><a href="<%=request.getContextPath()%>/visitor/lien-he-candi.jsp">Liên hệ</a></li>
                                <li><a href="<%=request.getContextPath()%>/visitor/chinh-sach-bao-mat-candi.jsp">Chính sách bảo mật</a></li>
                                <li><a href="<%=request.getContextPath()%>/visitor/dieu-khoan-dich-vu-candi.jsp">Điều khoản dịch vụ</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-4 col-sm-5">
                    <div class="single-footer-caption mb-50">
                        <div class="footer-tittle">
                            <h4>Thông tin liên hệ</h4>
                            <ul>
                                <li>
                                    <p>Địa chỉ: <%=contact.getAddress()%>
                                    </p>
                                </li>
                                <li><p>Điện thoại: <%=contact.getPhone()%>
                                </p></li>
                                <li><a href="#">Email: <%=contact.getEmail()%>
                                </a></li>
                            </ul>
                        </div>


                    </div>
                </div>
                <div class="col-xl-3  col-md-4 col-sm-5">
                    <div class="single-footer-caption mb-50">
                        <div class="footer-tittle">
                            <h4>Việc làm theo khu vực</h4>
                            <ul>
                                <li><a href="#">Hồ Chí Minh</a></li>
                                <li><a href="#">Hà Nội</a></li>
                                <li><a href="#">Hải Phòng</a></li>
                                <li><a href="#">Đà Nẵng</a></li>
                                <li><a href="#">Cần Thơ</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3  col-md-4 col-sm-5">
                    <div class="single-footer-caption mb-50">
                        <div class="footer-tittle">
                            <h4>Việc làm</h4>
                            <!-- Form -->
                            <ul>
                                <li><a href="#">Lập trình web</a></li>
                                <li><a href="#">Trí tuệ nhân tạo</a></li>
                                <li><a href="#">An ninh mạng</a></li>
                                <li><a href="#">Hệ thống thông tin</a></li>
                                <li><a href="#">Công nghệ phần mềm</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!-- footer-bottom area -->
    <div class="footer-bottom-area footer-bg">
        <div class="container">
            <div class="footer-border">
                <div class="row d-flex justify-content-between align-items-center">
                    <div class="col-xl-10 col-lg-10 ">
                        <div class="footer-copy-right">
                            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                Copyright &copy; Công ty cổ phần <%=contact.getName()%>
                                </a>
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            </p>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-2">
                        <div class="footer-social f-right">
                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fas fa-globe"></i></a>
                            <a href="#"><i class="fab fa-behance"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End-->
</footer>
</body>
</html>
