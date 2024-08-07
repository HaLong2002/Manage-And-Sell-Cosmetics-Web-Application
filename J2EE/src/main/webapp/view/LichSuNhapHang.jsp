<%-- 
    Document   : NhapHang
    Created on : Nov 26, 2023, 10:41:16 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        .lch-s-nhp {
            position: absolute;
            top: 7px;
            left: 18px;
            font-size: 25px;
            text-align: center;
        }
        .m,
        .ngy-nhp,
        .nhn-vin,
        .tng-tin,
        .tnh-trng {
            position: absolute;
            top: 61px;
            left: 18px;
            font-size: var(--font-size-mini);
            line-height: 130%;
        }
        .ngy-nhp,
        .nhn-vin,
        .tng-tin,
        .tnh-trng {
            top: 89px;
        }
        .nhn-vin,
        .tng-tin,
        .tnh-trng {
            top: 117px;
        }
        .tng-tin,
        .tnh-trng {
            top: 145px;
        }
        .tnh-trng {
            top: 173px;
        }
        .txtma {
            position: absolute;
            top: 58px;
            left: 119px;
            border-radius: var(--br-8xs);
            background-color: var(--color-white);
            border: 1px solid var(--color-gray-300);
            box-sizing: border-box;
            width: 269px;
            height: 18px;
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: center;
            padding: var(--padding-3xs);
        }
        .m-sp {
            position: relative;
        }
        .txt-masp,
        .txt-sl,
        .txtngay {
            position: absolute;
            top: 58px;
            left: 920px;
            border-radius: var(--br-8xs);
            background-color: var(--color-white);
            border: 1px solid var(--color-gray-300);
            box-sizing: border-box;
            width: 269px;
            height: 18px;
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: center;
            padding: var(--padding-3xs);
        }
        .txt-sl,
        .txtngay {
            top: 86px;
        }
        .txtngay {
            left: 119px;
        }
        .btn-xacnhan {
            position: absolute;
            top: 250px;
            left: 516px;
            background-color: #f4f2b9;
            width: 101px;
            height: 39px;
        }
        .xc-nhn {
            position: absolute;
            top: 260px;
            left: 532px;
        }
        .text {
            flex: 1;
            position: relative;
            line-height: 130%;
            font-weight: 600;
        }
        .content {
            overflow: hidden;
            flex-direction: row;
            justify-content: flex-start;
            padding: var(--padding-3xs) var(--padding-xs);
        }
        .cell,
        .cell1,
        .content {
            align-self: stretch;
            display: flex;
            align-items: flex-start;
        }
        .cell {
            
            border-top: 1px solid var(--color-silver);
            border-left: 1px solid var(--color-silver);
            box-sizing: border-box;
            width: 89px;
            flex-direction: column;
            justify-content: center;
        }
        .cell1 {
            width: 140px;
        }
        .cell1,
        .cell2,
        .cell3 {
            
            border-top: 1px solid var(--color-silver);
            border-left: 1px solid var(--color-silver);
            box-sizing: border-box;
            flex-direction: column;
            justify-content: center;
        }
        .cell2 {
            align-self: stretch;
            width: 150px;
            display: flex;
            align-items: flex-start;
        }
        .cell3 {
            width: 113px;
        }
        .cell3,
        .cell4,
        .row {
            align-self: stretch;
            display: flex;
            align-items: flex-start;
        }
        .cell4 {
            
            border-top: 1px solid var(--color-silver);
            border-left: 1px solid var(--color-silver);
            box-sizing: border-box;
            width: 107px;
            flex-direction: column;
            justify-content: center;
        }
        .row {
            
            overflow: hidden;
            flex-direction: row;
            justify-content: flex-start;
        }
        .text5 {
            flex: 1;
            position: relative;
            line-height: 130%;
        }
        .cell5,
        .cell6,
        .cell7,
        .cell8,
        .cell9 {
            align-self: stretch;
            
            border-top: 1px solid var(--color-silver);
            border-left: 1px solid var(--color-silver);
            box-sizing: border-box;
            width: 89px;
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            justify-content: center;
        }
        .cell6,
        .cell7,
        .cell8,
        .cell9 {
            width: 140px;
        }
        .cell7,
        .cell8,
        .cell9 {
            width: 150px;
        }
        .cell8,
        .cell9 {
            width: 113px;
        }
        .cell9 {
            width: 107px;
        }
        .row1,
        .table_nh,
        .table {
            overflow: hidden;
            display: flex;
        }
        .row1 {
            align-self: stretch;
            
            flex-direction: row;
            align-items: flex-start;
            justify-content: flex-start;
            text-align: left;
        }
        .table {
            margin: 0 !important;
            position: absolute;
            top: 0;
            left: 0;
            border-radius: var(--br-9xs);
            background-color: var(--color-white);
            border: 1px solid var(--color-silver);
            box-sizing: border-box;
            width: 599px;
            flex-shrink: 0;
            align-items: center;
            z-index: 0;
        }
        .table_nh{
            margin: 0 !important;
            position: absolute;
            top: 40px;
            left: 0;
            border-radius: var(--br-9xs);
            background-color: var(--color-white);
            border: 1px solid var(--color-silver);
            box-sizing: border-box;
            width: 599px;
            flex-shrink: 0;
            align-items: center;
            z-index: 0;
            overflow: auto;
        }

        .cell10,
        .cell12,
        .khungtable-nh,
        .table_nh,
        .table {
            flex-direction: column;
            justify-content: center;
        }
        .khungtable-nh {
            position: absolute;
            top: 302px;
            left: 18px;
            width: 599px;
            height: 264px;
            overflow: hidden;
            display: flex;
            align-items: center;
            text-align: center;
            font-size: var(--font-size-xs);
        }
        .cell10,
        .cell12 {
            align-self: stretch;
            flex: 1;
            
            border-top: 1px solid var(--color-silver);
            border-left: 1px solid var(--color-silver);
            align-items: flex-start;
        }
        .cell10 {
            display: flex;
        }
        .cell12 {
            display: none;
        }
        .cell17 {
            
            display: flex;
        }
        .cell17,
        .cell18,
        .cell19 {
            align-self: stretch;
            flex: 1;
            border-top: 1px solid var(--color-silver);
            border-left: 1px solid var(--color-silver);
            flex-direction: column;
            align-items: flex-start;
            justify-content: center;
        }
        .cell18 {
            background-color: var(--color-white);
            display: flex;
        }
        .cell19 {
            
            display: none;
        }
        .khungtable-ctnh,
        .table_ctnh,
        .table-sp {
            position: absolute;
            overflow: hidden;
            display: flex;
            flex-direction: column;
        }
        .table-sp {
            margin: 0 !important;
            top: 0;
            left: 0;
            border-radius: var(--br-9xs);
            background-color: var(--color-white);
            border: 1px solid var(--color-silver);
            box-sizing: border-box;
            width: 599px;
            height: 40px;
            align-items: center;
            justify-content: center;
            z-index: 0;
        }
        .table_ctnh {
            margin: 0 !important;
            top: 40px;
            left: 0;
            border-radius: var(--br-9xs);
            background-color: var(--color-white);
            border: 1px solid var(--color-silver);
            box-sizing: border-box;
            width: 599px;
            align-items: center;
            justify-content: center;
            z-index: 0;
            overflow: auto;
        }
        .khungtable-ctnh {
            top: 302px;
            left: 700px;
            width: 596px;
            height: 264px;
            align-items: flex-start;
            justify-content: flex-start;
            text-align: center;
            font-size: var(--font-size-xs);
        }
        .txtnhanvien,
        .txttinhtrang,
        .txttongtien {
            position: absolute;
            top: 114px;
            left: 119px;
            border-radius: var(--br-8xs);
            background-color: var(--color-white);
            border: 1px solid var(--color-gray-300);
            box-sizing: border-box;
            width: 269px;
            height: 18px;
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: center;
            padding: var(--padding-3xs);
        }
        .txttinhtrang,
        .txttongtien {
            top: 142px;
        }
        .txttinhtrang {
            top: 170px;
        }
        .img-sp {
            position: absolute;
            top: 58px;
            left: 700px;
            background-color: #d9d9d9;
            width: 119px;
            height: 130px;
        }
        .txt-gianhap,
        .txt-tt {
            position: absolute;
            top: 114px;
            left: 920px;
            border-radius: var(--br-8xs);
            background-color: var(--color-white);
            border: 1px solid var(--color-gray-300);
            box-sizing: border-box;
            width: 269px;
            height: 18px;
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: center;
            padding: var(--padding-3xs);
        }
        .txt-tt {
            top: 142px;
        }
        .gi-nhp1,
        .m-sp1,
        .s-lng1,
        .thnh-tin1 {
            position: absolute;
            top: 57px;
            left: 832px;
            font-size: var(--font-size-mini);
            line-height: 130%;
        }
        .gi-nhp1,
        .s-lng1,
        .thnh-tin1 {
            top: 85px;
        }
        .gi-nhp1,
        .thnh-tin1 {
            top: 113px;
        }
        .thnh-tin1 {
            top: 141px;
        }
        .content-nh {
            position: absolute;
            top: 0;
            left: 0;
            background-color: #b9f6af;
            width: 1482px;
            height: 620px;
        }
        .lichsunhaphang {
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
            --font-size-mini: 15px;
            --font-size-base: 16px;
            --font-size-xs: 12px;

            /* Colors */
            --color-white: #fff;
            --color-black: #000;
            --color-gray-100: rgba(0, 0, 0, 0.06);
            --color-gray-200: rgba(255, 255, 255, 0);
            --color-gray-300: rgba(0, 0, 0, 0.5);
            --color-silver: #b9b9b9;

            /* Paddings */
            --padding-3xs: 10px;
            --padding-xs: 12px;

            /* Border radiuses */
            --br-8xs: 5px;
            --br-9xs: 4px;
        }

    </style>
    <body>
        <nav>
            <div class="he">
                <%@
                include file="header.jsp" %>
            </div>
        </nav>
                
        <c:url var="url" value="/LS"/>
        <form action="${url}/index" method="post">
            <div class="lichsunhaphang">
                <div class="content-nh">
                    <b class="lch-s-nhp">Lịch sử nhập hàng</b>
                    <b class="m">Mã :</b>
                    <b class="ngy-nhp">Ngày nhập:</b>
                    <b class="nhn-vin">Nhân viên:</b>
                    <b class="tng-tin">Tổng tiền:</b>
                    <b class="tnh-trng">Tình trạng:</b>

                    <input type="text" value="${form_nh.maNH}" name="txtma_nh" placeholder="Mã NH" class="txtma"></input>
                    <input type="text" value="${form_nh.ngay}" name="txt_ngay" placeholder="Ngày" class="txtngay"></input>
                    <input type="text" value="${form_nh.tenTK}" name="txt_nv" placeholder="Mã nv" class="txtnhanvien"></input>
                    <input type="text" value="${form_nh.tongtien}" name="txt_tongtien" placeholder="Tổng tiền" class="txttongtien"></input>
                    <input type="text" value="${form_nh.tinhtrang}" name="txt_tinhtrang" placeholder="Tình trạng" class="txttinhtrang"></input>
                    <button formaction="${url}/xacnhan" class="btn-xacnhan">Xác nhận</button>
                    <div class="khungtable-nh">
                        <table class="table">
                            <tr class="row">
                                <th style="width: 60px" class="cell">
                                    <div class="content">Mã</div>
                                </th>
                                <th style="width: 120px" class="cell1">
                                    <div class="content">Ngày</div>
                                </th>
                                <th style="width: 100px" class="cell2">
                                    <div class="content">Nhân viên</div>
                                </th>
                                <th style="width: 129px" class="cell3">
                                    <div class="content">Tổng tiền</div>
                                </th>
                                <th style="width: 130px" class="cell4">
                                    <div class="content">Tình trạng</div>
                                </th>
                                <th style="width: 70px" class="cell4">
                                    <div class="content">Action</div>
                                </th>
                            </tr>
                        </table>
                        <table class="table_nh">
                            <c:forEach var="item" items="${items_nh}">
                                <tr class="row1">
                                    <td style="width: 60px" class="cell5">
                                        <div class="content">${item.maNH}</div>
                                    </td>
                                    <td style="width: 120px" class="cell6">
                                        <div class="content">${item.ngay}</div>
                                    </td>
                                    <td style="width: 100px" class="cell7">
                                        <div class="content">${item.tenTK}</div>
                                    </td>
                                    <td style="width: 129px" class="cell8">
                                        <div class="content">${item.tongtien}</div>
                                    </td>
                                    <td style="width: 130px" class="cell9">
                                        <div class="content">${item.tinhtrang}</div>
                                    </td>
                                    <td style="width: 70px" class="cell9">
                                        <button formaction="${url}/edit_nh/${item.maNH}" >Edit</button>
                                    </td>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>

                    <b class="m-sp1">Mã SP:</b>
                    <b class="s-lng1">Số Lượng:</b>
                    <b class="gi-nhp1">Giá nhập:</b>
                    <b class="thnh-tin1">Thành tiền:</b>
                    <img id="image" name="img" class="img-sp" src="/J2EE/view/img/SanPham/${linkanh}" >
                    <input type="text" value="${form_ctnh.maSP}" name="txt_maSP" placeholder="Mã SP" class="txt-masp"></input>
                    <input type="text" value="${form_ctnh.soluong}" name="txt_sl" placeholder="Số lượng" class="txt-sl"></input>
                    <input type="text" value="${form_ctnh.gia}" name="txt_gn" placeholder="Giá" class="txt-gianhap"></input>
                    <input type="text" value="${form_ctnh.thanhtien}" name="txt_thanhtien" placeholder="Thành tiền" class="txt-tt"></input>
                    <div class="khungtable-ctnh">
                        <table class="table-sp">
                            <tr class="row">
                                <th style="width: 96px" class="cell10">
                                    <div class="content">Mã NCC</div>
                                </th>
                                <th style="width: 96px" class="cell10">
                                    <div class="content">Mã SP</div>
                                </th>
                                <th style="width: 96px" class="cell10">
                                    <div class="content">Số lượng</div>
                                </th>
                                <th style="width: 96px" class="cell10">
                                    <div class="content">Giá nhập</div>
                                </th>
                                <th style="width: 101px" class="cell10">
                                    <div class="content">Thành tiền</div>
                                </th>
                                <th style="width: 96px" class="cell10">
                                    <div class="content">Action</div>
                                </th>
                            </tr>
                        </table>
                        <table class="table_ctnh">
                            <c:forEach var="item_ctnh" items="${items_ctnh}">
                                <tr class="row1">
                                    <td style="width: 96px" class="cell17">
                                        <div class="content">${item_ctnh.maNCC}</div>
                                    </td>
                                    <td style="width: 96px" class="cell17">
                                        <div class="content">${item_ctnh.maSP}</div>
                                    </td>
                                    <td style="width: 96px" class="cell17">
                                        <div class="content">${item_ctnh.soluong}</div>
                                    </td>
                                    <td style="width: 96px" class="cell17">
                                        <div class="content">${item_ctnh.gia}</div>
                                    </td>
                                    <td style="width: 101px" class="cell17">
                                        <div class="content">${item_ctnh.thanhtien}</div>
                                    </td>
                                    <td style="width: 96px" class="cell17">
                                        <button formaction="${url}/edit_sp/${item_ctnh.stt}" >Edit</button>
                                    </td>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>

                </div>
            </div>


        </form>
    </body>
</html>
