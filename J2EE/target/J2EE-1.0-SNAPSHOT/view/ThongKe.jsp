<%-- 
    Document   : ThongKe
    Created on : Dec 7, 2023, 1:27:35 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .statistics-container {
            max-width: 800px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .product-list-container {
            display: flex;
            justify-content: space-between;
        }

        .product-item {
            width: 150px;
            margin-right: 10px;
            text-align: center;
            height: 200px;
        }

        .product-image {
            width: 80px;
            height: 100px;
            border-radius: 8px;
            margin-bottom: 5px;
        }
        .product-name {
            height: 20px;
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
            color: #333;
        }
        .product-details {
            font-size: 14px;
            color: #555;
        }

        h1 {
            color: #333;
        }

        h2 {
            color: #555;
        }

        p {
            color: #777;
            font-size: 18px;
            margin: 5px 0;
        }
        .customer-list-container {
            display: flex;
            justify-content: space-between;
        }

        .customer-item {
            width: 150px;
            margin-right: 10px;
            text-align: center;
        }

        .customer-image {
            width: 80px;
            height: 100px;
            border-radius: 8px;
            margin-bottom: 5px;
        }

        .customer-details {
            font-size: 14px;
            color: #555;
        }

        .customer-name {
            height: 20px;
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
            color: #333;
            border: none;
            background-color: transparent;
            outline: none;
        }

        .customer-total-amount {
            display: block;
            color: #777;
        }
    </style>
    <body>
        <nav>
            <div class="he">
                <%@
                include file="header.jsp" %>
            </div>
        </nav>
        
        <div class="statistics-container">
            <h1>Thống kê doanh thu</h1>

            <canvas id="bar-chart"></canvas>

            <div class="top-products">
                <h2>Top 5 sản phẩm bán chạy</h2>
                <div id="product-list" class="product-list-container">
                    <!-- Bỏ vào vòng lặp -->
                    <div class="product-item">
                        <img src="" class="product-image">
                        <div class="product-details">
                            <span class="product-name">Tên:</span>
                            <span class="product-quantity">Số lượng: </span>
                        </div>
                    </div>
                    <div class="product-item">
                        <img src="" class="product-image">
                        <div class="product-details">
                            <span class="product-name">Tên:</span>
                            <span class="product-quantity">Số lượng: </span>
                        </div>
                    </div>
                    <div class="product-item">
                        <img src="" class="product-image">
                        <div class="product-details">
                            <span class="product-name">Tên:</span>
                            <span class="product-quantity">Số lượng: </span>
                        </div>
                    </div>
                    <div class="product-item">
                        <img src="" class="product-image">
                        <div class="product-details">
                            <span class="product-name">Tên:</span>
                            <span class="product-quantity">Số lượng: </span>
                        </div>
                    </div>
                    <div class="product-item">
                        <img src="" class="product-image">
                        <div class="product-details">
                            <span class="product-name">Tên:</span>
                            <span class="product-quantity">Số lượng: </span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="top-customers">
                <h2>Top 5 khách hàng mua nhiều nhất</h2>
                <div id="customer-list" class="customer-list-container">
                    <!-- Bỏ vào vòng lặp -->
                    <div class="customer-item">
                        <img src="" class="customer-image">
                        <div class="customer-details">
                            <span class="customer-name">Tên khách hàng:</span>
                            <span class="customer-total-amount">Tổng số tiền: </span>
                        </div>
                    </div>
                    <div class="customer-item">
                        <img src="" class="customer-image">
                        <div class="customer-details">
                            <span class="customer-name">Tên khách hàng:</span>
                            <span class="customer-total-amount">Tổng số tiền: </span>
                        </div>
                    </div>
                    <div class="customer-item">
                        <img src="" class="customer-image">
                        <div class="customer-details">
                            <span class="customer-name">Tên khách hàng:</span>
                            <span class="customer-total-amount">Tổng số tiền: </span>
                        </div>
                    </div>
                    <div class="customer-item">
                        <img src="" class="customer-image">
                        <div class="customer-details">
                            <span class="customer-name">Tên khách hàng:</span>
                            <span class="customer-total-amount">Tổng số tiền: </span>
                        </div>
                    </div>
                    <div class="customer-item">
                        <img src="" class="customer-image">
                        <div class="customer-details">
                            <span class="customer-name">Tên khách hàng:</span>
                            <span class="customer-total-amount">Tổng số tiền: </span>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <script >
            document.addEventListener("DOMContentLoaded", function () {
                // Mock data for the bar chart
                var barChartData = {
                    labels: ["Tháng 1", "Tháng 2", "Tháng 3", "Tháng 4", "Tháng 5", "Tháng 6", "Tháng 7", "Tháng 8", "Tháng 9", "Tháng 10", "Tháng 11", "Tháng 12"],
                    datasets: [{
                            label: "Doanh thu hàng tháng",
                            backgroundColor: "rgba(75,192,192,0.4)",
                            borderColor: "rgba(75,192,192,1)",
                            borderWidth: 1,
                            data: [10000000, 15000000, 22000000, 3000000, 5000000, 7000000, 10000000, 15000000, 25000000, 40000000, 60000000, 100000000]
                        }]
                };

                // Get the canvas element
                var ctx = document.getElementById("bar-chart").getContext("2d");

                // Create a new bar chart
                var myBarChart = new Chart(ctx, {
                    type: 'bar',
                    data: barChartData,
                    options: {
                        scales: {
                            y: {
                                beginAtZero: true,
                                max: 100000000,
                                callback: function (value, index, values) {
                                    return value.toLocaleString('en-US', {style: 'currency', currency: 'VND'});
                                }
                            }
                        }
                    }
                });

            });


        </script>
    </body>
</html>
