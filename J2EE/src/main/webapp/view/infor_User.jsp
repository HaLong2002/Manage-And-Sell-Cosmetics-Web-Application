<%-- 
    Document   : thongtin-taikhoan
    Created on : Nov 18, 2023, 4:50:53 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
        .fromimg {
            position: absolute;
            top: 0;
            left: 0;
            border-radius: var(--br-8xs);
            background-color: var(--color-whitesmoke-100);
            width: 497px;
            height: 58px;
        }
        .img-user {
            position: absolute;
            top: 92px;
            left: 132px;
            border-radius: 50%;
            background-color: var(--color-gainsboro-200);
            width: 200px;
            height: 200px;
        }
        .profile-picture {
            position: absolute;
            top: 23px;
            left: 21px;
            font-weight: 500;
        }
        .picture-child {
            position: absolute;
            top: 319px;
            left: 130px;
            border-radius: var(--br-8xs);
            background-color:#537b35;
            width: 200px;
            height: 35px;
            font-size: var(--font-size-mini);
            text-align: center;
            justify-content: center;
            display: flex; /* Add this property */
            align-items: center; /* Add this property */
            color: #fffefe;
        }
        .picture-child:hover{
            background: #209a16;
        }

        .btndoimatkhau {
            position: absolute;
            top: 379px;
            left: 175px;
            font-size: var(--font-size-mini);
            font-weight: 300;
            color: #537b35;
        }
        .picture {
            position: absolute;
            top: 150px;
            left: 107px;
            background-color: var(--color-white);
            width: 486px;
            height: 432px;
            overflow: hidden;
        }
        .detailaccount {
            position: absolute;
            top: 0;
            left: 0;
            border-radius: var(--br-8xs);
            background-color: var(--color-whitesmoke-100);
            width: 698px;
            height: 60px;
        }
        .account-details1 {
            margin: 0;
        }
        .account-details {
            position: absolute;
            top: 21px;
            left: 13px;
            font-size: var(--font-size-2xl);
            font-weight: 500;
            color: var(--color-gray-400);
            display: inline-block;
            width: 205px;
            height: 25px;
        }
        .txtfullname,
        .txtusername {
            position: absolute;
            top: 107px;
            left: 26px;
            border-radius: var(--br-8xs);
            background-color: var(--color-white);
            border: 0.8px solid var(--color-darkgray);
            box-sizing: border-box;
            width: 643px;
            height: 35px;
        }
        .txtfullname {
            top: 209px;
        }
        .fullname {
            position: absolute;
            top: 190px;
            left: 32px;
            font-weight: 300;
            font-family: var(--font-rokkitt);
        }
        .txtemail {
            position: absolute;
            top: 302px;
            left: 26px;
            border-radius: var(--br-8xs);
            background-color: var(--color-white);
            border: 0.8px solid var(--color-darkgray);
            box-sizing: border-box;
            width: 643px;
            height: 35px;
        }
        .gender {
            position: absolute;
            top: 472px;
            left: 30px;
            font-weight: 300;
            font-family: var(--font-rokkitt);
        }
        .radiofemale,
        .radiomale {
            position: absolute;
            top: 472px;
            border-radius: 50%;
            border: 0.8px solid var(--color-darkgray);
            box-sizing: border-box;
            width: 16.8px;
            height: 16.8px;
        }
        .radiomale {
            left: 152px;
            background-color: var(--color-white);
        }
        .radiofemale {
            left: 319px;
            background-color: #fffefe;
        }
        .female,
        .male {
            position: absolute;
            top: 474px;
            left: 186px;
            font-size: 10.08px;
            font-weight: 300;
            color: var(--color-black);
        }
        .female {
            top: 475px;
            left: 353px;
        }
        .txtngaysinh {
            position: absolute;
            top: 395px;
            left: 26px;
            border-radius: var(--br-8xs);
            background-color: var(--color-white);
            border: 0.8px solid var(--color-darkgray);
            box-sizing: border-box;
            width: 643px;
            height: 35px;
        }
        .btncancel,
        .btnupdate {
            position: absolute;
            top: 522px;
            left: 148px;
            border-radius: var(--br-8xs-2);
            background-color: #537b35;
            border: none;
            width: 200px;
            height: 48px;
        }
        .btnupdate:hover{
            background: #209a16;
        }
        .btncancel {
            top: 525px;
            left: 391px;
            background-color: var(--color-white);
            border: 2px solid #537b35;
            box-sizing: border-box;
            width: 188px;
            height: 45px;
        }
        .btncancel:hover{
            background: #209a16;
        }
        .username {
            top: 88px;
            font-family: var(--font-rokkitt);
        }
        .birthday,
        .email-address,
        .username {
            position: absolute;
            left: 32px;
            font-weight: 300;
        }
        .email-address {
            top: 284px;
            font-family: var(--font-rokkitt);
        }
        .birthday {
            top: 379px;
            font-size: 10.08px;
        }
        .detailaccount-parent {
            position: absolute;
            top: 150px;
            left: 623px;
            background-color: var(--color-white);
            width: 698px;
            height: 599px;
            overflow: hidden;
            font-size: var(--font-size-mini);
            color: var(--color-dimgray-200);
        }
        .thongtintaikhoan {
            position: relative;
            background-color: var(--color-gainsboro-100);
            width: 100%;
            height: 1024px;
            overflow: hidden;
            text-align: left;
            font-size: var(--font-size-2xl);
            color: var(--color-gray-400);
            font-family: var(--font-roboto-serif);
        }
        body {
            margin: 0;
            line-height: normal;
        }
        #src_img {
            display: none;
        }

        :root {
            /* fonts */
            --font-roboto-serif: "Roboto Serif";
            --font-rokkitt: Rokkitt;
            --font-roboto: Roboto;
            --font-roboto-flex: "Roboto Flex";
            --font-roboto-mono: "Roboto Mono";
            --font-inter: Inter;
            --font-roboto-slab: "Roboto Slab";

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
            --color-gainsboro-100: #dce4ed;
            --color-gainsboro-200: #d9d9d9;
            --color-white: #fff;
            --color-dimgray-100: #5e5e5e;
            --color-dimgray-200: #595959;
            --color-dodgerblue-100: #0085ff;
            --color-darkgray: #959595;
            --color-black: #000;
            --color-gray-100: #757575;
            --color-gray-200: rgba(0, 0, 0, 0.78);
            --color-gray-300: rgba(0, 0, 0, 0.3);
            --color-gray-400: rgba(0, 0, 0, 0.63);
            --color-whitesmoke-100: rgba(233, 233, 233, 0.73);
            --color-deepskyblue-100: #3bc6ff;
            --color-lightblue: rgba(181, 215, 232, 0.09);
            --color-steelblue-100: rgba(28, 142, 189, 0.29);
            --color-lightsteelblue: #b1d4fc;
            --color-darkslateblue: #0852a7;
            --color-royalblue: #0569ff;

            /* Border radiuses */
            --br-8xs-2: 4.2px;
            --br-8xs: 5px;
            --br-10xs: 3px;
            --br-11xl: 30px;
        }
       a.btndoimatkhau:hover {
        color: #209a16;
}       


    </style>
    <body>

        <div class="thongtintaikhoan">

           <nav>
            <%@include file="Header_TrangBanHang.jsp" %>
        </nav>
            <mark>${message}</mark>
                <c:url var="url" value="/account"/>
            <form action="${url}/index">
                <div class="picture">
                    <div class="fromimg"></div>

                    <label for="imageFile" class="picture-child">Chỉnh ảnh</label>
                    <input  type="file" id="imageFile" name="imageFile" style="visibility: hidden"
                            accept="image/gif, image/png, image/jpeg" onchange="handleHA(event)">
                    <!--                    Hiện link ảnh-->

                    <div class="profile-picture">Profile Picture</div>
                    <input type="text" id="src_img" name="src_img" />

                    <img id="img"
                         class="img-user"
                         alt=""
                         src="/J2EE/view/img/account/${form.hinhanh}"
                         />

                    <a href="${url}/change-password" class="btndoimatkhau"> Đổi mật khẩu</a>

                </div>

                <div class="detailaccount-parent">
                    <div class="detailaccount"></div>
                    <div class="account-details">
                        <p class="account-details1">Account Details</p>
                    </div>
                    <input type="text" name="txtemail" class="txtemail" value="${form.email}">                
                    <input type="text" name="txtfullname" class="txtfullname" value="${form.fullname}">
                    <div class="fullname">Fullname</div>
                    <fmt:formatDate value="${form.date}" pattern="dd/MM/yyyy" var="formattedDate" />
                    <input type="text" name="txtngaysinh" class="txtngaysinh" value="${formattedDate}">
                    <div class="gender">Gender:</div>
                    <input ${form.gioitinh?'checked':''} type="radio" name="radiogen" class="radiomale" value="true">                      <div class="male">Male</div>
                    <input ${form.gioitinh?'':'checked'} type="radio" name="radiogen" class="radiofemale" value="false">
                    <div class="female">Female</div>
                    <input type="text" name="txtusername" class="txtusername" value="${form.username}" readonly>
                    <button formaction="${url}/updateInfor" class="btnupdate"><b >Update</b></button>
                    <button formaction="${url}/cancel" class="btncancel"><b>Cancel</b></button>
                    <div class="username">Username</div>
                    <div class="email-address">Email address</div>
                    <div class="birthday">Birthday</div>
                </div>
            </form>

        </div>
    </body>
    <script>
        function handleHA(event) {
            let haElem = document.getElementById('src_img');
            haElem.value = event.target.value.slice(12);
            document.getElementById('img').src = '/J2EE/view/img/account/' + haElem.value;

        }
    </script>
</html>
