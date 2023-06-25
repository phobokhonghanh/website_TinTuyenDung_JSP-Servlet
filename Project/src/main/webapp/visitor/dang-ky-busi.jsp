<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 02/01/2023
  Time: 2:28 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String message = (String) request.getAttribute("message"); %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Đăng ký</title>
    <%--    <link rel="stylesheet" type="text/css" href="business/assets/css/sigin-business.css">--%>
</head>
<style>
    <%@include file="../business/assets/css/sigin-business.css"%>
</style>
<body>
<div id="__nuxt">
    <div id="__layout">
        <div class="auth">
            <div data-v-9281c350="" class="">
                <div data-v-9281c350="" class="register-header-box">
                    <div data-v-9281c350="" class="overlay">
                        <div data-v-9281c350="" class="register-header-logo d-flex justify-content-between p-4">
                            <div data-v-9281c350="" class="back" style="cursor: text">
                                <a data-v-9281c350="" href="#"
                                   class="text-decoration-none text-white">
                                </a>
                            </div>
                        </div>
                        <div data-v-9281c350="" class="register-header-description max-width mx-auto"><h2
                                data-v-9281c350="">Đăng ký tài khoản Nhà tuyển dụng</h2>
                        </div>
                    </div>
                </div>
                <div data-v-9281c350="" class="content-container">
                    <div data-v-9281c350="" class="policy-box rounded width-80 margin-left-160">
                        <div data-v-9281c350="" role="button" data-toggle="collapse" data-target=".policy-expand"
                             class="policy-expand-btn">
                            <span data-v-9281c350="" class="text-dark">QUY ĐỊNH</span>
                            <div data-v-9281c350="" class="underline" style="margin-left: 0px"></div>
                        </div>
                        <div data-v-9281c350="" class="policy-expand collapse show fade">
                            <p>
                            <div data-v-9281c350="" class="register-policy">Để đảm bảo chất lượng dịch vụ, TopViecLam
                                <span data-v-9281c350="" class="text-danger">không cho phép một người dùng tạo nhiều tài khoản khác nhau</span>.
                                <br data-v-9281c350=""> Nếu phát hiện vi phạm, TopViecLam sẽ ngừng cung cấp dịch vụ tới
                                tất
                                cả các tài khoản trùng lặp hoặc chặn toàn bộ truy cập tới hệ thống website của
                                TopViecLam.
                                <br data-v-9281c350="">
                                Đối với trường hợp khách hàng đã sử dụng hết 3 tin tuyển dụng miễn phí, TopViecLam hỗ
                                trợ
                                kích hoạt đăng tin tuyển dụng không giới hạn sau khi quý doanh nghiệp cung cấp thông tin
                                giấy phép kinh doanh. <br data-v-9281c350="">
                                <div data-v-9281c350="" class="py-2" style="margin-top: 15px">
                                    <a data-v-9281c350="" href="#" class="text-muted text-decoration-none">Đã
                                        có tài khoản?</a>
                                    <a data-v-9281c350="" href='<c:url value="/Login?action=login"/>'  class="text-primary text-decoration-none">
                                        Đăng nhập ngay
                                    </a></div>
                            </div>
                            </p>
                        </div>
                    </div>
                    <div data-v-9281c350="" class=" register-form position-relative width-80 margin-left-160"
                         style="padding-left: 50px">
                        <form data-v-9281c350="" action="<%=request.getContextPath()%>/SignUp" method="post" role="presentation">
                            <div data-v-9281c350="" class="mb-3"><span data-v-9281c350="" class="font-weight-bold">TÀI KHOẢN</span>
                                <div data-v-9281c350="" class="underline"></div>
                                <%
                                    if (message != null) {
                                %>
                                <jsp:include page="error.jsp"></jsp:include>
                                <%
                                    }
                                %>
                                <div data-v-9281c350="" class="form-group">
                                    <label data-v-9281c350="" class="col-form-label text-dark">Tên đăng nhập:</label>
                                    <div data-v-9281c350="" class="col-form-input">
                                        <div data-v-8c64d55c="" data-v-9281c350="">
                                            <div data-v-8c64d55c="" class="ml-auto position-relative">
                                                <input data-v-8c64d55c="" id="id" name="user_name" type="text"
                                                       placeholder="Tên đăng nhập"
                                                       onkeyup="daoNutDN(), checkPass()" autofocus
                                                       class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div data-v-9281c350="" class="form-group">
                                    <label data-v-9281c350="" class="col-form-label text-dark">Email:</label>
                                    <div data-v-9281c350="" class="col-form-input">
                                        <div data-v-8c64d55c="" data-v-9281c350="">
                                            <div data-v-8c64d55c="" class="ml-auto position-relative">
                                                <input id="email" name="email" type="email" onkeyup="daoNutDN(), checkPass()"
                                                       class="form-control"
                                                       placeholder="exc@company.com"
                                                >
                                            </div>
                                        </div>
                                        <div data-v-9281c350="" class="text-muted mt-1">*Đăng ký
                                            bằng email công ty (theo tên miền website công ty) để được hỗ trợ duyệt tin
                                            nhanh
                                            &amp; đăng tin không giới hạn.
                                        </div>
                                    </div>
                                </div>
                                <div data-v-9281c350="" class="form-group">
                                    <label data-v-9281c350="" class="col-form-label text-dark">
                                        Mật khẩu:
                                    </label>
                                    <div data-v-9281c350="" class="col-form-input">
                                        <div data-v-8c64d55c="" data-v-9281c350="">
                                            <div data-v-8c64d55c="" class="input-container ml-auto position-relative">
                                                <input id="pass" name="password" type="password" onkeyup="daoNutDN(), checkPass()"
                                                       placeholder="Mật khẩu (từ 6 đến 25 ký tự)"
                                                       class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div data-v-9281c350="" class="form-group">
                                    <label data-v-9281c350="" class="col-form-label text-dark"> Nhập lại mật
                                        khẩu: </label>
                                    <div data-v-9281c350="" class="col-form-input">
                                        <div data-v-8c64d55c="" data-v-9281c350="">
                                            <div data-v-8c64d55c="" class="input-container ml-auto position-relative">
                                                <input id="pass-again" name="password-again"
                                                       type="password" onkeyup="daoNutDN(), checkPass()"
                                                       placeholder="Nhập lại mật khẩu"
                                                       class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div data-v-9281c350="" class="mb-3"><span data-v-9281c350="" class="font-weight-bold">THÔNG TIN NHÀ TUYỂN DỤNG</span>
                                <div data-v-9281c350="" class="underline"></div>
                                <div data-v-9281c350="" class="form-group"><label data-v-9281c350=""
                                                                                  class="col-form-label text-dark">
                                    Họ và tên:
                                </label>
                                    <div data-v-9281c350="" class="col-form-input">
                                        <div data-v-8c64d55c="" data-v-9281c350="">
                                            <div data-v-8c64d55c="" class="input-container ml-auto position-relative">
                                                <input id="name" name="hoten"
                                                       type="text"
                                                       placeholder="Họ tên"
                                                       class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div data-v-9281c350="" class="form-group"><label data-v-9281c350=""
                                                                                  class="col-form-label text-dark">
                                    Số điện thoại cá nhân:
                                </label>
                                    <div data-v-9281c350="" class="col-form-input">
                                        <div data-v-55ff225c="" data-v-9281c350="" class="mask-input">
                                            <input data-v-55ff225c="" id="phone" name="phone"
                                                   placeholder="Số điện thoại cá nhân"
                                                   class="form-control hidden-spin-button"> <!----> <!----></div>
                                    </div>
                                </div>
                                <!--                                GIOI TINH-->
                                <div data-v-9281c350="" class="">
                                    <label data-v-9281c350="" class="" style="padding-top: 15px">
                                        Giới tính:
                                    </label>
                                    <select name="select1" id="gen" name="gen"
                                            class="col-form-label text-dark multiselect__tags col-form-input"
                                            style="width: 30%">
                                        <option value="1">Nam</option>
                                        <option value="2">Nữ</option>
                                    </select>
                                </div>
                            </div>
                            <!--                   énd             -->
                            <!--                                END gioi tinh-->
                            <div data-v-9281c350="" class="form-group"><label data-v-9281c350=""
                                                                              class="col-form-label text-dark">
                                Công ty:
                            </label>
                                <div data-v-9281c350="" class="col-form-input">
                                    <div data-v-8c64d55c="" data-v-9281c350="">
                                        <div data-v-8c64d55c="" class="input-container ml-auto position-relative">
                                            <!----> <!----> <input data-v-8c64d55c="" type="text" id="company-name" name="companyName"
                                                                   placeholder="Tên công ty"
                                                                   class="form-control"> <!----></div> <!----></div>
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label">Thông tin công ty:</label>
                                <div class="controls">
                                    <textarea class="span8a" name="description"
                                              style="width: 1000px; border: 1px solid #f1f3f4;"
                                              rows="5"></textarea>
                                </div>
                            </div>

                            <!--                   énd             -->
                            <div data-v-9281c350="" class="form-group"><label data-v-9281c350=""
                                                                              class="col-form-label text-dark">Địa
                                điểm làm việc:</label>
                                <div data-v-9281c350="" class="col-form-input">
                                    <div data-v-9281c350="" class="row">
                                        <div data-v-9281c350="" class="col-sm-6">
                                            <div data-v-b88e49a4="" data-v-9281c350="">
                                                <div data-v-b88e49a4="" id="SPycYNwOwB"
                                                     class="my-custom-select position-relative"><!---->

                                                    <div tabindex="-1" class="multiselect__content-wrapper"
                                                         style="max-height: 300px; display: none;">

                                                    </div>
                                                </div>
                                                <p></p>
                                                <div data-v-9281c350="" class="col-sm-6">
                                                    <div data-v-9281c350="">
                                                        <div data-v-b88e49a4="" data-v-9281c350="">
                                                            <div data-v-b88e49a4="" id="upjZNkvcsi"
                                                                 class="my-custom-select position-relative disabled">
                                                                <!---->
                                                                <div data-v-b88e49a4="" tabindex="-1"
                                                                     class="multiselect multiselect--disabled">

                                                                    <div class="multiselect__tags-wrap"
                                                                         style="display: none;"></div> <!---->
                                                                    <input id="location" name="location"
                                                                           type="text"
                                                                           placeholder="Nhập địa chỉ"

                                                                           class="form-control"> <!----></div>
                                                                <!----></div>
                                                            <div tabindex="-1" class="multiselect__content-wrapper"
                                                                 style="max-height: 300px; display: none;">

                                                            </div>
                                                        </div>
                                                    </div> <!----></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div data-v-9281c350="" class="form-group form-check">
                                <div data-v-9281c350="" class="custom-control custom-checkbox form-check-input my-0"
                                     type="checkbox">
                                    <input id="dieukhoan" onclick="daoNutDN(), checkPass()" type="checkbox"
                                           class="custom-control-input" value="false">
                                    <%--                                    <label for="dieukhoan" class="custom-control-label"></label>--%>
                                </div>
                                <label for="dieukhoan" onclick="daoNutDN(), checkPass()" class="form-check-label">
                                    Tôi đồng ý với
                                    <a data-v-9281c350="" href="#"
                                       class="text-danger text-decoration-none">
                                        &nbsp;Điều khoản dịch vụ&nbsp;
                                    </a>
                                    của Topvieclam.
                                </label>
                            </div>
                            <div data-v-9281c350="" class="text-center mb-0 mt-4 action-container">
                                <button data-v-9281c350="" type="button"
                                        class="btn min-width btn-secondary btn-lg" style="width: 35%"> Hủy
                                </button>
                                <button data-v-9281c350="" type="submit" id="btndangky" name="btndangky_busi"
                                        class="btn min-width btn-primary btn-lg" style="width: 35%;cursor: not-allowed">
                                    Hoàn tất
                                </button>

                            </div>

                        </form>
                    </div>
                </div>
                <div data-v-0e04a82d="" data-v-9281c350="" id="KCwEl" data-backdrop="static" class="modal"
                     style="display: none;" aria-hidden="true">
                    <div role="document" class="modal-dialog modal-check-register-user">
                        <div class="modal-content border-0">
                            <div class="modal-header border-bottom-1 px-4 border-bottom-0"><h5
                                    class="modal-title text-truncate overflow-hidden text-nowrap"></h5>  <!----></div>
                            <div data-v-0e04a82d="" class="d-flex justify-content-center">
                                <div data-v-0e04a82d="" class="w-75 text-center"><h5 data-v-0e04a82d=""
                                                                                     class="font-weight-bold title">Chào
                                    bạn,</h5>
                                    <p data-v-0e04a82d="" class="mb-4">Bạn hãy dành ra vài giây để xác nhận thông tin
                                        dưới đây nhé!<img data-v-0e04a82d="" src="/app/_nuxt/img/ring.8fa28ce.png"
                                                          width="40"></p></div>
                            </div>
                            <div data-v-0e04a82d=""
                                 class="modal-footer content justify-content-center text-center px-4 mx-0">
                                <div data-v-0e04a82d="" class="font-weight-bold desc">Để tối ưu tốt nhất cho trải nghiệm
                                    của bạn với TopCV,<br data-v-0e04a82d="">vui lòng lựa chọn nhóm phù hợp nhất với
                                    bạn.
                                </div>
                                <div data-v-0e04a82d="" class="row w-100 mb-3">
                                    <div data-v-0e04a82d="" class="col-6"
                                         style="border-right: 1px solid rgb(255, 250, 250);">
                                        <img data-v-0e04a82d="" src="/app/_nuxt/img/bussiness.dfe4b5e.svg" width="262">
                                    </div>
                                    <div data-v-0e04a82d="" class="col-6">
                                        <img data-v-0e04a82d="" src="/app/_nuxt/img/student.031bdde.svg" width="262">
                                    </div>
                                    <div data-v-0e04a82d="" class="col-6">
                                        <a data-v-0e04a82d="" class="btn btn-primary btn-redirect">Tôi là nhà tuyển
                                            dụng</a>
                                    </div>
                                    <div data-v-0e04a82d="" class="col-6">
                                        <a data-v-0e04a82d="" href="#"
                                           class="btn btn-primary btn-redirect">
                                            Tôi là ứng viên tìm việc
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    document.getElementById("btndangky").disabled = true;
    function daoNutDN() {
        var e = document.getElementById("email").value;
        var u = document.getElementById("id").value;
        var p = document.getElementById("pass").value;
        var pa = document.getElementById("pass-again").value;



        if (e.length > 0 && u.length > 0 && p.length > 0 && pa.length > 0 ) {
            document.getElementById("btndangky").disabled = false;
            document.getElementById("btndangky").style.cursor = 'pointer';

        } else {
            document.getElementById("btndangky").disabled = true;
            document.getElementById("btndangky").style.cursor = 'not-allowed';
        }


    }
</script>
<script>
    function checkPass() {
        var p = document.getElementById("pass").value;
        var pa = document.getElementById("pass-again").value;
        var d = document.getElementById("dieukhoan").checked;
        // Kiểm tra điều kiện mật khẩu phải có ít nhất 8 ký tự, 1 số, 1 chữ in, 1 ký tự đặc biệt
        const regexp = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9]).{8,}$/;
        if (regexp.test(p)) {
            if(pa == p) {
                document.getElementById("btndangky").disabled = false;
                document.getElementById("btndangky").style.cursor = 'pointer';
                document.getElementById("pass-again").style.borderColor = '#607d8b'
            }
            document.getElementById("pass").style.borderColor = '#607d8b';
            document.getElementById("btndangky").style.cursor = 'pointer';
            document.getElementById("btndangky").disabled = false;

        } else if (p == 0) {
            document.getElementById("pass").style.borderColor = '#607d8b';
            document.getElementById("btndangky").disabled = true;
            document.getElementById("btndangky").style.cursor = 'not-allowed';
        } else {
            document.getElementById("pass").style.borderColor = 'red';
            document.getElementById("btndangky").disabled = true;
            document.getElementById("btndangky").style.cursor = 'not-allowed';
        }

        if (pa != p) {
            document.getElementById("pass-again").style.borderColor = 'red'
            document.getElementById("btndangky").disabled = true;
            document.getElementById("btndangky").style.cursor = 'not-allowed';
        }

        if (d === false) {
            document.getElementById("btndangky").disabled = true;
            document.getElementById("btndangky").style.cursor = 'not-allowed';
        }
    }
</script>

</body>

</html>
