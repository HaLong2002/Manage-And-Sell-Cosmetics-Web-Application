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
            href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;600&display=swap"
            />
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Outfit:wght@700&display=swap"
            />
    </head>
    <style>
        .header-trangbanhang-child {
            position: absolute;
            top: 77.64px;
            left: 0.23px;
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
            left: 883.11px;
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
            left: 655.98px;
            width: 182.17px;
            height: 14.61px;
        }
        .lm-sch-da {
            background: none;
            border: none;
            left: 499.57px;
            width: 111.45px;
        }
        .chm-sc-da {
            background: none;
            border: none;
            left: 339.94px;
            width: 114.66px;
            height: 14.61px;
        }
        .chm-sc-da,
        .trang-im,
        .tt-c-sn {
            
            position: absolute;
            top: 0;
        }
        .tt-c-sn-phm {
            background: none;
            border: none;
            position: absolute;
            height: 100%;
            width: 14.87%;
            top: 0;
            right: 85.13%;
            bottom: 0;
            left: 0;
        }
        .trang-im {
            background: none;
            border: none;
            left: 193.17px;
            width: 101.8px;
            height: 14.61px;
        }
        .tt-c-sn {
            width: 14.83%;
            left: 0;
            text-decoration: underline;
            display: inline-block;
        }
        .danh-muc-san-pham {
            position: absolute;
            top: 56.01px;
            left: 239.68px;
            width: 994.55px;
            height: 14.61px;
        }
        .header-trangbanhang-item {
            position: absolute;
            top: 43.9px;
            left: 0.22px;
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
            background: none;
            border: none;
            top: 0;
            width: 15.36px;
            height: 15.36px;
        }
        .ng-nhp {
            top: 0.5px;
            display: inline-block;
            width: 89.62px;
            text-align: left;
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
        .login_ChuDangNhap {
            background: none;
            border: none;
            position: relative;
            left: 100px;
            display: inline-block;
            top: -10px;
        }
        .login {
            background: none;
            border: none;
            position: relative;
            right: 0px;
            display: inline-block;
        }
        .btn_login {
            padding: 5px;
            border: none;
            background: none;
        }
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f1f1f1;
            min-width: 180px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }
        .dropdown-content a {
            color: black;
            padding: 11px 11px;
            text-decoration: none;
            display: block;
        }
        .dropdown-content a:hover {
            background-color: #ddd;
        }
        .login:hover .dropdown-content {
            display: block;
        }
        
       
        .navbar,
        .search {
            right: 33.79px;
            width: 13.82px;
            height: 13.82px;
        }
        .navbar {
            top: 12.71px;
            right: 32.68px;
            width: 173.32px;
            height: 17.84px;
            font-size: 12.29px;
        }
        .icy-beauty {
            position: absolute;
            top: 5px;
            left: calc(50% - 93.02px);
            font-size: var(--font-size-5xl-6);
            letter-spacing: 0.2em;
            font-family: var(--font-outfit);
        }
        .header-trangbanhang {
            position: relative;
            background-color: var(--color-white);
            width: 100%;
            height: 200px;
            overflow: hidden;
            text-align: left;
            font-size: var(--font-size-smi-3);
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
        
        /*Tim kiem*/
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
            top: -348px;
            background-color: var(--color-white);
            border: 0.7px solid var(--color-white);
            box-sizing: border-box;
            width: 1476px;
            height: 57.63px;
            overflow: hidden;
            max-width: 100%;
            max-height: 100%;
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
            --font-outfit: Outfit;
            --font-roboto: Roboto;

            /* font sizes */
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
        <c:url var="url" value="/account"/>
        <c:url var="sanpham" value="/sanpham"/>
        <c:url var="donhang" value="/don-hang"/>
        <form  action="${url}/index">
            <div class="header-trangbanhang">
                <div class="header-trangbanhang-child"></div>
                <div class="danh-muc-san-pham">
                    <button formaction="${sanpham}/chong-nang" class="chng-nng">
                        <div class="m-phm-chc">CHỐNG NẮNG</div>
                    </button>
                    <button formaction="${sanpham}/my-pham-chuc-nang" class="m-phm-chc-nng">
                        <div class="m-phm-chc">MỸ PHẨM CHỨC NĂNG</div>
                    </button>
                    <button formaction="${sanpham}/lam-sach-da" class="lm-sch-da">
                        <div class="m-phm-chc">LÀM SẠCH DA</div>
                    </button>
                    <button formaction="${sanpham}/cham-soc-da" class="chm-sc-da">
                        <div class="m-phm-chc">CHĂM SÓC DA</div>
                    </button>
                    <button formaction="${sanpham}/trang-diem" class="trang-im">
                        <div class="m-phm-chc">TRANG ĐIỂM</div>
                    </button>
                    <button formaction="${sanpham}/tat-ca-san-pham"  class="tt-c-sn-phm">
                        <div class="m-phm-chc">TẤT CẢ SẢN PHẨM</div>
                    </button>

                </div>
                <div class="header-trangbanhang-item"></div>

                <div class="navbar">
                    <button formaction="${sanpham}/index/gio-hang" class="bag" id="bagContainer">
                        <img class="bag-1-icon" alt="" src="/J2EE/view/img/bag.png" />
                    </button>
                    <c:if test="${empty name}">
                        <button class="login_ChuDangNhap" formaction="${url}/thongtintaikhoan">
                            <div class="ng-nhp">ĐĂNG NHẬP</div>
                            <img class="login-1-icon" alt="" src="/J2EE/view/img/login.png" />
                        </button>  
                    </c:if>

                    <c:if test="${not empty name}">
                        <c:if test="${name eq 'ĐĂNG NHẬP'}">
                            <button class="login_ChuDangNhap" formaction="${url}/thongtintaikhoan">
                                <input var="username-nguoi-dung" type="hidden" name="username-nguoi-dung" value="${name}" class="ng-nhp"/>
                                <div class="ng-nhp">ĐĂNG NHẬP</div>
                                <img class="login-1-icon" alt="" src="/J2EE/view/img/login.png" />
                            </button>  
                        </c:if>
                        <c:if test="${name ne 'ĐĂNG NHẬP'}">
                            <% session.setAttribute("data_username", "${name}"); %>
                            <div class="login">
                                <button class="btn_login">
                                    <input var="username-nguoi-dung" type="hidden" name="username-nguoi-dung" value="${name}" class="ng-nhp"/>
                                    <div class="ng-nhp">${name}</div>
                                    <img class="login-1-icon" alt="" src="/J2EE/view/img/account/${hinhanh}" />
                                </button>
                                <div class="dropdown-content">
                                    <c:set var="username" value="ĐĂNG NHẬP"></c:set>
                                    <a href="${url}/thongtinnguoidung">THÔNG TIN TÀI KHOẢN</a>
                                    <a href="${donhang}/index">ĐƠN HÀNG</a>
                                    <a href="${url}/sign-out">ĐĂNG XUẤT</a>
                                </div>
                            </div>
                        </c:if>
                    </c:if>
                    <div class="search" id="searchContainer">
                        <img class="bag-1-icon" alt="" src="/J2EE/view/img/search.png" />
                    </div>
                </div>
                <b class="icy-beauty">ICY BEAUTY</b>

            </div>
        </div>
    </form>


    <div id="timKiemContainer" class="popup-overlay" style="display: none">
        <!--            <div class="tim-kiem">
                        <div class="thanh-tim-kiem">
                            <div class="o-tim-kiem"></div>
                            <img class="search-icon" alt="" src="/J2EE/view/img/search.png" />
        
                            <div class="close">
                                <img class="close-icon" alt="" src="/J2EE/view/img/close.png" />
                            </div>
                        </div>
                        <b class="icy-beauty1">ICY BEAUTY</b>
                    </div>-->
        <jsp:include page="TimKiem.jsp"></jsp:include>
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

