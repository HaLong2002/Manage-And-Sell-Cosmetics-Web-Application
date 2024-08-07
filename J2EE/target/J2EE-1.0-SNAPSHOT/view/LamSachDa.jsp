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
        .trang-lm-sch-da-child {
            position: absolute;
            top: 87.64px;
            left: -0.77px;
            background-color: var(--color-whitesmoke-100);
            border-top: 0.8px solid var(--color-gray-100);
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
            background: none;
            border: none;
            left: 655.65px;
            width: 182.18px;
            height: 14.61px;
        }
        .chm-sc-da,
        .lm-sch-da,
        .m-phm-chc-nng {
            position: absolute;
            top: 0;
        }
        .lm-sch-da {
            background: none;
            border: none;
            width: 11.67%;
            left: 50.19%;
            text-decoration: underline;
            display: inline-block;
        }
        .chm-sc-da {
            background: none;
            border: none;
            height: 100%;
            width: 11.53%;
            right: 54.31%;
            bottom: 0;
            left: 34.16%;
        }
        .trang-im,
        .tt-c-sn-phm {
            background: none;
            border: none;
            position: absolute;
            top: 0;
            left: 192.84px;
            width: 101.81px;
            height: 14.61px;
        }
        .trang-im {
            background: none;
            border: none;
            background: none;
            border: none;
            left: 192.84px;
            width: 101.8px;
            height: 14.61px;
        }
        .tt-c-sn-phm {
            height: 100%;
            width: 14.87%;
            right: 85.13%;
            bottom: 0;
            left: 0;
        }
        .danh-muc-san-pham {
            position: absolute;
            top: 64.03px;
            left: 241.11px;
            width: 994.23px;
            height: 14.61px;
            font-size: var(--font-size-smi-3);
        }
        .trang-lm-sch-da-item {
            position: absolute;
            top: 53.89px;
            left: -0.78px;
            background-color: var(--color-whitesmoke-100);
            border-top: 0.8px solid var(--color-gray-100);
            box-sizing: border-box;
            width: 1477.57px;
            height: 1.54px;
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
            top: 1.54px;
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
            top: 16.67px;
            right: 31.44px;
            width: 173.32px;
            height: 17.84px;
            font-size: 12.29px;
        }
        .TenCuaHang {
            position: absolute;
            top: 9.99px;
            left: 644.98px;
            width: 200px;
            height: 31px;

        }
        .icy-beauty {
            font-size: 24.6px;
            letter-spacing: 0.2em;
            font-family: var(--font-outfit);
        }
        .kkkkkkkkkkk,
        .kkkkkkkkkkk1 {
            position: absolute;
            height: 16.14px;
        }
        .kkkkkkkkkkk {
            top: 0;
            left: 0;
            display: inline-block;
            width: 261.38px;
            cursor: pointer;
        }
        .kkkkkkkkkkk1 {
            left: 276.75px;
        }
        .kkkkkkkkkkk1,
        .kkkkkkkkkkk2,
        .kkkkkkkkkkk3 {
            top: 0;
            display: inline-block;
            width: 261.38px;
            cursor: pointer;
        }
        .kkkkkkkkkkk2 {
            position: absolute;
            left: 553.5px;
            height: 16.14px;
        }
        .kkkkkkkkkkk3 {
            left: 830.25px;
        }
        .gia-san-pham-1,
        .kkkkkkkkkkk3,
        .kkkkkkkkkkk4 {
            position: absolute;
            height: 16.14px;
        }
        .kkkkkkkkkkk4 {
            top: 0;
            left: 1107px;
            display: inline-block;
            width: 261.38px;
            cursor: pointer;
        }
        .gia-san-pham-1 {
            top: 324.41px;
            left: 0;
            width: 1368.38px;
        }
        .aaaaaaaaaaaaaaaaaaaa {
            margin: 0;
        }
        .aaaaaaaaaaaaaaaaaaaa-aaaaaaaaa,
        .aaaaaaaaaaaaaaaaaaaa-aaaaaaaaa1 {
            position: absolute;
            top: 0;
            left: 0;
            display: inline-block;
            width: 261.38px;
            cursor: pointer;
        }
        .aaaaaaaaaaaaaaaaaaaa-aaaaaaaaa1 {
            left: 276.75px;
        }
        .aaaaaaaaaaaaaaaaaaaa-aaaaaaaaa2,
        .aaaaaaaaaaaaaaaaaaaa-aaaaaaaaa3,
        .aaaaaaaaaaaaaaaaaaaa-aaaaaaaaa4 {
            position: absolute;
            top: 0;
            left: 551.96px;
            display: inline-block;
            width: 261.38px;
            cursor: pointer;
        }
        .aaaaaaaaaaaaaaaaaaaa-aaaaaaaaa3,
        .aaaaaaaaaaaaaaaaaaaa-aaaaaaaaa4 {
            left: 832.56px;
        }
        .aaaaaaaaaaaaaaaaaaaa-aaaaaaaaa4 {
            left: 1107px;
        }
        .ten-san-pham-1 {
            position: absolute;
            top: 283.67px;
            left: 0;
            width: 1368.38px;
            height: 32px;
        }
        .rectangled-1,
        .rectangled-2,
        .rectangled-2-child {
            position: absolute;
            height: 100%;
            top: 0;
            bottom: 0;
            left: 0;
        }
        .rectangled-2-child {
            width: 100%;
            right: 0;
            background-color: var(--color-white);
            box-shadow: 0 0 3.08px transparent;
        }
        .rectangled-1,
        .rectangled-2 {
            width: 19.11%;
            right: 80.89%;
        }
        .rectangled-1 {
            right: 60.67%;
            left: 20.22%;
        }
        .hinh-anh-san-pham,
        .rectangled-3,
        .rectangled-4,
        .rectangled-5 {
            position: absolute;
            height: 100%;
            width: 19.11%;
            top: 0;
            right: 40.62%;
            bottom: 0;
            left: 40.28%;
        }
        .hinh-anh-san-pham,
        .rectangled-4,
        .rectangled-5 {
            right: 20.22%;
            left: 60.67%;
        }
        .hinh-anh-san-pham,
        .rectangled-5 {
            right: 0;
            left: 80.89%;
        }
        .hinh-anh-san-pham {
            height: 78.81%;
            width: 100%;
            bottom: 21.19%;
            left: 0;
        }
        .san-pham-1,
        .san-pham-2 {
            position: absolute;
            top: 500.46px;
            left: 53.81px;
            width: 1368.46px;
            height: 340.56px;
        }
        .san-pham-1 {
            top: 112.24px;
        }
        .trang-lm-sch-da {
            display: inline-block;
            background-color: var(--color-white);
            width: 100%;
            height: auto;
            overflow: hidden;
            text-align: left;
            font-size: 13.84px;
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
            top: 274.66px;
            left: 20.95px;
            background-color: #000;
            width: 351.75px;
            height: 41.91px;
            cursor: pointer;
        }
        .thanh-ton {
            position: absolute;
            top: 287.38px;
            left: 153.42px;
            font-weight: 500;
            color: #fff;
        }
        .nut-thanh-toan {
            background: none;
            border: none;
        }
        .s-tin,
        .tng-tin1 {
            position: absolute;
            top: 0;
            left: 0;
            font-weight: 600;
        }
        .s-tin {
            left: 81.59%;
        }
        .close-icon1,
        .tng-tin {
            position: absolute;
            height: 2.14%;
            width: 89.88%;
            top: 28.8%;
            right: 4.79%;
            bottom: 69.06%;
            left: 5.33%;
        }
        .close-icon1 {
            height: 11.95%;
            width: 4.26%;
            top: 2.76%;
            right: 0;
            bottom: 85.29%;
            left: 95.74%;
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
        .tn-sn-phm-container {
            position: absolute;
            width: 53.4%;
            top: 2.07%;
            left: 37.45%;
            display: inline-block;
        }
        .n-v-tnh,
        .tng-gim-s-lng1 {
            position: absolute;
            top: 45.52%;
            left: 37.02%;
        }
        .tng-gim-s-lng1 {
            height: 100%;
            width: 100%;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            background-color: var(--color-gainsboro);
            border: 0.7px solid var(--color-gray-100);
            box-sizing: border-box;
        }
        .minus-1-icon,
        .plus-1-icon {
            position: absolute;
            height: 35.3%;
            width: 13.96%;
            top: 31.43%;
            right: 9.64%;
            bottom: 33.27%;
            left: 76.4%;
            max-width: 100%;
            overflow: hidden;
            max-height: 100%;
            object-fit: cover;
        }
        .minus-1-icon {
            right: 77.06%;
            left: 8.99%;
        }
        .s-lng {
            position: absolute;
            height: 67.65%;
            width: 26.74%;
            top: 17.65%;
            left: 36.05%;
            display: inline-block;
        }
        .tng-gim-s-lng {
            position: absolute;
            height: 24.14%;
            width: 18.94%;
            top: 71.72%;
            right: 43.62%;
            bottom: 4.14%;
            left: 37.45%;
        }
        .hnh-sn-phm,
        .s-tin1 {
            position: absolute;
            top: 75.86%;
            left: 77.23%;
        }
        .hnh-sn-phm {
            height: 100%;
            width: 29.57%;
            top: 0;
            right: 70.43%;
            bottom: 0;
            left: 0;
            background-color: var(--color-gainsboro);
            border: 0.7px solid var(--color-gray-100);
            box-sizing: border-box;
        }
        .gi-hng-child,
        .m-t-sn-phm {
            position: absolute;
            height: 12.89%;
            width: 89.52%;
            top: 11.82%;
            right: 5.14%;
            bottom: 75.29%;
            left: 5.33%;
        }
        .gi-hng-child {
            height: 0.12%;
            top: 26.43%;
            bottom: 73.45%;
            max-width: 100%;
            overflow: hidden;
            max-height: 100%;
        }
        .close-icon2,
        .gi-hng1 {
            position: absolute;
            top: 6.93%;
            left: 8.38%;
        }
        .close-icon2 {
            height: 100%;
            width: 100%;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            max-width: 100%;
            overflow: hidden;
            max-height: 100%;
            object-fit: cover;
            mix-blend-mode: linear-burn;
        }
        .close1,
        .gi-hng-item {
            position: absolute;
            height: 2.31%;
            width: 5.72%;
            top: 2.04%;
            right: 5.14%;
            bottom: 95.64%;
            left: 89.14%;
        }
        .gi-hng-item {
            height: 0.12%;
            width: 89.52%;
            top: 9.94%;
            bottom: 89.94%;
            left: 5.33%;
            max-width: 100%;
            overflow: hidden;
            max-height: 100%;
        }
        .gi-hng-inner {
            position: absolute;
            top: 82.7px;
            left: 19.81px;
            background-color: var(--color-whitesmoke-100);
            border-top: 1px solid var(--color-black);
            box-sizing: border-box;
            width: 96.3px;
            height: 2px;
        }
        .n-hng {
            position: absolute;
            top: 6.93%;
            left: 36.38%;
            color: rgba(0, 0, 0, 0.5);
        }
        .gi-hng {
            position: relative;
            background-color: var(--color-white);
            width: 392.91px;
            height: 841.94px;
            overflow: hidden;
            max-width: 90%;
            max-height: 90%;
            text-align: left;
            font-size: 14.97px;
            color: var(--color-black);
            font-family: var(--font-roboto);
        }
        .nut-thanh-toan {
            background: none;
            border: none;
        }
        .nt-thanh-ton {
            position: absolute;
            top: 274.66px;
            left: 20.95px;
            background-color: #000;
            width: 351.75px;
            height: 41.91px;
            cursor: pointer;
        }
        .s-tin,
        .tng-tin1 {
            position: absolute;
            top: 0;
            left: 0;
            font-weight: 600;
        }
        .s-tin {
            left: 81.59%;
        }
        .close-icon,
        .tng-tin {
            position: absolute;
            height: 2.14%;
            width: 89.88%;
            top: 30.8%;
            right: 4.79%;
            bottom: 69.06%;
            left: 5.33%;
        }
        .close-icon {
            height: 11.95%;
            width: 4.26%;
            top: 2.76%;
            right: 0;
            bottom: 85.29%;
            left: 95.74%;
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
        .tn-sn-phm-container {
            position: absolute;
            width: 53.4%;
            top: 2.07%;
            left: 37.45%;
            display: inline-block;
        }
        .n-v-tnh,
        .tng-gim-s-lng1 {
            position: absolute;
            top: 45.52%;
            left: 37.02%;
        }
        .tng-gim-s-lng1 {
            height: 100%;
            width: 100%;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            background-color: transparent;
            border: 0.7px solid rgba(0, 0, 0, 0.3);
            box-sizing: border-box;
        }
        .minus-1-icon,
        .plus-1-icon {
            position: absolute;
            height: 35.3%;
            width: 13.96%;
            top: 31.43%;
            right: 9.64%;
            bottom: 33.27%;
            left: 76.4%;
            max-width: 100%;
            overflow: hidden;
            max-height: 100%;
            object-fit: cover;
        }
        .minus-1-icon {
            right: 77.06%;
            left: 8.99%;
        }
        .s-lng {
            position: absolute;
            height: 67.65%;
            width: 26.74%;
            top: 17.65%;
            left: 36.05%;
            display: inline-block;
        }
        .tng-gim-s-lng {
            position: absolute;
            height: 24.14%;
            width: 18.94%;
            top: 71.72%;
            right: 43.62%;
            bottom: 4.14%;
            left: 37.45%;
        }
        .hnh-sn-phm,
        .s-tin1 {
            position: absolute;
            top: 75.86%;
            left: 77.23%;
        }
        .hnh-sn-phm {
            height: 100%;
            width: 29.57%;
            top: 0;
            right: 70.43%;
            bottom: 0;
            left: 0;
            background-color: transparent;
            border: 0.7px solid rgba(0, 0, 0, 0.3);
            box-sizing: border-box;
        }
        .gi-hng-child {
            position: absolute;
            top: 82.7px;
            left: 19.81px;
            background-color: #f5f5f5;
            border-top: 0.8px solid rgba(0, 0, 0, 0.3);
            box-sizing: border-box;
            width: 351.7px;
            height: 0px;

        }

        .m-t-sn-phm {
            position: absolute;
            height: 12.89%;
            width: 89.52%;
            top: 99.54px;
            right: 5.14%;
            bottom: 633.89px;
            left: 5.33%;
        }
        .gi-hng-item {
            position: absolute;
            top: 212.02px;
            left: 19.81px;
            background-color: #f5f5f5;
            border-top: 0.8px solid rgba(0, 0, 0, 0.3);
            box-sizing: border-box;
            width: 351.7px;
            height: 0px;
        }

        .close-icon1,
        .gi-hng1 {
            position: absolute;
            top: 6.93%;
            left: 8.38%;
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
            object-fit: cover;
            mix-blend-mode: linear-burn;
        }
        .close {
            background: none;
            border: none;
            position: absolute;
            height: 2.31%;
            width: 5.72%;
            top: 2.04%;
            right: 5.14%;
            bottom: 95.64%;
            left: 89.14%;
        }
        .thanh-ton {
            position: absolute;
            top: 287.38px;
            left: 153.42px;
            font-weight: 500;
            color: #fff;
        }
        .gi-hng-inner {
            position: absolute;
            top: 82.7px;
            left: 19.81px;
            background-color: #f5f5f5;
            border-top: 1px solid #000;
            box-sizing: border-box;
            width: 96.3px;
            height: 2px;
        }
        .n-hng {
            position: absolute;
            top: 6.93%;
            left: 36.38%;
            color: rgba(0, 0, 0, 0.5);
        }
        .gi-hng {
            position: relative;
            left: 37%;
            background-color: #fff;
            width: 392.91px;
            height: 841.94px;
            overflow: hidden;
            max-width: 100%;
            max-height: 100%;
            text-align: left;
            font-size: 14.97px;
            color: #000;
            font-family: Roboto;
        }
        
        div.column button.tung-san-pham{
            float: left;
            width: 261.458px;
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

        body {
            margin: 0;
            line-height: normal;
        }

        div.san-pham-1 {
            width: 1400px;
        }

        div.clear {
            clear: both;
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
            --font-size-sm-8: 13.8px;
            --font-size-smi-3: 12.3px;
            --font-size-mini: 15px;
            --font-size-base: 16px;

            /* Colors */
            --color-white: #fff;
            --color-black: #000;
            --color-whitesmoke-100: #f5f5f5;
            --color-gray-100: rgba(0, 0, 0, 0.3);
            --color-gainsboro: rgba(217, 217, 217, 0);
        }

    </style>

    <body>
        <nav>
            <%@include file="Header_TrangBanHang.jsp" %>
        </nav>
        <c:url var="url"value="/sanpham"/>
        <form action="${url}/lam-sach-da" class="trang-lm-sch-da">
<!--            <div class="trang-lm-sch-da-child"></div>
            <div class="danh-muc-san-pham">
                <button formaction="${url}/chong-nang" class="chng-nng">
                    <div class="m-phm-chc">CHỐNG NẮNG</div>
                </button>
                <button formaction="${url}/my-pham-chuc-nang"  class="m-phm-chc-nng">
                    <div class="m-phm-chc">MỸ PHẨM CHỨC NĂNG</div>
                </button>
                <div class="lm-sch-da">LÀM SẠCH DA</div>
                <button formaction="${url}/cham-soc-da"  class="chm-sc-da">
                    <div class="m-phm-chc">CHĂM SÓC DA</div>
                </button>
                <button formaction="${url}/trang-diem" class="trang-im">
                    <div class="m-phm-chc">TRANG ĐIỂM</div>
                </button>
                <button formaction="${url}/tat-ca-san-pham"  class="tt-c-sn-phm">
                    <div class="m-phm-chc">TẤT CẢ SẢN PHẨM</div>
                </button>
            </div>
            <div class="trang-lm-sch-da-item"></div>
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
            </div>
            <div class="TenCuaHang">
                <b class="icy-beauty">ICY BEAUTY</b>
            </div>-->

            <div class="san-pham-1">
                <div class="column">
                    <c:forEach var="item" items="${items}">
                        <button formaction="${url}/index/chi-tiet-san-pham/${item.maSP}" class="tung-san-pham">
                            <div class="hinh-anh-sp">
                                <img src="/J2EE/view/img/SanPham/${item.hinhAnh}" width="255.458px" height="268.379px"/>
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
        </form>        

        <div id="timKiemContainer" class="popup-overlay" style="display: none">
            <div class="tim-kiem">
                <div class="thanh-tim-kiem">
                    <div class="o-tim-kiem"></div>
                    <img class="search-icon" alt="" src="/J2EE/view/img/search.png" />

                    <div class="close">
                        <img class="close-icon" alt="" src="/J2EE/view/img/close.png" />
                    </div>
                </div>
                <b class="icy-beauty1">ICY BEAUTY</b>
            </div>
        </div>

        <script>
            function close_bag(){
                var popup = document.getElementById("giHngContainer");
                var popupStyle = popup.style;
                popupStyle.display = "none";
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

            var kkkkkkkkkkkText = document.getElementById("kkkkkkkkkkkText");
            if (kkkkkkkkkkkText) {
                kkkkkkkkkkkText.addEventListener("click", function (e) {
                    // Please sync "Sản phẩm" to the project
                });
            }

            var kkkkkkkkkkkText1 = document.getElementById("kkkkkkkkkkkText1");
            if (kkkkkkkkkkkText1) {
                kkkkkkkkkkkText1.addEventListener("click", function (e) {
                    // Please sync "Sản phẩm" to the project
                });
            }

            var kkkkkkkkkkkText2 = document.getElementById("kkkkkkkkkkkText2");
            if (kkkkkkkkkkkText2) {
                kkkkkkkkkkkText2.addEventListener("click", function (e) {
                    // Please sync "Sản phẩm" to the project
                });
            }

            var kkkkkkkkkkkText3 = document.getElementById("kkkkkkkkkkkText3");
            if (kkkkkkkkkkkText3) {
                kkkkkkkkkkkText3.addEventListener("click", function (e) {
                    // Please sync "Sản phẩm" to the project
                });
            }

            var kkkkkkkkkkkText4 = document.getElementById("kkkkkkkkkkkText4");
            if (kkkkkkkkkkkText4) {
                kkkkkkkkkkkText4.addEventListener("click", function (e) {
                    // Please sync "Sản phẩm" to the project
                });
            }

            var aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText = document.getElementById(
                    "aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText"
                    );
            if (aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText) {
                aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText.addEventListener("click", function (e) {
                    // Please sync "Sản phẩm" to the project
                });
            }

            var aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText1 = document.getElementById(
                    "aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText1"
                    );
            if (aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText1) {
                aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText1.addEventListener("click", function (e) {
                    // Please sync "Sản phẩm" to the project
                });
            }

            var aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText2 = document.getElementById(
                    "aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText2"
                    );
            if (aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText2) {
                aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText2.addEventListener("click", function (e) {
                    // Please sync "Sản phẩm" to the project
                });
            }

            var aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText3 = document.getElementById(
                    "aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText3"
                    );
            if (aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText3) {
                aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText3.addEventListener("click", function (e) {
                    // Please sync "Sản phẩm" to the project
                });
            }

            var aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText4 = document.getElementById(
                    "aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText4"
                    );
            if (aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText4) {
                aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText4.addEventListener("click", function (e) {
                    // Please sync "Sản phẩm" to the project
                });
            }

            var kkkkkkkkkkkText5 = document.getElementById("kkkkkkkkkkkText5");
            if (kkkkkkkkkkkText5) {
                kkkkkkkkkkkText5.addEventListener("click", function (e) {
                    // Please sync "Sản phẩm" to the project
                });
            }

            var kkkkkkkkkkkText6 = document.getElementById("kkkkkkkkkkkText6");
            if (kkkkkkkkkkkText6) {
                kkkkkkkkkkkText6.addEventListener("click", function (e) {
                    // Please sync "Sản phẩm" to the project
                });
            }

            var kkkkkkkkkkkText7 = document.getElementById("kkkkkkkkkkkText7");
            if (kkkkkkkkkkkText7) {
                kkkkkkkkkkkText7.addEventListener("click", function (e) {
                    // Please sync "Sản phẩm" to the project
                });
            }

            var kkkkkkkkkkkText8 = document.getElementById("kkkkkkkkkkkText8");
            if (kkkkkkkkkkkText8) {
                kkkkkkkkkkkText8.addEventListener("click", function (e) {
                    // Please sync "Sản phẩm" to the project
                });
            }

            var kkkkkkkkkkkText9 = document.getElementById("kkkkkkkkkkkText9");
            if (kkkkkkkkkkkText9) {
                kkkkkkkkkkkText9.addEventListener("click", function (e) {
                    // Please sync "Sản phẩm" to the project
                });
            }

            var aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText5 = document.getElementById(
                    "aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText5"
                    );
            if (aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText5) {
                aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText5.addEventListener("click", function (e) {
                    // Please sync "Sản phẩm" to the project
                });
            }

            var aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText6 = document.getElementById(
                    "aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText6"
                    );
            if (aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText6) {
                aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText6.addEventListener("click", function (e) {
                    // Please sync "Sản phẩm" to the project
                });
            }

            var aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText7 = document.getElementById(
                    "aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText7"
                    );
            if (aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText7) {
                aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText7.addEventListener("click", function (e) {
                    // Please sync "Sản phẩm" to the project
                });
            }

            var aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText8 = document.getElementById(
                    "aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText8"
                    );
            if (aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText8) {
                aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText8.addEventListener("click", function (e) {
                    // Please sync "Sản phẩm" to the project
                });
            }

            var aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText9 = document.getElementById(
                    "aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText9"
                    );
            if (aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText9) {
                aaaaaaaaaaaaaaaaaaaaAaaaaaaaaText9.addEventListener("click", function (e) {
                    // Please sync "Sản phẩm" to the project
                });
            }
        </script>
    </body>
</html>