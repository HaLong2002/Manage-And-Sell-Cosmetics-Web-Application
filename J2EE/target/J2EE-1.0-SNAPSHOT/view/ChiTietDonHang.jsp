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
        .close-icon {
            position: absolute;
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
            display: none;
            mix-blend-mode: linear-burn;
        }
        .close {
            position: absolute;
            height: 2.31%;
            width: 5.72%;
            top: 2.04%;
            right: 5.14%;
            bottom: 95.64%;
            left: 89.14%;
        }
        .tn-sn-phm {
            margin-block-start: 0;
            margin-block-end: 0.75px;
        }
        .v {
            margin: 0;
        }
        .n-v-tnh,
        .tn-sn-phm-container {
            left: 14%;
            display: inline-block;
        }
        .tn-sn-phm-container {
            position: absolute;
            width: 82.66%;
            top: 2.29%;
            font-size: 20px;
        }
        .n-v-tnh {
            width: 28.16%;
            top: 35%;
        }
        .n-v-tnh,
        .s-lng,
        .s-tin {
            position: absolute;
        }
        .s-lng {
            width: 9.68%;
            top: 60%;
            left: 14%;
            display: inline-block;
        }
        .s-tin {
            top: 38.56%;
            left: 81.76%;
            font-size: 16px;
        }
        .hnh-sn-phm {
            position: absolute;
            height: 100px;
            width: 100px;
            top: 0;
            right: 84.65%;
            bottom: 0;
            left: 0;
            background-color: var(--color-gainsboro);
            border: 0.7px solid var(--color-gray-200);
            box-sizing: border-box;
        }
        .m-t-sn-phm {
            position: absolute;
            height: 15.56%;
            width: 57.84%;
            top: 42.52%;
            right: 19.85%;
            bottom: 41.92%;
            left: 22.31%;
            font-size: var(--font-size-base);
        }
        .m-n-hng,
        .n-hng {
            position: absolute;
            display: inline-block;
        }
        .n-hng {
            width: 37.41%;
            top: 102px;
            left: 22.31%;
            color: #bb4949;
        }
        .m-n-hng {
            width: 20.87%;
            top: 127.98px;
            left: 22.29%;
        }
        .div,
        .div1,
        .thanh-ton-khi {
            position: absolute;
            top: 8px;
            left: 264.21px;
            color: var(--color-black);
            width: 100px;
        }
        .div1,
        .thanh-ton-khi {
            top: 42.73px;
            left: 264.28px;
            width: 170px;
        }
        .thanh-ton-khi {
            top: 102.73px;
            left: 264px;
        }
        .div2 {
            position: absolute;
            top: 69.73px;
            left: 264.28px;
            font-size: 16.46px;
            color: red;
            width: 170px;
        }
        .ph-vn-chuyn,
        .tng-tin-hng {
            position: absolute;
            top: 8px;
            left: 114px;
            width: 100px;
        }
        .ph-vn-chuyn {
            top: 41px;
        }
        .phng-thc-thanh,
        .thnh-tin {
            position: absolute;
            top: 72px;
            left: 139px;
            width: 70px;
        }
        .phng-thc-thanh {
            top: 104px;
            left: 58px;
            width: 155px;
        }
        .thng-tin-thanh-ton-child,
        .thng-tin-thanh-ton-item {
            position: absolute;
            background-color: var(--color-whitesmoke-100);
            box-sizing: border-box;
        }
        .thng-tin-thanh-ton-child {
            top: -0.77px;
            left: -0.77px;
            border-top: 0.8px solid var(--color-gray-200);
            width: 786.54px;
            height: 1.54px;
        }
        .thng-tin-thanh-ton-item {
            top: 32.23px;
        }
        .line-div,
        .thng-tin-thanh-ton-inner,
        .thng-tin-thanh-ton-item {
            left: -0.77px;
            border-top: 0.8px solid var(--color-gray-200);
            width: 786.54px;
            height: 1.54px;
        }
        .thng-tin-thanh-ton-inner {
            position: absolute;
            top: 64.23px;
            background-color: var(--color-whitesmoke-100);
            box-sizing: border-box;
        }
        .line-div {
            top: 96.23px;
        }
        .line-div,
        .thng-tin-thanh-ton-child1,
        .thng-tin-thanh-ton-child2 {
            position: absolute;
            background-color: var(--color-whitesmoke-100);
            box-sizing: border-box;
        }
        .thng-tin-thanh-ton-child1 {
            top: 127.23px;
            left: -0.77px;
            border-top: 0.8px solid var(--color-gray-200);
            width: 786.54px;
            height: 1.54px;
        }
        .thng-tin-thanh-ton-child2 {
            top: -0.77px;
            left: 232.23px;
            border-right: 0.8px solid var(--color-gray-200);
            width: 1.54px;
            height: 129.52px;
        }

        .a-ch-vvvv-container,
        .s-in-thoi,
        .tn-khch-hng {
            position: absolute;
            width: 24.18%;
            top: 251.47px;
            left: 22.29%;
            font-size: 14.36px;
            display: inline-block;
        }
        .a-ch-vvvv-container,
        .s-in-thoi {
            width: 20.11%;
            top: 276.16px;
        }
        .a-ch-vvvv-container {
            width: 10.44%;
            top: 300.86px;
        }
        .span {
            color: var(--color-gray-100);
        }
        .a-ch-nhn,
        .n-hng-container,
        .n-hng-container1 {
            position: absolute;
            width: 53.7%;
            top: 154.18px;
            left: 22.29%;
            display: inline-block;
        }
        .a-ch-nhn,
        .n-hng-container1 {
            width: 65.92%;
            top: 180.37px;
        }
        .a-ch-nhn {
            width: 33.09%;
            top: 226.02px;
            font-size: 16px;
            font-weight: 500;
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
        .lm-sch-da,
        .m-phm-chc-nng {
            background: none;
            border: none;
            position: absolute;
            top: 0;
            left: 655.66px;
            width: 182.17px;
            height: 14.61px;
        }
        .lm-sch-da {
            background: none;
            border: none;
            left: 499.24px;
            width: 111.45px;
        }
        .chm-sc-da {
            background: none;
            border: none;
            left: 339.61px;
            width: 114.66px;
            height: 14.61px;
        }
        .chm-sc-da,
        .trang-im,
        .tt-c-sn {
            position: absolute;
            top: 0;
        }
        .trang-im {
            background: none;
            border: none;
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
        .danh-muc-san-pham {
            position: absolute;
            top: 66px;
            left: 245px;
            width: 994.23px;
            height: 14.61px;
            font-size: var(--font-size-smi-3);
        }
        .chi-tit-n-hng-child,
        .chi-tit-n-hng-child1,
        .chi-tit-n-hng-inner,
        .chi-tit-n-hng-item {
            position: absolute;
            top: 53.89px;
            left: -0.78px;
            background-color: var(--color-whitesmoke-100);
            border-top: 0.8px solid var(--color-gray-200);
            box-sizing: border-box;
            width: 1477.57px;
            height: 1.54px;
        }
        .chi-tit-n-hng-child1,
        .chi-tit-n-hng-inner,
        .chi-tit-n-hng-item {
            top: 87.23px;
            left: -0.77px;
        }
        .chi-tit-n-hng-child1,
        .chi-tit-n-hng-inner {
            top: 209.23px;
            left: 328.51px;
            width: 786.54px;
        }
        .chi-tit-n-hng-child1 {
            top: 344.23px;
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
            top: calc(50% - 410.98px);
            left: calc(50% - 93.02px);
            font-size: var(--font-size-5xl-6);
            letter-spacing: 0.2em;
            font-family: var(--font-outfit);
        }
        .chi-tit-n-hng {
            float: left;
            background-color: var(--color-white);
            width: 100%;
            height: 841.94px;
            overflow: hidden;
            text-align: left;
            font-size: 15.36px;
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
        .close1,
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
        .s-tin1,
        .tng-tin1 {
            position: absolute;
            width: 22.94%;
            top: 0;
            left: 0;
            font-weight: 600;
            display: inline-block;
        }
        .s-tin1 {
            width: 18.41%;
            left: 81.59%;
        }
        .close-icon2,
        .tng-tin {
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
        .s-tin2,
        .tn-sn-phm-container1 {
            position: absolute;
            width: 81.52%;
            top: 6.15%;
            left: 18.48%;
            display: inline-block;
        }
        .n-v-tnh1,
        .s-tin2 {
            width: 30.81%;
            top: 46.92%;
        }
        .s-tin2 {
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
            border: 0.7px solid var(--color-gray-200);
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
        .gi-hng1,
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
        .gi-hng1 {
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
        .close2 {
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
            border-top: 0.8px solid var(--color-gray-200);
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
        .div3 {
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
            border: 0.8px solid var(--color-gray-200);
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
            left: 10.85px;
            width: 12.76px;
        }
        .s-lng1 {
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
        .chm-sc-da2 {
            left: 339.61px;
            width: 114.66px;
            height: 14.61px;
        }
        .chm-sc-da2,
        .trang-im2,
        .tt-c-sn1 {
            position: absolute;
            top: 0;
        }
        .trang-im2 {
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


        /*Tim kiem*/

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
        .close1,
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
        .san-pham {
            position: absolute;
            top: 358px;
            left: 9.34%;
            width: 853.67px;
        }
        div.san-pham {
            width: 853.67px;
        }
        div.column div.m-t-sn-phm{
            position: relative;
            width: 853.67px;
            height: 131px;
            margin-bottom: -15px;
        }
        .thng-tin-thanh-ton {
            position: absolute;
            left: 22.34%;
            font-size: 13.47px;
            color: var(--color-gray-100);
        }

        div.clear {
            clear: both;
        }

        :root {
            /* fonts */
            --font-outfit: Outfit;
            --font-roboto: Roboto;

            /* font sizes */
            --font-size-5xl-6: 24.6px;
            --font-size-smi-3: 12.3px;
            --font-size-base-4: 15.4px;
            --font-size-mini-4: 14.4px;
            --font-size-sm-5: 13.5px;
            --font-size-base: 16px;

            /* Colors */
            --color-white: #fff;
            --color-black: #000;
            --color-whitesmoke-100: #f5f5f5;
            --color-gray-100: rgba(0, 0, 0, 0.7);
            --color-gray-200: rgba(0, 0, 0, 0.3);
            --color-gainsboro: rgba(217, 217, 217, 0);
        }

    </style>
    <body>
        <nav>
            <%@include file="Header_TrangBanHang.jsp" %>
        </nav>
        <c:url var="url"value="/don-hang"/>
        <form action="${url}/chi-tiet-don-hang" class="chi-tit-n-hng">
            <div class="close">
                <img class="close-icon" alt="" src="./public/close@2x.png" />
            </div>
            <div class="san-pham">
                <div class="column">
                    <c:forEach var="item" items="${items}">
                        <div class="m-t-sn-phm">
                            <div class="tn-sn-phm-container">
                                <p class="tn-sn-phm">${item.sanpham.tenSP}</p>
                            </div>
                            <div class="n-v-tnh">${item.sanpham.donViTinh}</div>
                            <div class="s-lng">x${item.chitiethoadon.soluong}</div>
                            <div class="s-tin">
                                <fmt:setLocale value = "vi_VN"/>
                                <fmt:formatNumber value = "${item.chitiethoadon.thanhtien}" type = "currency" minFractionDigits="0"/>
                            </div>
                            <image class="hnh-sn-phm" src="/J2EE/view/img/SanPham/${item.sanpham.hinhAnh}"/>
                        </div>
                    </c:forEach>
                    <div class="clear"></div>
                    <div class="thng-tin-thanh-ton">
                        <div class="div">
                            <fmt:setLocale value = "vi_VN"/>
                            <fmt:formatNumber value = "${form.tongtienhang}" type = "currency" minFractionDigits="0"/>
                        </div>
                        <div class="div1">28.000 đ</div>
                        <div class="thanh-ton-khi">Thanh toán khi nhận hàng</div>
                        <div class="div2">
                            <fmt:setLocale value = "vi_VN"/>
                            <fmt:formatNumber value = "${form.thanhtien}" type = "currency" minFractionDigits="0"/>
                        </div>
                        <div class="tng-tin-hng">Tổng tiền hàng</div>
                        <div class="ph-vn-chuyn">Phí vận chuyển</div>
                        <div class="thnh-tin">Thành tiền</div>
                        <div class="phng-thc-thanh">Phương thức thanh toán</div>
                        <div class="thng-tin-thanh-ton-child"></div>
                        <div class="thng-tin-thanh-ton-item"></div>
                        <div class="thng-tin-thanh-ton-inner"></div>
                        <div class="line-div"></div>
                        <div class="thng-tin-thanh-ton-child1"></div>
                        <div class="thng-tin-thanh-ton-child2"></div>
                    </div>
                </div>
            </div>
            <div class="n-hng">${form.tinhtrang}</div>
            <div class="m-n-hng">Mã đơn hàng: ${form.mahd}</div>

            <div class="tn-khch-hng">Tên khách hàng: ${form.hoten}</div>
            <div class="s-in-thoi">Số điện thoại: ${form.sdt}</div>
            <div class="a-ch-vvvv-container">
                <p class="v">Địa chỉ: ${form.diachi}</p>
            </div>
            <div class="n-hng-container">
                <span>Đơn hàng đã đặt: </span>
                <span class="span">${form.ngaylap}</span>
            </div>
            <div class="n-hng-container1">
                <span>Đơn hàng đã hoàn thành: </span>
                <span class="span">${form.ngayhoanthanh}</span>
            </div>
            <div class="a-ch-nhn">Địa Chỉ Nhận Hàng:</div>
<!--            <div class="danh-muc-san-pham">
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
                <div class="tt-c-sn">TẤT CẢ SẢN PHẨM</div>
            </div>
            <div class="chi-tit-n-hng-child"></div>
            <div class="chi-tit-n-hng-item"></div>
            <div class="chi-tit-n-hng-inner"></div>
            <div class="chi-tit-n-hng-child1"></div>
            <div class="navbar">
                <div class="bag" id="bagContainer">
                    <img class="bag-1-icon" alt="" src="./public/bag-1@2x.png" />
                </div>
                <div class="login">
                    <div class="ng-nhp">ĐĂNG NHẬP</div>
                    <img class="login-1-icon" alt="" src="./public/login-1@2x.png" />
                </div>
                <div class="search" id="searchContainer">
                    <img class="bag-1-icon" alt="" src="./public/search-1@2x.png" />
                </div>
            </div>
            <b class="icy-beauty">ICY BEAUTY</b>-->
        </form>

        <div id="timKiemContainer" class="popup-overlay" style="display: none">
            <div class="tim-kiem">
                <div class="thanh-tim-kiem">
                    <div class="o-tim-kiem"></div>
                    <img class="search-icon" alt="" src="./public/search@2x.png" />

                    <div class="close1">
                        <img class="close-icon1" alt="" src="./public/close1@2x.png" />
                    </div>
                </div>
                <b class="icy-beauty1">ICY BEAUTY</b>
            </div>
        </div>

        <script>
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