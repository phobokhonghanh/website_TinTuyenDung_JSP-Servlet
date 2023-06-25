<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Post" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Price" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 06/01/2023
  Time: 6:01 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<% List<Post> postLis = (List) request.getAttribute("postList");
    Price price = (Price) request.getAttribute("price");
%>
<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" type="image/png" href="<%=request.getContextPath()%>/business/assets/img/logo/logo.png">
    <title>Giỏ hàng</title>
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet"/>
    <!-- Nucleo Icons -->
    <link href="<%=request.getContextPath()%>/business/assets/css/nucleo-icons.css" rel="stylesheet"/>
    <link href="<%=request.getContextPath()%>/business/assets/css/nucleo-svg.css" rel="stylesheet"/>
    <!-- Font Awesome Icons -->
    <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
    <link href="<%=request.getContextPath()%>/business/assets/css/nucleo-svg.css" rel="stylesheet"/>
    <!-- CSS Files -->
    <%--    <link id="pagestyle" href="assets/css/soft-ui-dashboard.css?v=1.0.6" rel="stylesheet"/>--%>
    <link id="pagestyle" href="<%=request.getContextPath()%>/business/assets/css/soft-ui-dashboard.css" rel="stylesheet"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/business/assets/css/gio-hang.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/business/assets/css/thanh-toan.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/business/assets/css/thanh-toan2.css">

</head>
<body class="g-sidenav-show  bg-gray-100">
<!--  start nav left -->
<aside class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3 "
       id="sidenav-main">
    <!--    logo -->
    <div class="sidenav-header">
        <i class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none"
           aria-hidden="true" id="iconSidenav"></i>
        <a class="navbar-brand m-0" href="<%=request.getContextPath()%>/business/busi-trang-chu.jsp">
            <img src="assets/img/logo/logo.png">
            <span class="ms-1 font-weight-bold">for Business</span>
        </a>
    </div>
    <!--    logo end -->
    <hr class="horizontal dark mt-0">
    <div class="collapse navbar-collapse  w-auto " id="sidenav-collapse-main">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="<%=request.getContextPath()%>/business/busi-trang-chu.jsp">
                    <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
                        <svg width="12px" height="12px" viewBox="0 0 45 40" version="1.1"
                             xmlns="http://www.w3.org/2000/svg">
                            <title>shop </title>
                            <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                <g transform="translate(-1716.000000, -439.000000)" fill="#FFFFFF" fill-rule="nonzero">
                                    <g transform="translate(1716.000000, 291.000000)">
                                        <g transform="translate(0.000000, 148.000000)">
                                            <path class="color-background opacity-6"
                                                  d="M46.7199583,10.7414583 L40.8449583,0.949791667 C40.4909749,0.360605034 39.8540131,0 39.1666667,0 L7.83333333,0 C7.1459869,0 6.50902508,0.360605034 6.15504167,0.949791667 L0.280041667,10.7414583 C0.0969176761,11.0460037 -1.23209662e-05,11.3946378 -1.23209662e-05,11.75 C-0.00758042603,16.0663731 3.48367543,19.5725301 7.80004167,19.5833333 L7.81570833,19.5833333 C9.75003686,19.5882688 11.6168794,18.8726691 13.0522917,17.5760417 C16.0171492,20.2556967 20.5292675,20.2556967 23.494125,17.5760417 C26.4604562,20.2616016 30.9794188,20.2616016 33.94575,17.5760417 C36.2421905,19.6477597 39.5441143,20.1708521 42.3684437,18.9103691 C45.1927731,17.649886 47.0084685,14.8428276 47.0000295,11.75 C47.0000295,11.3946378 46.9030823,11.0460037 46.7199583,10.7414583 Z"></path>
                                            <path class="color-background"
                                                  d="M39.198,22.4912623 C37.3776246,22.4928106 35.5817531,22.0149171 33.951625,21.0951667 L33.92225,21.1107282 C31.1430221,22.6838032 27.9255001,22.9318916 24.9844167,21.7998837 C24.4750389,21.605469 23.9777983,21.3722567 23.4960833,21.1018359 L23.4745417,21.1129513 C20.6961809,22.6871153 17.4786145,22.9344611 14.5386667,21.7998837 C14.029926,21.6054643 13.533337,21.3722507 13.0522917,21.1018359 C11.4250962,22.0190609 9.63246555,22.4947009 7.81570833,22.4912623 C7.16510551,22.4842162 6.51607673,22.4173045 5.875,22.2911849 L5.875,44.7220845 C5.875,45.9498589 6.7517757,46.9451667 7.83333333,46.9451667 L19.5833333,46.9451667 L19.5833333,33.6066734 L27.4166667,33.6066734 L27.4166667,46.9451667 L39.1666667,46.9451667 C40.2482243,46.9451667 41.125,45.9498589 41.125,44.7220845 L41.125,22.2822926 C40.4887822,22.4116582 39.8442868,22.4815492 39.198,22.4912623 Z"></path>
                                        </g>
                                    </g>
                                </g>
                            </g>
                        </svg>
                    </div>
                    <span class="nav-link-text ms-1">Bảng tin</span>
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="<%=request.getContextPath()%>/business/CV?action=busiquanlycv">
                    <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
                        <svg width="12px" height="12px" viewBox="0 0 42 42" version="1.1"
                             xmlns="http://www.w3.org/2000/svg">
                            <title>office</title>
                            <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                <g transform="translate(-1869.000000, -293.000000)" fill="#FFFFFF" fill-rule="nonzero">
                                    <g transform="translate(1716.000000, 291.000000)">
                                        <g id="office" transform="translate(153.000000, 2.000000)">
                                            <path class="color-background opacity-6"
                                                  d="M12.25,17.5 L8.75,17.5 L8.75,1.75 C8.75,0.78225 9.53225,0 10.5,0 L31.5,0 C32.46775,0 33.25,0.78225 33.25,1.75 L33.25,12.25 L29.75,12.25 L29.75,3.5 L12.25,3.5 L12.25,17.5 Z"></path>
                                            <path class="color-background"
                                                  d="M40.25,14 L24.5,14 C23.53225,14 22.75,14.78225 22.75,15.75 L22.75,38.5 L19.25,38.5 L19.25,22.75 C19.25,21.78225 18.46775,21 17.5,21 L1.75,21 C0.78225,21 0,21.78225 0,22.75 L0,40.25 C0,41.21775 0.78225,42 1.75,42 L40.25,42 C41.21775,42 42,41.21775 42,40.25 L42,15.75 C42,14.78225 41.21775,14 40.25,14 Z M12.25,36.75 L7,36.75 L7,33.25 L12.25,33.25 L12.25,36.75 Z M12.25,29.75 L7,29.75 L7,26.25 L12.25,26.25 L12.25,29.75 Z M35,36.75 L29.75,36.75 L29.75,33.25 L35,33.25 L35,36.75 Z M35,29.75 L29.75,29.75 L29.75,26.25 L35,26.25 L35,29.75 Z M35,22.75 L29.75,22.75 L29.75,19.25 L35,19.25 L35,22.75 Z"></path>
                                        </g>
                                    </g>
                                </g>
                            </g>
                        </svg>
                    </div>
                    <span class="nav-link-text ms-1">Quản lí CV</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link " href="<%=request.getContextPath()%>/business/Post?action=tintuyendung">
                    <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
                        <svg width="12px" height="12px" viewBox="0 0 43 36" version="1.1"
                             xmlns="http://www.w3.org/2000/svg">
                            <title>credit-card</title>
                            <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                <g transform="translate(-2169.000000, -745.000000)" fill="#FFFFFF" fill-rule="nonzero">
                                    <g transform="translate(1716.000000, 291.000000)">
                                        <g transform="translate(453.000000, 454.000000)">
                                            <path class="color-background opacity-6"
                                                  d="M43,10.7482083 L43,3.58333333 C43,1.60354167 41.3964583,0 39.4166667,0 L3.58333333,0 C1.60354167,0 0,1.60354167 0,3.58333333 L0,10.7482083 L43,10.7482083 Z"></path>
                                            <path class="color-background"
                                                  d="M0,16.125 L0,32.25 C0,34.2297917 1.60354167,35.8333333 3.58333333,35.8333333 L39.4166667,35.8333333 C41.3964583,35.8333333 43,34.2297917 43,32.25 L43,16.125 L0,16.125 Z M19.7083333,26.875 L7.16666667,26.875 L7.16666667,23.2916667 L19.7083333,23.2916667 L19.7083333,26.875 Z M35.8333333,26.875 L28.6666667,26.875 L28.6666667,23.2916667 L35.8333333,23.2916667 L35.8333333,26.875 Z"></path>
                                        </g>
                                    </g>
                                </g>
                            </g>
                        </svg>
                    </div>
                    <span class="nav-link-text ms-1">Tin tuyển dụng</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link  " href="<%=request.getContextPath()%>/business/Log?action=logBusi">
                    <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">

                        <i class=" fa fa-bell cursor-pointer text-dark"></i>

                    </div>
                    <span class="nav-link-text ms-1">Thông báo hệ thống</span>
                </a>
            </li>

            <li class="nav-item mt-3">
                <h6 class="ps-4 ms-2 text-uppercase text-xs font-weight-bolder opacity-6">Trang tài khoản</h6>
            </li>
            <li class="nav-item">
                <a class="nav-link " href="<%=request.getContextPath()%>/business/busi-tai-khoan.jsp">
                    <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
                        <svg width="12px" height="12px" viewBox="0 0 46 42" version="1.1"
                             xmlns="http://www.w3.org/2000/svg">
                            <title>customer-support</title>
                            <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                <g transform="translate(-1717.000000, -291.000000)" fill="#FFFFFF" fill-rule="nonzero">
                                    <g transform="translate(1716.000000, 291.000000)">
                                        <g transform="translate(1.000000, 0.000000)">
                                            <path class="color-background opacity-6"
                                                  d="M45,0 L26,0 C25.447,0 25,0.447 25,1 L25,20 C25,20.379 25.214,20.725 25.553,20.895 C25.694,20.965 25.848,21 26,21 C26.212,21 26.424,20.933 26.6,20.8 L34.333,15 L45,15 C45.553,15 46,14.553 46,14 L46,1 C46,0.447 45.553,0 45,0 Z"></path>
                                            <path class="color-background"
                                                  d="M22.883,32.86 C20.761,32.012 17.324,31 13,31 C8.676,31 5.239,32.012 3.116,32.86 C1.224,33.619 0,35.438 0,37.494 L0,41 C0,41.553 0.447,42 1,42 L25,42 C25.553,42 26,41.553 26,41 L26,37.494 C26,35.438 24.776,33.619 22.883,32.86 Z"></path>
                                            <path class="color-background"
                                                  d="M13,28 C17.432,28 21,22.529 21,18 C21,13.589 17.411,10 13,10 C8.589,10 5,13.589 5,18 C5,22.529 8.568,28 13,28 Z"></path>
                                        </g>
                                    </g>
                                </g>
                            </g>
                        </svg>
                    </div>
                    <span class="nav-link-text ms-1">Tài khoản</span>
                </a>
            </li>
        </ul>
    </div>

    <div class="sidenav-footer mx-3 ">
        <div class="card card-background shadow-none card-background-mask-secondary" id="sidenavCard">
            <div class="full-background"
                 style="background-image: url('../<%=request.getContextPath()%>/business/assets/img/curved-images/white-curved.jpg')"></div>
            <div class="card-body text-start p-3 w-100">
                <div class="icon icon-shape icon-sm bg-white shadow text-center mb-3 d-flex align-items-center justify-content-center border-radius-md">
                    <i class="ni ni-diamond text-dark text-gradient text-lg top-0" aria-hidden="true"
                       id="sidenavCardIcon"></i>
                </div>
                <div class="docs-info">
                    <h6 class="text-white up mb-0">Hộp thư hỗ trợ</h6>
                    <p class="text-xs font-weight-bold">Hãy liên hệ với chúng tôi</p>
                    <a href="<%=request.getContextPath()%>/business/busi-tro-giup.jsp" class="btn btn-white btn-sm w-100 mb-0">Tư vấn viên</a>
                </div>
            </div>
        </div>
        <a class="btn bg-gradient-primary mt-3 w-100"
           href="<%=request.getContextPath()%>/business/busi-tai-khoan.jsp">Nâng cấp tài khoản</a>

    </div>
</aside>
<!--  end nav left -->
<main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
    <!-- Navbar -->
    <jsp:include page="busi-header.jsp"></jsp:include>
    <!-- End Navbar -->

    <div id="wrapper">
        <!--    div class="container-fluid py-4">-->
        <form action="<%=request.getContextPath()%>/Pay?action=thanhtoan" method="post" class="bg0 p-t-75 p-b-85">
            <div class="module-head-giohang" style="">
                <h3>Giỏ hàng</h3>
            </div>
            <div class="container">
                <!--                <div class="row">-->
                <div class="col-lg-10 col-xl-7 m-lr-auto">
                    <div class="m-l-25 m-r--38 m-lr-0-xl">
                        <div class="wrap-table-shopping-cart">
                            <div class="scrollbar">
                                <div class="force-overflow">
                                    <table class="table-shopping-cart">
                                        <tbody>
                                        <tr class="table_head">
                                            <th class="column-12">Bài đăng</th>
                                            <th class="column-2">Giá tiền</th>
                                            <th class="column-5">Thao tác</th>
                                        </tr>
                                        <% for (Post p : postLis) {
                                        %>
                                        <tr class="table_row">
                                            <td class="column-1">
                                                <div class="check">
                                                    <input id="choosePaid" name="choose" value="<%=p.getId()%>"
                                                           class="checkbox" type="checkbox" onchange="sumBill()"
                                                           onclick="
                                                        if (this.checked) {
                                                        count++;
                                                        } else {
                                                        if (count > 0) {
                                                        count--;
                                                        } else {
                                                        count = 0;
                                                        }
                                                        }
                                                        document.getElementById('selected').textContent = count;"
                                                    >
                                                    <%--      chọn checkbox--%>
                                                    <div class="d-flex magin-top flex-column">
                                                        <a href="/Post?action=details&id=<%=p.getId()%>">
                                                            <h6 class="mb-3 text-sm"><%=p.getTitle()%>
                                                            </h6>
                                                        </a>
                                                        <span class="mb-2 text-xs">Vị trí: <span
                                                                class="text-dark ms-sm-2 font-weight-bold"><%=p.getRank()%></span></span>
                                                        <span class="mb-2 text-xs">Địa chỉ: <span
                                                                class="text-dark ms-sm-2 font-weight-bold"><%=p.getAddress()%></span></span>
                                                        <span class="mb-2 text-xs">Mức lương: <span
                                                                class="text-dark font-weight-bold ms-sm-2"><%=p.getSalary()%> VND</span></span>
                                                        <span class="text-xs"><b>Ngày đăng tuyển:</b> <span
                                                                class="text-dark font-weight-bold ms-sm-2"><%=p.getCreateDate()%></span></span>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="column-2"><%=price.getPrice() + " " + price.getCurrent()%>
                                            </td>
                                            <td class=" column-5"><a
                                                    class="btn btn-link text-danger text-gradient px-3 mb-0"
                                                    href="<%=request.getContextPath()%>/Pay?action=xoa&id=<%=p.getId()%>"><i
                                                    class="far fa-trash-alt me-2"></i>Xóa</a>
                                            </td>
                                        </tr>
                                        <%}%>

                                        </tbody>
                                    </table>
                                </div>
                            </div>

                        </div>
                        <table class="table-shopping-cart shadow1"
                               style="border-left-style: groove; border-right-style: groove;">
                            <tbody>
                            <tr class="">
                                <td class="column-11 ">
                                    <div class="check">
                                        <input class="checkbox-all" type="checkbox"
                                               id="select-all" onchange="sumBill()"> <%--  chọn tất cả--%>
                                        <span class="text-danger text-dark mb-0" style="width: 130px"
                                        > Chọn tất cả (<%=postLis.size()%>) </span>
                                    </div>
                                </td>
                                <td class="column-22"> Tổng thanh toán (<span id="selected">0</span> bài viết): <span
                                        id="sumBill"></span> <%=price.getCurrent()%>
                                </td>
                                <%--  tong thanh toan --%>
                                <td class="column-22">
                                    <button type="button" id="btn1" onclick="vat(),pay()">
                                        Thanh toán
                                    </button>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div id="modal-container">
                <div id="modal">
                    <div class="tab_container">
                        <a class="close1" id="close"></a>
                        <input id="tab4" type="radio" name="tabs" checked style="display:none">
                        <label for="tab4">
                            <span>Thanh toán</span>
                        </label>
                        <section id="content4" class="tab-content">
                            <form action="" method="post">
                                <div class="pymt-radio" style="background: whitesmoke;">
                                    <div class="row-payment-method payment-row-last">
                                        <div class="">
                                            <span class="vat">
                                                <div class="thin dense">Thành tiền</div>
                                                <div class="thin dense">Thuế VAT(19%)</div>
                                                <div class="thin dense p5" style="color: #0b0b0b">Tổng tiền</div>
                                            </span>
                                            <span class="money">
                                                <div class="thin dense"><span
                                                        id="sumBill2">0</span> <%= price.getCurrent()%></div>
                                                <div class='thin dense'><span id="vat">0</span> <%= price.getCurrent()%></div>
                                                <div class="thin dense p5" style="color: #0b0b0b"><span
                                                        id="pay">0</span> <%= price.getCurrent()%></div>

                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="pymt-radio">
                                    <div class="row-payment-method payment-row-last">
                                        <div class="select-txt hr">
                                            <p class="pymt-type-name" style="margin-bottom: 0px;">Credit Card</p>
                                            <p class="pymt-type-desc">Safe money transfer using your bank account. Safe
                                                payment online. Credit card needed. Visa, Maestro, Discover, American
                                                Express</p>
                                        </div>
                                        <div class="select-logo">
                                            <div class="select-logo-sub logo-spacer">
                                                <img src="https://www.dropbox.com/s/by52qpmkmcro92l/logo-visa.png?raw=1"
                                                     alt="Visa"/>
                                            </div>
                                            <div class="select-logo-sub">
                                                <img src="https://www.dropbox.com/s/6f5dorw54xomw7p/logo-mastercard.png?raw=1"
                                                     alt="MasterCard"/></div>
                                        </div>

                                    </div>
                                </div>
                                <div class="form-cc">
                                    <div class="row-cc">
                                        <div class="cc-field">
                                            <div class="cc-title"> Mã thẻ
                                            </div>
                                            <input type="text" id="numAccount" name="numAccount" onkeyup="daoNutDN()" class="input cc-txt text-validated"
                                                   placeholder="0000 0000 0000 0000"/>
                                        </div>
                                    </div>
                                    <div class="row-cc">
                                        <div class="cc-field">
                                            <div class="cc-title">Ngày hết hạn
                                            </div>
                                            <select class="input cc-ddl">
                                                <option selected>01</option>
                                                <option>02</option>
                                                <option>03</option>
                                                <option>04</option>
                                                <option>05</option>
                                                <option>06</option>
                                                <option>07</option>
                                                <option>08</option>
                                                <option>09</option>
                                                <option>10</option>
                                                <option>11</option>
                                                <option>12</option>
                                            </select>
                                            <select class="input cc-ddl">
                                                <option>01</option>
                                                <option>02</option>
                                                <option>03</option>
                                                <option>04</option>
                                                <option>05</option>
                                                <option>06</option>
                                                <option>07</option>
                                                <option>08</option>
                                                <option>09</option>
                                                <option>10</option>
                                                <option>11</option>
                                                <option>12</option>
                                                <option>13</option>
                                                <option>14</option>
                                                <option>15</option>
                                                <option selected>16</option>
                                                <option>17</option>
                                                <option>18</option>
                                                <option>19</option>
                                                <option>20</option>
                                                <option>21</option>
                                                <option>22</option>
                                                <option>23</option>
                                                <option>24</option>
                                                <option>25</option>
                                                <option>26</option>
                                                <option>27</option>
                                                <option>28</option>
                                                <option>29</option>
                                                <option>30</option>
                                                <option>31</option>
                                            </select>
                                        </div>
                                        <div class="cc-field">
                                            <div class="cc-title">Mã CVV <span class="numberCircle">?</span>
                                            </div>
                                            <input type="text" class="input cc-txt" id="numberCircle" onkeyup="daoNutDN()"/>
                                        </div>
                                    </div>
                                    <div class="row-cc">
                                        <div class="cc-field">
                                            <div class="cc-title">Họ và tên trên thẻ
                                            </div>
                                            <input type="text" class="input cc-txt" id="name" onkeyup="daoNutDN()"/>
                                            <div class="cc-title">Số tiền
                                            </div>
                                            <input type="text" id="pay2" name="pay2" readonly style="width: auto"
                                                   class="input cc-txt"/>
                                        </div>
                                    </div>

                                </div>
                                <div class="button-master-container">
                                    <div class="button-container button-finish">
                                        <button class="pay-btn" type="submit" id="thanhtoan">Thanh toán</button>
                                    </div>
                                </div>
                            </form>
                        </section>
                    </div>
                </div>
            </div>
            <!--            end Modal-->
        </form>
    </div>
    </div>
</main>

<div class="fixed-plugin">
    <a class="fixed-plugin-button text-dark position-fixed px-3 py-2">
        <i class="fa fa-envelope-o py-2"> </i>
    </a>
    <div class="card shadow-lg ">
        <div class="card-header pb-0 pt-3 ">
            <div class="float-start">
                <h5 class="mt-3 mb-0">Soft UI Configurator</h5>
                <p>See our dashboard options.</p>
            </div>
            <div class="float-end mt-4">
                <button class="btn btn-link text-dark p-0 fixed-plugin-close-button">
                    <i class="fa fa-close"></i>
                </button>
            </div>
            <!-- End Toggle Button -->
        </div>
        <hr class="horizontal dark my-1">
        <div class="card-body pt-sm-3 pt-0">
            <!-- Sidebar Backgrounds -->
            <div>
                <h6 class="mb-0">Sidebar Colors</h6>
            </div>
            <a href="javascript:void(0)" class="switch-trigger background-color">
                <div class="badge-colors my-2 text-start">
                    <span class="badge filter bg-gradient-primary active" data-color="primary"
                          onclick="sidebarColor(this)"></span>
                    <span class="badge filter bg-gradient-dark" data-color="dark" onclick="sidebarColor(this)"></span>
                    <span class="badge filter bg-gradient-info" data-color="info" onclick="sidebarColor(this)"></span>
                    <span class="badge filter bg-gradient-success" data-color="success"
                          onclick="sidebarColor(this)"></span>
                    <span class="badge filter bg-gradient-warning" data-color="warning"
                          onclick="sidebarColor(this)"></span>
                    <span class="badge filter bg-gradient-danger" data-color="danger"
                          onclick="sidebarColor(this)"></span>
                </div>
            </a>
            <!-- Sidenav Type -->
            <div class="mt-3">
                <h6 class="mb-0">Sidenav Type</h6>
                <p class="text-sm">Choose between 2 different sidenav types.</p>
            </div>
            <div class="d-flex">
                <button class="btn bg-gradient-primary w-100 px-3 mb-2 active" data-class="bg-transparent"
                        onclick="sidebarType(this)">Transparent
                </button>
                <button class="btn bg-gradient-primary w-100 px-3 mb-2 ms-2" data-class="bg-white"
                        onclick="sidebarType(this)">White
                </button>
            </div>
            <p class="text-sm d-xl-none d-block mt-2">You can change the sidenav type just on desktop view.</p>
            <!-- Navbar Fixed -->
            <div class="mt-3">
                <h6 class="mb-0">Navbar Fixed</h6>
            </div>
            <div class="form-check form-switch ps-0">
                <input class="form-check-input mt-1 ms-auto" type="checkbox" id="navbarFixed"
                       onclick="navbarFixed(this)">
            </div>
            <hr class="horizontal dark my-sm-4">
            <a class="btn bg-gradient-dark w-100" href="https://www.creative-tim.com/product/soft-ui-dashboard">Free
                Download</a>
            <a class="btn btn-outline-dark w-100"
               href="https://www.creative-tim.com/learning-lab/bootstrap/license/soft-ui-dashboard">View
                documentation</a>
            <div class="w-100 text-center">
                <a class="github-button" href="https://github.com/creativetimofficial/soft-ui-dashboard"
                   data-icon="octicon-star" data-size="large" data-show-count="true"
                   aria-label="Star creativetimofficial/soft-ui-dashboard on GitHub">Star</a>
                <h6 class="mt-3">Thank you for sharing!</h6>
                <a href="https://twitter.com/intent/tweet?text=Check%20Soft%20UI%20Dashboard%20made%20by%20%40CreativeTim%20%23webdesign%20%23dashboard%20%23bootstrap5&amp;url=https%3A%2F%2Fwww.creative-tim.com%2Fproduct%2Fsoft-ui-dashboard"
                   class="btn btn-dark mb-0 me-2">
                    <i class="fab fa-twitter me-1" aria-hidden="true"></i> Tweet
                </a>
                <a href="https://www.facebook.com/sharer/sharer.php?u=https://www.creative-tim.com/product/soft-ui-dashboard"
                   class="btn btn-dark mb-0 me-2">
                    <i class="fab fa-facebook-square me-1" aria-hidden="true"></i> Share
                </a>
            </div>
        </div>
    </div>
</div>
</body>
<!--   Core JS Files   -->
<script src="<%=request.getContextPath()%>/business/assets/js/core/popper.min.js"></script>
<script src="<%=request.getContextPath()%>/business/assets/js/core/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/business/assets/js/plugins/perfect-scrollbar.min.js"></script>
<script src="<%=request.getContextPath()%>/business/assets/js/plugins/smooth-scrollbar.min.js"></script>
<script async defer src="https://buttons.github.io/buttons.js"></script>
<script>
    document.getElementById("thanhtoan").disabled = true;

    function daoNutDN() {
        var a = document.getElementById("numAccount").value;
        var c = document.getElementById("numberCircle").value;
        var n = document.getElementById("name").value;


        if (a.length > 0 && c.length > 0 && n.length > 0) {
            document.getElementById("thanhtoan").disabled = false;
        } else {
            document.getElementById("thanhtoan").disabled = true;
        }
    }
</script>
<script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
        var options = {
            damping: '0.5'
        }
        Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
</script>
<!-- Github buttons -->
<script async defer src="https://buttons.github.io/buttons.js"></script>
<!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
<script src="<%=request.getContextPath()%>/business/assets/js/soft-ui-dashboard.min.js?v=1.0.6"></script>
<!--Show-->
<script>
    // hiển thị trang thanh toán
    const btn_open = document.getElementById('btn1');
    const modal_container = document.getElementById('modal-container');
    btn_open.addEventListener('click', () => {
        // Add class .show
        modal_container.classList.add('show');
    });

    // tắt trang thanh toán
    const btn_close = document.getElementById('close');
    btn_close.addEventListener('click', () => {
        // remove class .show
        modal_container.classList.remove('show');
    });
    var count = 0; // đếm số bài viết được check
    const checkboxes = document.querySelectorAll('.checkbox');

    // check and uncheck
    function check(checked = true) {
        checkboxes.forEach((checkbox) => {
            checkbox.checked = checked;
        });
        count = checkboxes.length;
    }

    // tổng tiền
    var sum = 0;

    function sumBill() {
        sum = count *<%=price.getPrice()%>;
        document.getElementById('sumBill').textContent = sum;
        document.getElementById('sumBill2').textContent = sum;
    }

    // thuế
    var tienthue = 0;

    function vat() {
        tienthue = sum *<%=price.getVat()%>;
        document.getElementById('vat').textContent = tienthue;
    }

    // thành tiền
    var thanhtien = 0;

    function pay() {
        thanhtien = sum + tienthue;
        document.getElementById('pay').textContent = thanhtien;
        document.getElementById('pay2').value = thanhtien;
    }

    function checkAll() {
        check();
        document.getElementById('selected').textContent = count;
        this.onclick = uncheckAll;
    }

    function uncheckAll() {
        check(false);
        count = 0;
        document.getElementById('selected').textContent = count;
        this.onclick = checkAll;
    }

    // check all
    const btn = document.querySelector('#select-all');
    btn.onclick = checkAll;

</script>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</html>
