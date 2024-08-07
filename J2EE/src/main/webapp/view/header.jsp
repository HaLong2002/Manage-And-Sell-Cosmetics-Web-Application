<%-- 
    Document   : test
    Created on : Dec 11, 2023, 4:58:51 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
            href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700&display=swap"
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
            href="https://fonts.googleapis.com/css2?family=Roboto Flex:wght@400;500;700&display=swap"
            />
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Roboto Mono:wght@400;700&display=swap"
            />
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Rokkitt:wght@300&display=swap"
            />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    </head>
    <style>
        .lsn,
        .nhacc,
        .btn_sanpham {
            position: absolute;
            top: 22px;
            left: 87px;
        }
        .sn-phm i,.lch-s-bn i,.thng-k i,.thng-tin-ti i
        {
            color: white; /* Đặt màu trắng cho biểu tượng */
            font-size: 16px;
        }

        .nhacc,
        .lsn {
            left: 238px;
        }
        .lsn {
            top: 21px;
            left: 414px;
        }
        .lch-s-bn,
        .thng-k,
        .thng-tin-ti {
            position: absolute;
            top: 22px;
            left: 656px;
        }
        .thng-k,
        .thng-tin-ti {
            left: 872px;
        }
        .thng-tin-ti {
            top: 18px;
            left: 1036px;
        }
        .nav-child {
            top: 23px;
            left: 65px;
            box-sizing: border-box;
            width: 20px;
            height: 20px;
            border: none;
        }
        .nav-child,
        .nav-inner,
        .nav-item {
            position: absolute;
            overflow: hidden;
        }
        .nav-item {
            top: 21px;
            left: 393px;
            border: none;
            box-sizing: border-box;
            width: 20px;
            height: 20px;
        }
        .nav-inner {
            top: 22px;
            left: 215px;
        }
        .nav-child i,
        .nav-child1 i,
        .nav-child2 i,
        .nav-item i,.nav-inner i
        {
            color: white; /* Đặt màu trắng cho biểu tượng */
            font-size: 15px;

        }
        .frame-div,
        .nav-child1,
        .nav-child2,
        .nav-inner {
            border: none;
            box-sizing: border-box;
            width: 16px;
            height: 16px;
        }
        .frame-div {
            position: absolute;
            top: 21px;
            left: 633px;
            overflow: hidden;
        }
        .nav-child1,
        .nav-child2 {
            top: 20px;
        }
        .nav-child1 {
            position: absolute;
            left: 846px;
            overflow: hidden;
        }
        .nav-child2 {
            left: 1011px;
        }

        .nav-child3{
            border: none;
            background-color:#e74c3c;
            padding: 10px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease, color 0.3s ease;
            text-align: center;

        }
        .nav-child3 i{
            color: #FFF;
            font-size: 15px;
            text-align: center;


        }
        .nav-child3:hover{

            background-color: #c0392b;
        }

        .nav,
        .nav-child2,
        .nav-child3 {
            position: absolute;
            overflow: hidden;
        }
        .nav-child3 {
            top: 10px;
            left: 1275px;
            box-sizing: border-box;
            width: 35px;
            height: 35px;
        }
        .nav {
            top: 53px;
            left: 0;
            background-color: #3498db;
            width: 1482px;
            height: 53px;
        }
        .cosmetics-1-icon {
            position: absolute;
            top: 3px;
            left: 4px;
            width: 50px;
            height: 50px;
            border-radius: 50%;
            object-fit: cover;
            background-color: #FFF;

        }
        .icy-cosmetic {
            position: absolute;
            top: 56px;
            left: 200px;
            display: inline-block;
            width: 45px;
            height: 9px;

        }
        .account {
            position: absolute;
            top: 200px;
            left: 1376px;
            width: 54px;
            height: 62px;
            overflow: hidden;
            font-size: 6px;
            background: #27ae60;
        }
        .admin-dashboard {
            position: absolute;
            top: 18px;
            left: 625px;
            font-size: 20px;
            color: #FFF;
        }
        .header {
            position: relative;
            background-color: #2c3e50;
            width: 100%;
            height: 106px;
            overflow: hidden;
            text-align: left;
            font-size: var(--font-size-mini);
            color: var(--color-white);
            font-family: var(--font-arial);
        }
        body {
            margin: 0;
            line-height: normal;
        }
        /* Add this style to show the additional buttons initially as hidden */
        .thng-tin-ti-container {
            position: relative;
        }

        .thng-tin-ti-container .additional-buttons {
            display: none;
            position: absolute;
            top: 100%;
            left: 0;
            width: 200px;
            background-color: #3498db;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            padding: 10px;
            --font-arial: 'Arial';
        }

        .thng-tin-ti-container:hover .additional-buttons {
            display: block;
        }


        :root {
            /* fonts */
            --font-roboto: Roboto;
            --font-inter: Inter;
            --font-roboto-slab: "Roboto Slab";
            --font-roboto-serif: "Roboto Serif";
            --font-roboto-flex: "Roboto Flex";
            --font-roboto-mono: "Roboto Mono";
            --font-rokkitt: Rokkitt;
            --font-arial: 'Arial';

            /* font sizes */
            --font-size-mini: 15px;
            --font-size-xs: 12px;
            --font-size-6xl: 25px;
            --font-size-3xs: 10px;
            --font-size-smi: 13px;
            --font-size-xl: 20px;
            --font-size-13xl: 32px;
            --font-size-mid: 17px;
            --font-size-2xs: 11px;
            --font-size-2xs-1: 10.1px;
            --font-size-2xl: 21px;

            /* Colors */
            --color-white: #fff;
            --color-steelblue-100: rgba(39, 121, 155, 0.37);
            --color-steelblue-200: rgba(28, 142, 189, 0.29);
            --color-black: #000;
            --color-whitesmoke-100: rgba(233, 233, 233, 0.73);
            --color-deepskyblue-100: #67b6ff;
            --color-deepskyblue-200: #3bc6ff;
            --color-gainsboro-100: #dce4ed;
            --color-gainsboro-200: #d9d9d9;
            --color-lightsteelblue: #b1d4fc;
            --color-dimgray-100: #5e5e5e;
            --color-dimgray-200: #595959;
            --color-darkslateblue: #0852a7;
            --color-red-100: #ff1632;
            --color-red-200: #ff0000;
            --color-gray-100: #939393;
            --color-gray-200: #858585;
            --color-gray-300: #757575;
            --color-gray-400: rgba(0, 0, 0, 0.63);
            --color-gray-500: rgba(0, 0, 0, 0.78);
            --color-royalblue: #0569ff;
            --color-green-100: #009d19;
            --color-dodgerblue-100: #0085ff;
            --color-dodgerblue-200: #007df1;
            --color-darkgray-100: #a0a0a0;
            --color-darkgray-200: #959595;
            --color-lightblue: rgba(181, 215, 232, 0.09);
            --color-limegreen: #33c639;
            --color-gold: #ffd233;
            --color-cornflowerblue: #3682dc;

            /* Border radiuses */
            --br-11xl: 30px;
            --br-8xs: 5px;
            --br-10xs: 3px;
            --br-3xs: 10px;
            --br-8xs-2: 4.2px;
        }
        a{
            color: #FFF;
            text-decoration: none;


        }
        .cosmetics-1-icon {
            position: absolute;
            top: 10px;
            left: 1200px;
            width: 40px;
            height: 40px;
            object-fit: cover;
            background-color: #2c3e50;
        }
        .icy-cosmetic {
            position: absolute;
            top: 30px;
            left: 1250px;
            font-size: 9px;
            display: inline-block;
            width: 95px;
            height: 16px;
            color: #ffffff;
        }
       
       

    </style>
    <body>
        <div class="header">
            <c:url var="url" value="/account"/>
            <form action="${url}/index">
                <img class="cosmetics-1-icon" alt="" src="/J2EE/view/img/account/${hinhanh}" />
                <a href="${url}/thongtintaikhoan" class="icy-cosmetic">
                    <!-- Thêm icon user -->
                    <b style="font-size: 16px;">${name}</b>
                </a>

                <div class="nav">
                    <a href="${url}/form-sp" class="btn_sanpham">
                        <i class="fas fa-box"> </i>
                        <b>Sản phẩm</b>
                    </a>

                    <a  href="${url}/form-ncc" class="nhacc">
                        <i class="fas fa-truck"></i>
                        <b>Nhà cung cấp</b>
                    </a>

                    <a href="${url}/form-lsnh" class="lsn">
                        <i class="fas fa-history"></i>
                        <b>Lịch sử nhập hàng</b>
                    </a>

                    <a class="lch-s-bn" href="${url}/form-lsdh"><i class="fas fa-chart-line"></i>
                        <b>Lịch sử bán hàng</b>
                    </a>  
                    <c:if test="${role eq 'Admin'}">
                        <a href="${url}/form-tk" class="thng-k"><i class="fas fa-chart-pie"></i> 
                            <b>  Thống kê</b>
                        </a>
                             <a href="${url}/form-taikhoan" class="thng-tin-ti">
                            <i class="fas fa-user"></i> 
                            <b>Thông tin tài khoản</b>
                        </a>
                    </c:if>

                    <a href="${url}/sign-out" class="nav-child3">
                        <i class="fas fa-sign-out-alt"></i>
                    </a>      
                </div>
                <b class="admin-dashboard">Admin Dashboard</b>
            </form>
        </div>
    </body>
      
</html>

