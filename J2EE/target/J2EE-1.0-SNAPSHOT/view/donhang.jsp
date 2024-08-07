<%-- 
    Document   : test
    Created on : Dec 5, 2023, 5:18:07 PM
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

        <link rel="stylesheet" href="./global.css" />
        <link rel="stylesheet" href="./index.css" />
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Roboto Flex:wght@500&display=swap"
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
            href="https://fonts.googleapis.com/css2?family=Inter:wght@500;700&display=swap"
            />
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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-..." crossorigin="anonymous" />

    </head>
    <style>
         thead th {
            position: sticky;
            top: 0;
            background-color: var(--color-white);
            z-index: 1;
            font-size: 12px;
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
            font-size: 12px;/* Màu nền cho thanh tiêu đề */
        }
        .my-table tbody tr:hover {
            background-color: #3498db ;
            /* Màu nền khi di chuột vào các dòng trong tbody */
        }

        .info,
        .row-info,
        .title-table {
            position: absolute;
            top: 0;
            left: 0;
            background-color: var(--color-steelblue-200);
            width: 670px;
            height: 41px;
            overflow: auto;
        }
        .info,
        .row-info {
            top: 42px;
            background-color: var(--color-lightblue);
            height: 278px;
             overflow: auto;
        }
        .info {
            top: 192px;
            left: 25px;
            background-color: var(--color-white);
            border: 1px solid var(--color-black);
            box-sizing: border-box;
            height: 300px;
            overflow: auto;
        }
        .row-info1,
        .title-table1 {
            position: relative;
            background-color: var(--color-steelblue-200);
            width: 600px;
            height: 41px;
            overflow: auto;
            flex-shrink: 0;
        }
        .row-info1 {
            background-color: var(--color-lightblue);
            height: 278px;
        }
        .info1,
        .info2,
        .row-info2,
        .title-table2 {
            position: absolute;
            width: 600px;
            overflow: auto;
        }
        .info1 {
            top: 192px;
            left: 703px;
            background-color: var(--color-white);
            border: 1px solid var(--color-black);
            box-sizing: border-box;
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            justify-content: flex-start;
            gap: 1px;
            height: 300px;
            
        }
        .info2,
        .row-info2,
        .title-table2 {
            top: 0;
            left: 0;
            background-color: var(--color-steelblue-200);
            height: 41px;
        }
        .info2,
        .row-info2 {
            top: 41px;
            background-color: var(--color-lightblue);
            height: 345px;
        }
        .info2 {
            top: 635px;
            left: 703px;
            background-color: var(--color-white);
            border: 1px solid var(--color-black);
            box-sizing: border-box;
            height: 386px;
            overflow: auto;
        }
        .chi-tit-n,
        .chn-ngy-cn,
        .danh-sch-n {
            position: absolute;
            top: 156px;
            left: 604px;
            font-weight: 500;
            color: dimgray;
        }
        .chi-tit-n,
        .chn-ngy-cn {
            top: 601px;
            left: 100px;
        }
        .chi-tit-n {
            left: 968px;
        }
        .icon-loc,
        .table-dh,
        .txt-ngay {
            position: absolute;
            overflow: auto;
        }
        .table-dh {
            top: 635px;
            left: 25px;
            border: 1px solid var(--color-black);
            box-sizing: border-box;
            width: 670px;
            height: 386px;
            overflow: auto;
        }
        .icon-loc,
        .txt-ngay {
            height: 25px;
        }
        .txt-ngay {
            top: 601px;
            left: 264px;
            border: 1px solid var(--color-black);
            box-sizing: border-box;
            width: 300px;
        }
        .icon-loc {
            top: 599px;
            left: 592px;
            width: 66px;
        }
        .icon-loc {
            border: none;
            background: none;
            padding: 0; /* Remove padding if needed */
            cursor: pointer;
            /* Add any other styles you need */
        }
        .lichsudonhang {
            position: relative;
            background-color: #eaeaea;
            width: 100%;
            height: 1185px;
            overflow: hidden;
            text-align: left;
            font-size: var(--font-size-l);
            color: var(--color-gray-200);
            font-family: var(--font-arial);
        }


        body {
            margin: 0;
            line-height: normal;
        }

        :root {
            /* fonts */
            --font-roboto-flex: "Roboto Flex";
            --font-roboto: Roboto;
            --font-roboto-mono: "Roboto Mono";
            --font-inter: Inter;
            --font-roboto-serif: "Roboto Serif";
            --font-roboto-slab: "Roboto Slab";
            --font-rokkitt: Rokkitt;
            --font-arial: 'Arial';

            /* font sizes */
            --font-size-xl: 20px;
            --font-size-6xl: 25px;
            --font-size-xs: 12px;
            --font-size-mini: 15px;
            --font-size-mid: 17px;
            --font-size-3xs: 10px;
            --font-size-2xs-1: 10.1px;
            --font-size-2xl: 21px;
            --font-size-13xl: 32px;
            --font-size-smi: 13px;

            /* Colors */
            --color-white: #fff;
            --color-gray-100: #858585;
            --color-gray-200: #757575;
            --color-gray-300: rgba(0, 0, 0, 0.63);
            --color-gray-400: rgba(0, 0, 0, 0.78);
            --color-black: #000;
            --color-lightblue: rgba(181, 215, 232, 0.09);
            --color-steelblue-100: rgba(39, 121, 155, 0.37);
            --color-steelblue-200: rgba(28, 142, 189, 0.29);
            --color-deepskyblue-100: #67b6ff;
            --color-deepskyblue-200: #3bc6ff;
            --color-lightsteelblue: #b1d4fc;
            --color-green: #009d19;
            --color-red-100: #ff1632;
            --color-red-200: #ff0000;
            --color-limegreen: #33c639;
            --color-gold: #ffd233;
            --color-cornflowerblue: #3682dc;
            --color-gainsboro-100: #dce4ed;
            --color-gainsboro-200: #d9d9d9;
            --color-dodgerblue-100: #0085ff;
            --color-dodgerblue-200: #007df1;
            --color-darkgray: #959595;
            --color-dimgray-100: #5e5e5e;
            --color-dimgray-200: #595959;
            --color-darkslateblue: #0852a7;
            --color-whitesmoke-100: rgba(233, 233, 233, 0.73);
            --color-royalblue: #0569ff;

            /* Border radiuses */
            --br-8xs: 5px;
            --br-10xs: 3px;
            --br-11xl: 30px;
            --br-8xs-2: 4.2px;
        }
        .icon-loc i{
            /* Đặt màu trắng cho biểu tượng */
            font-size: 24px;
            color: cornflowerblue;
        }
        .message{
            color: #209a16;
            position: absolute;
            top:162px;
            left: 33px;
            width: 500px;
        }
       
    </style>
    <body>
        <div class="lichsudonhang">
            <nav>
                <div class="he">
                    <%@
                    include file="header.jsp" %>
                </div>
            </nav>
            <c:url var="url" value="/donhang"/>`
            <form action="${url}/index"> 

                <div class="info">
                    <table class="my-table">
                        <thead>
                            <tr>
                               <th>MaHD</th>
                                <th>Username</th>
                                <th>Họ tên</th>
                                <th>SDT</th>
                                <th>Địa chỉ</th>
                                <th>Ngày lập</th>
                                 <th>Ngày hoàn thành</th>
                                <th>Tổng tiền hàng</th>
                                <th>Phí vận chuyển</th>
                                <th>Thành tiền</th>
                                <th>Phương thức thanh toán</th>
                                <th>Tình trạng</th>
                                <th>Chi tiết</th>
                                <th>Cập nhật</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="item" items="${items_cxl}">
                                <tr>
                                    <td>${item.mahd}</td>
                                     <td>${item.username}</td>
                                     <td>${item.hoten}</td>
                                     <td>${item.sdt}</td>
                                    <td>${item.diachi}</td>
                                    <td>${item.ngaylap}</td>
                                    <td>${item.ngayhoanthanh}</td>
                                    <td>${item.tongtienhang}</td>
                                    <td>${item.phivanchuyen}</td>
                                    <td>${item.thanhtien}</td>
                                    <td>${item.phuongthuc_thanhtoan}</td>
                                    <td>${item.tinhtrang}</td>
                                    <td>
                                        <a href="${url}/edit/${item.mahd}" style="color:#2c3e50 " >Xem</a>

                                    </td>
                                    <td>
                                        <a href="${url}/xacnhan/${item.mahd}" style="color:#2c3e50 ">Xác nhận</a>

                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="info1">
                    <table class="my-table">
                        <thead>
                            <tr>
                                <th>MaHD</th>
                                <th>Username</th>
                                <th>Họ tên</th>
                                <th>SDT</th>
                                <th>Địa chỉ</th>
                                <th>Ngày lập</th>
                                <th>Ngày hoàn thành</th>
                                <th>Tổng tiền hàng</th>
                                <th>Phí vận chuyển</th>
                                <th>Thành tiền</th>
                                <th>Phương thức thanh toán</th>
                                <th>Tình trạng</th>
                                <th>Chi tiết</th>
                                

                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="item" items="${items_ht}">
                                <tr>
                                    <td>${item.mahd}</td>
                                    <td>${item.username}</td>
                                     <td>${item.hoten}</td>
                                     <td>${item.sdt}</td>
                                    <td>${item.diachi}</td>
                                    <td>${item.ngaylap}</td>
                                    <td>${item.ngayhoanthanh}</td>
                                    <td>${item.tongtienhang}</td>
                                    <td>${item.phivanchuyen}</td>
                                    <td>${item.thanhtien}</td>
                                    <td>${item.phuongthuc_thanhtoan}</td>
                                    <td>${item.tinhtrang}</td>
                                    <td>
                                        <a href="${url}/edit/${item.mahd}" style="color:#2c3e50 ">Xem</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="info2">
                    <table class="my-table">
                        <thead>
                            <tr>
                                <th>MaCT</th>
                                <th>MaHD</th>
                                <th>Ngày đặt</th>
                                <th>Ngày hoàn thành</th>
                                <th>Username</th>
                                <th>Mã sản phẩm</th>
                                <th>Số lượng</th>
                                <th>Thành tiền</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="item" items="${item_ctdh}">
                                <tr>
                                    <td>${item.mact}</td>
                                    <td>${item.mahd}</td>
                                    <td>${item.ngaydat}</td>
                                    <td>${item.ngayhoanthanh}</td>
                                    <td>${item.username}</td>
                                    <td>${item.masp}</td>
                                    <td>${item.soluong}</td>
                                    <td>${item.thanhtien}</td>
                                </tr>
                            </c:forEach>
                        </tbody>

                    </table>
                </div>
                <button formaction="${url}/loc_dh" class="icon-loc"> 
                    <i class="fa-solid fa-magnifying-glass"></i></button>
                <input type="text" name="txtngay" class="txt-ngay" placeholder="dd-mm-yyyy">
                
                <div class="message"><b>${message}</b></div>
                
            </form>
        </div>


                    <div class="danh-sch-n"><b>Danh sách đơn hàng</b></div>
                    <div class="chn-ngy-cn"><b>Chọn ngày cần xem</b></div>
                    <div class="chi-tit-n"><b>Chi tiết đơn hàng</b></div>
        <div class="table-dh">
            <table class="my-table">
                <thead>
                    <tr>
                         <th>MaCT</th>
                                <th>MaHD</th>
                                <th>Ngày đặt</th>
                                <th>Ngày hoàn thành</th>
                                <th>Username</th>
                                <th>Mã sản phẩm</th>
                                <th>Số lượng</th>
                                <th>Thành tiền</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="item" items="${items_loc}">
                        <tr>
                             <td>${item.mact}</td>
                                    <td>${item.mahd}</td>
                                    <td>${item.ngaydat}</td>
                                    <td>${item.ngayhoanthanh}</td>
                                    <td>${item.username}</td>
                                    <td>${item.masp}</td>
                                    <td>${item.soluong}</td>
                                    <td>${item.thanhtien}</td>
                        </tr>
                    </c:forEach>
                </tbody>

            </table>
        </div>





    </body>
</html>
