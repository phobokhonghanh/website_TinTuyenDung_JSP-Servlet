<%@ page import="vn.edu.hcmuaf.fit.service.DAOPost" %>
<%@ page import="vn.edu.hcmuaf.fit.service.DAOBill" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 06/01/2023
  Time: 3:04 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    DAOPost daoPost = new DAOPost();
    DAOBill daoBill = new DAOBill();
%>
<html>
<head>
    <title>Admin | Biểu đồ</title>
</head>
<body>
<div class="module-body" style="display: flex">
    <div class="col-12 col-lg-6" style="flex: 0 0 auto;width: 50%;">
        <div class="app-card app-card-chart h-100 shadow-sm">
            <div class="app-card-header p-3">
                <div class="row justify-content-between align-items-center"
                     style="margin-left: auto;">
                    <div class="col-auto">
                        <h4 class="app-card-title">Doanh thu</h4>
                    </div><!--//col-->
                </div><!--//row-->
            </div><!--//app-card-header-->
            <div class="app-card-body p-3 p-lg-4">
                <div class="mb-3 d-flex" id="data_line_previous"
                     data-list="">
                </div>
                <div class="chart-container" id="data_line"
                     data-list="">
                    <canvas id="canvas-linechart"></canvas>
                </div>
            </div><!--//app-card-body-->
        </div><!--//app-card-->
    </div>
    <div class="col-12 col-lg-6" style="flex: 0 0 auto;width: 50%;">
        <div class="app-card app-card-chart h-100 shadow-sm">
            <div class="app-card-header p-3">
                <div class="row justify-content-between align-items-center"
                     style="margin-left: auto;">
                    <div class="col-auto">
                        <h4 class="app-card-title">Bài đăng</h4>
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

</body>
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
            labels: ['Thứ 2', 'Thứ 3', 'Thứ 4', 'Thứ 5', 'Thứ 6', 'Thứ 7', 'CN'],
            datasets: [{
                label: 'Doanh thu tuần này',
                fill: false,
                backgroundColor: window.chartColors.green,
                borderColor: window.chartColors.green,
                data: [
                    <% for(int i : daoBill.doanhThuTuan()){%>
                    <%=i%>,
                    <%}%>
                ],
                // data:data_line,
            }, {
                label: 'Doanh thu tuần trước',
                borderDash: [3, 5],
                backgroundColor: window.chartColors.gray,
                borderColor: window.chartColors.gray,
                data: [
                    <% for(int i : daoBill.doanhThuTuanTruoc()){%>
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
                text: '',
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
            labels: ['Thứ 2', 'Thứ 3', 'Thứ 4', 'Thứ 5', 'Thứ 6', 'Thứ 7', 'CN'],
            datasets: [{
                label: 'Bài đăng',
                backgroundColor: window.chartColors.green,
                borderColor: window.chartColors.green,
                borderWidth: 1,
                maxBarThickness: 16,
                data: [
                    <% for(int i : daoPost.getTotalPostWeek()){%>
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
                text: ''
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
</html>
