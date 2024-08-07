<%-- 
    Document   : dang-nhap
    Created on : Nov 17, 2023, 1:02:46 PM
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
            left: 230px;
            font-size: var(--font-size-13xl);
            display: inline-block;
            color: #FFF;
            width: 158px;
        }
        .txtpassword,
        .txtusername {
            position: absolute;
            left: 100px;
            background: transparent;
             color: var(--color-white);
               outline: none;
                 border: 2px solid #537b35;
        }
        .txtusername {
            top: 90px;
            border-radius: var(--br-10xs);
            width: 380px;
            height: 30px;
          
        }
        .txtpassword {
            top: 140px;
        }
        .txtemail,
        .txtfullname,
        .txtpassword {
            border-radius: var(--br-10xs);
            width: 380px;
            height: 30px;
        }
        .txtemail {
            position: absolute;
            top: 190px;
            left: 100px;
           background: transparent;
             color: var(--color-white);
               outline: none;
                 border: 2px solid #537b35;
        }
        .txtfullname {
            top: 240px;
            left: 100px;
            background: transparent;
             color: var(--color-white);
               outline: none;
                 border: 2px solid #537b35;
        }
        .radiofemale,
        .radiomale,
        .txtdate,
        .txtfullname {
            position: absolute;
          
        }
        .txtdate {
            top: 290px;
            left: 100px;
            border-radius: var(--br-10xs);
            width: 380px;
            height: 30px;
             background: transparent;
             color: var(--color-white);
               outline: none;
                 border: 2px solid #537b35;
        }
        .radiofemale,
        .radiomale {
            top: 336px;
            left: 190px;
            border-radius: 50%;
            width: 20px;
            height: 20px;
        }
        .radiofemale {
            left: 340px;
        }
        .female,
        .male {
            position: absolute;
            top: 340px;
            left: 230px;
            font-weight: 300;
            color: #FFF;
             font-size: 15px;
            font-family: var(--font-roboto-slab);
        }
        .female {
            left: 380px;
        }
        .btndangky {
            position: absolute;
            top: 390px;
            left: 220px;
            border-radius: var(--br-8xs);
            background-color: #537b35;
            width: 150px;
            height: 35px;
             border:none;
            color: #FFF;
        }
        .btndangky:hover{

            background: #FFF;
            color: #537b35;

        }
        .btndangnhap {
            position: absolute;
            top: 440px;
            left: 330px;
            font-size: 15px;
         font-family: var(--font-arial);
            color: #FFF;
        }
        .bn-c,
        .gender {
            position: absolute;
            font-weight: 300;
        }
        .bn-c {
            top: 440px;
            left: 170px;
            font-size: 15px;
            color: #FFF;
        }
        .gender {
            top: 340px;
            left: 100px;
            color: #FFF;
            font-size: 15px;
        }
        .messerr {
  position: absolute;
  top: 360px;
  left: 109px;
  font-size: 12px;
  display: inline-block;
  font-family: var(--font-inter);
  color: #fe0000;
  width: 334px;
}
        .formdangky {
            position: absolute;
            top: 100px;
            left: 370px;
            
            background-color: #444545;
            width: 610px;
            height: 480px;
            overflow: hidden;
        }
        .iconicy {
            position: absolute;
            top: 127px;
            left: 594px;
            width: 120px;
            height: 120px;
            object-fit: cover;
        }
        .dangky {
            position: relative;
            background-color: var(--color-white);
            width: 100%;
            height: 900px;
            overflow: hidden;
            text-align: left;
            font-size: var(--font-size-mid);
            color: var(--color-black);
            font-family: var(--font-arial);
             background: url("/J2EE/view/img/account/nen_dn.png");
              
            
        }

        body {
            margin: 0;
            line-height: normal;
           
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;
            background-size: cover;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            color: #FFF;
            font-family: var(--font-arial);
            text-align: center;
            overflow: hidden;
            
            
        }

        :root {
            /* fonts */
            --font-roboto-serif: "Roboto Serif";
            --font-roboto-slab: "Roboto Slab";
            --font-roboto-mono: "Roboto Mono";
            --font-roboto: Roboto;
            --font-arial: 'Arial';

            /* font sizes */
            --font-size-mini: 15px;
            --font-size-mid: 17px;
            --font-size-13xl: 32px;
            --font-size-xs: 12px;

            /* Colors */
            --color-white: #fff;
            --color-lightsteelblue: #b1d4fc;
            --color-black: #000;
            --color-darkslateblue: #0852a7;
            --color-gray-100: #757575;
            --color-gray-200: rgba(0, 0, 0, 0.78);
            --color-royalblue: #0569ff;
            --color-gainsboro: #d9d9d9;

            /* Border radiuses */
            --br-11xl: 30px;
            --br-8xs: 5px;
            --br-10xs: 3px;
        }
        h1 {
    font-size: 45px;
    font-weight: bold;
    color: #FFF;
    letter-spacing: 7px;
    margin: 40px auto;
     position: relative;
    left: 350px;
    top:0px;
 
}
a:hover {
            color: #537b35;
        }
  </style>
    <body>
       
        <div class="dangky">
            <h1>WELCOME ICY STORE</h1>>
            <div class="formdangky">
                <b class="titledangky">Đăng Ký</b>
                <c:url var="url" value="/account"/>
                <form action="${url}/index">
                    <input type="text" name="txtusername" class="txtusername" placeholder="Nhập username ">

                    <input type="password" name="txtpassword" class="txtpassword" placeholder="Nhập password từ 6-32 ký tự ">

                    <input type="text" name="txtemail" class="txtemail" placeholder="Nhập email ">

                    <input type="text" name="txtfullname" class="txtfullname" placeholder="Nhập Họ tên ">

                    <input type="text" name="txtdate" class="txtdate" placeholder="Ngày sinh:dd/mm/yyyy ">

                    <div class="gender">Gender:</div>
                     <div class="messerr">${message}</div>
                    <input type="radio" name="radiogen" class="radiomale">               
                    <div class="male">Male</div>
                    <input type="radio" name="radiogen" class="radiofemale">
                    <div class="female">Female</div>
                    <button formaction="${url}/sign-up" class="btndangky">Đăng Ký</button>
                    <a href="${url}/exit-reset" class="btndangnhap">Đăng nhập</a>
                    <div class="bn-c">Bạn đã có tài khoản ?</div>
                </form>
            </div>
          
        </div>
    </body>
</html>
