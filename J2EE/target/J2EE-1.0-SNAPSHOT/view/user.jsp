<%-- 
    Document   : index
    Created on : Nov 16, 2023, 5:00:31 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="initial-scale=1, width=device-width" />
    </head>
    <style>
         thead th {
            position: sticky;
            top: 0;
            background-color: var(--color-white);
            z-index: 1;
            font-size: 15px;
            color: var(--color-gray-100);
        }
        .my-table {
            width: 100%;
            border-collapse: collapse;

        }

        .my-table th,
        .my-table td {
            padding: 8px;
            text-align: center;
            border: 1px solid #ccc;
            color: #2c3e50;
        }

        .my-table th {
            background-color:#3498db; /* Màu nền cho thanh tiêu đề */
        }
        .my-table tr {
            background-color: #cce2ee;
            font-size: 15px;/* Màu nền cho thanh tiêu đề */
        }
        .my-table tbody tr:hover {
            background-color: #3498db ;
            /* Màu nền khi di chuột vào các dòng trong tbody */
        }

        .cosmetics-1-icon {
            position: absolute;
            top: 23px;
            left: 21px;
            width: 80px;
            height: 80px;
            object-fit: cover;
        }
        .icy-cosmetic {
            position: absolute;
            top: 122px;
            left: 25px;
            display: inline-block;
            width: 95px;
            height: 16px;
        }
        
        .title-qltk {
            position: absolute;
            top: 14px;
            left: 240px;
            font-size: var(--font-size-6xl);
            display: inline-block;
            color: #2c3e50;
            width: 380.6px;
            height: 33.2px;
        }
        .txtemail,
        .txtfullname,
        .txtpassword,
        .txtusername {
            position: absolute;
            top: 132px;
            left: 34px;
            border-radius: var(--br-10xs);
            background-color: var(--color-white);
            width: 300px;
            height: 30px;
        }
        .txtemail,
        .txtfullname,
        .txtusername {
            top: 176px;
        }
        .txtfullname,
        .txtusername {
            top: 132px;
            left: 371px;
        }
        .txtusername {
            top: 88px;
            left: 35px;
        }
        .radioadmin,
        .role,
        .sex {
            position: absolute;
            top: 226px;
            left: 34px;
        }
        .radioadmin,
        .sex {
            top: 180px;
            left: 371px;
        }
        .radioadmin {
            top: 229px;
            left: 93px;
            border-radius: 50%;
            background-color: var(--color-gainsboro-200);
            width: 15px;
            height: 15px;
        }
        .radiomale {
            position: absolute;
            top: 184px;
            left: 433px;
            width: 15px;
            height: 15px;
        }
        .radiofemale,
        .radiomale,
        .radioquanly,
        .radiouser {
            border-radius: 50%;
            background-color: var(--color-gainsboro-200);
        }
        .radiofemale {
            position: absolute;
            top: 184px;
            left: 553px;
            width: 15px;
            height: 15px;
        }
        .radioquanly,
        .radiouser {
            top: 229px;
            width: 15px;
            height: 15px;
        }
        .radiouser {
            position: absolute;
            left: 184px;
        }
        .radioquanly {
            left: 260px;
        }
        .admin,
        .male,
        .radioquanly {
            position: absolute;
        }
        .admin {
            top: 226px;
            left: 115px;
            font-size: var(--font-size-mini);
        }
        .male {
            top: 180px;
            left: 468px;
        }
        .user {
            top: 226px;
            left: 206px;
            font-size: var(--font-size-mini);
        }
        .female,
        .qun-l,
        .user {
            position: absolute;
        }
        .qun-l {
            top: 226px;
            left: 292px;
            font-size: var(--font-size-mini);
        }
        .female {
            top: 180px;
            left: 590px;
        }
        .btncreate:hover,
        .btndelete:hover,
        .btnreset:hover,
        .btnupdate:hover{
            background: #ecf0f1;
            
            
        }
        .btncreate,
        .btndelete,
        .btnreset,
        .btnupdate,
        .txtdate {
            position: absolute;
            top: 316px;
            left: 93px;
            border-radius: var(--br-8xs);
            background-color: var(--color-cornflowerblue);
            width: 110px;
            height: 33px;
        }
        .btndelete,
        .btnreset,
        .btnupdate,
        .txtdate {
            left: 241px;
            background-color: var(--color-gold);
        }
        .btndelete,
        .btnreset,
        .txtdate {
            left: 521px;
            background-color: var(--color-limegreen);
        }
        .btndelete,
        .txtdate {
            left: 379px;
            background-color: var(--color-red-100);
        }
        .txtdate {
            top: 89px;
            left: 371px;
            border-radius: var(--br-10xs);
            background-color: var(--color-white);
            width: 300px;
            height: 30px;
        }
        .create,
        .delete,
        .reset,
        .update {
            position: absolute;
            top: 322px;
            left: 113px;
            color: var(--color-white);
        }
        .delete,
        .reset,
        .update {
            top: 320px;
            left: 401px;
        }
        .reset,
        .update {
            top: 322px;
            left: 268px;
        }
        .reset {
            top: 320px;
            left: 550px;
        }
        .message-comp,
        .message-err {
            position: absolute;
            display: inline-block;
            font-family: var(--font-arial);
            width: 430px;
        }
        .message-err {
            top: 277px;
            left: 148px;
            font-weight: 500;
            color: var(--color-red-200);
        }
        .message-comp {
            top: 60px;
            left: 38px;
            color: var(--color-green);
        }
        .thongtin-tk {
            position: absolute;
            top: 60px;
            left: 330px;
            border: 1px solid var(--color-black);
            box-sizing: border-box;
            width: 696px;
            height: 376px;
            overflow: hidden;
            font-size: var(--font-size-mid);
            color: var(--color-black);
            box-shadow: 3px 3px 3px 3px rgba(0.1, 0.1, 0.1, 0.1);
        }
        .password,
        .username {
            position: absolute;
            top: 17.4px;
            left: 26.1px;
        }
        .password {
            top: 18px;
            left: 143px;
        }
        .email,
        .remember,
        .role1 {
            position: absolute;
            top: 17px;
            left: 270px;
        }
        .email,
        .remember {
            left: 408px;
        }
        .email {
            top: 18px;
            left: 568px;
        }
        .date,
        .fullname,
        .sex1 {
            position: absolute;
            top: 17.4px;
            left: 750.1px;
        }
        .date,
        .sex1 {
            left: 923.1px;
        }
        .sex1 {
            left: 1060.1px;
        }
        .action,
        .title-table {
            position: absolute;
            top: 17px;
            left: 1209px;
        }
        .title-table {
            top: 0;
            left: 0;
            background-color: var(--color-steelblue-100);
            width: 1320px;
            height: 55px;
            overflow: hidden;
        }
        .in-ac,
        .in-date,
        .in-email,
        .in-name,
        .in-sex {
            position: absolute;
            top: 17px;
            left: 1209px;
            display: inline-block;
            width: 111px;
            height: 41px;
        }
        .in-date,
        .in-email,
        .in-name,
        .in-sex {
            top: 16px;
            left: 1056px;
            width: 83px;
        }
        .in-date,
        .in-email,
        .in-name {
            top: 17px;
            left: 913px;
            width: 84px;
        }
        .in-email,
        .in-name {
            left: 760px;
            width: 107px;
        }
        .in-email {
            top: 16px;
            left: 555px;
            width: 119px;
        }
        .in-pass,
        .in-re,
        .in-ro {
            position: absolute;
            top: 17px;
            left: 273px;
        }
        .in-pass,
        .in-re {
            top: 14px;
            left: 421px;
        }
        .in-pass {
            top: 16px;
            left: 144px;
            display: inline-block;
            width: 85px;
            height: 41px;
        }
        .blank-line {
            margin: 0;
        }
        .in-uesr {
            position: absolute;
            top: 15px;
            left: 29px;
            display: inline-block;
            width: 85px;
            height: 27px;

            word-wrap: break-word;

        }
        .row-info {
            position: absolute;
            top: 55px;
            left: 0;
            background-color: var(--color-lightblue);
            width: 1320px;
            height: 319px;
            overflow: hidden;
            font-size: var(--font-size-xs);
            color: var(--color-black);
        }
        .info,
        .quanlytaikhoan {
            box-sizing: border-box;
            
        }
        .info {

            position: absolute;
            top: 500px;
            left: 70px;

            width: 1320px;
            height: 374px;
            font-size: 14.99px;

            overflow: auto; /* Thêm thuộc tính này để tạo thanh cuộn */

        }
        .quanlytaikhoan {
            position: relative;
            background-color: #EBEBEB;
            border: 1px solid var(--color-black);
            width: 100%;
            height: 1024px;
            text-align: left;
            font-size: var(--font-size-xs);
            color: var(--color-white);
            font-family: var(--font-arial);
        }
        .in-uesr {
            word-wrap: break-word;
        }
        body {
            margin: 0;
            line-height: normal;
        }

        :root {
            /* fonts */
            --font-roboto-mono: "Roboto Mono";
            --font-inter: Inter;
            --font-roboto: Roboto;
            --font-roboto-serif: "Roboto Serif";
            --font-roboto-slab: "Roboto Slab";
            --font-rokkitt: Rokkitt;
            --font-roboto-flex: "Roboto Flex";
            --font-arial: 'Arial';

            /* font sizes */
            --font-size-xs: 12px;
            --font-size-mini: 15px;
            --font-size-mid: 17px;
            --font-size-6xl: 25px;
            --font-size-3xs: 10px;
            --font-size-2xs-1: 10.1px;
            --font-size-2xl: 21px;
            --font-size-2xs: 11px;
            --font-size-xs-2: 11.2px;
            --font-size-13xl: 32px;
            --font-size-smi: 13px;

            /* Colors */
            --color-steelblue-100: rgba(28, 142, 189, 0.29);
            --color-steelblue-200: rgba(39, 121, 155, 0.37);
            --color-black: #000;
            --color-white: #fff;
            --color-lightblue: rgba(181, 215, 232, 0.09);
            --color-gray-100: #757575;
            --color-gray-200: rgba(0, 0, 0, 0.3);
            --color-gray-300: rgba(0, 0, 0, 0.63);
            --color-gray-400: rgba(0, 0, 0, 0.78);
            --color-green: #009d19;
            --color-red-100: #ff1632;
            --color-red-200: #ff0000;
            --color-limegreen: #33c639;
            --color-gold: #ffd233;
            --color-cornflowerblue: #3682dc;
            --color-gainsboro-100: #dce4ed;
            --color-gainsboro-200: #d9d9d9;
            --color-deepskyblue-100: #67b6ff;
            --color-deepskyblue-200: #3bc6ff;
            --color-dodgerblue-100: #0085ff;
            --color-dodgerblue-200: #007df1;
            --color-darkgray: #959595;
            --color-lightsteelblue: #b1d4fc;
            --color-dimgray-100: #5e5e5e;
            --color-dimgray-200: #595959;
            --color-darkslateblue: #0852a7;
            --color-whitesmoke-100: rgba(233, 233, 233, 0.73);
            --color-royalblue: #0569ff;

            /* Border radiuses */
            --br-10xs: 3px;
            --br-8xs: 5px;
            --br-11xl: 30px;
            --br-8xs-2: 4.2px;
        }

    </style>
    <body>
        <nav>
                <div class="he">
                    <%@
                    include file="header.jsp" %>
                </div>
            </nav>
        
        <div class="quanlytaikhoan">
           

            <div class="thongtin-tk">

                <b class="title-qltk">MANAGE ACCOUNT</b>
                <div class="message-err">${message_err}</div>
                <div class="message-comp">${message_comp}</div> 

                <c:url var="url" value="/user"/>`
                <form action="${url}/index" method="post">
                    <input value="${form.password}" type="text" name="txtpassword" class="txtpassword" placeholder="Nhập password" >
                    <input value="${form.email}" type="text" name="txtemail" class="txtemail" placeholder="Nhập Email ">

                    <input value="${form.fullname}"type="text" name="txtfullname" class="txtfullname" placeholder="Nhập họ tên ">

                    <input value="${form.username}"type="text" name="txtusername" class="txtusername" placeholder="Nhập uername ">
                    <input ${form.role?'checked':''} type="radio" name="radiorole" class="radioadmin" value="Admin">               
                    <div class="admin">Admin</div>
                    <input ${form.role?'':'checked'} type="radio" name="radiorole" class="radiouser" value="User">
                    <div class="user">User</div>
                    <input ${form.role?'':'checked'} type="radio" name="radiorole" class="radioquanly" value="Manage">
                    <div class="qun-l">Manage</div>
                    <fmt:formatDate value="${form.date}" pattern="dd/MM/yyyy" var="formattedDate" />
                    <input value="${formattedDate}" type="text" name="txtdate" class="txtdate" placeholder="Nhập ngày tháng năm sinh:dd//mm/yyyy ">
                    <div class="role">Role:</div>
                    <div class="sex">Gender:</div>
                    <input ${form.gioitinh?'checked':''} type="radio" name="radiogen" class="radiomale" value="true">               
                    <div class="male">Male</div>
                    <input ${form.gioitinh?'':'checked'} type="radio" name="radiogen" class="radiofemale" value="false">
                    <div class="female">Female</div>
                    <button formaction="${url}/create" class="btncreate"><b >Create</b></button>
                    <button formaction="${url}/update" class="btnupdate"><b >Update</b></button>
                    <button formaction="${url}/index" class="btnreset">Reset</button>
                    <button formaction="${url}/delete" class="btndelete"> Delete</button>
                </form>
            </div>
            <div class="info">
                <table class="my-table">
                    <thead>
                        <tr>
                            <th>Username</th>
                            <th>Password</th>
                            <th>Role</th>
                            <th>Images</th>
                            <th>Email</th>
                            <th>Fullname</th>
                            <th>Date</th>
                            <th>Gender</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="item" items="${items}">
                            <tr>
                                <td>${item.username}</td>
                                <td>${item.password}</td>
                                <td>${item.role}</td>
                                <td>${item.hinhanh}</td>
                                <td>${item.email}</td>
                                <td>${item.fullname}</td>
                                <fmt:formatDate value="${item.date}" pattern="dd/MM/yyyy" var="formattedDate" />
                                <td>${formattedDate}</td>
                                <td>${item.gioitinh ? 'Nam' : 'Nu'}</td>
                                <td>
                                    <a href="${url}/edit/${item.username}">Edit</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>

            </div>
        </div>

    </body>
</html>
