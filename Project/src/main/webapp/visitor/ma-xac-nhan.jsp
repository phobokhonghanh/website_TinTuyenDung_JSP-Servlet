<%@ page import="vn.edu.hcmuaf.fit.model.Account" %><%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 03/01/2023
  Time: 3:59 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String email = request.getParameter("email");
    request.setAttribute("email", email);

%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Quên mật khẩu</title>
    <link rel="stylesheet" type="text/css" href="../assets/css/login.css">
</head>
</head>
<body>
<section>
    <div class="img-bg">
        <img src="<%=request.getContextPath()%>/assets/img/log_in/img3.jpg" alt="hinhanh">
    </div>

    <div class="noi-dung">
        <!-- Logo -->
        <div class="logo-log">
            <a href="dang-nhap.jsp"><img src="../assets/img/logo/logo.png" alt=""></a>
        </div>
        <!-- Form -->
        <div class="form">
            <h2 class="in">Quên mật khẩu </h2>
            <form>
                <div id="modal">
                    <!--Nhập mã xác nhận-->
                    <div>
                        <br>
                        <div class="input-form">
                            <span>Mã xác nhận</span>
                            <input id="maxacnhan" type="text" class="input"
                                   placeholder="Nhập mã xác nhận">
                            <a href="" style="padding:10px;float: right;cursor: pointer"> Gửi lại mã </a>
                        </div>
                        <div class="input-form">
                            <!--                        <input id="btndatlaimk" name="btndatlaimk-candi" type="button" value="Đặt lại mật khẩu">-->
                            <button id="btndatlaimk" name="btndatlaimk-candi" type="button" value="">Đặt lại mật khẩu
                            </button>

                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>

</body>
<%--<script>--%>
<%--    const btn_nhanma = document.getElementById('btnnhanma');--%>
<%--    const btn_datlaimk = document.getElementById('btndatlaimk');--%>
<%--    const btn_done = document.getElementById('btndone');--%>

<%--    const modal1 = document.getElementById('modal1');--%>
<%--    const modal2 = document.getElementById('modal2');--%>
<%--    const modal3 = document.getElementById('modal3');--%>


<%--    btn_nhanma.addEventListener("click", () => {--%>
<%--        modal1.classList.add("close");--%>
<%--        modal2.classList.remove("close");--%>
<%--        modal2.classList.add("show");--%>
<%--    });--%>
<%--    btn_datlaimk.addEventListener("click", () => {--%>
<%--        modal2.classList.remove("show");--%>
<%--        modal2.classList.add("close");--%>
<%--        modal3.classList.remove("close");--%>
<%--        modal3.classList.add("show");--%>
<%--    });--%>
<%--</script>--%>

</html>
