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
            href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap"
            />
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Outfit:wght@700&display=swap"
            />
    </head>
    <style>
        .gi-hng-rng-child {
            position: absolute;
            height: 0.18%;
            width: 47.53%;
            top: 40.53%;
            right: 27.52%;
            bottom: 59.29%;
            left: 24.95%;
            background-color: var(--color-whitesmoke-100);
            border-top: 0.8px solid var(--color-gray);
            box-sizing: border-box;
        }
        .thanh-ton {
            position: absolute;
            top: 287.38px;
            left: 153.42px;
            font-weight: 500;
            color: var(--color-white);
        }
        .shopping-cart-1-icon {
            position: absolute;
            top: 195px;
            left: 697px;
            width: 56px;
            height: 55px;
            object-fit: cover;
        }
        .hin-cha-c {
            position: absolute;
            top: 263px;
            left: 632px;
            font-size: 20px;
        }
        .gi-hng-rng-item {
            position: absolute;
            top: 87.67px;
            left: -0.55px;
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
        .m-phm-chc-nng {
            background: none;
            border: none;
            left: 655.65px;
            width: 182.18px;
            height: 14.61px;
        }
        .chm-sc-da,
        .lm-sch-da,
        .m-phm-chc-nng {
            position: absolute;
            top: 0;
        }
        .lm-sch-da {
            background: none;
            border: none;
            left: 499.24px;
            width: 111.45px;
            height: 14.61px;
        }
        .chm-sc-da {
            background: none;
            border: none;
            width: 11.49%;
            left: 34.16%;
            display: inline-block;
        }
        .trang-im,
        .tt-c-sn-phm {
            background: none;
            border: none;
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
        .tt-c-sn-phm {
            height: 100%;
            width: 14.87%;
            right: 85.13%;
            bottom: 0;
            left: 0;
        }
        .danh-muc-san-pham {
            position: absolute;
            top: 65px;
            left: 241px;
            width: 994.23px;
            height: 14.61px;
            font-size: var(--font-size-smi-3);
        }
        .gi-hng-rng-inner,
        .line-div {
            position: absolute;
            top: 53.92px;
            left: -0.57px;
            background-color: var(--color-whitesmoke-100);
            border-top: 0.8px solid var(--color-gray);
            box-sizing: border-box;
            width: 1477.57px;
            height: 1.54px;
        }
        .line-div {
            top: 138.23px;
            left: 368.23px;
            width: 701.54px;
        }
        .bag-1-icon,
        .ng-nhp {
            position: absolute;
            right: 0;
        }
        .bag-1-icon {
            height: 87.57%;
            width: 8.86%;
            top: 0;
            bottom: 12.43%;
            left: 91.14%;
            max-width: 100%;
            overflow: hidden;
            max-height: 100%;
            object-fit: cover;
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
        .search-1-icon {
            position: absolute;
            top: 2px;
            right: 66.09px;
            width: 107.27px;
            height: 15.54px;
        }
        .search-1-icon {
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
        }
        .navbar,
        .search {
            position: absolute;
            top: 2px;
            right: 33.83px;
            width: 13.82px;
            height: 13.82px;
        }
        .navbar {
            height: 2.08%;
            width: 11.75%;
            top: 2.02%;
            right: 2.14%;
            bottom: 95.9%;
            left: 86.11%;
            font-size: 12.29px;
        }
        .icy-beauty {
            position: absolute;
            top: calc(50% - 410.98px);
            left: calc(50% - 92.8px);
            font-size: 24.6px;
            letter-spacing: 0.2em;
            font-family: var(--font-outfit);
        }
        .gi-hng {
            position: absolute;
            width: 10.64%;
            top: 12.3%;
            left: 25%;
            font-size: 22px;
            display: inline-block;
        }
        .gi-hng-rng {
            position: relative;
            background-color: var(--color-white);
            width: 100%;
            height: 842px;
            overflow: hidden;
            text-align: left;
            font-size: 14.97px;
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
            --font-size-smi-3: 12.3px;
            --font-size-base: 16px;

            /* Colors */
            --color-white: #fff;
            --color-black: #000;
            --color-whitesmoke-100: #f5f5f5;
            --color-gray: rgba(0, 0, 0, 0.3);
        }

    </style>
    <body>
        <nav>
            <%@include file="Header_TrangBanHang.jsp" %>
        </nav>
        <c:url var="url"value="/sanpham"/>
        <form action="${url}/index/gio-hang" class="gi-hng-rng">
            <div class="gi-hng-rng-child"></div>
            <div class="thanh-ton">THANH TOÁN</div>
            <img
                class="shopping-cart-1-icon"
                alt=""
                src="/J2EE/view/img/shopping-cart.png"
                />

            <div class="hin-cha-c">Hiện chưa có sản phẩm</div>
            <div class="gi-hng-rng-item"></div>
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
            <div class="gi-hng-rng-inner"></div>
            <div class="line-div"></div>
            <div class="navbar">
                <img class="bag-1-icon" alt="" src="/J2EE/view/img/bag.png" />

                <div class="login">
                    <div class="ng-nhp">ĐĂNG NHẬP</div>
                    <img class="login-1-icon" alt="" src="/J2EE/view/img/login.png" />
                </div>
                <div class="search" id="searchContainer">
                    <img class="search-1-icon" alt="" src="/J2EE/view/img/search.png" />
                </div>
            </div>
            <b class="icy-beauty">ICY BEAUTY</b>
            <div class="gi-hng">GIỎ HÀNG</div>
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