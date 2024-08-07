<%-- 
    Document   : SanPham
    Created on : Nov 17, 2023, 10:18:32 AM
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
        .sanpham {
            position: relative;
            background-color: var(--color-white);
            width: 1482px;
            height: 578px;
            text-align: left;
            font-size: var(--font-size-base);
            color: var(--color-black);
            font-family: var(--font-inter);
        }
        .masp {
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
            justify-content: center;

        }
        .cell,
        .cell_td,
        .content,
        .row {
            align-self: stretch;
            align-items: flex-start;

        }
        .cell {
            /*            background-color: var(--color-gray-100);*/
            border-top: 1px solid var(--color-silver);
            border-left: 1px solid var(--color-silver);
            flex-direction: column;
            justify-content: center;
            height: 40px;
        }
        .cell_td {
            /*            background-color: var(--color-gray-100);*/
            border-top: 1px solid var(--color-silver);
            border-left: 1px solid var(--color-silver);
            flex-direction: column;
            justify-content: center;
            height: 40px;
            padding: 2px;
        }
        .row {
            /*            background-color: var(--color-gray-200);*/
            overflow: hidden;
            flex-direction: row;
            justify-content: flex-start;
            width: 1065px;
        }
        .row_td {
            /*            background-color: var(--color-gray-200);*/
            overflow: hidden;
            flex-direction: row;
            justify-content: flex-start;
            width: 1065px;
            align-self: stretch;
            align-items: flex-start;
            display: flex;
        }
        .text {
            flex: 1;
            position: relative;
            line-height: 130%;
        }
        .table,
        .tieude_table,
        .tblesp {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
        }
        .table,
        .tieude_table,
        .tblesp {
            justify-content: flex-start;
        }
        .tblesp {
            align-self: stretch;
            border-radius: var(--br-9xs);
            background-color: var(--color-white);
            border: 1px solid var(--color-silver);
            overflow: auto;
        }
        .tieude_table {
            align-self: stretch;
            border-radius: var(--br-9xs);
            background-color: var(--color-white);
            border: 1px solid var(--color-silver);
            padding: 2px;
        }
        .table {
            position: absolute;
            top: 267px;
            left: 229px;
            width: 1065px;
            height: 298px;
            font-size: var(--font-size-xs);
        }
        .xa {
            position: relative;
        }
        .material-symbolsdelete-outlin-icon {
            position: relative;
            width: 24px;
            height: 24px;
            overflow: hidden;
            flex-shrink: 0;
        }


        .zondiconsadd-outline {
            position: relative;
            width: 20px;
            height: 20px;
            overflow: hidden;
            flex-shrink: 0;
        }
        .btnthem {
            position: absolute;
            top: 40px;
            left: 762px;
            border-radius: var(--br-mini);
            background-color: var(--color-palegoldenrod);
            justify-content: center;
            padding: var(--padding-3xs);
            width: 70px;
        }
        .btnsua {
            position: absolute;
            top: 100px;
            left: 762px;
            border-radius: var(--br-mini);
            background-color: var(--color-palegoldenrod);
            justify-content: center;
            padding: var(--padding-3xs);
            width: 70px;
        }
        .btnxoa {
            position: absolute;
            top: 160px;
            left: 762px;
            border-radius: var(--br-mini);
            background-color: var(--color-palegoldenrod);
            justify-content: center;
            padding: var(--padding-3xs);
            width: 70px;
        }
        .btnchinhanh{
            position: absolute;
            top: 222px;
            left: 254px;
            width: 80px;
            height: 24px;
        }
        .btnreset{
            border-radius: var(--br-mini);
            position: absolute;
            top: 213px;
            left: 1197px;
            background-color: var(--color-palegoldenrod);
            width: 97px;
            height: 45px;
        }

        .hinhanhsp,
        .sn-phm {
            position: absolute;
            left: 229px;
        }
        .sn-phm {
            top: 18px;
            font-size: 25px;
            text-align: center;
        }
        .hinhanhsp {
            top: 48px;
            background-color: #d9d9d9;
            width: 132px;
            height: 170px;
        }
        .ci,
        .gam,
        .gi-bn,
        .loi-sp,
        .m-sp,
        .ml,
        .n-v,
        .s-lng,
        .tn-sp {
            position: absolute;
            top: 48px;
            left: 368px;
            font-size: var(--font-size-mini);
            line-height: 130%;
        }
        .ci,
        .gam,
        .gi-bn,
        .loi-sp,
        .ml,
        .n-v,
        .s-lng,
        .tn-sp {
            top: 79px;
        }
        .ci,
        .gam,
        .gi-bn,
        .loi-sp,
        .ml,
        .n-v,
        .s-lng {
            top: 110px;
        }
        .ci,
        .gam,
        .gi-bn,
        .ml,
        .n-v,
        .s-lng {
            top: 141px;
        }
        .ci,
        .gam,
        .ml,
        .n-v,
        .s-lng {
            top: 172px;
        }
        .ci,
        .gam,
        .ml,
        .n-v {
            top: 203px;
        }
        .ci,
        .gam,
        .ml {
            top: 198px;
            left: 576px;
        }
        .ci,
        .gam {
            left: 632px;
        }
        .ci {
            left: 702px;
        }
        .txtdv,
        .txtgia,
        .txtloai,
        .txtma,
        .txtsl,
        .txtten {
            position: absolute;
            top: 42px;
            left: 455px;
            border-radius: var(--br-8xs);
            background-color: var(--color-white);
            border: 1px solid var(--color-gray-300);
            box-sizing: border-box;
            width: 269px;
            height: 25px;
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: center;
            padding: var(--padding-3xs);
        }
        .txtdv,
        .txtgia,
        .txtloai,
        .txtsl,
        .txtten {
            top: 73px;
        }
        .txtdv,
        .txtgia,
        .txtloai,
        .txtsl {
            top: 104px;
        }
        .txtdv,
        .txtgia,
        .txtsl {
            top: 135px;
        }
        .txtdv,
        .txtsl {
            top: 166px;
        }
        .txtdv {
            top: 197px;
            width: 78px;
        }
        .radio-cai-icon,
        .radio-gam-icon {
            top: 197px;
            border-radius: var(--br-9xs);
            width: 20px;
            height: 20px;
        }
        .radio-cai-icon {
            position: absolute;
            left: 545px;
            overflow: hidden;
        }
        .radio-gam-icon {
            left: 601px;
        }
        .content-sp,
        .radio-gam-icon,
        .radio-ml-icon {
            position: absolute;
            overflow: hidden;
        }
        .radio-ml-icon {
            top: 197px;
            left: 671px;
            border-radius: var(--br-9xs);
            width: 20px;
            height: 20px;
        }
        .content-sp {
            top: 0;
            left: 0;
            background-color: #b9f7af;
            width: 100%;
            height: 620px;
        }
        .check-td-icon,
        .trang-im {
            position: absolute;
            top: 275px;
            left: 50px;
        }
        .check-td-icon {
            top: 272px;
            left: 12px;
            border-radius: var(--br-9xs);
            width: 20px;
            height: 20px;
            overflow: hidden;
        }
        .check-lsd-icon,
        .lm-sch-da {
            position: absolute;
            top: 242px;
            left: 50px;
        }
        .check-lsd-icon {
            top: 239px;
            left: 12px;
            border-radius: var(--br-9xs);
            width: 20px;
            height: 20px;
            overflow: hidden;
        }
        .check-cn-icon,
        .chng-nng {
            position: absolute;
            top: 209px;
            left: 50px;
        }
        .check-cn-icon {
            top: 206px;
            left: 12px;
            border-radius: var(--br-9xs);
            width: 20px;
            height: 20px;
            overflow: hidden;
        }
        .check-mpcn-icon,
        .m-phm-chc {
            position: absolute;
            top: 176px;
            left: 50px;
        }
        .check-mpcn-icon {
            top: 173px;
            left: 12px;
            border-radius: var(--br-9xs);
            width: 20px;
            height: 20px;
            overflow: hidden;
        }
        .check-csd-icon,
        .chm-sc-da {
            position: absolute;
            top: 143px;
            left: 50px;
        }
        .check-csd-icon {
            top: 140px;
            left: 12px;
            border-radius: var(--br-9xs);
            width: 20px;
            height: 20px;
            overflow: hidden;
        }
        .txtgiabd,
        .txttk {
            left: 0;
            border-radius: var(--br-8xs);
            border: 1px solid var(--color-gray-300);
            box-sizing: border-box;
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: center;
            padding: var(--padding-3xs);
        }
        .txttk {
            position: absolute;
            top: 48px;
            width: 205px;
        }
        .txtgiabd {
            top: 358px;
        }
        .trang-im-parent,
        .txtgiabd,
        .txtgiakt {
            position: absolute;
            width: 205px;
        }
        .txtgiakt {
            top: 406px;
            left: 0;
            border-radius: var(--br-8xs);
            border: 1px solid var(--color-gray-300);
            box-sizing: border-box;
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: center;
            padding: var(--padding-3xs);
        }
        .trang-im-parent {
            top: 0;
            left: 12px;
            background-color: var(--color-white);
            height: 620px;
            overflow: hidden;
            font-size: var(--font-size-base);
            font-family: var(--font-inter);
        }
        .btntimkiem2,
        .btntimkiem3 {
            background-color: var(--color-darkgray);
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: center;
            padding: var(--padding-3xs);
            box-sizing: border-box;
            gap: var(--gap-3xs);
        }
        .btntimkiem3 {
            position: absolute;
            top: 306px;
            left: 0;
            width: 217px;
        }
        .btntimkiem2 {
            top: 87px;
        }
        .btntimkiem1,
        .btntimkiem2,
        .formtimkiem {
            position: absolute;
            left: 0;
            width: 217px;
        }
        .btntimkiem1 {
            top: 0;
            background-color: var(--color-darkgray);
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: center;
            padding: var(--padding-3xs);
            box-sizing: border-box;
            gap: var(--gap-3xs);
        }
        .formtimkiem {
            top: 0;
            background-color: #e8e6e6;
            height: 620px;
            overflow: hidden;
            font-size: var(--font-size-lg);
            font-family: var(--font-inder);
        }
        .btn-dh,
        .btn-kh {
            position: absolute;
            top: 27px;
            left: 270px;
            border-radius: var(--br-xs);
            background-color: var(--color-plum);
            border: 1px solid var(--color-black);
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: center;
            padding: var(--padding-3xs);
        }
        .btn-dh {
            left: 156px;
        }
        .sn-phm1 {
            position: relative;
            mix-blend-mode: normal;
        }
        .btn-sp {
            position: absolute;
        }
        .btn-sp {
            top: 27px;
            left: 39px;
            border-radius: var(--br-xs);
            background-color: var(--color-plum);
            border: 1px solid var(--color-black);
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: center;
            padding: var(--padding-3xs);
            cursor: pointer;
        }

        .qun-l {
            position: relative;
            background-color: var(--color-white);
            width: 100%;
            height: 670px;
            overflow: hidden;
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
            --font-inder: Inder;

            /* font sizes */
            --font-size-base: 16px;
            --font-size-lg: 18px;
            --font-size-mini: 15px;
            --font-size-xs: 15px;

            /* Colors */
            --color-white: #fff;
            --color-plum: #fab9fc;
            --color-black: #000;
            --color-darkgray: #8fa8b6;
            --color-gray-100: rgba(0, 0, 0, 0.06);
            --color-gray-200: rgba(255, 255, 255, 0);
            --color-gray-300: rgba(0, 0, 0, 0.5);
            --color-paleturquoise: #9df8f2;
            --color-silver: #b9b9b9;
            --color-palegoldenrod:#f4f2b9;

            /* Gaps */
            --gap-3xs: 10px;

            /* Paddings */
            --padding-3xs: 10px;
            --padding-xs: 12px;

            /* Border radiuses */
            --br-xs: 12px;
            --br-8xs: 5px;
            --br-9xs: 4px;
            --br-mini: 15px;
        }
    </style>

    <body>
        <nav>
            <div class="he">
                <%@
                include file="header.jsp" %>
            </div>
        </nav>

        <c:url var="url" value="/SP"/>
        <form action="${url}/index" method="post">
            <div class="sanpham">
                <div class="content-sp" data-scroll-to="contentSPContainer">
                    <div class="table">
                        <table class="tieude_table">
                            <tr class="row_td">
                                <th style="width: 69.02px" class="cell_td">
                                    <div class="content">Mã</div>
                                </th>
                                <th style="width: 233.31px" class="cell_td">
                                    <div class="content">Tên</div>
                                </th>
                                <th style="width: 76.53px" class="cell_td">
                                    <div class="content">Loại</div>
                                </th>
                                <th style="width: 86.5px" class="cell_td">
                                    <div class="content">Giá bán</div>
                                </th>
                                <th style="width: 49px" class="cell_td">
                                    <div class="content">SL</div>
                                </th>
                                <th style="width: 96.5px" class="cell_td">
                                    <div class="content">Đơn vị</div>
                                </th>
                                <th style="width: 355.11px" class="cell_td">
                                    <div class="content">Hình ảnh</div>
                                </th>
                                <th style="width: 52.03px" class="cell_td">
                                    <div class="content"></div>
                                </th>
                            </tr>
                        </table>
                        <table class="tblesp">
                            <c:forEach var="item" items="${items}">
                                <tr class="row">
                                    <td style="width: 69.02px" class="cell">
                                        <div class="content">${item.maSP}</div>
                                    </td>
                                    <td style="width: 233.31px" class="cell">
                                        <div class="content">${item.tenSP}</div>
                                    </td>
                                    <td style="width: 76.53px" class="cell">
                                        <div class="content">${item.loaiSP}</div>
                                    </td>
                                    <td style="width: 86.5px" class="cell">
                                        <div class="content">${item.giaBan}</div>
                                    </td>
                                    <td style="width: 49px" class="cell">
                                        <div class="content">${item.soLuong}</div>
                                    </td>
                                    <td style="width: 96.5px" class="cell">
                                        <div class="content">${item.donViTinh}</div>
                                    </td>
                                    <td style="width: 355.11px" class="cell">
                                        <img style="width: 40px; height: 50px" class="content" src="/J2EE/view/img/SanPham/${item.hinhAnh}" >
                                    </td>
                                    <td style="width: 39.03px" class="cell">
                                        <button formaction="${url}/edit/${item.maSP}" >Edit</button>
                                    </td>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>

                    <button formaction="${url}/create" class="btnthem">Thêm</button>
                    <button formaction="${url}/update" class="btnsua">Sửa</button>
                    <button formaction="${url}/delete" class="btnxoa">Xóa</button>
                    <button formaction="${url}/reset" class="btnreset">Reset</button>
                    <b class="sn-phm">Sản phẩm</b>
                    <img id="image" name="img" class="hinhanhsp" src="/J2EE/view/img/SanPham/${form.hinhAnh}" >

                    <!--Nút  Chỉnh ảnh-->
                    <label for="image_sp" class="btnchinhanh" style="text-align: center;height: 22px;border-radius: 6px;background-color: #faf6a4">Chỉnh ảnh</label>
                    <input type="file" id="image_sp" name="image_sp" class="btnchinhanh" style="visibility: hidden"
                           accept="image/gif, image/png, image/jpeg" onchange="handleHA(event)">
                    <!--Hiện link ảnh-->
                    <input type="text" value="${form.hinhAnh}" id="src_img" name="src_image" class="btnchinhanh" style="border-width: 0px;background-color: #b9f6af;left: 340px ;height: 16px; width: 150px"/>

                    <b class="m-sp">Mã SP:</b>
                    <b class="tn-sp">Tên SP:</b>
                    <b class="loi-sp">Loại SP:</b>
                    <b class="gi-bn">Giá bán:</b>
                    <b class="s-lng">Số lượng:</b>
                    <b class="n-v">Đơn vị:</b>

                    <input name="donvi" type="radio" value="ml" class="radio-ml-icon"/>
                    <div class="ml">ml</div>
                    <input name="donvi" type="radio" value="gam" class="radio-gam-icon"/>
                    <div class="gam">gam</div>
                    <input name="donvi" type="radio" value="cai" class="radio-cai-icon"/>
                    <div class="ci">cái</div>

                    <input type="text" value="${form.maSP}" name="txtMa" placeholder="Nhập mã sp" class="txtma"></input>
                    <input type="text" value="${form.tenSP}" name="txtTen" placeholder="Nhập tên sp" class="txtten"></input>
                    <input type="text" value="${form.loaiSP}" name="txtLoai" placeholder="Nhập loại sp" class="txtloai"></input>
                    <input type="text" value="${form.giaBan}" name="txtGia" placeholder="Nhập giá sp" class="txtgia"></input>
                    <input type="text" value="${form.soLuong}" name="txtSL" placeholder="Số lượng sp" class="txtsl"></input>
                    <input type="text" value="${form.donViTinh}" name="txtDV" placeholder="đơn vị" class="txtdv"></input>

                </div>
                <div class="formtimkiem">
                    <div class="trang-im-parent">

                        <input type="checkbox" name="loai" value="Chăm sóc da" class="check-csd-icon">
                        <div class="chm-sc-da">Chăm sóc da</div>

                        <input type="checkbox" name="loai" value="Mỹ phẩm chức năng" class="check-mpcn-icon">
                        <div class="m-phm-chc">Mỹ phẩm chức năng</div>

                        <input type="checkbox" name="loai" value="Chống nắng" class="check-cn-icon">
                        <div class="chng-nng">Chống nắng</div>

                        <input type="checkbox" name="loai" value="Làm sạch da" class="check-lsd-icon">
                        <div class="lm-sch-da">Làm sạch da</div>

                        <input type="checkbox" name="loai" value="Trang điểmg" class="check-td-icon">
                        <div class="trang-im">Trang điểm</div>

                        <input type="text" name="txtTK" placeholder="Nhập mã,tên sp" class="txttk"></input>
                        <input type="text" name="txtGiaBD" placeholder="Giá bắt đầu" class="txtgiabd"></input>
                        <input type="text" name="txtGiaKT" placeholder="Giá kết thúc" class="txtgiakt"></input>
                    </div>
                    <button formaction="${url}/timkiem3"  class="btntimkiem3">Kiếm theo theo khoảng giá
                        <img src="/J2EE/view/img/TimKiem.png">
                    </button>
                    <button formaction="${url}/timkiem2"  class="btntimkiem2">Loại sản phẩm
                        <img src="/J2EE/view/img/TimKiem.png">
                    </button>
                    <button formaction="${url}/timkiem1"  class="btntimkiem1">Tìm kiếm theo mã or tên
                        <img src="/J2EE/view/img/TimKiem.png">
                    </button>
                </div>
            </div>
        </form>
        <script>
            var btnSPContainer = document.getElementById("btnSPContainer");
            if (btnSPContainer) {
                btnSPContainer.addEventListener("click", function () {
                    var anchor = document.querySelector(
                            "[data-scroll-to='contentSPContainer']"
                            );
                    if (anchor) {
                        anchor.scrollIntoView({block: "start", behavior: "smooth"});
                    }
                });
            }
            function handleHA(event) {
                let haElem = document.getElementById('src_img');
                haElem.value = event.target.value.slice(12);
                document.getElementById('image').src = '/J2EE/view/img/SanPham/' + haElem.value;
            }
        </script>
    </body>
</html>

