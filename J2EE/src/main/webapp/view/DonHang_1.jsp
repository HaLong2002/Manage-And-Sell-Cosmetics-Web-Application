<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%> 
<%@page import="model.ChiTietHoaDon"%>
<%@page import="model.ChiTietHoaDonDAO"%>
<%@page import="model.ChiTietHoaDonDTO"%>
<%@page import="model.SanPham"%>
<%@page import="model.SanPhamDAO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="initial-scale=1, width=device-width" />

        <link rel="stylesheet" href="./global.css" />
        <link rel="stylesheet" href="./index.css" />
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Roboto:wght@400&display=swap"
            />
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Outfit:wght@700&display=swap"
            />
    </head>
    <style>
        .TenCuaHang {
            position: absolute;
            top: 9.99px;
            left: 645.08px;
            width: 200px;
            height: 31px;

        }
        .n-hng-child {
            position: absolute;
            top: 156px;
            left: 299px;
            background-color: var(--color-gainsboro);
            border: 1px solid var(--color-gray);
            box-sizing: border-box;
            width: 900px;
            height: 165px;
        }
        .n-v-tnh,
        .tn-sn-phm {
            left: 12%;
            display: inline-block;
        }
        .tn-sn-phm {
            position: absolute;
            width: 64.68%;
            top: 10%;
            font-size: 18px;
            text-align: left;
        }
        .n-v-tnh {
            height: 25.72%;
            width: 10.86%;
            top: 40%;
        }
        .n-v-tnh,
        .s-lng,
        .s-tin {
            position: absolute;
        }
        .s-lng {
            width: 3.39%;
            top: 63%;
            left: 11.29%;
            display: inline-block;
            font-size: 16px;
        }
        .s-tin {
            top: 40%;
            left: 76%;
            font-size: 16px;
            text-align: right;
            width: 200px;
        }
        .hnh-sn-phm {
            position: absolute;
            height: 100%;
            width: 8.15%;
            top: 0;
            right: 91.85%;
            bottom: 0;
            left: 0;
            background-color: var(--color-gainsboro);
            border: 0.7px solid var(--color-gray);
            box-sizing: border-box;
        }
        .m-t-sn-phm {
            position: absolute;
            height: 40.31%;
            width: 95%;
            top: 34%;
            right: 20.05%;
            bottom: 67.81%;
            left: 0.05%;
            font-size: var(--font-size-smi);
        }
        .s-tin1,
        .thnh-tin {
            position: absolute;
            top: 25.74%;
            left: 120%;
            width: 100px;
        }
        .s-tin1 {
            top: 13px;
            left: 135%;
            font-size: 20px;
            text-align: right;
            color: red;
            width: 200px;
        }

        .n-hng-item {
            position: absolute;
            height: 0.18%;
            width: 100%;
            top: 22.59%;
            right: 18.71%;
            bottom: 77.22%;
            left: 0%;
            border-top: 0.8px solid var(--color-gray);
            box-sizing: border-box;
        }

        .n-hng1 {
            position: absolute;
            top: 10px;
            left: 475px;
            color: #49bbb8;
            width: 400px;
            text-align: right;
        }
        .n-hng3 {
            position: absolute;
            top: 10px;
            left: 475px;
            color: rgba(240, 99, 133, 1);
            width: 400px;
            text-align: right;
        }
        .line-div {
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
            
            left: 655.65px;
            width: 182.18px;
            height: 14.61px;
        }
        .chm-sc-da,
        .lm-sch-da,
        .m-phm-chc-nng {
            background: none;
            border: none;
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
        .n-hng-child1,
        .n-hng-child2 {
            position: absolute;
            border-top: 0.8px solid var(--color-gray);
            box-sizing: border-box;
            height: 1.54px;
        }
        .n-hng-child1 {
            top: 53.92px;
            left: -0.57px;
            background-color: var(--color-whitesmoke-100);
            width: 1477.57px;
        }
        .n-hng-child2 {
            top: 135.23px;
            left: 298.23px;
            width: 901.54px;
        }
        .bag-1-icon,
        .ng-nhp {
            position: absolute;
            right: 0;
        }
        .bag-1-icon {
            height: 92.86%;
            width: 8.86%;
            top: 0;
            bottom: 7.14%;
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
            top: 1px;
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
            top: 1px;
            right: 33.83px;
            width: 13.82px;
            height: 13.82px;
        }
        .navbar {
            height: 1.96%;
            width: 11.75%;
            top: 2.14%;
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
        .n-hng2 {
            position: absolute;
            width: 17.82%;
            top: 14%;
            left: 20.26%;
            font-size: 22px;
            display: inline-block;
        }
        .rectangle-div {
            position: absolute;
            top: 150px;
            left: 299px;
            background-color: var(--color-white);
            border: 1px solid var(--color-gray);
            box-sizing: border-box;
            
            width: 900px;
            height: 46px;
        }
        .tt-c {
            position: absolute;
            top: 162px;
            left: 445px;
/*            text-decoration: underline;*/
            font-size: 19px;
            background: none;
            border: none;
        }
        .ch-giao-hng,
        .hon-thnh {
            position: absolute;
            top: 162px;
            left: 661px;
            font-size: 19px;
            background: none;
            border: none;
        }
        .hon-thnh {
            left: 964px;
        }
        .n-hng {
            float: left;
            background-color: var(--color-white);
            width: 100%;
            height: auto;
            overflow: hidden;
            text-align: left;
            font-size: var(--font-size-mini);
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
        .danh-sach-don-hang {
            position: absolute;
            top: 210px;
            left: 20.4%;
            width: 900px;
        }
        div.danh-sach-don-hang {
            width: 900px;
        }

        div.column button.tung-don-hang{
            position: relative;
            width: 900px;
            min-height: 165px;
            margin-bottom: 30px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            background: none;
            border: none;
        }

        div.column-tung-don-hang div.thong-tin-don-hang {
            position: relative;
            width: 900px;
            margin-bottom: 20px;
        }
        .m-t-sn-phm {
            position: absolute;
            width: 859px;
        }
        div.thong-tin-don-hang div.m-t-sn-phm {
            position: relative;
            width: 859px;
            height: 70px;
            margin-bottom: 9px;
            top: 23px;
            left: 21px;
        }
        div.thong-tin-don-hang div.thanhtien {
            position: relative;
            width: 500px;
            height: 60px;
            margin-bottom: 9px;
            top: 20px;
        }
        div.thong-tin-don-hang div.tinh-trang {
            position: relative;
            width: 500px;
            height: 20px;
        }
        div.tinh-trang hr {
            position: absolute;
            left: -7px;
            top: 27px;
            width: 900px;
        }
        .thanhtien {
            position: relative;
            width: 859px;
        }
        div.thanhtien hr {
            position: absolute;
            left: -7px;
            width: 900px;
        }
        div.thanhtien div {
            top: 22px;
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
            --font-size-mini: 15px;
            --font-size-smi: 13px;
            --font-size-base: 16px;

            /* Colors */
            --color-white: #fff;
            --color-black: #000;
            --color-gray: rgba(0, 0, 0, 0.3);
            --color-whitesmoke-100: #f5f5f5;
            --color-gainsboro: rgba(217, 217, 217, 0);
        }

    </style>
    <body>
        <nav>
            <%@include file="Header_TrangBanHang.jsp" %>
        </nav>
        <c:url var="url"value="/don-hang"/>
        <form action="${url}/index" class="n-hng" method="post">
            <input type="hidden" name="username-nguoi-dung" value="${name}"/>
            <div class="danh-sach-don-hang">
                <div class="column">
                    <c:forEach var="item" items="${items}">
                        <c:set var="id-user" value="${item.username}"/>
                        <button formaction="${url}/chi-tiet-don-hang/${item.mahd}" class="tung-don-hang">
                            <div class="column-tung-don-hang">
                                <div class="thong-tin-don-hang">
                                    <div class="tinh-trang">
                                        <c:set var="giatri-tinh-trang" value="${item.tinhtrang}"/>
                                        <%
                                            String tinhtrang = (String) pageContext.getAttribute("giatri-tinh-trang");
                                            System.out.println(tinhtrang);
                                            if(tinhtrang.equals("Đơn hàng đang được chuẩn bị")) {%>
                                                <div class="n-hng3">${item.tinhtrang}</div>
                                            <%} if(tinhtrang.equals("Đơn hàng đã được giao thành công")) {%> 
                                                <div class="n-hng1">${item.tinhtrang}</div>
                                            <%}%> 
                                        <hr>
                                    </div>
                                    <c:set var="ma-hoa-don" value="${item.mahd}" />
                                    <%
                                        ChiTietHoaDonDAO cthd_dao = new ChiTietHoaDonDAO();
                                        SanPhamDAO sp_dao = new SanPhamDAO();
                                        ChiTietHoaDonDTO cthd_dto = new ChiTietHoaDonDTO();
                                        List<ChiTietHoaDon> ds_cthd = cthd_dao.findByRole((String) pageContext.getAttribute("ma-hoa-don"));
                                        List<ChiTietHoaDonDTO> ds_cthd_sp = new ArrayList<ChiTietHoaDonDTO>();
                                        for (ChiTietHoaDon cthd : ds_cthd) {
                                            SanPham sp = new SanPham();
                                            sp = sp_dao.findById(cthd.getMasp());
                                            cthd_dto = new ChiTietHoaDonDTO(sp, cthd);
                                            ds_cthd_sp.add(cthd_dto);
                                        }
                                        for (ChiTietHoaDonDTO dto : ds_cthd_sp) {%>
                                    <div class="m-t-sn-phm">
                                        <div class="tn-sn-phm"><%=dto.sanpham.getTenSP()%></div>
                                        <div class="s-lng">x<%=dto.chitiethoadon.getSoluong()%></div>
                                        <div class="s-tin">
                                            <fmt:setLocale value = "vi_VN"/>
                                            <fmt:formatNumber value = "<%=dto.chitiethoadon.getThanhtien()%>" type = "currency" minFractionDigits="0"/>
                                        </div>
                                        <image class="hnh-sn-phm" src="/J2EE/view/img/SanPham/<%=dto.sanpham.getHinhAnh()%>"/>
                                    </div>
                                    <%}%> 

                                    <div class="thanhtien">
                                        <hr>
                                        <div class="thnh-tin">Thành tiền:</div>
                                        <div class="s-tin1">
                                            <fmt:setLocale value = "vi_VN"/>
                                            <fmt:formatNumber value = "${item.thanhtien}" type = "currency" minFractionDigits="0"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </button>
                    </c:forEach>
                    <div class="clear"></div>
                </div>
            </div>
<!--            <div class="line-div"></div>
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
                <div class="chm-sc-da">CHĂM SÓC DA</div>
                <div class="trang-im">
                    <div class="m-phm-chc">TRANG ĐIỂM</div>
                </div>
                <div class="tt-c-sn-phm">
                    <div class="m-phm-chc">TẤT CẢ SẢN PHẨM</div>
                </div>
            </div>
            <div class="n-hng-child1"></div>
            <div class="n-hng-child2"></div>
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
            <div class="TenCuaHang">
                <b class="icy-beauty">ICY BEAUTY</b>
            </div>-->
            <div class="n-hng2">ĐƠN HÀNG</div>
            <div class="rectangle-div"></div>
            <input class="tt-c" name="loc-don-hang" value="Tất cả" type="submit"/>
            <input class="ch-giao-hng" name="loc-don-hang" value="Chờ giao hàng" type="submit"/>
            <input class="hon-thnh" name="loc-don-hang" value="Hoàn thành" type="submit"/>
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