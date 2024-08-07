<%-- 
    Document   : mac-xacnhan
    Created on : Nov 17, 2023, 4:37:57 PM
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
 .btnxacnhan,
.txtmaxacnhan {
  position: absolute;
  top: 103px;
  left: 72px;
 
  width: 380px;
  height: 30px;
  background: transparent;
             color: var(--color-white);
               outline: none;
                 border: 2px solid #537b35;
  
}
.btnxacnhan {
  top: 213px;
  left: 200px;
  border-radius: var(--br-8xs);
  background-color: #537b35;
  width: 150px;
  height: 35px;
  border:none;
             color: #FFF;
}
.btnxacnhan:hover {
             color: #537b35 ;
            background: #FFF;
        }
        a:hover{
            color:#537b35;
        }
.message {
  position: absolute;
  top: 177px;
  left: 26px;
  display: inline-block;
  color: var(--color-red-200);
  width: 346px;
}
.bn-cha-nhn,
.gi-li-m,
.vui-lng-kim {
  position: absolute;
  top: 147px;
  
  font-weight: 300;
  color: #FFF;
}
.gi-li-m{
    left: 300px;
     top: 150px;
    
}
.bn-cha-nhn{
    left: 150px;
    top: 150px;
}



.vui-lng-kim {
  top: 50px;
  left: 17px;
  color: lightgrey;
  display: inline-block;
  width: 550px;
  height: 12px;
  text-align: center;
}
.formdangnhap {
  position: absolute;
  top: 150px;
  left: 350px;
  background-color: #444545;
  width: 600px;
  height: 288px;
  overflow: hidden;
}
.iconicy {
  position: absolute;
  top: 21px;
  left: 633px;
  width: 120px;
  height: 120px;
  object-fit: cover;
}
.maxacnhan {
  position: relative;
  background-color: var(--color-white);
  width: 100%;
  height: 1030px;
  overflow: hidden;
  text-align: left;
  font-size: var(--font-size-smi);
  color: var(--color-black);
  font-family: var(--font-roboto-serif);
  background: url("/J2EE/view/img/account/nen_dn.png");
   overflow: hidden;
}
body {
  margin: 0;
  line-height: normal;
  overflow: hidden;
}

:root {
  /* fonts */
  --font-roboto-serif: "Roboto Serif";
  --font-inter: Inter;
  --font-roboto-slab: "Roboto Slab";
  --font-roboto-flex: "Roboto Flex";
  --font-roboto: Roboto;
  --font-roboto-mono: "Roboto Mono";
  --font-rokkitt: Rokkitt;

  /* font sizes */
  --font-size-smi: 13px;
  --font-size-xs: 12px;
  --font-size-mini: 15px;
  --font-size-13xl: 32px;
  --font-size-mid: 17px;
  --font-size-6xl: 25px;
  --font-size-xl: 20px;
  --font-size-2xs: 11px;
  --font-size-3xs: 10px;
  --font-size-2xs-1: 10.1px;
  --font-size-2xl: 21px;

  /* Colors */
  --color-white: #fff;
  --color-lightsteelblue: #b1d4fc;
  --color-dimgray-100: #5e5e5e;
  --color-dimgray-200: #595959;
  --color-black: #000;
  --color-red-100: #ff1632;
  --color-red-200: #ff0000;
  --color-darkslateblue: #0852a7;
  --color-royalblue: #0569ff;
  --color-gray-100: #939393;
  --color-gray-200: #858585;
  --color-gray-300: #757575;
  --color-gray-400: rgba(0, 0, 0, 0.63);
  --color-gray-500: rgba(0, 0, 0, 0.78);
  --color-gainsboro-100: #dce4ed;
  --color-gainsboro-200: #d9d9d9;
  --color-green-100: #009d19;
  --color-dodgerblue-100: #0085ff;
  --color-dodgerblue-200: #007df1;
  --color-darkgray-100: #a0a0a0;
  --color-darkgray-200: #959595;
  --color-deepskyblue-100: #67b6ff;
  --color-deepskyblue-200: #3bc6ff;
  --color-lightblue: rgba(181, 215, 232, 0.09);
  --color-steelblue-100: rgba(39, 121, 155, 0.37);
  --color-steelblue-200: rgba(28, 142, 189, 0.29);
  --color-limegreen: #33c639;
  --color-gold: #ffd233;
  --color-cornflowerblue: #3682dc;
  --color-whitesmoke-100: rgba(233, 233, 233, 0.73);

  /* Border radiuses */
  --br-11xl: 30px;
  --br-8xs: 5px;
  --br-10xs: 3px;
  --br-3xs: 10px;
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
            <c:url var="url" value="/account"/>
             
        <div class="maxacnhan">
            <h1>WELCOME ICY STORE</h1>
            <div class="formdangnhap">
                <form action="${url}/index">
                    <input type="text" name="txtmaxacnhan" class="txtmaxacnhan" placeholder="Nhập mã xác nhận ">
                    <button formaction="${url}/confirm" class="btnxacnhan">Xác nhận</button>
                    <div class="bn-cha-nhn">Bạn chưa nhận được mã?</div>
                    <a href="${url}/resend" class="gi-li-m">Gửi lại mã</a> 
                    <div class="vui-lng-kim">
                        Vui lòng kiểm tra tài khoản E-mail của bạn để biết mã xác minh mà
                        chúng tôi vừa gửi cho bạn và nhập mã đó vào ô bên dưới
                    </div>
                     <button formaction="${url}/thoat-nhap-ma-code" class="btnexit">X</button>
                     <b class="message">${message}</b>
                </form>
            </div>
           

        </div>
    </body>
</html>
