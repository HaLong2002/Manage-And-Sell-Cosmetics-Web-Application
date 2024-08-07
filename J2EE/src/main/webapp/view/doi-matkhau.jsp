<%-- 
    Document   : doi-matkhau
    Created on : Nov 18, 2023, 9:58:21 PM
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
            href="https://fonts.googleapis.com/css2?family=Roboto Serif:wght@300;500;700&display=swap"
            />
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Rokkitt:wght@300&display=swap"
            />
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Roboto Slab:wght@300;400;700&display=swap"
            />
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Roboto:wght@700&display=swap"
            />
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Roboto Mono:wght@400;700&display=swap"
            />
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Inter:wght@500&display=swap"
            />
    </head>
    <style>
        .mt-khu-c,
        .mt-khu-mi,
        .nhp-li-mt {
            position: absolute;
            top: 115px;
            left: 13px;
            font-weight: 300;
        }
        .mt-khu-mi,
        .nhp-li-mt {
            top: 219px;
            left: 13px;
        }
        .mt-khu-mi {
            top: 169px;
            line-height: 15px;
        }
        .frame-child {
            position: absolute;
            top: 0;
            left: 0;
            background-color:  #537b35;
            width: 475px;
            height: 47px;
        }
        .i-mt-khu {
            position: absolute;
            top: 10px;
            left: 174px;
            font-size: var(--font-size-6xl);
            font-weight: 500;
        }
        .btnpassnew,
        .btnpassold,
        .btnrepass {
            position: absolute;
            top: 110px;
            left: 214px;
            border-radius: var(--br-10xs);

            background: transparent;
            outline: none;
            border: 2px solid #537b35;
            box-sizing: border-box;
            width: 241px;
            height: 28px;
        }
        .btnpassnew,
        .btnrepass {
            top: 163px;
        }
        .btnrepass {
            top: 214px;
        }
        .btnexit,
        .btnupdate {
            position: absolute;
            top: 285px;
            left: 179px;
            border-radius: var(--br-8xs);
            background-color: #537b35;
            width: 95px;
            height: 31px;
            border:none;
            
        }
        .btnupdate:hover{
         color: #FFF;
            background: #209a16;
        }
        .btnexit {
            top: 10px;
            left: 429px;
            border-radius: var(--br-10xs);
            background-color: var(--color-gainsboro-200);
            width: 35px;
            height: 23px;
        }
        .btnexit:hover{
            color: #FFF;
            background: red;
        }
        .err,
        .err1 {
            position: absolute;
            left: 13px;
            font-size: var(--font-size-xs);
            display: inline-block;
            font-family: var(--font-inter);
            width: 431px;
            height: 15px;
        }
        .err {
            top: 260px;
            color: #209a16;
        }
        .err1 {
            top: 72px;
            color: var(--color-red-200);
        }
        .mt-khu-c-parent {
            position: absolute;
            top: 264px;
            left: 463px;
            background-color: var(--color-white);
            width: 475px;
            height: 365px;
            overflow: hidden;
        }
        .doimatkhau-child {
            position: absolute;
            top: 391px;
            left: 391px;
            width: 100px;
            height: 100px;

        }
        .doimatkhau {
            position: relative;
            background-color: var(--color-gainsboro-100);
            width: 100%;
            height: 1024px;
            overflow: hidden;
            text-align: left;
            font-size: var(--font-size-mini);
            color: var(--color-black);
            font-family: var(--font-roboto-serif);

        }
        body {
            margin: 0;
            line-height: normal;
            
        }

        :root {
            /* fonts */
            --font-inter: Inter;
            --font-roboto-serif: "Roboto Serif";
            --font-roboto-flex: "Roboto Flex";
            --font-roboto: Roboto;
            --font-roboto-mono: "Roboto Mono";
            --font-roboto-slab: "Roboto Slab";
            --font-rokkitt: Rokkitt;

            /* font sizes */
            --font-size-xs: 12px;
            --font-size-6xl: 25px;
            --font-size-mini: 15px;
            --font-size-xl: 20px;
            --font-size-2xs: 11px;
            --font-size-mid: 17px;
            --font-size-3xs: 10px;
            --font-size-2xs-1: 10.1px;
            --font-size-2xl: 21px;
            --font-size-13xl: 32px;
            --font-size-smi: 13px;

            /* Colors */
            --color-gainsboro-100: #dce4ed;
            --color-gainsboro-200: #d9d9d9;
            --color-white: #fff;
            --color-red-100: #ff1632;
            --color-red-200: #ff0000;
            --color-green-100: #009d19;
            --color-dodgerblue-100: #0085ff;
            --color-dodgerblue-200: #007df1;
            --color-darkgray-100: #a0a0a0;
            --color-darkgray-200: #959595;
            --color-black: #000;
            --color-deepskyblue-100: #67b6ff;
            --color-deepskyblue-200: #3bc6ff;
            --color-gray-100: #939393;
            --color-gray-200: #858585;
            --color-gray-300: #757575;
            --color-gray-400: rgba(0, 0, 0, 0.63);
            --color-gray-500: rgba(0, 0, 0, 0.78);
            --color-lightblue: rgba(181, 215, 232, 0.09);
            --color-steelblue-100: rgba(39, 121, 155, 0.37);
            --color-steelblue-200: rgba(28, 142, 189, 0.29);
            --color-lightsteelblue: #b1d4fc;
            --color-limegreen: #33c639;
            --color-gold: #ffd233;
            --color-cornflowerblue: #3682dc;
            --color-dimgray-100: #5e5e5e;
            --color-dimgray-200: #595959;
            --color-darkslateblue: #0852a7;
            --color-whitesmoke-100: rgba(233, 233, 233, 0.73);
            --color-royalblue: #0569ff;

            /* Border radiuses */
            --br-10xs: 3px;
            --br-8xs: 5px;
            --br-3xs: 10px;
            --br-11xl: 30px;
            --br-8xs-2: 4.2px;
        }

    </style>
    <body>
        <div class="doimatkhau">
            <!--            <nav>
                            <div class="header">
                            </div>
                        </nav>-->
                <c:url var="url" value="/account"/>
            <div class="mt-khu-c-parent">
                <div class="mt-khu-c">Mật khẩu cũ:</div>
                <div class="nhp-li-mt">Nhập lại mật khẩu mới :</div>
                <div class="mt-khu-mi">Mật khẩu mới:</div>
                <div class="frame-child"></div>
                <div class="i-mt-khu">Đổi mật khẩu</div>
                <form action="${url}/index">
                    <input type="password" name="btnpassold" class="btnpassold">
                    <input type="password" name="btnpassnew" class="btnpassnew">
                    <input type="text" name="btnrepass" class="btnrepass">
                    <button formaction="${url}/update-password" class="btnupdate"> Update</button>
                    <button formaction="${url}/exit" class="btnexit">X</button>
                    <b class="err">${message_com}</b>
                    <b class="err1">${message_err}</b>
                </form>
            </div>
        </div>
    </body>
</html>

