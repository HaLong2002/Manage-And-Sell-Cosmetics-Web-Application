<%-- 
    Document   : thong-ke
    Created on : Dec 6, 2023, 9:12:15 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="initial-scale=1, width=device-width" />

        <link rel="stylesheet" href="./global.css" />
        <link rel="stylesheet" href="./index.css" />
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap"
            />
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Roboto Flex:wght@400;500;700&display=swap"
            />
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Roboto Mono:wght@400;700&display=swap"
            />
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Inter:wght@500;700&display=swap"
            />
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Roboto Serif:wght@300;500;700&display=swap"
            />
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Roboto Slab:wght@300;400;700&display=swap"
            />
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Rokkitt:wght@300&display=swap"
            />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-..." crossorigin="anonymous" />

    </head>
    <style>
        .cosmetics-1-icon {
            position: absolute;
            top: 10px;
            left: 13px;
            width: 80px;
            height: 80px;
            object-fit: cover;
        }
        .icy-cosmetic {
            position: absolute;
            top: 90px;
            left: 17px;
            font-size: var(--font-size-xs);
            display: inline-block;
            width: 95px;
            height: 16px;
        }
        .sign-out,
        .username {
            position: absolute;
            top: 55px;
            left: 1096px;
        }
        .sign-out {
            left: 1251px;
        }
        .btnaccount,
        .btndonhang,
        .btnsanpham,
        .btnthongke {
            position: absolute;
            top: 75px;
            left: 224px;
            border-radius: var(--br-8xs);
            background-color: var(--color-lightsteelblue);
            width: 91px;
            height: 28px;
        }
        .btnaccount,
        .btndonhang,
        .btnthongke {
            left: 413px;
        }
        .btndonhang,
        .btnthongke {
            left: 602px;
        }
        .btnthongke {
            left: 791px;
        }
        .header {
            position: absolute;
            top: 0;
            left: 0;
            background-color: var(--color-deepskyblue-200);
            width: 1440px;
            height: 106px;
            overflow: hidden;
            font-size: var(--font-size-6xl);
            color: var(--color-white);
            font-family: var(--font-roboto);
        }
        .sales-dashboard {
            color: var(--color-black);
        }
        .welcom-to-sales-container {
            position: absolute;
            top: 132px;
            left: 39px;
            font-size: var(--font-size-mini);
            color: rgba(22, 22, 22, 0.53);
        }
        .data,
        .total-customer {
            position: absolute;
            top: 30px;
            left: 142px;
        }
        .data {
            top: 57px;
            left: 158px;
            font-size: var(--font-size-mini);
            color: var(--color-black);
        }
        .fr-cus,
        .fr-icon,
        .totalcustomer {
            position: absolute;
            overflow: hidden;
        }
        .fr-icon {
            top: 15px;
            left: 14px;
            width: 28px;
            height: 22px;
        }
        .fr-cus,
        .totalcustomer {
            border-radius: var(--br-8xs);
        }
        .fr-cus {
            top: 34px;
            left: 24px;
            background-color: #7774ff;
            width: 57px;
            height: 53px;
        }
        .totalcustomer {
            top: 160px;
            left: 141px;
            background-color: var(--color-white);
            width: 257px;
            height: 109px;
            font-size: var(--font-size-2xs);
            color: var(--color-darkgray-100);
        }
        .data1,
        .total-sales {
            position: absolute;
            top: 31px;
            left: 160px;
        }
        .data1 {
            top: 58px;
            left: 110px;
            font-size: var(--font-size-mini);
            color: var(--color-black);
        }
        .fr-sale,
        .totalsales {
            position: absolute;
            border-radius: var(--br-8xs);
            overflow: hidden;
        }
        .fr-sale {
            top: 36px;
            left: 37px;
            background-color: #f25d66;
            width: 57px;
            height: 53px;
        }
        .totalsales {
            top: 160px;
            left: 534px;
            background-color: var(--color-white);
            width: 257px;
            height: 109px;
            font-size: var(--font-size-2xs);
            color: var(--color-darkgray-100);
        }
        .data2,
        .total-order {
            position: absolute;
            top: 31px;
            left: 152px;
        }
        .data2 {
            top: 54px;
            left: 163px;
            font-size: var(--font-size-mini);
            color: var(--color-black);
        }
        .fr-sale1 {
            position: absolute;
            top: 36px;
            left: 53px;
            border-radius: var(--br-8xs);
            background-color: #ffae12;
            width: 57px;
            height: 53px;
            overflow: hidden;
        }
        .daily,
        .monly,
        .totalorder,
        .weekly {
            position: absolute;
            background-color: var(--color-white);
        }
        .totalorder {
            top: 160px;
            left: 957px;
            border-radius: var(--br-8xs);
            width: 257px;
            height: 109px;
            overflow: hidden;
            font-size: var(--font-size-2xs);
            color: var(--color-darkgray-100);
        }
        .daily,
        .monly,
        .weekly {
            top: 0;
            left: 2px;
            border-radius: var(--br-3xs);
            border: 1px solid var(--color-gray-100);
            box-sizing: border-box;
            width: 110px;
            height: 46px;
        }
        .monly,
        .weekly {
            left: 116px;
        }
        .monly {
            left: 230px;
        }
        .daily1,
        .monthly,
        .weekly1 {
            position: absolute;
            top: 14px;
            left: 33px;
        }
        .monthly,
        .weekly1 {
            left: 145px;
        }
        .monthly {
            left: 269px;
        }
        .button {
            top: 24px;
            left: 855px;
            width: 340px;
            height: 46px;
            overflow: hidden;
        }
        .button,
        .flow,
        .top-5-sn {
            position: absolute;
        }
        .flow {
            top: 295px;
            left: 74px;
            border-radius: var(--br-3xs);
            background-color: var(--color-white);
            width: 1261px;
            height: 353px;
            overflow: hidden;
            font-size: var(--font-size-mini);
        }
        .top-5-sn {
            top: 683px;
            left: 48px;
            font-size: var(--font-size-xl);
        }
        .sp1,
        .sp2,
        .sp3,
        .sp4,
        .sp5 {
            position: absolute;
            top: 719px;
            left: 86px;
            border: none;
            box-sizing: border-box;
            width: 162px;
            height: 174px;
            overflow: hidden;
        }
        .sp2,
        .sp3,
        .sp4,
        .sp5 {
            left: 341px;
        }
        .sp3,
        .sp4,
        .sp5 {
            left: 603px;
        }
        .sp4,
        .sp5 {
            left: 865px;
        }
        .sp5 {
            left: 1144px;
        }
        .tn1,
        .tn2,
        .tn3 {
            position: absolute;
            top: 906px;
            left: 95px;
        }
        .tn2,
        .tn3 {
            top: 902px;
            left: 341px;
        }
        .tn3 {
            top: 899px;
            left: 603px;
        }
        .s-lng1,
        .s-lng2,
        .tn4,
        .tn5 {
            position: absolute;
            top: 902px;
            left: 865px;
        }
        .s-lng1,
        .s-lng2,
        .tn5 {
            left: 1144px;
        }
        .s-lng1,
        .s-lng2 {
            top: 928px;
            left: 95px;
        }
        .s-lng2 {
            left: 342px;
        }
        .s-lng3,
        .s-lng4,
        .s-lng5 {
            position: absolute;
            top: 921px;
            left: 603px;
        }
        .s-lng4,
        .s-lng5 {
            top: 924px;
            left: 865px;
        }
        .s-lng5 {
            top: 925px;
            left: 1144px;
        }
        .thongke {
            position: relative;
            background-color: #e7e7e7;
            width: 100%;
            height: 1024px;
            overflow: hidden;
            text-align: left;
            font-size: var(--font-size-xs);
            color: var(--color-black);
            font-family: var(--font-roboto-flex);
        }

        body {
            margin: 0;
            line-height: normal;
        }

        :root {
            /* fonts */
            --font-roboto-flex: "Roboto Flex";
            --font-roboto: Roboto;
            --font-roboto-mono: "Roboto Mono";
            --font-inter: Inter;
            --font-roboto-serif: "Roboto Serif";
            --font-roboto-slab: "Roboto Slab";
            --font-rokkitt: Rokkitt;

            /* font sizes */
            --font-size-xs: 12px;
            --font-size-xl: 20px;
            --font-size-mini: 15px;
            --font-size-2xs: 11px;
            --font-size-6xl: 25px;
            --font-size-mid: 17px;
            --font-size-3xs: 10px;
            --font-size-2xs-1: 10.1px;
            --font-size-2xl: 21px;
            --font-size-13xl: 32px;
            --font-size-smi: 13px;

            /* Colors */
            --color-gainsboro-100: #dce4ed;
            --color-gainsboro-200: #d9d9d9;
            --color-black: #000;
            --color-white: #fff;
            --color-gray-100: #939393;
            --color-gray-200: #858585;
            --color-gray-300: #757575;
            --color-gray-400: rgba(0, 0, 0, 0.63);
            --color-gray-500: rgba(0, 0, 0, 0.78);
            --color-darkgray-100: #a0a0a0;
            --color-darkgray-200: #959595;
            --color-deepskyblue-100: #67b6ff;
            --color-deepskyblue-200: #3bc6ff;
            --color-lightsteelblue: #b1d4fc;
            --color-lightblue: rgba(181, 215, 232, 0.09);
            --color-steelblue-100: rgba(39, 121, 155, 0.37);
            --color-steelblue-200: rgba(28, 142, 189, 0.29);
            --color-green: #009d19;
            --color-red-100: #ff1632;
            --color-red-200: #ff0000;
            --color-limegreen: #33c639;
            --color-gold: #ffd233;
            --color-cornflowerblue: #3682dc;
            --color-dodgerblue-100: #0085ff;
            --color-dodgerblue-200: #007df1;
            --color-dimgray-100: #5e5e5e;
            --color-dimgray-200: #595959;
            --color-darkslateblue: #0852a7;
            --color-whitesmoke-100: rgba(233, 233, 233, 0.73);
            --color-royalblue: #0569ff;

            /* Border radiuses */
            --br-3xs: 10px;
            --br-8xs: 5px;
            --br-10xs: 3px;
            --br-11xl: 30px;
            --br-8xs-2: 4.2px;
        }
        .fr-cus i,
        .fr-sale i,
        .fr-sale1 i
        {
            color: white; /* Đặt màu trắng cho biểu tượng */
            font-size: 24px;
            /* Đặt kích thước mong muốn, ví dụ 24px */
        }
        .fr-cus,
        .fr-sale,
        .fr-sale1{
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .top-5-khch {
            top: 34px;
            left: 48px;
            font-size: var(--font-size-xl);
        }
        .kh1,
        .kh2,
        .top-5-khch {
            position: absolute;
        }
        .kh1 {
            top: 70px;
            left: 86px;
            border: none;
            box-sizing: border-box;
            width: 162px;
            height: 174px;
            overflow: hidden;
        }
        .kh2 {
            left: 341px;
        }
        .kh2,
        .kh3,
        .kh4 {
            top: 70px;
            border: none;
            box-sizing: border-box;
            width: 162px;
            height: 174px;
            overflow: hidden;
        }
        .kh3 {
            position: absolute;
            left: 603px;
        }
        .kh4 {
            left: 865px;
        }
        .kh4,
        .kh5,
        .name-kh1 {
            position: absolute;
        }
        .kh5 {
            top: 70px;
            left: 1144px;
            border: none;
            box-sizing: border-box;
            width: 162px;
            height: 174px;
            overflow: hidden;
        }
        .name-kh1 {
            top: 257px;
            left: 95px;
        }
        .name-kh2,
        .name-kh3 {
            position: absolute;
            top: 253px;
            left: 341px;
        }
        .name-kh3 {
            top: 250px;
            left: 603px;
        }
        .name-kh4,
        .name-kh5 {
            position: absolute;
            top: 253px;
            left: 865px;
        }
        .name-kh5 {
            left: 1144px;
        }
        .money1,
        .money2,
        .money3,
        .money4 {
            position: absolute;
            top: 279px;
            left: 95px;
        }
        .money2,
        .money3,
        .money4 {
            left: 342px;
        }
        .money3,
        .money4 {
            top: 272px;
            left: 603px;
        }
        .money4 {
            top: 275px;
            left: 865px;
        }
        .money5,
        .thongke-cus {
            position: absolute;
            top: 276px;
            left: 1144px;
        }
        .thongke-cus {
            top: 970px;
            left: 0;
            width: 1354px;
            height: 327px;
            overflow: hidden;
        }
        .thongke {
            position: relative;
            background-color: #e7e7e7;
            width: 100%;
            height: 1315px;
            overflow: hidden;
            text-align: left;
            font-size: var(--font-size-xs);
            color: var(--color-black);
            font-family: var(--font-roboto-flex);
        }
    </style>
    <body>
        <div class="thongke">
            <nav>
                <div class="he">
                    <%@
                    include file="header.jsp" %>
                </div>
                <mark>${message}</mark>
            </nav>
            <div class="welcom-to-sales-container">
                <span>Welcom To</span>
                <span class="sales-dashboard"> Sales Dashboard</span>
            </div>
            <c:url var="url" value="/thongke"/>
            <form action="${url}/index">
                <div class="totalcustomer">
                    <div class="total-customer">Total Customer</div>
                    <div class="data">${khachhang}</div>
                    <div class="fr-cus">
                        <i class="fa-solid fa-user-group"></i>
                    </div>
                </div>
                <div class="totalsales">
                    <div class="total-sales">Total Sales</div>
                    <div class="data1">${doanhthu}</div>
                    <div class="fr-sale"> 
                        <i class="fa-solid fa-chart-column"></i>
                    </div>
                </div>
                <div class="totalorder">
                    <div class="total-order">Total Order</div>
                    <div class="data2">${donhang}</div>
                    <div class="fr-sale1">
                        <i class="fa-solid fa-cart-shopping"></i>
                    </div>
                </div>
                <div class="flow">
                    <div class="button">
                        <div class="daily"></div>
                        <div class="weekly"></div>
                        <div class="monly"></div>
                        <div class="daily1">Daily</div>
                        <div class="weekly1">Weekly</div>
                        <div class="monthly">Monthly</div>
                    </div>
                    <canvas id="bar-chart" ></canvas>
                </div>
                ${htmlCode_sp}
                <div class="thongke-cus">
                    <b class="top-5-khch">Top 5 khách hàng mua nhiều nhất</b>
                    ${htmlCode_kh}

                </div>
            </form>

        </div>

        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <script >
            document.addEventListener("DOMContentLoaded", function () {
                // Get revenue data from the server using EL
                var ds_thang = ${requestScope.ds_thang};
                // Mock data for the bar chart
                var barChartData = {
                    labels: ["Tháng 1", "Tháng 2", "Tháng 3", "Tháng 4", "Tháng 5", "Tháng 6", "Tháng 7", "Tháng 8", "Tháng 9", "Tháng 10", "Tháng 11", "Tháng 12"],
                    datasets: [{
                            label: "Doanh thu hàng tháng",
                            backgroundColor: "rgba(75,192,192,0.4)",
                            borderColor: "rgba(75,192,192,1)",
                            borderWidth: 1,
                            data: ds_thang
                        }]
                };

                // Get the canvas element
                var ctx = document.getElementById("bar-chart").getContext("2d");

                // Create a new bar chart
                var myBarChart = new Chart(ctx, {
                    type: 'bar',
                    data: barChartData,
                    options: {
                        scales: {
                            y: {
                                beginAtZero: true,
                                max: Math.max(ds_thang),
                                callback: function (value, index, values) {
                                    return value.toLocaleString('en-US', {style: 'currency', currency: 'VND'});
                                }
                            }
                        }
                    }
                });

            });


        </script>
    </body>
</html>



