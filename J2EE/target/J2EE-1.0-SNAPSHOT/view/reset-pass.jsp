<%-- 
    Document   : laylai-matkhau
    Created on : Nov 28, 2023, 7:39:48 PM
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
            href="https://fonts.googleapis.com/css2?family=Roboto Slab:wght@300;400;700&display=swap"
            />
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Rokkitt:wght@300&display=swap"
            />
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap"
            />
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Roboto Mono:wght@400;700&display=swap"
            />
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Roboto Flex:wght@500&display=swap"
            />
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Inter:wght@500;700&display=swap"
            />
    </head>
    <style>
        .mt-khu-mi,
        .nhp-li-mt {
            position: absolute;
            top: 165px;
            left: 14px;
            font-weight: 300;
            color: #FFF;
        }
        .mt-khu-mi {
            top: 107px;
            line-height: 15px;
        }
        .form-title {
            position: absolute;
            top: 0;
            left: 0;
            background-color:  #444545;
            width: 600px;
            height: 47px;
        }
        .to-mt-khu {
            position: absolute;
            top: 10px;
            left: 200px;
            font-size: var(--font-size-6xl);
            font-weight: 500;
            color: #FFF;
        }
        .btnpassnew,
        .btnrepass {
            position: absolute;
            top: 103px;
            left: 206px;
            border-radius: var(--br-10xs);
          background: transparent;
            outline: none;
            border: 2px solid #537b35;
          
            box-sizing: border-box;
            width: 241px;
            height: 28px;
            color: #FFF;
        }
        .btnrepass {
            top: 160px;
            
        }
        .btnupdate {
            top: 230px;
            left: 220px;
            border-radius: var(--br-8xs);
            background-color:  #537b35;
            width: 150px;
            height: 35px;
             border:none;
             color: #FFF;
        }
        .btnupdate:hover {
             color: #537b35 ;
            background: #FFF;
        }
        .btnexit,
        .btnupdate,
        .errr {
            position: absolute;
        }
        .errr {
            top: 214px;
            left: 18px;
            font-size: var(--font-size-3xs);
            font-weight: 500;
            color: #ff0808;
            display: inline-block;
            width: 411px;
        }
        .btnexit {
            top: 10px;
            left: 550px;
            border-radius: var(--br-10xs);
            background-color: var(--color-gainsboro-200);
            width: 35px;
            height: 23px;
             border:none;
        }
         .btnexit:hover{
            color: #FFF;
            background: red;
        }
        .nhp-li-mt-khu-mi-parent {
            position: absolute;
            top: 324px;
            left: 452px;
            background-color: #444545;
            width: 600px;
            height: 299px;
            overflow: hidden;
        }
        .laylaimatkhau {
            position: relative;
            top: -300px;
            width: 100%;
            height: 1024px;
           left: -100px;
            text-align: left;
            font-size: var(--font-size-mini);
            color: var(--color-black);
            font-family: var(--font-roboto-serif);
           
           
        }
        body {
            margin: 0;
            line-height: normal;
             
              background: url("/J2EE/view/img/account/nen_dn.png");
              
        }

        :root {
            /* fonts */
            --font-roboto-serif: "Roboto Serif";
            --font-roboto-slab: "Roboto Slab";
            --font-rokkitt: Rokkitt;
            --font-roboto: Roboto;
            --font-roboto-flex: "Roboto Flex";
            --font-roboto-mono: "Roboto Mono";
            --font-inter: Inter;

            /* font sizes */
            --font-size-3xs: 10px;
            --font-size-6xl: 25px;
            --font-size-mini: 15px;
            --font-size-2xs-1: 10.1px;
            --font-size-2xl: 21px;
            --font-size-xs: 12px;
            --font-size-2xs: 11px;
            --font-size-xs-2: 11.2px;
            --font-size-mid: 17px;
            --font-size-13xl: 32px;
            --font-size-smi: 13px;

            /* Colors */
            --color-gainsboro-100: #dce4ed;
            --color-gainsboro-200: #d9d9d9;
            --color-white: #fff;
            --color-dodgerblue-100: #0085ff;
            --color-dodgerblue-200: #007df1;
            --color-darkgray: #959595;
            --color-black: #000;
            --color-deepskyblue-100: #67b6ff;
            --color-deepskyblue-200: #3bc6ff;
            --color-lightsteelblue: #b1d4fc;
            --color-dimgray-100: #5e5e5e;
            --color-dimgray-200: #595959;
            --color-darkslateblue: #0852a7;
            --color-gray-100: #757575;
            --color-gray-200: rgba(0, 0, 0, 0.78);
            --color-gray-300: rgba(0, 0, 0, 0.3);
            --color-gray-400: rgba(0, 0, 0, 0.63);
            --color-whitesmoke-100: rgba(233, 233, 233, 0.73);
            --color-lightblue: rgba(181, 215, 232, 0.09);
            --color-steelblue-100: rgba(28, 142, 189, 0.29);
            --color-royalblue: #0569ff;

            /* Border radiuses */
            --br-10xs: 3px;
            --br-8xs: 5px;
            --br-11xl: 30px;
            --br-8xs-2: 4.2px;
        }
 h1 {
    font-size: 45px;
    font-weight: bold;
    color: #FFF;
    letter-spacing: 7px;
    margin: 40px auto;
     position: relative;
    left: 350px;
    top:30px;
 
}
    </style>
     
    <body>
        <c:url var="url" value="/account"/>
        <h1>WELCOME ICY STORE</h1>
        <div class="laylaimatkhau">
            
            <div class="nhp-li-mt-khu-mi-parent">
                <div class="nhp-li-mt">Nhập lại mật khẩu mới :</div>
                <div class="mt-khu-mi">Mật khẩu mới:</div>
                <div class="form-title"></div>
                <div class="to-mt-khu">Tạo mật khẩu</div>
                <div class="btnpassnew"></div>
                <form action="${url}/index">
                    <input type="password" name="btnpassnew" class="btnpassnew">
                    <input type="text" name="btnrepass" class="btnrepass">
                    <button formaction="${url}/laylaimatkhau" class="btnupdate"> Update</button>
                    <div class="errr">${message}</div>
                    <button formaction="${url}/exit-reset" class="btnexit">X</button>
                </form>
            </div>

        </div>
    </body>
</html>
