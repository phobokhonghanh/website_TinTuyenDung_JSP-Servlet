<%@ page import="vn.edu.hcmuaf.fit.service.DAOPost" %>
<%@ page import="vn.edu.hcmuaf.fit.service.DAOBill" %>
<%@ page import="vn.edu.hcmuaf.fit.service.DAOAccount" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 06/01/2023
  Time: 3:45 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% int[] doanhThuNam = (int[]) request.getAttribute("doanhThuNam");
    int[] doanhThuNamTruoc = (int[]) request.getAttribute("doanhThuNamTruoc");
    int[] baiVietNam = (int[]) request.getAttribute("baiVietNam");
    String year = request.getAttribute("year").toString();

%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin | Báo cáo - Thống kê</title>
    <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="css/theme.css" rel="stylesheet">
    <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
    <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
          rel='stylesheet'>
    <script src="scripts/chart.js"></script>
</head>
<body>
<jsp:include page="Admin-header.jsp"></jsp:include>
<!-- /navbar -->
<div class="wrapper">
    <div class="container">
        <div class="row">
            <div class="span3">
                <jsp:include page="Admin-sidebar.jsp"></jsp:include>
                <!--/.sidebar-->
            </div>
            <!--/.span3-->
            <div class="span9">
                <div class="content">
                    <h3> Thống kê</h3>
                    <form action="<%=request.getContextPath()%>/admin/Statistics?action=adminThongke" method="post">
                        <div style="display: flex">
                            <div style="float: left"> Năm
                                <input style="height:30px; width: 130px;" type="number" min="2020" max="" id="inputTime"
                                       value="<%=year%>" class="span3" name="year"/>
                                <script>
                                    var now = new Date();
                                    var maxDate = now.getFullYear();
                                    document.getElementById("inputTime").setAttribute("max", maxDate);
                                </script>
                            </div>
                            <div class="float-md-right" style="float: right; margin-left: 5px">
                                <button type="submit" class="btn"
                                        style="background: darkgrey; font-weight: 700;">
                                    Tạo thống kê
                                </button>
                            </div>
                        </div>
                    </form>
                    <div class="module">

                        <div class="module-body" style="">
                            <div class="col-12 col-lg-6">
                                <div class="app-card app-card-chart h-100 shadow-sm">
                                    <div class="app-card-header p-3">
                                        <div class="row justify-content-between align-items-center"
                                             style="margin-left: auto;">
                                            <div class="col-auto">
                                                <%--                                                <h4 class="app-card-title">Doanh thu</h4>--%>
                                            </div><!--//col-->
                                        </div><!--//row-->
                                    </div><!--//app-card-header-->
                                    <div class="app-card-body p-3 p-lg-4">
                                        <div class="mb-3 d-flex" id="data_line_previous">
                                        </div>
                                        <div class="chart-container" id="data_line">
                                            <canvas id="canvas-linechart"></canvas>
                                        </div>
                                    </div><!--//app-card-body-->
                                </div><!--//app-card-->
                            </div>
                            <div class="col-12 col-lg-6">
                                <div class="app-card app-card-chart h-100 shadow-sm">
                                    <div class="app-card-header p-3">
                                        <div class="row justify-content-between align-items-center"
                                             style="margin-left: auto;">
                                            <div class="col-auto">
                                                <%--                                                <h4 class="app-card-title">Bài đăng</h4>--%>
                                            </div><!--//col-->
                                        </div><!--//row-->
                                    </div><!--//app-card-header-->
                                    <div class="app-card-body p-3 p-lg-4">
                                        <div class="mb-3 d-flex">
                                        </div>
                                        <div class="chart-container" id="data_bar" data-list="">
                                            <canvas id="canvas-barchart"></canvas>
                                        </div>
                                    </div><!--//app-card-body-->
                                </div><!--//app-card-->
                            </div><!--//col-->
                        </div><!--//col-->
                    </div>
                </div>
            </div>
        </div>
        <!--/.content-->
    </div>
    <!--/.span9-->
</div>
<!--/.wrapper-->

<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<%--bieu do--%>
<script src="scripts/flot/chart.min.js"></script>
<script>
    'use strict';
    /* Chart.js docs: https://www.chartjs.org/ */
    window.chartColors = {
        green: '#75c181',
        gray: '#a9b5c9',
        text: '#252930',
        border: '#e7e9ed'
    };
    var lineChartConfig = {
        type: 'line',
        data: {
            labels: ['Tháng 1', 'Tháng 2', 'Tháng 3',
                'Tháng 4', 'Tháng 5', 'Tháng 6',
                'Tháng 7', 'Tháng 8', 'Tháng 9',
                'Tháng 10', 'Tháng 11', 'Tháng 12'],
            datasets: [{
                label: 'Doanh thu <%=year%>',
                fill: false,
                backgroundColor: window.chartColors.green,
                borderColor: window.chartColors.green,
                data: [
                    <% for(int i : doanhThuNam){%>
                    <%=i%>,
                    <%}%>
                ],
                // data:data_line,
            }, {
                label: 'Doanh thu  <%=Integer.valueOf(year)-1%>',
                borderDash: [3, 5],
                backgroundColor: window.chartColors.gray,
                borderColor: window.chartColors.gray,
                data: [
                    <% for(int i : doanhThuNamTruoc){%>
                    <%=i%>,
                    <%}%>
                ],
                fill: false,
            }]
        },
        options: {
            responsive: true,
            aspectRatio: 1.5,
            legend: {
                display: true,
                position: 'bottom',
                align: 'end',
            },
            title: {
                display: true,
                text: 'Doanh thu',
            },
            tooltips: {
                mode: 'index',
                intersect: false,
                titleMarginBottom: 10,
                bodySpacing: 10,
                xPadding: 16,
                yPadding: 16,
                borderColor: window.chartColors.border,
                borderWidth: 1,
                backgroundColor: '#fff',
                bodyFontColor: window.chartColors.text,
                titleFontColor: window.chartColors.text,
                callbacks: {
                    //Ref: https://stackoverflow.com/questions/38800226/chart-js-add-commas-to-tooltip-and-y-axis
                    label: function (tooltipItem, data) {
                        if (parseInt(tooltipItem.value) >= 1000) {
                            return tooltipItem.value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + " VND";
                        } else {
                            return tooltipItem.value + " VND";
                        }
                    }
                },
            },
            hover: {
                mode: 'nearest',
                intersect: true
            },
            scales: {
                xAxes: [{
                    display: true,
                    gridLines: {
                        drawBorder: false,
                        color: window.chartColors.border,
                    },
                    scaleLabel: {
                        display: false,
                    }
                }],
                yAxes: [{
                    display: true,
                    gridLines: {
                        drawBorder: false,
                        color: window.chartColors.border,
                    },
                    scaleLabel: {
                        display: false,
                    },
                    ticks: {
                        beginAtZero: true,
                        userCallback: function (value, index, values) {
                            return value.toLocaleString() + ' VND';   //Ref: https://stackoverflow.com/questions/38800226/chart-js-add-commas-to-tooltip-and-y-axis
                        }
                    },
                }]
            }
        }
    };
    // Chart.js Bar Chart Example
    var barChartConfig = {
        type: 'bar',
        data: {
            labels: ['Tháng 1', 'Tháng 2', 'Tháng 3',
                'Tháng 4', 'Tháng 5', 'Tháng 6',
                'Tháng 7', 'Tháng 8', 'Tháng 9',
                'Tháng 10', 'Tháng 11', 'Tháng 12'],
            datasets: [{
                label: 'Bài đăng',
                backgroundColor: window.chartColors.green,
                borderColor: window.chartColors.green,
                borderWidth: 1,
                maxBarThickness: 16,
                data: [
                    <% for(int i : baiVietNam){%>
                    <%=i%>,
                    <%}%>
                ]
            }]
        },
        options: {
            responsive: true,
            aspectRatio: 1.5,
            legend: {
                position: 'bottom',
                align: 'end',
            },
            title: {
                display: true,
                text: 'Bài đăng'
            },
            tooltips: {
                mode: 'index',
                intersect: false,
                titleMarginBottom: 10,
                bodySpacing: 10,
                xPadding: 16,
                yPadding: 16,
                borderColor: window.chartColors.border,
                borderWidth: 1,
                backgroundColor: '#fff',
                bodyFontColor: window.chartColors.text,
                titleFontColor: window.chartColors.text,
            },
            scales: {
                xAxes: [{
                    display: true,
                    gridLines: {
                        drawBorder: false,
                        color: window.chartColors.border,
                    },
                }],
                yAxes: [{
                    display: true,
                    gridLines: {
                        drawBorder: false,
                        color: window.chartColors.borders,
                    },
                }]
            }
        }
    }
    // Generate charts on load
    window.addEventListener('load', function () {
        var lineChart = document.getElementById('canvas-linechart').getContext('2d');
        window.myLine = new Chart(lineChart, lineChartConfig);
        var barChart = document.getElementById('canvas-barchart').getContext('2d');
        window.myBar = new Chart(barChart, barChartConfig);
    });
</script>
</body>
</html>
