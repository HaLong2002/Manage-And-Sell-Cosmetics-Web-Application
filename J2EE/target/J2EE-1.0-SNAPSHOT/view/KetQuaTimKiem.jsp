<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="initial-scale=1, width=device-width" />

        <link rel="stylesheet" href="./global.css" />
        <link rel="stylesheet" href="./index.css" />
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;600&display=swap"
            />
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Outfit:wght@700&display=swap"
            />
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Inter:wght@400&display=swap"
            />
    </head>
    <style>
        .trangtimkiem-child,
        .trangtimkiem-inner,
        .trangtimkiem-item {
            position: absolute;
            top: 77.56px;
            left: 0;
            background-color: var(--color-whitesmoke-100);
            border-top: 0.8px solid var(--color-gray-100);
            box-sizing: border-box;
            width: 1476.03px;
            height: 1.54px;
        }
        .trangtimkiem-inner,
        .trangtimkiem-item {
            top: 389.23px;
            left: 56.23px;
            width: 251.54px;
        }
        .trangtimkiem-inner {
            top: 43.85px;
            left: -0.02px;
            width: 1476.03px;
        }
        .chng-nng,
        .m-phm-chc {
            position: absolute;
            top: 0;
        }
        .chng-nng {
            background: none;
            border: none;
            width: calc(100% - 882.81px);
            right: 0;
            left: 882.81px;
            height: 14.59px;
        }
        .m-phm-chc {
            left: 0;
        }
        .chm-sc-da,
        .lm-sch-da,
        .m-phm-chc-nng {
            background: none;
            border: none;
            position: absolute;
            width: calc(100% - 812.1px);
            top: 0;
            right: 156.42px;
            left: 655.68px;
            height: 14.59px;
        }
        .chm-sc-da,
        .lm-sch-da {
            background: none;
            border: none;
            width: calc(100% - 882.81px);
            right: 383.55px;
            left: 499.26px;
        }
        .chm-sc-da {
            background: none;
            border: none;
            width: calc(100% - 879.59px);
            right: 539.97px;
            left: 339.62px;
        }
        .danh-muc-san-pham,
        .trang-im,
        .trang-im{
            background: none;
            border: none;
        }
        .tt-c-sn-phm {
            position: absolute;
            width: calc(100% - 892.45px);
            top: 0;
            right: 699.6px;
            left: 192.85px;
            height: 14.59px;
        }
        .danh-muc-san-pham,
        .tt-c-sn-phm {
            width: calc(100% - 846.38px);
            right: 846.38px;
            left: 0;
        }
        .danh-muc-san-pham {
            width: calc(100% - 481.77px);
            top: 54.66px;
            right: 240.89px;
            left: 240.89px;
            font-size: 12.29px;
        }
        .icy-beauty {
            position: absolute;
            top: 1.54px;
            left: 645.08px;
            font-size: 24.57px;
            letter-spacing: 0.2em;
            font-family: var(--font-outfit);
        }
        .bag-1-icon {
            height: 100%;
            width: 100%;
            top: 0;
            bottom: 0;
            left: 0;
            max-width: 100%;
            overflow: hidden;
            max-height: 100%;
            object-fit: cover;
        }
        .bag,
        .bag-1-icon,
        .ng-nhp {
            position: absolute;
            right: 0;
        }
        .bag {
            top: 0;
            width: 15.36px;
            height: 15.36px;
        }
        .ng-nhp {
            top: 2.52px;
            display: inline-block;
            width: 89.62px;
        }
        .login-1-icon {
            position: absolute;
            top: 0;
            right: 92.27px;
            width: 14px;
            height: 14px;
            object-fit: cover;
        }
        .login,
        .navbar,
        .search {
            position: absolute;
            top: 1.32px;
            right: 66.04px;
            width: 106.27px;
            height: 16.52px;
        }
        .navbar,
        .search {
            top: 2.3px;
            right: 33.79px;
            width: 13.82px;
            height: 13.82px;
        }
        .navbar {
            top: 7.68px;
            right: 50.68px;
            width: 172.32px;
            height: 17.84px;
            font-size: 12.29px;
        }
        .sanpham-child {
            position: absolute;
            top: 0;
            left: 810px;
            background-color: var(--color-gainsboro-100);
            width: 255.46px;
            height: 268.38px;
        }
        .sanpham-item {
            position: absolute;
            left: 540px;
        }
        .rectangle-div,
        .sanpham-inner,
        .sanpham-item {
            top: 0;
            background-color: var(--color-gainsboro-100);
            width: 255.46px;
            height: 268.38px;
        }
        .sanpham-inner {
            position: absolute;
            left: 270px;
        }
        .rectangle-div {
            left: 0;
        }
        .gi,
        .rectangle-div,
        .sanpham {
            position: absolute;
        }
        .sanpham {
            top: 113px;
            left: 353px;
            width: 1065.46px;
            height: 268.38px;
        }
        .giatu-child,
        .khong-gi {
            position: absolute;
            top: 0;
            left: 0;
        }
        .khong-gi {
            font-size: 16px;
            font-weight: 300;
        }
        .giatu-child {
            background-color: var(--color-gainsboro-200);
            border: 1px solid var(--color-black);
            box-sizing: border-box;
            width: 105px;
            height: 28px;
        }
        input[type=number]::-webkit-inner-spin-button,
        input[type=number]::-webkit-outer-spin-button {
            -webkit-appearance: none;
            margin: 0;
        }
        .giatu,
        .t {
            position: absolute;
            top: 4px;
            left: 9px;
        }
        .giatu {
            top: 40px;
            left: 0;
            width: 105px;
            height: 28px;
        }
        .gia,
        .giatu1,
        .n {
            position: absolute;
            top: 5px;
            left: 9px;
        }
        .gia,
        .giatu1 {
            top: 40px;
            left: 146px;
            width: 105px;
            height: 28px;
        }
        .gia {
            top: 413px;
            left: 57px;
            width: 251px;
            height: 68px;
            font-size: 16px;
            font-weight: 100;
        }
        .loi-sn-phm {
            position: absolute;
            top: 0;
            left: 0;
            font-weight: 300;
        }
        .chm-sc-da2,
        .trang-im2 {
            position: absolute;
            top: 44px;
            left: 31px;
        }
        .chm-sc-da2 {
            top: 86px;
        }
        .chng-nng2,
        .lm-sch-da2,
        .m-phm-chc1 {
            position: absolute;
            top: 126px;
            left: 31px;
        }
        .chng-nng2,
        .m-phm-chc1 {
            top: 168px;
        }
        .chng-nng2 {
            top: 208px;
        }
        .loaisanpham-child,
        .loaisanpham-child1,
        .loaisanpham-child2,
        .loaisanpham-inner,
        .loaisanpham-item {
            position: absolute;
            top: 42px;
            left: 0;
            background-color: var(--color-gainsboro-100);
            width: 18px;
            height: 18px;
        }
        .loaisanpham-child1,
        .loaisanpham-child2,
        .loaisanpham-inner,
        .loaisanpham-item {
            top: 83px;
        }
        .loaisanpham-child1,
        .loaisanpham-child2,
        .loaisanpham-inner {
            top: 124px;
        }
        .loaisanpham-child1,
        .loaisanpham-child2 {
            top: 165px;
        }
        .loaisanpham-child2 {
            top: 206px;
        }
        .loaisanpham {
            position: absolute;
            top: 136px;
            left: 57px;
            width: 194px;
            height: 226px;
            font-size: 16px;
        }
        .btn-loc-child {
            top: 0;
            left: 0;
            background-color: var(--color-black);
            box-shadow: 0 4px 4px rgba(0, 0, 0, 0.25);
            border: 1px solid rgba(0, 0, 0, 0.5);
            box-sizing: border-box;
            width: 251px;
            height: 43px;
        }
        .btn-loc,
        .btn-loc-child,
        .p-dng {
            position: absolute;
        }
        .p-dng {
            top: 13px;
            left: 91px;
            font-weight: 500;
            font-size: 16px;
        }
        .btn-loc {
            top: 509px;
            left: 57px;
            width: 251px;
            height: 43px;
            font-size: var(--font-size-lg);
            color: var(--color-white);
            font-family: var(--font-inter);
        }
        .minus-2-icon {
            position: absolute;
            top: 459px;
            left: 175px;
            width: 17.07px;
            height: 15.62px;
            object-fit: cover;
        }
        .trangtimkiem {
            float: left;
            background-color: var(--color-white);
            width: 100%;
            height: auto;
            overflow: hidden;
            text-align: left;
            font-size: var(--font-size-lg);
            color: var(--color-black);
            font-family: var(--font-roboto);
        }
        .o-tim-kiem {
            position: absolute;
            top: 0;
            left: 0;
            background-color: #f2f2f2;
            width: 921.27px;
            height: 36.67px;
        }
        .close-icon,
        .search-icon {
            position: absolute;
            top: 8.23px;
            left: 883.85px;
            width: 19.46px;
            height: 19.46px;
            object-fit: cover;
        }
        .close-icon {
            height: 100%;
            width: 100%;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            max-width: 100%;
            overflow: hidden;
            max-height: 100%;
            mix-blend-mode: linear-burn;
        }
        .close,
        .thanh-tim-kiem {
            position: absolute;
            top: 8.23px;
            left: 936.99px;
            width: 30.59px;
            height: 19.46px;
        }
        .thanh-tim-kiem {
            top: 9.73px;
            left: 348.75px;
            width: 967.58px;
            height: 36.67px;
        }
        .icy-beauty1 {
            position: absolute;
            top: calc(50% - 16.09px);
            left: calc(50% - 666.82px);
            letter-spacing: 0.2em;
        }
        .tim-kiem {
            position: relative;
            background-color: var(--color-white);
            border: 0.7px solid var(--color-white);
            box-sizing: border-box;
            width: 1438.41px;
            height: 57.63px;
            overflow: hidden;
            max-width: 90%;
            max-height: 90%;
            text-align: left;
            font-size: 23.95px;
            color: var(--color-black);
            font-family: var(--font-outfit);
        }
        .nt-thanh-ton {
            position: absolute;
            top: 0;
            left: 0;
            background-color: var(--color-black);
            width: 359px;
            height: 41.91px;
            cursor: pointer;
        }
        .thanh-ton {
            position: absolute;
            top: 12px;
            left: 131px;
            font-weight: 500;
        }
        .nut-thanh-toan {
            position: absolute;
            top: 371px;
            left: 159px;
            width: 359px;
            height: 41.91px;
            cursor: pointer;
            color: var(--color-white);
        }
        .s-tin,
        .tng-tin1 {
            position: absolute;
            width: 22.94%;
            top: 0;
            left: 0;
            font-weight: 600;
            display: inline-block;
        }
        .s-tin {
            width: 18.41%;
            left: 81.59%;
        }
        .close-icon1,
        .tng-tin {
            position: absolute;
            height: 2.14%;
            width: 47.43%;
            top: 39.55%;
            right: 50.68%;
            bottom: 58.31%;
            left: 1.9%;
        }
        .close-icon1 {
            height: 9.98%;
            width: 6.5%;
            top: 0;
            right: 30.43%;
            bottom: 90.02%;
            left: 63.07%;
            max-width: 100%;
            overflow: hidden;
            max-height: 100%;
            object-fit: cover;
            mix-blend-mode: linear-burn;
        }
        .tn-sn-phm {
            margin-block-start: 0;
            margin-block-end: 0.75px;
        }
        .v {
            margin: 0;
        }
        .n-v-tnh,
        .s-tin1,
        .tn-sn-phm-container {
            position: absolute;
            width: 81.52%;
            top: 6.15%;
            left: 18.48%;
            display: inline-block;
        }
        .n-v-tnh,
        .s-tin1 {
            width: 30.81%;
            top: 46.92%;
        }
        .s-tin1 {
            width: 27.34%;
            top: 73.85%;
            left: 35.69%;
        }
        .hnh-sn-phm {
            position: absolute;
            height: 100%;
            width: 15.13%;
            top: 0;
            right: 84.87%;
            bottom: 0;
            left: 0;
            background-color: var(--color-gainsboro-200);
            border: 0.7px solid var(--color-gray-100);
            box-sizing: border-box;
        }
        .m-t-sn-phm {
            height: 15.44%;
            width: 58.65%;
            top: 18.53%;
            right: 39.45%;
            bottom: 66.03%;
        }
        .gi-hng-child,
        .gi-hng1,
        .m-t-sn-phm {
            position: absolute;
            left: 1.9%;
        }
        .gi-hng-child {
            height: 0.12%;
            width: 47.43%;
            top: 37.12%;
            right: 50.68%;
            bottom: 62.76%;
            max-width: 100%;
            overflow: hidden;
            max-height: 100%;
        }
        .gi-hng1 {
            width: 17.82%;
            top: 13.06%;
            display: inline-block;
        }
        .close-icon2,
        .gi-hng-item {
            position: absolute;
            height: 0.12%;
            width: 47.43%;
            top: 16.09%;
            right: 50.68%;
            bottom: 83.79%;
            left: 1.9%;
            max-width: 100%;
            overflow: hidden;
            max-height: 100%;
        }
        .close-icon2 {
            height: 100%;
            width: 100%;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            object-fit: cover;
            display: none;
            mix-blend-mode: linear-burn;
        }
        .close1 {
            position: absolute;
            height: 2.31%;
            width: 5.72%;
            top: 2.04%;
            right: 5.14%;
            bottom: 95.64%;
            left: 89.14%;
        }
        .gi-hng-inner,
        .line-div {
            position: absolute;
            top: 87.64px;
            left: -0.77px;
            background-color: var(--color-whitesmoke-100);
            border-top: 0.8px solid var(--color-gray-100);
            box-sizing: border-box;
            width: 1477.56px;
            height: 1.54px;
        }
        .line-div {
            top: 53.89px;
            left: -0.78px;
            width: 1477.57px;
        }
        .bag-1-icon1 {
            height: 100%;
            width: 100%;
            top: 0;
            bottom: 0;
            left: 0;
            max-width: 100%;
            overflow: hidden;
            max-height: 100%;
            object-fit: cover;
        }
        .bag-1-icon1,
        .bag1,
        .ng-nhp1 {
            position: absolute;
            right: 0;
        }
        .bag1 {
            top: 0;
            width: 15.36px;
            height: 15.36px;
        }
        .ng-nhp1 {
            top: 1.54px;
            display: inline-block;
            width: 89.62px;
        }
        .login-1-icon1 {
            position: absolute;
            top: 0;
            right: 93.27px;
            width: 14px;
            height: 14px;
            object-fit: cover;
        }
        .login1,
        .navbar1,
        .search1 {
            position: absolute;
            top: 2.3px;
            right: 66.04px;
            width: 107.27px;
            height: 15.54px;
        }
        .navbar1,
        .search1 {
            right: 33.79px;
            width: 13.82px;
            height: 13.82px;
        }
        .navbar1 {
            top: 16.7px;
            right: 31.68px;
            width: 173.32px;
            height: 17.84px;
            font-size: 12.29px;
        }
        .icy-beauty2 {
            position: absolute;
            top: calc(50% - 410.98px);
            left: calc(50% - 93.02px);
            font-size: 24.6px;
            letter-spacing: 0.2em;
            font-family: var(--font-outfit);
        }
        .div2 {
            position: absolute;
            top: 5px;
            left: 33px;
            font-weight: 500;
            display: inline-block;
            width: 8.22px;
            height: 16.27px;
        }
        .s-lng-child {
            position: absolute;
            top: 0;
            left: 0;
            background-color: var(--color-gainsboro-200);
            border: 0.8px solid var(--color-gray-100);
            box-sizing: border-box;
            width: 81.05px;
            height: 29.19px;
        }
        .minus-2-icon,
        .plus-2-icon {
            position: absolute;
            top: 8.54px;
            left: 58.07px;
            width: 10.85px;
            height: 12.1px;
            object-fit: cover;
        }
        .minus-2-icon {
            top: 461px;
            left: 177px;
            width: 12.76px;
        }
        .s-lng {
            position: absolute;
            top: 246px;
            left: 188px;
            width: 81.05px;
            height: 29.19px;
        }
        .chng-nng4 {
            position: absolute;
            top: 0;
            left: 0;
        }
        .chng-nng3,
        .lm-sch-da3,
        .m-phm-chc-nng1 {
            position: absolute;
            top: 0;
            left: 882.78px;
            width: 111.45px;
            height: 14.61px;
        }
        .lm-sch-da3,
        .m-phm-chc-nng1 {
            left: 655.66px;
            width: 182.17px;
        }
        .lm-sch-da3 {
            left: 499.24px;
            width: 111.45px;
        }
        .chm-sc-da3 {
            left: 339.61px;
            width: 114.66px;
            height: 14.61px;
        }
        .chm-sc-da3,
        .trang-im3,
        .tt-c-sn1 {
            position: absolute;
            top: 0;
        }
        .trang-im3 {
            left: 192.84px;
            width: 101.8px;
            height: 14.61px;
        }
        .tt-c-sn1 {
            width: 14.86%;
            left: 0;
            text-decoration: underline;
            display: inline-block;
        }
        .danh-muc-san-pham1 {
            position: absolute;
            top: 66px;
            left: 239px;
            width: 994.23px;
            height: 14.61px;
            font-size: var(--font-size-smi-3);
        }
        .gi-hng {
            position: relative;
            background-color: var(--color-white);
            width: 1476px;
            height: 841.94px;
            overflow: hidden;
            max-width: 90%;
            max-height: 90%;
            text-align: left;
            font-size: 15.36px;
            color: var(--color-black);
            font-family: var(--font-roboto);
        }


        body {
            margin: 0;
            line-height: normal;
        }

        .popup-overlay {
            display: flex;
            flex-direction: column;
            position: fixed;
            inset: 0;
        }

        :root {
            /* fonts */
            --font-inter: Inter;
            --font-roboto: Roboto;
            --font-outfit: Outfit;

            /* font sizes */
            --font-size-lg: 18px;
            --font-size-smi-3: 12.3px;
            --font-size-base-4: 15.4px;
            --font-size-base: 16px;

            /* Colors */
            --color-white: #fff;
            --color-black: #000;
            --color-gray-100: rgba(0, 0, 0, 0.3);
            --color-gainsboro-100: #d9d9d9;
            --color-gainsboro-200: rgba(217, 217, 217, 0);
            --color-whitesmoke-100: #f5f5f5;
        }

        /*TimKiem*/

        .o-tim-kiem {
            position: absolute;
            top: 0;
            left: 0;
            background-color: #f2f2f2;
            width: 921.27px;
            height: 36.67px;
        }
        .close-icon,
        .search-icon {
            position: absolute;
            top: 8.23px;
            left: 883.85px;
            width: 19.46px;
            height: 19.46px;
            object-fit: cover;
        }
        .close-icon {
            height: 100%;
            width: 100%;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            max-width: 100%;
            overflow: hidden;
            max-height: 100%;
            mix-blend-mode: linear-burn;
        }
        .close,
        .thanh-tim-kiem {
            position: absolute;
            top: 8.23px;
            left: 936.99px;
            width: 30.59px;
            height: 19.46px;
        }
        .thanh-tim-kiem {
            top: 9.73px;
            left: 348.75px;
            width: 967.58px;
            height: 36.67px;
        }
        .icy-beauty1 {
            position: absolute;
            top: calc(50% - 16.09px);
            left: calc(50% - 666.82px);
            letter-spacing: 0.2em;
        }
        .tim-kiem {
            position: relative;
            top: -345px;
            background-color: var(--color-white);
            border: 0.7px solid var(--color-white);
            box-sizing: border-box;
            width: 1476px;
            height: 57.63px;
            overflow: hidden;
            max-width: 100%;
            max-height: 100%;
            text-align: left;
            font-size: 23.95px;
            color: var(--color-black);
            font-family: var(--font-outfit);
        }
        .san-pham-1 {
            position: absolute;
            top: 113px;
            left: 353px;
            width: 1065.458px;
        }
        div.clear {
            clear: both;
        }
        div.column button.tung-san-pham{
            float: left;
            width: 249.458px;
            height: auto;
            margin-right: 15.31px;
            margin-bottom: 90.854px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }
        .tung-san-pham {
            background: none;
            border: none;
            text-align: left;
        }

        div.hinh-anh-sp {
            padding: 0px;
        }
        div.ten-va-gia-sp {
            padding: 10px;
        }
        .giaban
        {
            font-size: 16px;
            font-weight: bold;
        }
        .ten-sp{
            text-transform: uppercase;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }
    </style>
    <body>
        <nav>
            <%@include file="Header_TrangBanHang.jsp" %>
        </nav>
        <c:url var="url"value="/sanpham"/>
        <form action="${url}/ket-qua-tim-kiem" class="trangtimkiem">
            <!--            <div class="trangtimkiem-child"></div>
                        <div class="trangtimkiem-item"></div>
                        <div class="trangtimkiem-inner"></div>
                        <div class="danh-muc-san-pham">
                            <div class="chng-nng">
                                <div class="m-phm-chc">CHỐNG NẮNG</div>
                            </div>
                            <div class="m-phm-chc-nng">
                                <div class="m-phm-chc">MỸ PHẨM CHỨC NĂNG</div>
                            </div>
                            <div class="lm-sch-da">
                                <div class="m-phm-chc">LÀM SẠCH DA</div>
                            </div>
                            <div class="chm-sc-da">
                                <div class="m-phm-chc">CHĂM SÓC DA</div>
                            </div>
                            <div class="trang-im">
                                <div class="m-phm-chc">TRANG ĐIỂM</div>
                            </div>
                            <div class="tt-c-sn-phm">
                                <div class="m-phm-chc">TẤT CẢ SẢN PHẨM</div>
                            </div>
                        </div>
                        <b class="icy-beauty">ICY BEAUTY</b>
                        <div class="navbar">
                            <div class="bag" id="bagContainer">
                                <img class="bag-1-icon" alt="" src="/J2EE/view/img/bag.png" />
                            </div>
                            <div class="login">
                                <div class="ng-nhp">ĐĂNG NHẬP</div>
                                <img class="login-1-icon" alt="" src="/J2EE/view/img/login.png" />
                            </div>
                            <div class="search" id="searchContainer">
                                <img class="bag-1-icon" alt="" src="/J2EE/view/img/search.png" />
                            </div>
                        </div>-->

            <div class="san-pham-1">
                <div class="column">
                    <c:forEach var="item" items="${items}">
                        <button formaction="${url}/chi-tiet-san-pham/${item.tenSP}/${item.maSP}" class="tung-san-pham">
                            <div class="hinh-anh-sp">
                                <img src="/J2EE/view/img/SanPham/${item.hinhAnh}" width="243.458px" height="261.379px"/>
                            </div>
                            <div class="ten-va-gia-sp">
                                <p class="ten-sp">${item.tenSP}</p>
                                <p class="giaban">
                                    <fmt:setLocale value = "vi_VN"/>
                                    <fmt:formatNumber value = "${item.giaBan}" type = "currency" minFractionDigits="0"/>
                                </p>
                            </div>
                        </button>
                    </c:forEach>
                    <div class="clear"></div>
                </div>
            </div>

            <div class="gia">
                <div class="khong-gi">KHOẢNG GIÁ</div>
                <div class="giatu">
                    <%
                        String inputValue = request.getParameter("inputValue");
                    %>
                    <input id="tu-gia"class="giatu-child" type="number" name="tu-gia" value="<%= inputValue %>" placeholder="TỪ"/>
                </div>
                <div class="giatu1">
                    <%
                        String inputValue1 = request.getParameter("inputValue1");
                    %>
                    <input id="den-gia" class="giatu-child" type="number" name="den-gia" value="<%= inputValue1 %>" placeholder="ĐẾN"/>
                </div>
            </div>
            <div class="loaisanpham">
                <div class="loi-sn-phm">LOẠI SẢN PHẨM</div>
                <input class="loaisanpham-child" type="checkbox" name="loc-loaisp" value="Trang điểm" id="check_TD"/>
                <input class="loaisanpham-item" type="checkbox" name="loc-loaisp" value="Chăm sóc da" id="check_CSD"/>
                <input class="loaisanpham-inner" type="checkbox" name="loc-loaisp" value="Làm sạch da" id="check_LSD"/>
                <input class="loaisanpham-child1" type="checkbox" name="loc-loaisp" value="Mỹ phẩm chức năng" id="check_MPCN"/>
                <input class="loaisanpham-child2" type="checkbox" name="loc-loaisp" value="Chống nắng" id="check_CN"/>
                <div class="trang-im2">Trang điểm</div>
                <div class="chm-sc-da2">Chăm sóc da</div>
                <div class="lm-sch-da2">Làm sạch da</div>
                <div class="m-phm-chc1">Mỹ phẩm chức năng</div>
                <div class="chng-nng2">Chống nắng</div>
            </div>
            <div class="btn-loc">
                <input class="btn-loc-child" name="loc-sp" value="ÁP DỤNG" type="submit" onclick="saveCheckboxStates();saveInputValue();"/>
                <div class="p-dng">ÁP DỤNG</div>
            </div>
            <img class="minus-2-icon" alt="" src="/J2EE/view/img/minus.png" />
        </form>        

        <div id="timKiemContainer" class="popup-overlay" style="display: none">
            <!--            <div class="tim-kiem">
                            <div class="thanh-tim-kiem">
                                <div class="o-tim-kiem"></div>
                                <img class="search-icon" alt="" src="./public/search@2x.png" />
            
                                <div class="close">
                                    <img class="close-icon" alt="" src="./public/close@2x.png" />
                                </div>
                            </div>
                            <b class="icy-beauty1">ICY BEAUTY</b>
                        </div>-->
            <jsp:include page="TimKiem.jsp"></jsp:include>
        </div>

        <script>
            function saveCheckboxStates() {
                var checkboxes = document.querySelectorAll('input[type="checkbox"]');
                var checkboxStates = {};

                checkboxes.forEach(function (checkbox) {
                    checkboxStates[checkbox.id] = checkbox.checked;
                });

                localStorage.setItem("checkboxStates", JSON.stringify(checkboxStates));
            }

            function getCheckboxStates() {
                var storedStates = localStorage.getItem("checkboxStates");
                var checkboxStates = storedStates ? JSON.parse(storedStates) : {};

                for (var checkboxId in checkboxStates) {
                    if (checkboxStates.hasOwnProperty(checkboxId)) {
                        var checkbox = document.getElementById(checkboxId);
                        if (checkbox) {
                            checkbox.checked = checkboxStates[checkboxId];
                        }
                    }
                }
            }

            // Gọi hàm khi trang được tải
            window.onload = getCheckboxStates;

            document.addEventListener("DOMContentLoaded", function () {
                var inputValue = localStorage.getItem("tu-gia");
                if (inputValue) {
                    document.getElementById("tu-gia").value = inputValue;
                }

                var inputValue1 = localStorage.getItem("den-gia");
                if (inputValue1) {
                    document.getElementById("den-gia").value = inputValue1;
                }
            });

            // Lưu giá trị vào localStorage khi form được submit
            function saveInputValue() {
                var inputValue = document.getElementById("tu-gia").value;
                localStorage.setItem("tu-gia", inputValue);

                var inputValue1 = document.getElementById("den-gia").value;
                localStorage.setItem("den-gia", inputValue1);
            }

            var popupntThanhTon = document.getElementById("popupntThanhTon");
            if (popupntThanhTon) {
                popupntThanhTon.addEventListener("click", function (e) {
                    // Please sync "ThanhToan" to the project
                });
            }

            var popupnutThanhToan = document.getElementById("popupnutThanhToan");
            if (popupnutThanhToan) {
                popupnutThanhToan.addEventListener("click", function (e) {
                    // Please sync "ThanhToan" to the project
                });
            }

            var bagContainer = document.getElementById("bagContainer");
            if (bagContainer) {
                bagContainer.addEventListener("click", function () {
                    var popup = document.getElementById("giHngContainer");
                    if (!popup)
                        return;
                    var popupStyle = popup.style;
                    if (popupStyle) {
                        popupStyle.display = "flex";
                        popupStyle.zIndex = 100;
                        popupStyle.backgroundColor = "rgba(113, 113, 113, 0.3)";
                        popupStyle.alignItems = "center";
                        popupStyle.justifyContent = "center";
                    }
                    popup.setAttribute("closable", "");
                    var onClick =
                            popup.onClick ||
                            function (e) {
                                if (e.target === popup && popup.hasAttribute("closable")) {
                                    popupStyle.display = "none";
                                }
                            };
                    popup.addEventListener("click", onClick);
                });
            }

            var searchContainer = document.getElementById("searchContainer");
            if (searchContainer) {
                searchContainer.addEventListener("click", function () {
                    var popup = document.getElementById("timKiemContainer");
                    if (!popup)
                        return;
                    var popupStyle = popup.style;
                    if (popupStyle) {
                        popupStyle.display = "flex";
                        popupStyle.zIndex = 100;
                        popupStyle.backgroundColor = "rgba(113, 113, 113, 0.3)";
                        popupStyle.alignItems = "center";
                        popupStyle.justifyContent = "center";
                    }
                    popup.setAttribute("closable", "");
                    var onClick =
                            popup.onClick ||
                            function (e) {
                                if (e.target === popup && popup.hasAttribute("closable")) {
                                    popupStyle.display = "none";
                                }
                            };
                    popup.addEventListener("click", onClick);
                });
            }
        </script>
    </body>
</html>

