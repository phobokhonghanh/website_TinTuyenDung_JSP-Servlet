<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 01/01/2023
  Time: 9:57 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<% String message = (String) request.getAttribute("message"); %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <%--    <meta name="viewport" content="width=device-width, initial-scale=1">--%>
    <title>Đăng ký</title>
</head>
<style>
    <%@include file="../assets/css/login.css"%>
    <%@include file="../assets/css/fontawesome-all.min.css"%>
</style>
<body>
<section>
    <div class="img-bg">
        <img src="<%=request.getContextPath()%>/assets/img/log_in/img2.jpg" alt="hinhanh">
    </div>
    <div class="noi-dung">
        <!-- Logo -->
        <div class="logo-log">
            <a href="<%=request.getContextPath()%>/visitor/trang-chu-candi.jsp">
                <img src="<%=request.getContextPath()%>/assets/img/logo/logo.png" alt="logo">

            </a>
        </div>
        <div class="form">
            <h2 class="form-heading in">Chào mừng bạn đến với TopViecLam</h2>
            <form action="<%=request.getContextPath()%>/SignUp" method="post">
<%--                <%--%>
<%--                    if (message != null) {--%>
<%--                %>--%>
<%--                <jsp:include page="error.jsp"></jsp:include>--%>
<%--                <%--%>
<%--                    }--%>
<%--                %>--%>
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
            <%=message%>
        </label>
    </div>
    <%
        }
    %>
                <div class="input-form">
                    <span>Họ và tên</span>
                    <input id="name" name="hoten" autofocus onkeyup="daoNutDN(), checkPass()" type="text" class="input"
                           data-type="text"
                           placeholder="Nhập họ và tên của bạn">
                </div>
                <div class="input-form">
                    <span>Email</span>
                    <input id="email" name="email" onkeyup="daoNutDN(), checkPass()" type="email" class="input"
                           data-type="email"
                           placeholder="abc@gmail.com">
                </div>
                <div class="input-form">
                    <span>Tên tài khoản</span>
                    <input id="id" name="user_name" onkeyup="daoNutDN(), checkPass()" type="text" class="input"
                           data-type="text"
                           placeholder="Nhập tên tài khoản">
                </div>
                <div class="input-form">
                    <span>Mật khẩu</span>
                    <input id="pass" name="password" onkeyup="daoNutDN(), checkPass()" type="password" class="input"
                           data-type="password" style="..."
                           placeholder="Nhập mật khẩu">
                    <%--                    <i class="fa fa-eye" onclick="daoTT()" style="position: relative; left: 550px;cursor: pointer;"></i>--%>
                </div>
                <h5 style='color: Red;'> Mật khẩu phải có ít nhất 8 ký tự, bao gồm 1 ký tự đặc biệt, 1 chữ in, 1 chữ
                    thường</h5>
                <div class="input-form">
                    <span>Xác nhận mật khẩu</span>
                    <input id="pass-again" name="password-again" onkeyup="daoNutDN(), checkPass()" type="password"
                           class="input"
                           data-type="password"
                           placeholder="Nhập lại mật khẩu ">
                    <%--                    <i class="fa fa-eye" onclick="daoTT()" style="position: relative; left: -40px;cursor: pointer;"></i>--%>

                </div>
                <div class="input-form">
                    <p>Bằng việc đăng ký tài khoản, bạn đã đồng ý với <a href="#">Điều khoản dịch vụ</a> và <a href="#">Chính
                        sách bảo mật</a> của chúng tôi</p>
                </div>
                <div class="input-form">
                    <input type="submit" name="btndangky_candi" style="width: 95%" id="btndangky" value="Đăng Ký">
                </div>
                <div class="">
                    <div class="input-form">
                        <p>Bạn đã có tài khoản? <a class="in" href='<c:url value="/Login?action=login"/>'>Đăng nhập
                            ngay</a></p>
                    </div>
                </div>
            </form>
        </div>
    </div>

</section>

</body>

<script>
    document.getElementById("btndangky").disabled = true;

    function daoNutDN() {
        var n = document.getElementById("name").value;
        var e = document.getElementById("email").value;
        var u = document.getElementById("id").value;
        var p = document.getElementById("pass").value;
        var pa = document.getElementById("pass-again").value;

        if (n.length > 0 && e.length > 0 && u.length > 0 && p.length > 0 && pa > 0) {
            document.getElementById("btndangky").disabled = false;
        } else {
            document.getElementById("btndangky").disabled = true;
        }
    }
</script>

<script>
    function checkPass() {
        var p = document.getElementById("pass").value;
        var pa = document.getElementById("pass-again").value;
        // Kiểm tra điều kiện mật khẩu phải có ít nhất 8 ký tự, 1 số, 1 chữ in, 1 ký tự đặc biệt
        const regexp = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9]).{8,}$/;
        if (regexp.test(p)) {
            if (pa == p) {
                document.getElementById("btndangky").disabled = false;
                document.getElementById("pass-again").style.borderColor = '#607d8b'
            }
            document.getElementById("pass").style.borderColor = '#607d8b';
            document.getElementById("btndangky").disabled = false;

        } else if (p == 0) {
            document.getElementById("pass").style.borderColor = '#607d8b';
            document.getElementById("btndangky").disabled = true;
        } else {
            document.getElementById("pass").style.borderColor = 'red';
            document.getElementById("btndangky").disabled = true;
        }

        if (pa != p) {
            document.getElementById("pass-again").style.borderColor = 'red'
            document.getElementById("btndangky").disabled = true;
        }
    }
</script>


</html>
