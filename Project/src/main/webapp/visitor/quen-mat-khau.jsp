<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Account" %><%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 03/01/2023
  Time: 3:59 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String message = (String) request.getAttribute("message"); %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Quên mật khẩu</title>
    <link rel="stylesheet" type="text/css" href="../assets/css/login.css">
</head>
<style>
    <%@include file="../assets/css/login.css"%>
</style>
<body>
<section>
    <div class="img-bg">
        <img src="<%=request.getContextPath()%>/assets/img/log_in/img3.jpg" alt="">
    </div>

    <div class="noi-dung">
        <!-- Logo -->
        <div class="logo-log">
            <a href="dang-nhap.jsp"><img src="<%=request.getContextPath()%>/assets/img/logo/logo.png" alt=""></a>
        </div>
        <!-- Form -->
        <div class="form">
            <h2 class="in">Quên mật khẩu </h2>
            <form action="<%=request.getContextPath()%>/ResetPassword?action=forgotPassword" method="post">
                <%
                    if (message != null) {
                %>
                <div style="width: 95%;
                                            height: calc(1.5em + 0.75rem + 2px);
                                            padding: 0.375rem 0.75rem;
                                            background: #E05E74; border-radius: 5px;
                                            border: 2px solid black">
                    <label style="color: #4d0203;
                                                  font-size: 1rem;
                                                  font-weight: 400;
                                                  line-height: 1.5;">
                        <b> ERROR! </b> Tài khoản hoặc email không đúng
                    </label>
                </div>
                <%
                    }
                %>
                <div id="modal">
                    <!--Nhập email-->
                    <div id="modal1">
                        <div class="input-form">
                            <span>Tài khoản</span>
                            <input id="username" name="username" class="input"
                                   placeholder="Nhập tài khoản của bạn">
                        </div>
                        <div class="input-form">
                            <span>Email</span>
                            <input id="email" name="email" type="email" class="input"
                                   placeholder="Nhập email của bạn">
                        </div>
                        <div class="input-form">
                            <input id="btnnhanma" name="btnnhanma-candi" type="submit" value="Lấy mật khẩu">
                        </div>
                        <div class="input-form">
                            <p>Bằng việc thực hiện đổi mật khẩu, bạn đã đồng ý với <a href="#">Điều khoản dịch vụ</a> và
                                <a href="#">Chính sách
                                    bảo mật</a> của chúng tôi</p>
                        </div>
                        <div>
                            <div class="left">Quay lại<a class="in" href='<c:url value="/Login?action=login"/>'> Đăng nhập</a></div>
                            <div class="right">
                                <p>Đăng ký <a class="in" href='<c:url value="/SignUp?action=business"/>'>Doanh nghiệp</a>/<a class="in" href='<c:url value="/SignUp?action=candidate"/>'>Người ứng tuyển</a>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>

</body>
<script>
    const btn_nhanma = document.getElementById('btnnhanma');
    const btn_datlaimk = document.getElementById('btndatlaimk');
    const btn_done = document.getElementById('btndone');

    const modal1 = document.getElementById('modal1');
    const modal2 = document.getElementById('modal2');
    const modal3 = document.getElementById('modal3');

    btn_nhanma.addEventListener("click", () => {
        modal1.classList.add("close");
        modal2.classList.remove("close");
        modal2.classList.add("show");
    });

    btn_datlaimk.addEventListener("click", () => {
        modal2.classList.remove("show");
        modal2.classList.add("close");
        modal3.classList.remove("close");
        modal3.classList.add("show");
    });
</script>

</html>
