<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="initial-scale=1, width=device-width" />

        <link rel="stylesheet" href="./global.css" />
        <link rel="stylesheet" href="./index.css" />
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;600;700&display=swap"
            />
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Outfit:wght@700&display=swap"
            />

        <style>
            .sn-phm-child,
            .sn-phm-item {
                position: absolute;
                top: 87.64px;
                left: -0.77px;
                background-color: var(--color-whitesmoke-100);
                border-top: 0.8px solid var(--color-gray-100);
                box-sizing: border-box;
                width: 1477.56px;
                height: 1.54px;
            }
            .sn-phm-item {
                top: 291.58px;
                left: 535.04px;
                width: 754.16px;
            }
            .chng-nng,
            .m-phm-chc {
                position: absolute;
                top: 0;
            }
            .chng-nng {
                background: none;
                border: none;
                left: 882.78px;
                width: 111.45px;
                height: 14.61px;
            }
            .m-phm-chc {
                left: 0;
            }
            .chm-sc-da,
            .lm-sch-da,
            .m-phm-chc-nng {
                background: none;
                border: none;
                position: absolute;
                top: 0;
                left: 655.65px;
                width: 182.18px;
                height: 14.61px;
            }
            .chm-sc-da,
            .lm-sch-da {
                background: none;
                border: none;
                left: 499.24px;
                width: 111.45px;
            }
            .chm-sc-da {
                background: none;
                border: none;
                left: 339.61px;
                width: 114.67px;
            }
            .danh-muc-san-pham,
            .trang-im,
            .tt-c-sn-phm {
                position: absolute;
                top: 0;
                left: 192.84px;
                width: 101.81px;
                height: 14.61px;
            }
            .trang-im {
                background: none;
                border: none;
                left: 192.84px;
                width: 101.8px;
                height: 14.61px;
            }
            .danh-muc-san-pham,
            .tt-c-sn-phm {
                background: none;
                border: none;
                left: 0;
                width: 147.89px;
            }
            .danh-muc-san-pham {
                top: 64.45px;
                left: 240.54px;
                width: 994.23px;
                font-size: var(--font-size-smi-3);
            }
            .sn-phm-inner {
                position: absolute;
                top: 53.89px;
                left: -0.78px;
                background-color: var(--color-whitesmoke-100);
                border-top: 0.8px solid var(--color-gray-100);
                box-sizing: border-box;
                width: 1477.57px;
                height: 1.54px;
            }
            .bag-1-icon {
                height: 100%;
                width: 100%;
                top: 0;
                bottom: 0;
                left: 0;
                max-width: 100%;
                overflow: hidden;
                max-height: 100%;
                object-fit: cover;
            }
            .bag,
            .bag-1-icon,
            .ng-nhp {
                position: absolute;
                right: 0;
            }
            .bag {
                border: none;
                background: none;
                top: 0;
                width: 15.36px;
                height: 15.36px;
            }
            .ng-nhp {
                top: 1.54px;
                display: inline-block;
                width: 89.62px;
            }
            .login-1-icon {
                position: absolute;
                top: 0;
                right: 93.27px;
                width: 14px;
                height: 14px;
                object-fit: cover;
            }
            .login,
            .navbar,
            .search {
                position: absolute;
                top: 2.3px;
                right: 66.04px;
                width: 107.27px;
                height: 15.54px;
            }
            .navbar,
            .search {
                right: 33.79px;
                width: 13.82px;
                height: 13.82px;
            }
            .navbar {
                top: 17.15px;
                right: 32.14px;
                width: 173.32px;
                height: 17.84px;
                font-size: 12.29px;
            }
            .icy-beauty {
                position: absolute;
                top: calc(50% - 422.43px);
                left: calc(50% - 93.02px);
                font-size: 24.6px;
                letter-spacing: 0.2em;
                font-family: var(--font-outfit);
            }
            .rectangle-div {
                position: absolute;
                top: 113.77px;
                left: 53.81px;
                background-color: #d9d9d9;
                width: 445.88px;
                height: 445.88px;
            }
            .tn-sn-phmkkkkkkkkkkkkkkkkkk {
                border: none;
                font-weight: 600;
                font-size: 21.52px;
                margin: 0;
                text-transform: uppercase;
                width: 900px;
            }
            .chi-tit-sn,
            .tn-sn-phmkkkkkkkkkkkkkkkkkk-container,
            .vnd {
                border: none;
                position: absolute;
                left: 532.82px;
                font-size: 24px;
                font-weight: 600;
            }
            .tn-sn-phmkkkkkkkkkkkkkkkkkk-container {
                top: 120.77px;
                letter-spacing: 0.03em;
                display: inline-block;
                width: 900px;
            }
            .chi-tit-sn,
            .vnd {
                top: 181.42px;
            }
            .chi-tit-sn {
                top: 290.96px;
                font-size: 19.22px;
            }
            .nt-thm-vo-gi-hng-child {
                position: absolute;
                top: 0;
                left: 0;
                background-color: var(--color-black);
                border: 0.8px solid var(--color-gray-100);
                box-sizing: border-box;
                width: 271.37px;
                height: 37.67px;
            }
            .thm-vo-gi {
                position: absolute;
                top: 9.99px;
                left: 59.19px;
            }
            .nt-thm-vo-gi-hng {
                position: absolute;
                top: 223.71px;
                left: 644.21px;
                width: 271.37px;
                height: 37.67px;
                color: var(--color-white);
            }
            .soluong-sp {
                width: 34px;
                text-align: center;
                position: absolute;
                top: 8.46px;
                left: 33.43px;
                font-weight: 500;
                border: none;
                font-size: 17px;
            }
            input[type=number]::-webkit-inner-spin-button,
            input[type=number]::-webkit-outer-spin-button {
                -webkit-appearance: none;
                margin: 0;
            }
            .s-lng-child {
                position: absolute;
                top: 0;
                left: 0;
                background-color: var(--color-gainsboro-100);
                border: 0.8px solid var(--color-gray-100);
                box-sizing: border-box;
                width: 108.39px;
                height: 37.67px;
            }
            .minus-2-icon,
            .plus-2-icon {
                position: absolute;
                top: 11.02px;
                left: 77.67px;
                width: 14.51px;
                height: 15.62px;
                object-fit: cover;

            }
            .minus-2-icon {
                left: 14.51px;
                width: 17.07px;
            }
            .so-luong-trong-chi-tiet {
                position: absolute;
                top: 223.71px;
                left: 535.82px;
                width: 108.39px;
                height: 37.67px;
                font-size: 17.68px;
            }
            .danh-mc,
            .n-v-tnh{
                left: 36.3%;
                top: 379.76px;
                color: var(--color-gray-200);
            }
            .danh-mc {
                position: absolute;
                top: 43.9%;
            }
            .n-v-tnh {
                top: 45.91%;
                left: 37.02%;
            }
            .ml,
            .n-v-tnh,
            .s-lng-hng {
                position: absolute;
                top: 47.3%;
                left: 36.3%;
            }
            .s-lng-hng {
                top: 50.91%;
                left: 36.3%;
                color: var(--color-gray-200);
            }
            .ml {
                border: none;
                font-size: 15px;
                top: 47.3%;
                left: 42.55%;
            }
            .so-luong,
            .m-phm,
            .trang-ch {
                position: absolute;
                top: 47.91%;
                left: 47.5%;
            }
            .m-phm,
            .trang-ch {
                top: 45.91%;
                left: 42.55%;
                color: var(--color-steelblue);
            }
            .so-luong {
                border: none;
                font-size: 15px;
                left: 47.55%;
                top: 50.91%;
            }
            .m-phm {
                border: none;
                font-size: 15px;
                left: 42.55%;
                top: 43.9%;
            }
            .back-2-icon {
                position: absolute;
                top: 346.71px;
                left: 707.25px;
                width: 10.76px;
                height: 14.11px;
                object-fit: cover;
            }
            .sn-phm {
                background-color: var(--color-white);
                width: 100%;
                height: 864.84px;
                overflow: hidden;
                text-align: left;
                font-size: 15.37px;
                color: var(--color-black);
                font-family: var(--font-roboto);
            }

            <%-- Tim kiem --%>

            .o-tim-kiem {
                position: absolute;
                top: 0;
                left: 0;
                background-color: #f2f2f2;
                width: 921.27px;
                height: 36.67px;
            }
            .close-icon,
            .search-icon {
                position: absolute;
                top: 8.23px;
                left: 883.85px;
                width: 19.46px;
                height: 19.46px;
                object-fit: cover;
            }
            .close-icon {
                height: 100%;
                width: 100%;
                top: 0;
                right: 0;
                bottom: 0;
                left: 0;
                max-width: 100%;
                overflow: hidden;
                max-height: 100%;
                mix-blend-mode: linear-burn;
            }
            .close,
            .thanh-tim-kiem {
                position: absolute;
                top: 8.23px;
                left: 936.99px;
                width: 30.59px;
                height: 19.46px;
            }
            .thanh-tim-kiem {
                top: 9.73px;
                left: 348.75px;
                width: 967.58px;
                height: 36.67px;
            }
            .icy-beauty1 {
                position: absolute;
                top: calc(50% - 16.09px);
                left: calc(50% - 666.82px);
                letter-spacing: 0.2em;
            }
            .tim-kiem {
                position: relative;
                background-color: var(--color-white);
                border: 0.7px solid var(--color-white);
                box-sizing: border-box;
                width: 1438.41px;
                height: 57.63px;
                overflow: hidden;
                max-width: 90%;
                max-height: 90%;
                text-align: left;
                font-size: 23.95px;
                color: var(--color-black);
                font-family: var(--font-outfit);
            }

            <%-- Gio hang --%>

            .nut-thanh-toan {
                background: none;
                border: none;
            }
            .nt-thanh-ton {
                position: absolute;
                top: 274.66px;
                left: 20.95px;
                background-color: #000;
                width: 351.75px;
                height: 41.91px;
                cursor: pointer;
            }
            .s-tin,
            .tng-tin1 {
                position: absolute;
                top: 0;
                left: 0;
                font-weight: 600;
            }
            .s-tin {
                left: 81.59%;
            }
            .close-icon,
            .tng-tin {
                position: absolute;
                height: 2.14%;
                width: 89.88%;
                top: 30.8%;
                right: 4.79%;
                bottom: 69.06%;
                left: 5.33%;
            }
            .close-icon {
                height: 11.95%;
                width: 4.26%;
                top: 2.76%;
                right: 0;
                bottom: 85.29%;
                left: 95.74%;
                max-width: 100%;
                overflow: hidden;
                max-height: 100%;
                object-fit: cover;
                mix-blend-mode: linear-burn;
            }
            .tn-sn-phm {
                margin-block-start: 0;
                margin-block-end: 0.75px;
            }
            .v {
                margin: 0;
            }
            .tn-sn-phm-container {
                position: absolute;
                width: 53.4%;
                top: 2.07%;
                left: 37.45%;
                display: inline-block;
            }
            .n-v-tnh1,
            .tng-gim-s-lng1 {
                position: absolute;
                top: 45.52%;
                left: 37.02%;
            }
            .tng-gim-s-lng1 {
                height: 100%;
                width: 100%;
                top: 0;
                right: 0;
                bottom: 0;
                left: 0;
                background-color: transparent;
                border: 0.7px solid rgba(0, 0, 0, 0.3);
                box-sizing: border-box;
            }
            .minus-1-icon,
            .plus-1-icon {
                position: absolute;
                height: 35.3%;
                width: 13.96%;
                top: 31.43%;
                right: 9.64%;
                bottom: 33.27%;
                left: 76.4%;
                max-width: 100%;
                overflow: hidden;
                max-height: 100%;
                object-fit: cover;
            }
            .minus-1-icon {
                right: 77.06%;
                left: 8.99%;
            }
            .s-lng1 {
                position: absolute;
                height: 67.65%;
                width: 26.74%;
                top: 17.65%;
                left: 36.05%;
                display: inline-block;
            }
            .tng-gim-s-lng {
                position: absolute;
                height: 24.14%;
                width: 18.94%;
                top: 71.72%;
                right: 43.62%;
                bottom: 4.14%;
                left: 37.45%;
            }
            .hnh-sn-phm,
            .s-tin1 {
                position: absolute;
                top: 75.86%;
                left: 77.23%;
            }
            .hnh-sn-phm {
                height: 100%;
                width: 29.57%;
                top: 0;
                right: 70.43%;
                bottom: 0;
                left: 0;
                background-color: transparent;
                border: 0.7px solid rgba(0, 0, 0, 0.3);
                box-sizing: border-box;
            }
            .gi-hng-child {
                position: absolute;
                top: 82.7px;
                left: 19.81px;
                background-color: #f5f5f5;
                border-top: 0.8px solid rgba(0, 0, 0, 0.3);
                box-sizing: border-box;
                width: 351.7px;
                height: 0px;

            }

            .m-t-sn-phm {
                position: absolute;
                height: 12.89%;
                width: 89.52%;
                top: 99.54px;
                right: 5.14%;
                bottom: 633.89px;
                left: 5.33%;
            }
            .gi-hng-item {
                position: absolute;
                top: 212.02px;
                left: 19.81px;
                background-color: #f5f5f5;
                border-top: 0.8px solid rgba(0, 0, 0, 0.3);
                box-sizing: border-box;
                width: 351.7px;
                height: 0px;
            }

            .close-icon1,
            .gi-hng1 {
                position: absolute;
                top: 6.93%;
                left: 8.38%;
            }
            .close-icon1 {
                height: 100%;
                width: 100%;
                top: 0;
                right: 0;
                bottom: 0;
                left: 0;
                max-width: 100%;
                overflow: hidden;
                max-height: 100%;
                object-fit: cover;
                mix-blend-mode: linear-burn;
            }
            .close {
                background: none;
                border: none;
                position: absolute;
                height: 2.31%;
                width: 5.72%;
                top: 2.04%;
                right: 5.14%;
                bottom: 95.64%;
                left: 89.14%;
            }
            .thanh-ton {
                position: absolute;
                top: 287.38px;
                left: 153.42px;
                font-weight: 500;
                color: #fff;
            }
            .gi-hng-inner {
                position: absolute;
                top: 82.7px;
                left: 19.81px;
                background-color: #f5f5f5;
                border-top: 1px solid #000;
                box-sizing: border-box;
                width: 96.3px;
                height: 2px;
            }
            .n-hng {
                position: absolute;
                top: 6.93%;
                left: 36.38%;
                color: rgba(0, 0, 0, 0.5);
            }
            .gi-hng {
                position: relative;
                left: 37%;
                background-color: #fff;
                width: 392.91px;
                height: 841.94px;
                overflow: hidden;
                max-width: 100%;
                max-height: 100%;
                text-align: left;
                font-size: 14.97px;
                color: #000;
                font-family: Roboto;
            }
            body {
                margin: 0;
                line-height: normal;
            }

            .popup-overlay {
                display: flex;
                flex-direction: column;
                position: fixed;
                inset: 0;
            }

            :root {
                /* fonts */
                --font-roboto: Roboto;
                --font-outfit: Outfit;

                /* font sizes */
                --font-size-base-4: 15.4px;
                --font-size-2xl-5: 21.5px;
                --font-size-smi-3: 12.3px;
                --font-size-mini: 15px;
                --font-size-base: 16px;

                /* Colors */
                --color-white: #fff;
                --color-steelblue: #4069aa;
                --color-black: #000;
                --color-gray-100: rgba(0, 0, 0, 0.3);
                --color-gray-200: rgba(0, 0, 0, 0.7);
                --color-gainsboro-100: rgba(217, 217, 217, 0);
                --color-whitesmoke-100: #f5f5f5;
            }

        </style>
    </head>
    <body>
        
        <nav>
            <%@include file="Header_TrangBanHang.jsp" %>
        </nav>
        <c:url var="acc" value="/account"/>
        
        <c:url var="url"value="/sanpham"/>
        
        <form action="${url}/index/chi-tiet-san-pham/${form.tenSP}/${form.maSP}?" class="sn-phm" method="POST">
            <!--            <div class="sn-phm-child"></div>
                        <div class="sn-phm-item"></div>
                        <div class="danh-muc-san-pham">
                            <button formaction="${url}/chong-nang" class="chng-nng">
                                <div class="m-phm-chc">CHỐNG NẮNG</div>
                            </button>
                            <button formaction="${url}/my-pham-chuc-nang" class="m-phm-chc-nng">
                                <div class="m-phm-chc">MỸ PHẨM CHỨC NĂNG</div>
                            </button>
                            <button formaction="${url}/lam-sach-da" class="lm-sch-da">
                                <div class="m-phm-chc">LÀM SẠCH DA</div>
                            </button>
                            <button formaction="${url}/cham-soc-da" class="chm-sc-da">
                                <div class="m-phm-chc">CHĂM SÓC DA</div>
                            </button>
                            <button formaction="${url}/trang-diem" class="trang-im">
                                <div class="m-phm-chc">TRANG ĐIỂM</div>
                            </button>
                            <button formaction="${url}/tat-ca-san-pham"  class="tt-c-sn-phm">
                                <div class="m-phm-chc">TẤT CẢ SẢN PHẨM</div>
                            </button>
                        </div>
                        <div class="sn-phm-inner"></div>
                        <div class="navbar">
                            <button formaction="${url}/gio-hang" class="bag" id="bagContainer">
                                <img class="bag-1-icon" alt="" src="/J2EE/view/img/bag.png" />
                            </button>
                            <div class="login">
                                <div class="ng-nhp">ĐĂNG NHẬP</div>
                                <img class="login-1-icon" alt="" src="/J2EE/view/img/login.png" />
                            </div>
                            <div class="search" id="searchContainer">
                                <img class="bag-1-icon" alt="" src="/J2EE/view/img/search.png" />
                            </div>
                        </div>
                        <b class="icy-beauty">ICY BEAUTY</b>-->
            <input class="rectangle-div" type="image" name="hinhsp" value="${form.hinhAnh}" src="/J2EE/view/img/SanPham/${form.hinhAnh}"/>
            <div class="tn-sn-phmkkkkkkkkkkkkkkkkkk-container">
                <input class="tn-sn-phmkkkkkkkkkkkkkkkkkk" type="text" name="tensp" value="${form.tenSP}" readonly="readonly"/>
            </div>
            <input type="hidden" name="username-nguoi-dung" value="${name}"/>
            <fmt:setLocale value = "vi_VN"/>
            <fmt:formatNumber var="giaban" value = "${form.giaBan}" type = "currency" minFractionDigits="0"/>
            <input class="vnd" name="giaban" value="${giaban}"/>

            <div class="chi-tit-sn">CHI TIẾT SẢN PHẨM</div>
            <div class="nt-thm-vo-gi-hng">
                <input type="submit" class="nt-thm-vo-gi-hng-child" name="them-gio-hang" value="Add to Cart"/>
                <b class="thm-vo-gi">THÊM VÀO GIỎ HÀNG</b>
                
            </div>
            <div class="so-luong-trong-chi-tiet">
                <div class="s-lng-child"></div>
                <input name="so-luong-duoc-chon" id="Nhap-so-luong" class="soluong-sp" type="number" min="1" max="${form.soLuong}" value="1"/>
                <div onClick="increment()">
                    <image class="plus-2-icon" src="/J2EE/view/img/plus.png" />
                </div>
                <div onClick="decrement()">
                    <image class="minus-2-icon" src="/J2EE/view/img/minus.png"/>
                </div>
                
            </div>
            <div class="danh-mc">Danh mục:</div>
            <div class="n-v-tnh">Đơn vị tính:</div>
            <div class="s-lng-hng">Số lượng hàng có sẵn:</div>
            <input name="donvitinh" value="${form.donViTinh}" class="ml" readonly="readonly"/>
            <input name="soluong" class="so-luong" value="${form.soLuong}" readonly="readonly"/>
            <input name="loaisp" value="${form.loaiSP}" class="m-phm"/>
        </form>

        <div id="timKiemContainer" class="popup-overlay" style="display: none">
            <div class="tim-kiem">
                <div class="thanh-tim-kiem">
                    <div class="o-tim-kiem"></div>
                    <img class="search-icon" alt="" src="/J2EE/view/img/search.png" />

                    <div class="close">
                        <img class="close-icon" alt="" src="/J2EE/view/img/close.png" />
                    </div>
                </div>
                <b class="icy-beauty1">ICY BEAUTY</b>
            </div>
        </div>

        <script>
            function close_bag() {
                var popup = document.getElementById("giHngContainer");
                var popupStyle = popup.style;
                popupStyle.display = "none";
            }
            function increment() {
                document.getElementById('Nhap-so-luong').stepUp();
            }
            function decrement() {
                document.getElementById('Nhap-so-luong').stepDown();
            }
            var popupntThanhTon = document.getElementById("popupntThanhTon");
            if (popupntThanhTon) {
                popupntThanhTon.addEventListener("click", function (e) {
                    // Please sync "ThanhToan" to the project
                });
            }

            var popupnutThanhToan = document.getElementById("popupnutThanhToan");
            if (popupnutThanhToan) {
                popupnutThanhToan.addEventListener("click", function (e) {
                    // Please sync "ThanhToan" to the project
                });
            }

            var searchContainer = document.getElementById("searchContainer");
            if (searchContainer) {
                searchContainer.addEventListener("click", function () {
                    var popup = document.getElementById("timKiemContainer");
                    if (!popup)
                        return;
                    var popupStyle = popup.style;
                    if (popupStyle) {
                        popupStyle.display = "flex";
                        popupStyle.zIndex = 100;
                        popupStyle.backgroundColor = "rgba(113, 113, 113, 0.3)";
                        popupStyle.alignItems = "center";
                        popupStyle.justifyContent = "center";
                    }
                    popup.setAttribute("closable", "");

                    var onClick =
                            popup.onClick ||
                            function (e) {
                                if (e.target === popup && popup.hasAttribute("closable")) {
                                    popupStyle.display = "none";
                                }
                            };
                    popup.addEventListener("click", onClick);
                });
            }
        </script>
    </body>
</html>

