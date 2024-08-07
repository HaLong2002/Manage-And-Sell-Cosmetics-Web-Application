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
            href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;600&display=swap"
            />
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Outfit:wght@700&display=swap"
            />
    </head>
    <style>
        .giohang-child {
            position: absolute;
            top: 87.67px;
            left: -0.55px;
            background-color: var(--color-whitesmoke-100);
            border-top: 0.8px solid var(--color-gray);
            box-sizing: border-box;
            width: 1477.56px;
            height: 1.54px;
        }
        .chng-nng,
        .m-phm-chc {
            position: absolute;
            top: 0;
        }
        .chng-nng {
            background: none;
            border: none;
            left: 882.78px;
            width: 111.45px;
            height: 14.61px;
        }
        .m-phm-chc {
            left: 0;
        }
        .m-phm-chc-nng {
            left: 655.65px;
            width: 182.18px;
            height: 14.61px;
        }
        .chm-sc-da,
        .lm-sch-da,
        .m-phm-chc-nng {
            background: none;
            border: none;
            position: absolute;
            top: 0;
        }
        .lm-sch-da {
            background: none;
            border: none;
            left: 499.24px;
            width: 111.45px;
            height: 14.61px;
        }
        .chm-sc-da {
            background: none;
            border: none;
            width: 11.49%;
            left: 34.16%;
            display: inline-block;
        }
        .trang-im,
        .tt-c-sn-phm {
            position: absolute;
            top: 0;
            left: 192.84px;
            width: 101.81px;
            height: 14.61px;
        }
        .trang-im {
            background: none;
            border: none;
            left: 192.84px;
            width: 101.8px;
            height: 14.61px;
        }
        .tt-c-sn-phm {
            background: none;
            border: none;
            height: 100%;
            width: 14.87%;
            right: 85.13%;
            bottom: 0;
            left: 0;
        }
        .danh-muc-san-pham {
            position: absolute;
            top: 65px;
            left: 241px;
            width: 994.23px;
            height: 14.61px;
            font-size: var(--font-size-smi-3);
        }
        .giohang-inner,
        .giohang-item {
            position: absolute;
            top: 53.92px;
            left: -0.57px;
            background-color: var(--color-whitesmoke-100);
            border-top: 0.8px solid var(--color-gray);
            box-sizing: border-box;
            width: 1477.57px;
            height: 1.54px;
        }
        .giohang-inner {
            top: 138.23px;
            left: 25%;
            width: 701.54px;
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
            top: 1.54px;
            display: inline-block;
            width: 89.62px;
        }
        .login-1-icon {
            position: absolute;
            top: 0;
            right: 93.27px;
            width: 14px;
            height: 14px;
            object-fit: cover;
        }
        .login,
        .navbar,
        .search {
            position: absolute;
            top: 2.3px;
            right: 66.04px;
            width: 107.27px;
            height: 15.54px;
        }
        .navbar,
        .search {
            right: 33.79px;
            width: 13.82px;
            height: 13.82px;
        }
        .navbar {
            top: 16.7px;
            right: 31.68px;
            width: 173.32px;
            height: 17.84px;
            font-size: 12.29px;
        }
        .icy-beauty {
            position: absolute;
            top: calc(50% - 418.48px);
            left: calc(50% - 92.8px);
            font-size: var(--font-size-5xl-6);
            letter-spacing: 0.2em;
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
            background: none;
            border: none;
            position: absolute;
            left: 168px;
            width: 359px;
            height: 41.91px;
            top: 50px;
            cursor: pointer;
            color: var(--color-white);
        }
        .s-tin,
        .tng-tin1 {
            position: absolute;
            width: 160px;
            top: 0;
            left: 380px;
            font-weight: 500;
            display: inline-block;
            font-size: 20px;
        }
        .s-tin {
            border: none;
            font-weight: 600;
            position: absolute;
            width: 200px;
            ;
            left: 499.5px;
            font-size: 26px;
            top: -4px;
            text-align: right;
        }
        .close-icon,
        .tng-tin {
            position: absolute;
            height: 2.1%;
            width: 60.43%;
            left: 60%;
        }
        .close-icon {
            height: 30%;
            width: 30%;
            top: 10%;
            right: 30.43%;
            bottom: 90.02%;
            left: 70%;
            max-width: 100%;
            overflow: hidden;
            max-height: 100%;
            object-fit: cover;
            mix-blend-mode: linear-burn;
        }
        .tn-sn-phm {
            margin-block-start: 0;
            margin-block-end: 0.75px;
            font-size: 20px;
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
            left: 22%;
            display: inline-block;
        }
        .n-v-tnh,
        .s-tin1 {
            width: 30.81%;
            top: 46.92%;
            font-size: 17px;
        }
        .s-tin1 {
            width: 27.34%;
            top: 73.85%;
            left: 60%;
        }
        .hnh-sn-phm {
            position: absolute;
            height: 100%;
            width: 110px;
            top: 0;
            right: 84.87%;
            bottom: 0;
            left: 0;


            box-sizing: border-box;
        }
        .line-div,
        .m-t-sn-phm {
            position: absolute;
            height: 15.17%;
            width: 58.65%;
            top: 18.44%;
            right: 38.84%;
            bottom: 66.39%;
            left: 2.51%;
        }
        .line-div {
            height: 0.18%;
            width: 47.53%;
            top: 36.67%;
            right: 50.02%;
            bottom: 63.15%;
            left: 2.45%;
            background-color: var(--color-whitesmoke-100);
            border-top: 0.8px solid var(--color-gray);
            box-sizing: border-box;
        }
        .gi-hng {
            position: absolute;
            width: 157px;
            height: 26px;
            top: 12.3%;
            left: 25%;
            display: inline-block;
            font-weight: 500;
            font-size: 22px;
        }
        .rectangle-div {
            position: absolute;
            top: 71.15%;
            left: 22%;
            background-color: var(--color-gainsboro);
            border: 0.8px solid var(--color-gray);
            box-sizing: border-box;
            width: 81.05px;
            height: 29.19px;
        }
        .div {
            border: none;
            position: absolute;
            top: 20.15%;
            left: 30%;
            font-weight: 500;
            display: inline-block;
            width: 34px;
            height: 16.27px;
            text-align: center;
        }
        input[type=number]::-webkit-inner-spin-button,
        input[type=number]::-webkit-outer-spin-button {
            -webkit-appearance: none;
            margin: 0;
        }
        .minus-2-icon,
        .plus-2-icon {
            position: absolute;
            top: 30.15%;
            left: 79.48%;
            width: 10.85px;
            height: 12.1px;
            object-fit: cover;
        }
        .minus-2-icon {
            left: 8.48%;
            width: 10.76px;
        }
        .giohang {
            background-color: var(--color-white);
            width: 100%;
            height: 853.96px;
            overflow: hidden;
            text-align: left;
            font-size: 18px;
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
        .close-icon1,
        .search-icon {
            position: absolute;
            top: 8.23px;
            left: 883.85px;
            width: 19.46px;
            height: 19.46px;
            object-fit: cover;
        }
        .close-icon1 {
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
        .nt-thanh-ton1 {
            position: absolute;
            top: 0;
            left: 0;
            background-color: var(--color-black);
            width: 359px;
            height: 41.91px;
            cursor: pointer;
        }
        .thanh-ton1 {
            position: absolute;
            top: 12px;
            left: 131px;
            font-weight: 500;
        }
        .nut-thanh-toan1 {
            position: relative;
            top: 280%;
            left: 159px;
            width: 359px;
            height: 41.91px;
            cursor: pointer;
            color: var(--color-white);
        }
        .s-tin2,
        .tng-tin3 {
            position: absolute;
            width: 22.94%;
            top: 0;
            left: 0;
            font-weight: 600;
            display: inline-block;
        }
        .s-tin2 {
            width: 18.41%;
            left: 81.59%;
        }
        .close-icon2,
        .tng-tin2 {
            position: absolute;
            height: 2.14%;
            width: 47.43%;
            top: 39.55%;
            right: 50.68%;
            bottom: 58.31%;
            left: 1.9%;
        }
        .close-icon2 {
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
        .tn-sn-phm1 {
            margin-block-start: 0;
            margin-block-end: 0.75px;
        }
        .v1 {
            margin: 0;
        }
        .n-v-tnh1,
        .s-tin3,
        .tn-sn-phm-container1 {
            position: absolute;
            width: 81.52%;
            top: 6.15%;
            left: 18.48%;
            display: inline-block;
        }
        .n-v-tnh1,
        .s-tin3 {
            width: 30.81%;
            top: 46.92%;
        }
        .s-tin3 {
            width: 27.34%;
            top: 73.85%;
            left: 35.69%;
        }
        .hnh-sn-phm1 {
            position: absolute;
            height: 100%;
            width: 15.13%;
            top: 0;
            right: 84.87%;
            bottom: 0;
            left: 0;
            background-color: var(--color-gainsboro);
            border: 0.7px solid var(--color-gray);
            box-sizing: border-box;
        }
        .m-t-sn-phm1 {
            height: 15.44%;
            width: 58.65%;
            top: 18.53%;
            right: 39.45%;
            bottom: 66.03%;
        }
        .gi-hng-child,
        .gi-hng2,
        .m-t-sn-phm1 {
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
        .gi-hng2 {
            width: 17.82%;
            top: 13.06%;
            display: inline-block;
        }
        .close-icon3,
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
        .close-icon3 {
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
        .gi-hng-child1,
        .gi-hng-inner {
            position: absolute;
            top: 87.64px;
            left: -0.77px;
            background-color: var(--color-whitesmoke-100);
            border-top: 0.8px solid var(--color-gray);
            box-sizing: border-box;
            width: 1477.56px;
            height: 1.54px;
        }
        .gi-hng-child1 {
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
            font-size: var(--font-size-5xl-6);
            letter-spacing: 0.2em;
            font-family: var(--font-outfit);
        }
        .div1 {
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
            background-color: var(--color-gainsboro);
            border: 0.8px solid var(--color-gray);
            box-sizing: border-box;
            width: 81.05px;
            height: 29.19px;
        }
        .minus-2-icon1,
        .plus-2-icon1 {
            position: absolute;
            top: 8.54px;
            left: 58.07px;
            width: 10.85px;
            height: 12.1px;
            object-fit: cover;
        }
        .minus-2-icon1 {
            left: 10.85px;
            width: 12.76px;
        }
        .s-lng {
            position: absolute;
            top: 246px;
            left: 188px;
            width: 81.05px;
            height: 29.19px;
        }
        .chng-nng3 {
            position: absolute;
            top: 0;
            left: 0;
        }
        .chng-nng2,
        .lm-sch-da2,
        .m-phm-chc-nng1 {
            position: absolute;
            top: 0;
            left: 882.78px;
            width: 111.45px;
            height: 14.61px;
        }
        .lm-sch-da2,
        .m-phm-chc-nng1 {
            left: 655.66px;
            width: 182.17px;
        }
        .lm-sch-da2 {
            left: 499.24px;
            width: 111.45px;
        }
        .chm-sc-da1 {
            left: 339.61px;
            width: 114.66px;
            height: 14.61px;
        }
        .chm-sc-da1,
        .trang-im3,
        .tt-c-sn {
            position: absolute;
            top: 0;
        }
        .trang-im3 {
            left: 192.84px;
            width: 101.8px;
            height: 14.61px;
        }
        .tt-c-sn {
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
        .gi-hng1 {
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
        .san-pham {
            position: absolute;
            top: 158px;
            left: 25%;
            width: 700px;
            height: 120px;
        }
        div.san-pham {
            width: 700px;
        }
        div.column div.tung-san-pham {
            position: relative;
            width: 700px;
            height: 120px;
            margin-bottom: 30px;
        }
        div.column div.mo-ta-san-pham{
            position: relative;
            float:right;
            width: 620px;
            height: 120px;
            margin-bottom: 30px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
        }
        div.clear {
            clear: both;
        }
        nut-xoa-san-pham {
            position: absolute;
            top: 10%;
            left: 90%;
            display: inline-block;
            width: 13px;
            height: 13px;

        }
        .tongtien-thanhtoan {
            position: absolute;
        }
        .xoasp-gio-hang {
            position: absolute;
            left: 16px;
            top: 40%;
            height: 20px;
            width: 20px;
        }
        .nut-xoa-sp {
            background: none;
            border-radius: 25px;
            height: 30px;
            width: 60px;
            margin-bottom: 15px;
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
            --font-roboto: Roboto;
            --font-outfit: Outfit;

            /* font sizes */
            --font-size-base-4: 15.4px;
            --font-size-5xl-6: 24.6px;
            --font-size-smi-3: 12.3px;
            --font-size-base: 16px;

            /* Colors */
            --color-white: #fff;
            --color-black: #000;
            --color-gainsboro: rgba(217, 217, 217, 0);
            --color-gray: rgba(0, 0, 0, 0.3);
            --color-whitesmoke-100: #f5f5f5;
        }

    </style>
    <body>
        <nav>
            <%@include file="Header_TrangBanHang.jsp" %>
        </nav>
        <c:url var="url"value="/sanpham"/>
        <form action="${url}/index/gio-hang" class="giohang">
            <%--
            <c:set var="shop" value="${sessionScope.SHOP}"/>
            <c:if test="${not empty shop}">
            --%>

                <!--            <div class="giohang-child"></div>
                            <div class="danh-muc-san-pham">
                                <button formaction="${url}/chong-nang" class="chng-nng">
                                    <div class="m-phm-chc">CHỐNG NẮNG</div>
                                </button>
                                <button formaction="${url}/my-pham-chuc-nang" class="m-phm-chc-nng">
                                    <div class="m-phm-chc">MỸ PHẨM CHỨC NĂNG</div>
                                </button>
                                <button formaction="${url}/lam-sach-da" class="lm-sch-da">
                                    <div class="m-phm-chc">LÀM SẠCH DA</div>
                                </button>
                                <button formaction="${url}/cham-soc-da" class="chm-sc-da">
                                    <div class="m-phm-chc">CHĂM SÓC DA</div>
                                </button>
                                <button formaction="${url}/trang-diem" class="trang-im">
                                    <div class="m-phm-chc">TRANG ĐIỂM</div>
                                </button>
                                <button formaction="${url}/tat-ca-san-pham"  class="tt-c-sn-phm">
                                    <div class="m-phm-chc">TẤT CẢ SẢN PHẨM</div>
                                </button>
                            </div>
                            <div class="giohang-item"></div>
                            <div class="giohang-inner"></div>
                            <div class="navbar">
                                <div class="bag" id="bagContainer">
                                    <img class="bag-1-icon" alt="" src="/J2EE/view/img/bag.png" />
                                </div>
                                <div class="login">
                                    <input type="hidden" name="username" value="ĐĂNG NHẬP"/>
                                    <div class="ng-nhp">ĐĂNG NHẬP</div>
                                    <img class="login-1-icon" alt="" src="/J2EE/view/img/login.png" />
                                </div>
                                <div class="search" id="searchContainer">
                                    <img class="bag-1-icon" alt="" src="/J2EE/view/img/search.png" />
                                </div>
                            </div>
                            <b class="icy-beauty">ICY BEAUTY</b>-->
                <input type="hidden" name="username_nguoidung" value="${name}"/>
                <div class="gi-hng">GIỎ HÀNG</div>

                <input type="hidden" name="username-nguoi-dung" value="${name}"/>

                <div class="san-pham"> 
                    <c:set var="count" value="0"/>
                    <div class="column">
                        <input type="submit" name="xoa-san-pham" value="Xóa" class="nut-xoa-sp"/>
                        <c:forEach var="rows" items="${items}">
                            <c:set var="count" value="${count + rows.giohang.thanhtien}" />
                            <input name="ma-sp" type="hidden" value="${rows.giohang.masp}"/>
                            <div class="tung-san-pham">
                                <div class="mo-ta-san-pham">
                                    <div class="tn-sn-phm-container">
                                        <p class="tn-sn-phm">${rows.sanpham.tenSP}</p>
                                    </div>
                                    <div class="n-v-tnh">${rows.sanpham.donViTinh}</div>
                                    <div class="s-tin1">
                                        <fmt:setLocale value = "vi_VN"/>
                                        <fmt:formatNumber value = "${rows.sanpham.giaBan}" type = "currency" minFractionDigits="0"/>
                                    </div>
                                    <div  class="hnh-sn-phm">
                                        <img class="hnh-sn-phm" src="/J2EE/view/img/SanPham/${rows.sanpham.hinhAnh}" width="131px"/>
                                    </div>
                                    <div class="rectangle-div">                                    
                                        <input name="so-luong-duoc-chon" id="${rows.sanpham.maSP}" type="number" min="1" max="${rows.sanpham.soLuong}" value="${rows.giohang.soluong}" class="div"/>
                                        <div onClick="increment('${rows.sanpham.maSP}')" >
                                            <%--
                                            <input type="submit" class="plus-2-icon" name="them-gio-hang" value="them"/>
                                            <input type="hidden" name="tang-sp" value="${rows.value.sanpham.maSP}"/>
                                            --%>
                                            <img class="plus-2-icon" alt="" src="/J2EE/view/img/plus.png"/>
                                        </div>
                                        <div onClick="decrement('${rows.sanpham.maSP}')">
                                            <%--
                                            <input type="submit" class="minus-2-icon" name="xoa-san-pham" value="xoa"/>
                                            <input name="giam-sp" value="${rows.value.sanpham.maSP}"/>
                                            --%>
                                            <img class="minus-2-icon" alt="" src="/J2EE/view/img/minus.png" />
                                        </div>
                                    </div>
                                </div>
                                <input class="xoasp-gio-hang" type="checkbox" name="rmv" value="${rows.sanpham.maSP}" />
                            </div>
                        </c:forEach>
                        <div class="clear"></div>
                        <div class="tongtien-thanhtoan">

                            <div class="tng-tin">
                                <div class="tng-tin1">TỔNG TIỀN:</div>
                                <fmt:setLocale value = "vi_VN"/>
                                <fmt:formatNumber var="format_tongtien" value = "${count}" type = "currency" minFractionDigits="0"/>
                                <input id="id-tong-tien"type="text" name="tong_tien" value="${format_tongtien}" class="s-tin" readonly="readonly"/>
                            </div>

                            <button formaction = "${url}/index/thanh-toan" class="nut-thanh-toan" id="nutThanhToan">
                                <div class="nt-thanh-ton" id="ntThanhTon"></div>
                                <div class="thanh-ton">THANH TOÁN</div>
                                <!--                            <input type="submit" name="action" value="submit-thanh-toan"/>-->
                            </button>
                        </div>

                    </div>
                </div>

            </form>

            <script>
                function increment(id) {
                    document.getElementById(id).stepUp();
                    var value_so_luong =<%= request.getParameter("so-luong-duoc-chon")%>;
                    var value_tong_tien =<%= request.getParameter("id-tong-tien")%>;
                    var tong = value_so_luong + value_tong_tien;
                    document.getElementById("id-tong-tien").appendChild(tong);
                }
                function decrement(id) {
                    document.getElementById(id).stepDown();
                }
                var popupntThanhTon = document.getElementById("popupntThanhTon");
                if (popupntThanhTon) {
                    popupntThanhTon.addEventListener("click", function (e) {
                        // Please sync "ThanhToan" to the project
                    });
                }

                //            function incrementTotalPrice(productPrice) {
                //                var currentTotal = parseFloat(document.getElementById("id-tong-tien").value.replace(/[^0-9.-]+/g, ''));
                //                var quantity = parseInt(document.getElementById("quantityInputId").value, 10);
                //                var newTotal = currentTotal + (quantity * productPrice);
                //                document.getElementById("id-tong-tien").value = newTotal.toFixed(2);
                //            }

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

                var ntThanhTon = document.getElementById("ntThanhTon");
                if (ntThanhTon) {
                    ntThanhTon.addEventListener("click", function (e) {
                        // Please sync "ThanhToan" to the project
                    });
                }

                var nutThanhToan = document.getElementById("nutThanhToan");
                if (nutThanhToan) {
                    nutThanhToan.addEventListener("click", function (e) {
                        // Please sync "ThanhToan" to the project
                    });
                }
        </script>
    </body>
</html>
