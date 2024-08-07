<%-- 
    Document   : dang-nhap
    Created on : Nov 17, 2023, 3:55:08 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="initial-scale=1, width=device-width" />
    </head>
    <style>
        .titledangky {
            position: absolute;
            top: 31px;
            left: 220px;
  font-family: var(--font-arial);
            display: inline-block;
            color: #FFF;
            width: 201px;
            font-size: 30px;
            font-weight: 200;
            
        }
        .btndangnhap:hover{

            background: #FFF;
            color: #537b35;

        }
        .btndangnhap,
        .txtpassword,
        .txtusername {
            position: absolute;
            top: 90px;
            left: 100px;
            border-radius: var(--br-10xs);

            width: 380px;
            height: 40px;

        }
        .txtpassword,
        .txtusername{
            border: 2px solid #537b35;
            outline: none;
            background: transparent;
            color: var(--color-white);


        }

        .btndangnhap,
        .txtpassword {
            top: 170px;
        }
        .btndangnhap {
            top: 300px;
            left: 220px;
            border-radius: var(--br-8xs);
            background-color: #537b35;
            width: 150px;
            height: 35px;
            color: var(--color-white);
            border:none;

        }
        .remember-me {
            position: absolute;
            top: 250px;
            left: 129px;
            font-weight: 200;
            font-size: 15px;
            color: #FFF;
        }
        .bn-cha-c,
        .btndangky,
        .btnquenmk {
            position: absolute;
            top: 250px;
            left: 350px;
            font-weight: 300;
            font-size: 15px;
            color: #FFF;
        }

        .bn-cha-c,
        .btndangky {
            top: 350px;
            font-size: 18px;

        }
        .btndangky {
            left: 300px;
        }
        a:hover {
            color: #537b35;
        }
        .bn-cha-c {
            left: 110px;
            color: #FFF;
            font-size: 15px;
        }
        .radiore {
            position: absolute;
            top: 250px;
            left: 100px;

            display: inline-block;
            border: 2px solid #537b35;
            width: 16px;
            height: 16px;

        }

        .formdangnhap {
            margin: 0 auto;
            position: absolute;
            left: 370px;
            top: 140px;
            background-color: #444545;
            width: 610px;
            height: 410px;
            overflow: hidden;
        }
        .iconicy {
            position: absolute;
            top: 205px;
            left: 633px;
            width: 120px;
            height: 120px;
            object-fit: cover;
        }
        .dangnhap {

            width: 100%;
            height: 1030px;
            text-align: left;
            font-size: var(--font-size-mini);
            color: var(--color-royalblue);
            font-family: var(--font-arial);
            text-align: center;
        }
        body {
            margin: 0;
            line-height: normal;
            background: url("/J2EE/view/img/account/nen_dn.png");
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;
            background-size: cover;
            width: 100vw; /* Sử dụng chiều rộng 100vw để đảm bảo trang trải dài trên toàn bộ chiều rộng của màn hình */
            height: 100vh;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            color: #FFF;

            text-align: center;
            overflow: hidden; font-family: var(--font-arial);
        }

        :root {
            /* fonts */
            --font-roboto-slab: "Roboto Slab";
            --font-roboto-serif: "Roboto Serif";
            --font-roboto-mono: "Roboto Mono";
            --font-roboto: Roboto;
            --font-arial: 'Arial';

            /* font sizes */
            --font-size-mini: 15px;
            --font-size-13xl: 32px;
            --font-size-mid: 17px;
            --font-size-xs: 12px;

            /* Colors */
            --color-white: #fff;
            --color-lightsteelblue: #b1d4fc;
            --color-black: #000;
            --color-royalblue: #0569ff;
            --color-gray-100: #757575;
            --color-gray-200: rgba(0, 0, 0, 0.78);
            --color-darkslateblue: #0852a7;
            --color-gainsboro: #d9d9d9;

            /* Border radiuses */
            --br-11xl: 30px;
            --br-8xs: 5px;
            --br-10xs: 3px;
        }
        h1 {
            font-size: 45px;
            font-weight: 300;
            color: #FFF;
            letter-spacing: 7px;
            margin: 40px auto;
            font-weight: bold;
        }
        .message_tendn {
            position: absolute;
            top: 70px;
            left: -15px;
            font-size: 12px;
            display: inline-block;
            font-family: var(--font-arial);
            color: #ff0f00;
            width: 328px;
        }
        .message_mk {
            position: absolute;
            top: 150px;
            left: -20px;
            font-size: 13px;
            display: inline-block;
            font-family: var(--font-arial);
            color: #ff0f00;
            width: 328px;
        }
    </style>

    <body>
        <h1>WELCOME ICY STORE</h1>
        
        <c:url var="url" value="/account"/>

        <div class="dangnhap">
            <div class="formdangnhap">
                <b class="titledangky">
                    Đăng Nhập</b>
                <form action="${url}/index">
                    <input type="text" name="txtusername" class="txtusername" placeholder="Nhập username ">
                    <input type="password" name="txtpassword" class="txtpassword" placeholder="Nhập password ">
                    <button formaction="${url}/sign-in" class="btndangnhap">Đăng nhập</button>
                    <input name="remember" type="checkbox" class="radiore"value="${remember?'checked':''}">
                    <div class="remember-me">Remember me?</div>

                    <a href="${url}/quenmatkhau" class="btnquenmk">Quên mật khẩu?</a>
                    <a href="${url}/form-sign-up" class="btndangky">ĐĂNG KÝ NGAY</a>

                    <div class="bn-cha-c">Bạn chưa có tài khoản ?</div>
                    <div class="message_tendn">${message_dn}</div>
                     <div class="message_mk">${message_mk}</div>
                </form>
            </div>


        </div>
    </body>
</html>
