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
            href="https://fonts.googleapis.com/css2?family=Outfit:wght@700&display=swap"
            />
    </head>
    <style>
        .o-tim-kiem {
            position: absolute;
            top: 0;
            left: 0;
            background-color: #f2f2f2;
            width: 856.27px;
            height: 36.67px;
        }
        .close-icon,
        .search-icon {
            position: absolute;
            top: 0.1px;
            left: 876.5px;
            width: 65px;
            height: 41px;
            object-fit: cover;
            background: rgba(204, 204, 204, 1);
            border: none;
        }
         .hinh-search {
            position: relative;
            top: 3px;
            width: 19.46px;
            height: 19.46px;
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
            width: 100%;
            height: 57.63px;
            overflow: hidden;
            text-align: left;
            font-size: 23.95px;
            color: #000;
            font-family: var(--font-outfit);
        }
        body {
            margin: 0;
            line-height: normal;
        }

        :root {
            /* fonts */
            --font-outfit: Outfit;

            /* Colors */
            --color-white: #fff;
        }

    </style>
    <body>
        <c:url var="url"value="/sanpham"/>
        <form class="tim-kiem">
            <div class="thanh-tim-kiem">
                <input class="o-tim-kiem" placeholder="Tìm kiếm" name="nhap-tim-kiem" value=""/>
                <button formaction="${url}/ket-qua-tim-kiem" class="search-icon">
                    <image class="hinh-search" alt="" src="/J2EE/view/img/search.png"/>
                </button>

<!--                <div class="close">
                    <img class="close-icon" alt="" src="/J2EE/view/img/close.png" />
                </div>-->
            </div>
            <b class="icy-beauty1">ICY BEAUTY</b>
        </form>
    </body>
</html>

