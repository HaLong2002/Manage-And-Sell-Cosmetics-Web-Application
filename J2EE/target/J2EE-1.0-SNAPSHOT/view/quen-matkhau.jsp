<%-- 
    Document   : quen-matkhau
    Created on : Nov 17, 2023, 4:21:25 PM
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
      .titlequenmatkhau {
  position: absolute;
  top: 20px;
  left: 200px;
  display: inline-block;
  width: 169px;
  color: #FFF;

}
.btnguiemail,
.txtemail {
  position: absolute;
  top: 120px;
  left: 100px;
  border-radius: var(--br-10xs);
  background-color: var(--color-white);
  width: 380px;
  height: 30px;
}
.txtemail{
     background: transparent;
             color: var(--color-white);
               outline: none;
                 border: 2px solid #537b35;
}
.btnguiemail {
  top: 179px;
  left: 205px;
  border-radius: var(--br-8xs);
  background-color: #537b35;
  width: 150px;
  height: 35px;
  border:none;
  color: #FFF;
}
.btnguiemail:hover{
     color: #537b35 ;
            background: #FFF;
}
.vui-lng-nhp {
  position: absolute;
  top: 65px;
  left: 25px;
  font-size: 10px;
  font-weight: 300;
  font-family: var(--font-roboto-slab);
   color: lightgrey;
  display: inline-block;
  width: 550px;
  text-align: center;
}
.formdangnhap {
  position: absolute;
  top: 130px;
  left: 435px;
 
  background-color:#444545;
  width: 600px;
  height: 280px;
  overflow: hidden;
}
.iconicy {
  position: absolute;
  top: 151px;
  left: 585px;
  width: 120px;
  height: 120px;
  object-fit: cover;
}
.quenmatkhau {
  position: relative;
  background-color: var(--color-white);
  width: 100%;
  height: 1030px;
  overflow: hidden;
  text-align: left;
  font-size: 20px;
  color: var(--color-gray-100);
  font-family: var(--font-roboto-serif);
  background: url("/J2EE/view/img/account/nen_dn.png");
}
.message {
  position: absolute;
  top: 145px;
  left: 35px;
  font-size: 12px;
  display: inline-block;
  color: var(--color-red-200);
  width: 500px;
}
body {
  margin: 0;
  line-height: normal;
    
}
 h1 {
            font-size: 45px;
            font-weight: 300;
            color: #FFF;
            letter-spacing: 7px;
            margin: 40px auto;
            font-weight: bold;
            text-align: center;
        }

:root {
  /* fonts */
  --font-roboto-slab: "Roboto Slab";
  --font-roboto-serif: "Roboto Serif";
  --font-rokkitt: Rokkitt;
  --font-roboto: Roboto;
  --font-roboto-flex: "Roboto Flex";
  --font-roboto-mono: "Roboto Mono";
  --font-inter: Inter;

  /* font sizes */
  --font-size-2xs-1: 10.1px;
  --font-size-mini: 15px;
  --font-size-2xl: 21px;
  --font-size-6xl: 25px;
  --font-size-xs: 12px;
  --font-size-2xs: 11px;
  --font-size-xs-2: 11.2px;
  --font-size-mid: 17px;
  --font-size-13xl: 32px;
  --font-size-smi: 13px;

  /* Colors */
  --color-white: #fff;
  --color-lightsteelblue: #b1d4fc;
  --color-dimgray-100: #5e5e5e;
  --color-dimgray-200: #595959;
  --color-darkslateblue: #0852a7;
  --color-gray-100: #757575;
  --color-gray-200: rgba(0, 0, 0, 0.78);
  --color-gray-300: rgba(0, 0, 0, 0.3);
  --color-gray-400: rgba(0, 0, 0, 0.63);
  --color-gainsboro-100: #dce4ed;
  --color-gainsboro-200: #d9d9d9;
  --color-dodgerblue-100: #0085ff;
  --color-darkgray: #959595;
  --color-black: #000;
  --color-whitesmoke-100: rgba(233, 233, 233, 0.73);
  --color-deepskyblue-100: #3bc6ff;
  --color-lightblue: rgba(181, 215, 232, 0.09);
  --color-steelblue-100: rgba(28, 142, 189, 0.29);
  --color-royalblue: #0569ff;
 --color-red-200: #ff0000;
  /* Border radiuses */
  --br-11xl: 30px;
  --br-8xs: 5px;
  --br-10xs: 3px;
  --br-8xs-2: 4.2px;
}
 .btnexit {
     position: absolute;
            top: 15px;
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
  </style>
  <body>
    
    <div class="quenmatkhau">
           <h1>WELCOME ICY STORE</h1>
        <c:url var="url" value="/account"/>
      <div class="formdangnhap">
        <b class="titlequenmatkhau">Quên Mật Khẩu</b>
        <form action="${url}/index">
         <input type="text" name="txtemail" class="txtemail" >
                <button formaction="${url}/send-email" class="btnguiemail">Send Email</button>
                <div class="message">${message}</div>
        <div class="vui-lng-nhp">
          Vui lòng nhập địa chỉ Email.Chúng tôi sẽ gửi mã xác nhận để bạn có thể
          đổi mật khẩu mới cho tài khoản của mình
        </div>
                <button formaction="${url}/thoat-quen-mat-khau" class="btnexit">X</button>
        </form>
      </div>
            
    </div>
  </body>
</html>
  