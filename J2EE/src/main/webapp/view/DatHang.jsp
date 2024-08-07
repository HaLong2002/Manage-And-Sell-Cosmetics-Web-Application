<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="initial-scale=1, width=device-width" />

        <link rel="stylesheet" href="./global.css" />
        <link rel="stylesheet" href="./index.css" />
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;600&display=swap"
            />
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Outfit:wght@700&display=swap"
            />
    </head>
    <style>
        .athang-child {
            position: absolute;
            top: 87.64px;
            left: -0.77px;
            background-color: var(--color-whitesmoke-100);
            border-top: 0.8px solid var(--color-gray);
            box-sizing: border-box;
            width: 1477.56px;
            height: 1.54px;
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
        .lm-sch-da,
        .m-phm-chc-nng {
            background: none;
            border: none;
            position: absolute;
            top: 0;
            left: 655.66px;
            width: 182.17px;
            height: 14.61px;
        }
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
            width: 114.66px;
            height: 14.61px;
        }
        .chm-sc-da,
        .trang-im,
        .tt-c-sn {
            position: absolute;
            top: 0;
        }
        .trang-im {
            background: none;
            border: none;
            left: 192.84px;
            width: 101.8px;
            height: 14.61px;
        }
        .tt-c-sn {
            width: 14.86%;
            left: 0;
/*            text-decoration: underline;*/
            display: inline-block;
        }
        .danh-muc-san-pham {
            position: absolute;
            top: 66px;
            left: 239px;
            width: 994.23px;
            height: 14.61px;
            font-size: var(--font-size-smi-3);
        }
        .athang-item {
            position: absolute;
            top: 53.89px;
            left: -0.78px;
            background-color: var(--color-whitesmoke-100);
            border-top: 0.8px solid var(--color-gray);
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
            top: 16.7px;
            right: 31.68px;
            width: 173.32px;
            height: 17.84px;
            font-size: 12.29px;
        }
        .icy-beauty {
            position: absolute;
            top: calc(50% - 422.43px);
            left: calc(50% - 93.02px);
            font-size: var(--font-size-5xl-6);
            letter-spacing: 0.2em;
            font-family: var(--font-outfit);
        }
        .n-hng {
            position: absolute;
            top: 168px;
            left: 562px;
            font-weight: 500;
        }
        .guilai-child,
        .thng-tin-n {
            position: absolute;
            top: 216px;
            left: 487px;
        }
        .guilai-child {
            top: 0;
            left: 0;
            background-color: var(--color-black);
            width: 154px;
            height: 58px;
        }
        .gi-li,
        .guilai {
            position: absolute;
            top: 16px;
            left: 46px;
        }
        .guilai {
            top: 264px;
            left: 661px;
            width: 154px;
            height: 58px;
            color: var(--color-white);
            font-size: 20px;
        }
        .quaylaitrangchu-child {
            position: absolute;
            top: 0;
            left: 0;
            background-color: var(--color-black);
            width: 257px;
            height: 58px;
        }
        .quay-li-trang,
        .quaylaitrangchu {
            position: absolute;
            top: 16px;
            left: 45px;
        }
        .quaylaitrangchu {
            top: 347px;
            left: 610px;
            width: 257px;
            height: 58px;
            color: var(--color-white);
            font-size: 20px;
            text-align: center;
        }
        .athang {
            background-color: var(--color-white);
            width: 100%;
            height: 864.84px;
            overflow: hidden;
            text-align: left;
            font-size: var(--font-size-3xl);
            color: var(--color-black);
            font-family: var(--font-roboto);
        }
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
            top: calc(50% - 15.34px);
            left: calc(50% - 666.07px);
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
        .nt-thanh-ton {
            position: absolute;
            top: 0;
            left: 0;
            background-color: var(--color-black);
            width: 359px;
            height: 41.91px;
            cursor: pointer;
        }
        .thanh-ton {
            position: absolute;
            top: 12px;
            left: 131px;
            font-weight: 500;
        }
        .nut-thanh-toan {
            position: absolute;
            top: 371px;
            left: 159px;
            width: 359px;
            height: 41.91px;
            cursor: pointer;
            color: var(--color-white);
        }
        .s-tin,
        .tng-tin1 {
            position: absolute;
            width: 22.94%;
            top: 0;
            left: 0;
            font-weight: 600;
            display: inline-block;
        }
        .s-tin {
            width: 18.41%;
            left: 81.59%;
        }
        .close-icon1,
        .tng-tin {
            position: absolute;
            height: 2.14%;
            width: 47.43%;
            top: 39.55%;
            right: 50.68%;
            bottom: 58.31%;
            left: 1.9%;
        }
        .close-icon1 {
            height: 9.98%;
            width: 6.5%;
            top: 0;
            right: 30.43%;
            bottom: 90.02%;
            left: 63.07%;
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
        .n-v-tnh,
        .s-tin1,
        .tn-sn-phm-container {
            position: absolute;
            width: 81.52%;
            top: 6.15%;
            left: 18.48%;
            display: inline-block;
        }
        .n-v-tnh,
        .s-tin1 {
            width: 30.81%;
            top: 46.92%;
        }
        .s-tin1 {
            width: 27.34%;
            top: 73.85%;
            left: 35.69%;
        }
        .hnh-sn-phm {
            position: absolute;
            height: 100%;
            width: 15.13%;
            top: 0;
            right: 84.87%;
            bottom: 0;
            left: 0;
            background-color: var(--color-gainsboro);
            border: 0.7px solid var(--color-gray);
            box-sizing: border-box;
        }
        .m-t-sn-phm {
            height: 15.44%;
            width: 58.65%;
            top: 18.53%;
            right: 39.45%;
            bottom: 66.03%;
        }
        .gi-hng-child,
        .gi-hng1,
        .m-t-sn-phm {
            position: absolute;
            left: 1.9%;
        }
        .gi-hng-child {
            height: 0.12%;
            width: 47.43%;
            top: 37.18%;
            right: 50.68%;
            bottom: 62.71%;
            max-width: 100%;
            overflow: hidden;
            max-height: 100%;
            object-fit: cover;
        }
        .gi-hng1 {
            width: 17.82%;
            top: 13.06%;
            display: inline-block;
        }
        .close-icon2,
        .gi-hng-item {
            position: absolute;
            height: 0.12%;
            width: 47.43%;
            top: 16.15%;
            right: 50.68%;
            bottom: 83.73%;
            left: 1.9%;
            max-width: 100%;
            overflow: hidden;
            max-height: 100%;
            object-fit: cover;
        }
        .close-icon2 {
            height: 100%;
            width: 100%;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            display: none;
            mix-blend-mode: linear-burn;
        }
        .close1 {
            position: absolute;
            height: 2.31%;
            width: 5.72%;
            top: 2.04%;
            right: 5.14%;
            bottom: 95.64%;
            left: 89.14%;
        }
        .gi-hng-inner,
        .line-div {
            position: absolute;
            top: 87.64px;
            left: -0.77px;
            background-color: var(--color-whitesmoke-100);
            border-top: 0.8px solid var(--color-gray);
            box-sizing: border-box;
            width: 1477.56px;
            height: 1.54px;
        }
        .line-div {
            top: 53.89px;
            left: -0.78px;
            width: 1477.57px;
        }
        .bag-1-icon1 {
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
        .bag-1-icon1,
        .bag1,
        .ng-nhp1 {
            position: absolute;
            right: 0;
        }
        .bag1 {
            top: 0;
            width: 15.36px;
            height: 15.36px;
        }
        .ng-nhp1 {
            top: 1.54px;
            display: inline-block;
            width: 89.62px;
        }
        .login-1-icon1 {
            position: absolute;
            top: 0;
            right: 93.27px;
            width: 14px;
            height: 14px;
            object-fit: cover;
        }
        .login1,
        .navbar1,
        .search1 {
            position: absolute;
            top: 2.3px;
            right: 66.04px;
            width: 107.27px;
            height: 15.54px;
        }
        .navbar1,
        .search1 {
            right: 33.79px;
            width: 13.82px;
            height: 13.82px;
        }
        .navbar1 {
            top: 16.7px;
            right: 31.68px;
            width: 173.32px;
            height: 17.84px;
            font-size: 12.29px;
        }
        .icy-beauty2 {
            position: absolute;
            top: calc(50% - 410.98px);
            left: calc(50% - 93.02px);
            font-size: var(--font-size-5xl-6);
            letter-spacing: 0.2em;
            font-family: var(--font-outfit);
        }
        .div {
            position: absolute;
            top: 5px;
            left: 33px;
            font-weight: 500;
            display: inline-block;
            width: 8.22px;
            height: 16.27px;
        }
        .s-lng-child {
            position: absolute;
            top: 0;
            left: 0;
            background-color: var(--color-gainsboro);
            border: 0.8px solid var(--color-gray);
            box-sizing: border-box;
            width: 81.05px;
            height: 29.19px;
        }
        .minus-2-icon,
        .plus-2-icon {
            position: absolute;
            top: 8.54px;
            left: 58.07px;
            width: 10.85px;
            height: 12.1px;
            object-fit: cover;
        }
        .minus-2-icon {
            left: 10.85px;
            width: 12.76px;
        }
        .s-lng {
            position: absolute;
            top: 246px;
            left: 188px;
            width: 81.05px;
            height: 29.19px;
        }
        .chng-nng3 {
            position: absolute;
            top: 0;
            left: 0;
        }
        .chng-nng2,
        .lm-sch-da2,
        .m-phm-chc-nng1 {
            position: absolute;
            top: 0;
            left: 882.78px;
            width: 111.45px;
            height: 14.61px;
        }
        .lm-sch-da2,
        .m-phm-chc-nng1 {
            left: 655.66px;
            width: 182.17px;
        }
        .lm-sch-da2 {
            left: 499.24px;
            width: 111.45px;
        }
        .chm-sc-da2 {
            left: 339.61px;
            width: 114.66px;
            height: 14.61px;
        }
        .chm-sc-da2,
        .trang-im2,
        .tt-c-sn1 {
            position: absolute;
            top: 0;
        }
        .trang-im2 {
            left: 192.84px;
            width: 101.8px;
            height: 14.61px;
        }
        .tt-c-sn1 {
            width: 14.86%;
            left: 0;
            text-decoration: underline;
            display: inline-block;
        }
        .danh-muc-san-pham1 {
            position: absolute;
            top: 66px;
            left: 239px;
            width: 994.23px;
            height: 14.61px;
            font-size: var(--font-size-smi-3);
        }
        .gi-hng {
            position: relative;
            background-color: var(--color-white);
            width: 1476px;
            height: 841.94px;
            overflow: hidden;
            max-width: 90%;
            max-height: 90%;
            text-align: left;
            font-size: 15.36px;
            color: var(--color-black);
            font-family: var(--font-roboto);
        }

        /*Tìm kiếm*/

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
            top: calc(50% - 15.34px);
            left: calc(50% - 666.07px);
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
            --font-size-3xl: 22px;
            --font-size-5xl-6: 24.6px;
            --font-size-smi-3: 12.3px;
            --font-size-base-4: 15.4px;
            --font-size-base: 16px;

            /* Colors */
            --color-white: #fff;
            --color-black: #000;
            --color-whitesmoke-100: #f5f5f5;
            --color-gray: rgba(0, 0, 0, 0.3);
            --color-gainsboro: rgba(217, 217, 217, 0);
        }

    </style>
    <body>
        <nav>
            <%@include file="Header_TrangBanHang.jsp" %>
        </nav>
        <c:url var="url"value="/sanpham"/>
        <form action="${url}/index/dat-hang" class="athang">
<!--            <div class="athang-child"></div>
            <div class="danh-muc-san-pham">
                <div class="chng-nng">
                    <div class="m-phm-chc">CHỐNG NẮNG</div>
                </div>
                <div class="m-phm-chc-nng">
                    <div class="m-phm-chc">MỸ PHẨM CHỨC NĂNG</div>
                </div>
                <div class="lm-sch-da">
                    <div class="m-phm-chc">LÀM SẠCH DA</div>
                </div>
                <div class="chm-sc-da">
                    <div class="m-phm-chc">CHĂM SÓC DA</div>
                </div>
                <div class="trang-im">
                    <div class="m-phm-chc">TRANG ĐIỂM</div>
                </div>
                <div class="tt-c-sn">TẤT CẢ SẢN PHẨM</div>
            </div>
            <div class="athang-item"></div>
            <div class="navbar">
                <div class="bag" id="bagContainer">
                    <img class="bag-1-icon" alt="" src="/J2EE/view/img/bag.png" />
                </div>
                <div class="login">
                    <div class="ng-nhp">ĐĂNG NHẬP</div>
                    <img class="login-1-icon" alt="" src="/J2EE/view/img/login.png" />
                </div>
                <div class="search" id="searchContainer">
                    <img class="bag-1-icon" alt="" src="/J2EE/view/img/search.png" />
                </div>
            </div>
            <b class="icy-beauty">ICY BEAUTY</b>-->
            <input type="hidden" name="username-nguoi-dung" value="${name}"/>
            <div class="n-hng">Đơn hàng đã được đặt thành công.</div>
            <div class="thng-tin-n">
                Thông tin đơn hàng đã được gửi vào email của bạn.
            </div>
            <button formaction="${url}/index/dat-hang" class="guilai">
                <div class="guilai-child"></div>
                <div class="gi-li">Gửi lại</div>
            </button>
            <button formaction="${url}/tat-ca-san-pham" class="quaylaitrangchu">
                <div class="quaylaitrangchu-child"></div>
                <div class="quay-li-trang">Quay lại trang chủ</div>
            </button>
        </form>

        <div id="timKiemContainer" class="popup-overlay" style="display: none">
            <div class="tim-kiem">
                <div class="thanh-tim-kiem">
                    <div class="o-tim-kiem"></div>
                    <img class="search-icon" alt="" src="./public/search@2x.png" />

                    <div class="close">
                        <img class="close-icon" alt="" src="./public/close@2x.png" />
                    </div>
                </div>
                <b class="icy-beauty1">ICY BEAUTY</b>
            </div>
        </div>

        <script>
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

            var bagContainer = document.getElementById("bagContainer");
            if (bagContainer) {
                bagContainer.addEventListener("click", function () {
                    var popup = document.getElementById("giHngContainer");
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

