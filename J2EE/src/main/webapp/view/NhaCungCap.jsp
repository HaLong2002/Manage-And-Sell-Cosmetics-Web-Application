<%-- 
    Document   : NhaCungCap
    Created on : Nov 24, 2023, 5:22:26 PM
    Author     : HP
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
        .hinhanhsp,
        .nh-cung-cp {
            position: absolute;
            left: 18px;
        }
        .nh-cung-cp {
            top: 12px;
            font-size: 25px;
            text-align: center;
        }
        .hinhanhsp {
            top: 50px;
            background-color: #d9d9d9;
            width: 132px;
            height: 170px;
        }
        .a-ch,
        .email,
        .m,
        .st,
        .tn {
            position: absolute;
            top: 48px;
            left: 155px;
            font-size: var(--font-size-mini);
            line-height: 130%;
        }
        .a-ch,
        .email,
        .st,
        .tn {
            top: 79px;
        }
        .a-ch,
        .email,
        .st {
            top: 110px;
        }
        .a-ch,
        .st {
            top: 141px;
        }
        .st {
            top: 172px;
        }
        .m1 {
            position: relative;
        }
        .txtgia,
        .txtloai,
        .txtma,
        .txtsl,
        .txtten {
            position: absolute;
            top: 42px;
            left: 236px;
            border-radius: var(--br-8xs);
            background-color: var(--color-white);
            border: 1px solid var(--color-gray-100);
            box-sizing: border-box;
            width: 269px;
            height: 25px;
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: center;
            padding: var(--padding-3xs);
        }
        .txtgia,
        .txtloai,
        .txtsl,
        .txtten {
            top: 73px;
        }
        .txtgia,
        .txtloai,
        .txtsl {
            top: 104px;
        }
        .txtgia,
        .txtsl {
            top: 135px;
        }
        .txtsl {
            top: 166px;
        }
        .btnchinhanh-icon {
            position: absolute;
            top: 228px;
            left: 43px;
            width: 80px;
            height: 25px;
        }
        .chnh-nh {
            position: absolute;
            top: 232px;
            left: 55px;
            font-size: var(--font-size-xs);
        }
        .btnsua,
        .btnxoa,
        .btnthem {
            position: absolute;
            top: 42px;
            left: 513px;
            background-color: var(--color-palegoldenrod);
            width: 101px;
            height: 39px;
            border-width: 1px;
            border-radius: 10px;
        }
        .btnsua {
            top: 95px;
        }
        .btnxoa{
            top: 148px;
        }

        .sa {
            position: absolute;
            top: 104px;
            left: 549px;
        }

        .thm,
        .xa {
            position: absolute;
            top: 52px;
            left: 542px;
        }
        .xa {
            top: 160px;
            left: 549px;
        }
        .text {
            flex: 1;
            position: relative;
            line-height: 130%;
            font-weight: 600;
        }
        .cell,
        .content {
            align-self: stretch;
            display: flex;
            align-items: flex-start;
            display: inline-block
        }
        .content {
            overflow: hidden;
            flex-direction: row;
            justify-content: flex-start;
            padding: var(--padding-3xs) var(--padding-xs);
            text-align: center;
        }
        .cell {
            box-sizing: border-box;
        }
        .cell,
        .cell1,
        .cell2 {
            /*            background-color: var(--color-gray-200);*/
            border-top: 1px solid var(--color-silver);
            border-left: 1px solid var(--color-silver);
            flex-direction: column;
            justify-content: center;
        }
        .cell1 {
            align-self: stretch;
            box-sizing: border-box;
            display: flex;
            align-items: flex-start;
        }
        .cell2,
        .cell5,
        .row {
            align-self: stretch;
            display: flex;
            align-items: flex-start;
        }
        .cell5 {
            /*            background-color: var(--color-gray-200);*/
            border-top: 1px solid var(--color-silver);
            border-left: 1px solid var(--color-silver);
            box-sizing: border-box;
            flex-direction: column;
            justify-content: center;
        }
        .row {
            /*            background-color: var(--color-gray-300);*/
            overflow: hidden;
            flex-direction: row;
            justify-content: flex-start;
        }
        .text6 {
            flex: 1;
            position: relative;
            line-height: 130%;
        }

        .cell6,
        .cell7,
        .cell8 {
            border-top: 1px solid var(--color-silver);
            border-left: 1px solid var(--color-silver);
            flex-direction: column;
            justify-content: center;
        }
        .cell6 {
            align-self: stretch;
            /*            background-color: var(--color-gray-300);*/
            box-sizing: border-box;
            display: flex;
            align-items: flex-start;
        }
        .cell7 {
            align-self: stretch;
            /*            background-color: var(--color-gray-300);*/
            box-sizing: border-box;
            display: flex;
            align-items: flex-start;
        }
        .cell11,
        .cell8,
        .row1 {
            align-self: stretch;
            /*            background-color: var(--color-gray-300);*/
            display: flex;
            align-items: flex-start;
        }
        .cell11 {
            border-top: 1px solid var(--color-silver);
            border-left: 1px solid var(--color-silver);
            box-sizing: border-box;
            flex-direction: column;
            justify-content: center;
        }
        .row1 {
            overflow: hidden;
            flex-direction: row;
            justify-content: flex-start;
            text-align: left;
        }
        .khungtable-ncc,
        .td_table_ncc,
        .table_ncc {
            position: absolute;
            width: 599px;
        }
        .table_ncc {
            height: 103px;
            margin: 0 !important;
            top: 44px;
            left: 0;
            border-radius: var(--br-9xs);
            background-color: var(--color-white);
            border: 1px solid var(--color-silver);
            box-sizing: border-box;
            flex-shrink: 0;
            display: flex;
            flex-direction: column;
            z-index: 0;
            align-items: flex-start;
            overflow: auto;

        }
        .td_table_ncc {
            margin: 0 !important;
            top: 0;
            left: 0;
            border-radius: var(--br-9xs);
            background-color: var(--color-white);
            border: 1px solid var(--color-silver);
            box-sizing: border-box;
            flex-shrink: 0;
            display: flex;
            flex-direction: column;
            z-index: 0;
        }
        .khungtable-ncc {
            top: 261px;
            left: 18px;
            height: 147px;
            text-align: center;
            font-size: var(--font-size-xs);
        }
        .cell20,
        .khungtable-ncc,
        .khungtable-sp,
        .td_table-sp,
        .table-sp {
            display: flex;
            flex-direction: column;
        }
        .cell20 {
            align-self: stretch;
            flex: 1;
            background-color: var(--color-white);
            border-top: 1px solid var(--color-silver);
            border-left: 1px solid var(--color-silver);
            align-items: flex-start;
            justify-content: center;
        }
        .khungtable-sp,
        .td_table-sp,
        .table-sp {
            position: absolute;
            width: 596px;
        }
        .table-sp {
            height: 115px;
            margin: 0 !important;
            top: 40px;
            left: 0;
            border-radius: var(--br-9xs);
            background-color: var(--color-white);
            border: 1px solid var(--color-silver);
            box-sizing: border-box;
            overflow: hidden;
            align-items: center;
            z-index: 0;
            align-items: flex-start;
            overflow: auto;
        }
        .td_table-sp {
            margin: 0 !important;
            top: 0;
            left: 0;
            border-radius: var(--br-9xs);
            background-color: var(--color-white);
            border: 1px solid var(--color-silver);
            box-sizing: border-box;
            overflow: hidden;
            align-items: center;
            justify-content: center;
            z-index: 0;

        }

        .khungtable-sp {
            top: 408px;
            left: 18px;
            height: 148px;
            align-items: flex-start;
            justify-content: flex-start;
            text-align: center;
            font-size: var(--font-size-xs);
        }
        .content-ncc {
            position: absolute;
            top: 0;
            left: 0;
            background-color: #b9f6af;
            width: 1482px;
            height: 620px;
        }
        .nhacungcap {
            position: relative;
            background-color: var(--color-white);
            width: 1482px;
            height: 620px;
            text-align: left;
            font-size: var(--font-size-base);
            color: var(--color-black);
            font-family: var(--font-inter);
        }
        body {
            margin: 0;
            line-height: normal;
        }

        :root {
            /* fonts */
            --font-inter: Inter;

            /* font sizes */
            --font-size-lg: 18px;
            --font-size-xs: 12px;
            --font-size-base: 16px;
            --font-size-mini: 15px;

            /* Colors */
            --color-white: #fff;
            --color-silver: #b9b9b9;
            --color-palegoldenrod: #f4f2b9;
            --color-gray-100: rgba(0, 0, 0, 0.5);
            --color-gray-200: rgba(0, 0, 0, 0.06);
            --color-gray-300: rgba(255, 255, 255, 0);
            --color-black: #000;
            --color-palegoldenrod: #f4f2b9;
            --color-whitesmoke-100: #f4f4f4;
            /* Paddings */
            --padding-3xs: 10px;
            --padding-xs: 12px;

            /* Border radiuses */
            --br-9xs: 4px;
            --br-8xs: 5px;
        }


        .img-sp {
            position: absolute;
            top: 112px;
            left: 9px;
            background-color: #f5f5f5;
            width: 106px;
            height: 131px;
        }
        .phiu-nhp-hng {
            position: absolute;
            top: 8px;
            left: 264px;
        }
        .nh-cung-cp_nhap,
        .nhn-vin-ph {
            position: absolute;
            top: 42px;
            left: 9px;
        }
        .nh-cung-cp_nhap {
            top: 77px;
        }
        .m-sp {
            position: absolute;
            top: 112px;
        }
        .m-sp,
        .s-lng,
        .tn_nhap {
            left: 128px;
            font-size: var(--font-size-mini);
        }
        .tn_nhap {
            position: absolute;
            top: 149px;
        }
        .s-lng {
            top: 185px;
        }
        .gi,
        .ngy-nhp,
        .s-lng {
            position: absolute;
        }
        .gi {
            top: 227px;
            left: 128px;
            font-size: var(--font-size-mini);
        }
        .ngy-nhp {
            top: 47px;
            left: 392px;
        }
        .txt-gia,
        .txt-ma,
        .txt-ncc,
        .txt-ngaynhap,
        .txt-nvpt,
        .txt-sl,
        .txt-ten,
        .txttongtien {
            border-width: 0px;

            position: absolute;
            top: 46px;
            left: 195px;
            background-color: var(--color-whitesmoke-100);
            width: 188px;
            height: 21px;
        }
        .txt-gia,
        .txt-ma,
        .txt-ncc,
        .txt-ngaynhap,
        .txt-sl,
        .txt-ten,
        .txttongtien {
            top: 109px;
            left: 206px;
            width: 169px;
        }
        .txt-gia,
        .txt-ncc,
        .txt-ngaynhap,
        .txt-sl,
        .txt-ten,
        .txttongtien {
            top: 182px;
        }
        .txt-gia,
        .txt-ncc,
        .txt-ngaynhap,
        .txt-ten,
        .txttongtien {
            top: 220px;
        }
        .txt-ncc,
        .txt-ngaynhap,
        .txt-ten,
        .txttongtien {
            top: 142px;
        }
        .txt-ncc,
        .txt-ngaynhap,
        .txttongtien {
            top: 78px;
            left: 195px;
            width: 188px;
        }
        .txt-ngaynhap,
        .txttongtien {
            top: 47px;
            left: 500px;
            width: 152px;
        }
        .txttongtien {
            top: 85px;
        }
        .text {
            flex: 1;
            position: relative;
            line-height: 130%;
            font-weight: 600;
        }
        .content_nhap {
            overflow: hidden;
            flex-direction: row;
            justify-content: flex-start;
            padding: var(--padding-3xs) var(--padding-xs);
            display: inline-block;
            text-align: center;
        }
        .cel,
        .cel1,
        .content_nhap {
            align-self: stretch;
            display: flex;
            align-items: flex-start;

        }
        .cel {
            /*            background-color: var(--color-gray-200);*/
            border-top: 1px solid var(--color-silver);
            border-left: 1px solid var(--color-silver);
            box-sizing: border-box;
            width: 113px;
            flex-direction: column;
            justify-content: center;
        }
        .cel1 {
            width: 147px;
        }
        .cel1,
        .cel2,
        .cel4 {
            /*            background-color: var(--color-gray-200);*/
            border-top: 1px solid var(--color-silver);
            border-left: 1px solid var(--color-silver);
            box-sizing: border-box;
            flex-direction: column;
            justify-content: center;
        }
        .cel2 {
            align-self: stretch;
            width: 78px;
            display: flex;
            align-items: flex-start;
        }
        .cel4 {
            width: 115px;
        }
        .cel4,
        .cel5,
        .row_nhap {
            align-self: stretch;
            display: flex;
            align-items: flex-start;
        }
        .cel5 {
            /*            background-color: var(--color-gray-200);*/
            border-top: 1px solid var(--color-silver);
            border-left: 1px solid var(--color-silver);
            box-sizing: border-box;
            width: 76px;
            flex-direction: column;
            justify-content: center;
        }
        .row_nhap {
            flex: 1;
            /*            background-color: var(--color-gray-300);*/
            overflow: hidden;
            flex-direction: row;
            justify-content: flex-start;
        }
        .text6 {
            flex: 1;
            position: relative;
            line-height: 130%;
        }
        .cel10,
        .cel11,
        .cel6,
        .cel7,
        .cel8 {
            align-self: stretch;
            /*            background-color: var(--color-gray-300);*/
            border-top: 1px solid var(--color-silver);
            border-left: 1px solid var(--color-silver);
            box-sizing: border-box;
            width: 113px;
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            justify-content: center;
        }
        .cel10,
        .cel11,
        .cel7,
        .cel8 {
            width: 147px;
        }
        .cel10,
        .cel11,
        .cel8 {
            width: 78px;
        }
        .cel10,
        .cel11 {
            width: 115px;
        }
        .cel11 {
            width: 76px;
        }
        .khung-table-nhap,
        .row1_nhap,
        td_table-nhap,
        .table-nhap {
            display: flex;
            align-items: flex-start;
            justify-content: flex-start;
        }
        .row1_nhap {
            align-self: stretch;
            flex: 1;
            /*            background-color: var(--color-gray-300);*/
            overflow: hidden;
            flex-direction: row;
            text-align: left;
        }
        .khung-table-nhap,
        td_table-nhap,
        .table-nhap {
            flex-direction: column;
        }
        .table-nhap {
            height: 166px;
            align-self: stretch;
            border-radius: 4px;
            background-color: var(--color-white);
            border: 1px solid var(--color-silver);
            box-sizing: border-box;
            overflow: hidden;
            flex-shrink: 0;
            overflow: auto;
        }
        .td_table-nhap {
            align-self: stretch;
            border-radius: 4px;
            background-color: var(--color-white);
            border: 1px solid var(--color-silver);
            box-sizing: border-box;
            overflow: hidden;
            flex-shrink: 0;
        }
        .khung-table-nhap {
            position: absolute;
            top: 270px;
            left: 9px;
            width: 641px;
            height: 210px;
            text-align: center;
            font-size: var(--font-size-xs);
        }
        .btnsua_nhap{
            position: absolute;
        }
        .btnsua_nhap {
            border-width: 1px;
            border-radius: 10px;
            top: 236px;
            left: 492px;
            background-color: var(--color-palegoldenrod);
            width: 70px;
            height: 24px;
        }
        .btnxoa_nhap {
            border-width: 1px;
            border-radius: 10px;
            top: 236px;
            left: 580px;
            background-color: var(--color-palegoldenrod);
            width: 70px;
            height: 24px;
        }
        .btnnhap,
        .btnxoa_nhap{
            position: absolute;
        }
        .btnnhap {
            border-width: 1px;
            border-radius: 10px;
            top: 494px;
            left: 539px;
            background-color: #faf6a4;
            width: 111px;
            height: 34px;
        }

        .tng-tin {
            position: absolute;
            line-height: 130%;
            text-align: center;
        }
        .tng-tin {
            top: 83px;
            left: 392px;
        }
        .nhaphang {
            position: relative;
            background-color: var(--color-white);
            left: 639px;
            top: 18px;
            width: 658px;
            height: 543px;
            overflow: hidden;
            text-align: left;
            font-size: var(--font-size-lg);
            color: var(--color-black);
            font-family: var(--font-inter);
            box-shadow: -3px -3px 6px darkgray,3px 3px 6px darkgray;
        }

        .button-container {
            display: flex;
            gap: 8px; /* Adjust the gap between buttons as needed */
        }

        .edit-button, .sua-button, .delete-button {
            width: 50px;
            height: 25px;
            background-color: white; /* White color for all buttons initially */
            color: #333; /* Text color - you can change this */
            border: 1px solid #ccc; /* Add a border for a cleaner look */
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s; /* Smooth transition effect */
        }

        .edit-button:hover {
            background-color: #4CAF50; /* Green color on hover - you can change this */
            color: white;
        }

        .sua-button:hover {
            background-color: #008CBA; /* Blue color on hover - you can change this */
            color: white;
        }

        .delete-button:hover {
            background-color: #FF0000; /* Red color on hover - you can change this */
            color: white;
        }
    </style>

    <body>
        <nav>
            <div class="he">
                <%@
                include file="header.jsp" %>
            </div>
        </nav>

        <c:url var="url" value="/NCC"/>
        <form action="${url}/index" method="post">

            <div class="nhacungcap">
                <div class="content-ncc">
                    <b class="nh-cung-cp">Nhà cung cấp</b>

                    <b class="m">Mã :</b>
                    <b class="tn">Tên :</b>
                    <b class="email">Email:</b>
                    <b class="a-ch">Địa chỉ</b>
                    <b class="st">SĐT:</b>

                    <input type="text" name="txtma" value="${form_ncc.maNCC}" placeholder="Mã" class="txtma"></input>
                    <input type="text" name="txtten" value="${form_ncc.tenNCC}" placeholder="Tên" class="txtten"></input>
                    <input type="text" name="txtemail" value="${form_ncc.email}" placeholder="Email" class="txtloai"></input>
                    <input type="text" name="txtdiachi" value="${form_ncc.diachi}" placeholder="Địa chỉ" class="txtgia"></input>
                    <input type="text" name="txtsdt" value="${form_ncc.sdt}" placeholder="SĐT" class="txtsl"></input>

                    <img id="img_ncc" name="img_ncc" class="hinhanhsp" src="/J2EE/view/img/NhaCungCap/${form_ncc.hinhanh}" >

                    <!--                    Chỉnh ảnh-->
                    <label for="imageFile" style="text-align: center;height: 22px;border-radius: 6px;background-color: #faf6a4" class="btnchinhanh-icon">Chỉnh ảnh</label>

                    <input class="btnchinhanh-icon" type="file"
                           id="imageFile" name="imageFile" style="visibility: hidden"
                           accept="image/gif, image/png, image/jpeg" onchange="handleHA(event)">
                    <!--                    Hiện link ảnh-->
                    <input type="text" value="${form_ncc.hinhanh}" id="src_img" name="src_image" class="btnchinhanh-icon" style="border-width: 0px;background-color: #b9f6af;left: 130px ;height: 16px; width: 120px"/>

                    <button formaction="${url}/create" class="btnthem">Thêm</button>
                    <button formaction="${url}/update/${form_ncc.maNCC}" class="btnsua">Sửa</button>
                    <button formaction="${url}/delete" class="btnxoa">Xóa</button>

                    <div class="khungtable-ncc">
                        <table class="td_table_ncc">
                            <tr class="row">
                                <th style="width: 52px"class="cell">
                                    <div class="content">Mã</div>
                                </th>
                                <th style="width: 140px" class="cell1">
                                    <div class="content">Tên</div>
                                </th>
                                <th style="width: 203px" class="cell2">
                                    <div class="content">Email</div>
                                </th>
                                <th style="width: 100px" class="cell2">
                                    <div class="content">SĐT</div>
                                </th>
                                <th style="width: 96px" class="cell5">
                                    <div class="content">Action</div>
                                </th>
                            </tr>
                        </table>
                        <table class="table_ncc">
                            <c:forEach var="item_ncc" items="${items_ncc}">
                                <tr class="row1">
                                    <td style="width: 52px" class="cell6">
                                        <div class="content">${item_ncc.maNCC}</div>
                                    </td>
                                    <td style="width: 140px" class="cell7">
                                        <div class="content">${item_ncc.tenNCC}</div>
                                    </td>
                                    <td style="width: 203px" class="cell8">
                                        <div class="content">${item_ncc.email}</div>
                                    </td>
                                    <td style="width: 100px" class="cell8">
                                        <div class="content">${item_ncc.sdt}</div>
                                    </td>
                                    <td style="width: 80px" class="cell11">
                                        <button formaction="${url}/edit_ncc/${item_ncc.maNCC}" >Edit</button>

                                    </td>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>

                    <div class="khungtable-sp">
                        <table class="td_table-sp">
                            <tr class="row">
                                <th style="width: 42px" class="cell2">
                                    <div class="content">Mã</div>
                                </th>
                                <th style="width: 200px" class="cell2">
                                    <div class="content">Tên</div>
                                </th>
                                <th style="width: 140px" class="cell2">
                                    <div class="content">Giá nhập</div>
                                </th>
                                <th style="width: 100px" class="cell2">
                                    <div class="content">Hình ảnh</div>
                                </th>
                                <th style="width: 98px" class="cell2">
                                    <div class="content">Action</div>
                                </th>
                            </tr>
                        </table>
                        <table class="table-sp">
                            <c:forEach var="item_spncc" items="${items_spncc}">
                                <tr class="row1">
                                    <td style="width: 42px" class="cell8">
                                        <div class="content">${item_spncc.maSP}</div>
                                    </td>
                                    <td style="width: 200px" class="cell8">
                                        <div class="content">${item_spncc.tenSP}</div>
                                    </td>
                                    <td style="width: 140px" class="cell8">
                                        <div class="content">${item_spncc.giaBan}</div>
                                    </td>
                                    <td style="width: 100px" class="cell8">
                                        <img style="width: 40px; height: 30px" class="content" src="/J2EE/view/img/SanPham/${item_spncc.hinhAnh}" >
                                    </td>
                                    <td style="width: 80px" class="cell8">
                                        <button formaction="${url}/them_ctnh/${item_spncc.maSP},${item_spncc.giaBan}" >Nhập SP</button>
                                    </td>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>

                    <!--                    Phiếu Nhập Hàng-->
                    <div class="nhaphang">
                        <div class="img-sp"></div>
                        <b class="phiu-nhp-hng">Phiếu nhập hàng</b>
                        <b class="nhn-vin-ph">Nhân viên phụ trách:</b>
                        <b class="nh-cung-cp_nhap">Nhà cung cấp:</b>
                        <b class="m-sp">Mã SP:</b>
                        <b class="tn_nhap">Giá:</b>
                        <b class="s-lng">Số lượng:</b>
                        <b class="gi">Thành tiền:</b>
                        <b class="ngy-nhp">Ngày nhập:</b>
                        <b class="tng-tin">Tổng tiền:</b>


                        <input type="text" name="txt_nv" value=" ${name}" class="txt-nvpt" readonly></input>
                        <input type="text" name="txt_tenncc" value="${form_ctnh.maNCC}" class="txt-ncc"></input>
                        <input type="text" name="txt_manhap" value="${form_ctnh.maSP}" class="txt-ma"></input>
                        <input type="text" name="txt_gianhap" value="${form_ctnh.gia}" id="txtgia" class="txt-ten"></input>
                        <input type="number" min="1" max="100" name="txt_slnhap" value="${form_ctnh.soluong}" id="txtsl" class="txt-sl" onchange="change(this)"></input>
                        <input type="text" name="txt_tt" value="${form_ctnh.thanhtien}" id="txttt" class="txt-gia"></input>

                        <input type="date" name="txt_ngay" class="txt-ngaynhap"/>
                        <input type="text" name="txt_tongtien" value="${tongtien_chuanhap}" class="txttongtien" style="width: 149px;"></input>


                        <button formaction="${url}/nhaphang" class="btnnhap">Nhập hàng</button>

                        <div class="khung-table-nhap">
                            <table class="td_table-nhap">
                                <tr class="row_nhap">
                                    <th style="width: 108px" class="cel">
                                        <div class="content_nhap">Nhà cung cấp</div>
                                    </th>
                                    <th class="cel1">
                                        <div class="content_nhap">Mã SP</div>
                                    </th>
                                    <th class="cel2">
                                        <div class="content_nhap">Số lượng</div>
                                    </th>
                                    <th class="cel">
                                        <div class="content_nhap">Giá</div>
                                    </th>
                                    <th class="cel4">
                                        <div class="content_nhap">Thành tiền</div>
                                    </th>
                                    <th class="cel5">
                                        <div class="content_nhap">Action</div>
                                    </th>
                                </tr>
                            </table>
                            <table class="table-nhap">
                                <c:forEach var="item_ctnh" items="${items_ctnh}">
                                    <tr class="row1_nhap">
                                        <td style="width: 110px" class="cel6">
                                            <div class="content_nhap">${item_ctnh.maNCC}</div>
                                        </td>
                                        <td class="cel7">
                                            <div class="content_nhap">${item_ctnh.maSP}</div>
                                        </td>
                                        <td class="cel8">
                                            <div class="content_nhap">${item_ctnh.soluong}</div>
                                        </td>
                                        <td class="cel6">
                                            <div class="content_nhap">${item_ctnh.gia}</div>
                                        </td>
                                        <td class="cel10">
                                            <div class="content_nhap">${item_ctnh.thanhtien}</div>
                                        </td>
                                        <td class="cel11">
                                            <button class="edit-button" formaction="${url}/edit_nh/${item_ctnh.stt}" >Edit</button>
                                            <button class="sua-button" formaction="${url}/edit_ctnh/${item_ctnh.stt}" >Sửa</button>
                                            <button class="delete-button" formaction="${url}/edit_xoa/${item_ctnh.stt}" >Xóa</button>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </div>

                    </div>

                </div>

            </div>
        </form>

        <script>
            function handleHA(event) {
                let haElem = document.getElementById('src_img');
                haElem.value = event.target.value.slice(12);
                document.getElementById('img_ncc').src = '/J2EE/view/img/NhaCungCap/' + haElem.value;
            }
            function change() {
                let sl = document.getElementById('txtsl').value;
                let gia = document.getElementById('txtgia').value;
                let tt = parseFloat(sl) * parseFloat(gia);
                document.getElementById('txttt').value = tt;
            }

        </script>
    </body>
</html>


