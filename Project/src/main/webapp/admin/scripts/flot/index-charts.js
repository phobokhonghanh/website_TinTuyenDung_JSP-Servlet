'use strict';

/* Chart.js docs: https://www.chartjs.org/ */

window.chartColors = {
    green: '#75c181',
    gray: '#a9b5c9',
    text: '#252930',
    border: '#e7e9ed'
};

/* Random number generator for demo purpose */
// var randomDataPoint = function () {
//     return Math.round(Math.random() * 10000)
// };

var data_line = document.getElementById("data_line").dataset.list;

var data_line_previous = document.getElementById("data_line_previous").dataset.list;

//Chart.js Line Chart Example 

var lineChartConfig = {
    type: 'line',

    data: {
        labels: ['Thứ 2', 'Thứ 3', 'Thứ 4', 'Thứ 5', 'Thứ 6', 'Thứ 7', 'CN'],
        datasets: [{
            label: 'Tuần này',
            fill: false,
            backgroundColor: window.chartColors.green,
            borderColor: window.chartColors.green,
            data: [data_line[0], data_line[1], data_line[2], data_line[3], data_line[4], data_line[5], data_line[6]],
            // data:data_line,
        }, {
            label: 'Tuần trước',
            borderDash: [3, 5],
            backgroundColor: window.chartColors.gray,
            borderColor: window.chartColors.gray,
            // data:data_line_previous,
            data: [data_line_previous[0], data_line_previous[1], data_line_previous[2], data_line_previous[3], data_line_previous[4], data_line_previous[5], data_line_previous[6]],
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
        labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
        datasets: [{
            label: 'Orders',
            backgroundColor: window.chartColors.green,
            borderColor: window.chartColors.green,
            borderWidth: 1,
            maxBarThickness: 16,

            data: [
                23,
                50,
                76,
                75,
                62,
                37,
                83
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
	
