/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import model.ChiTietHoaDonDAO;
import model.HoaDonDAO;
import model.ChiTietHoaDon;
import model.HoaDon;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.SanPham;
import model.SanPham_dao;
import model.User;
import model.UserDAO;

/**
 *
 * @author Admin
 */
@WebServlet({
    "/thongke/index",})
public class ThongKeServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        ChiTietHoaDonDAO cthdDao = new ChiTietHoaDonDAO();
        HoaDon hd = new HoaDon();
        HoaDonDAO hdDao = new HoaDonDAO();
        SanPham_dao spDao = new SanPham_dao();
        String uri = req.getRequestURI();
        UserDAO uDao = new UserDAO();
        int d=0;
        double doanhthu = 0;
        if (uri.contains("index")) {
            List<HoaDon> dshd = new ArrayList<>();
            List<ChiTietHoaDon> dscthd = new ArrayList<>();
            dscthd = cthdDao.findAll();
            dshd = hdDao.findAll();
            List<ChiTietHoaDon> top5Products = new ArrayList<>();
            List<User> cus = uDao.findAll();
            for(User i :cus){
                if(i.getRole().equals("User")){
                    d++;
                }
            }
            for (int i = 0; i < Math.min(5, dscthd.size()); i++) {
                ChiTietHoaDon maxProduct = null;
                int maxQuantity = Integer.MIN_VALUE;

                for (ChiTietHoaDon cthd : dscthd) {
                    int soluong = Integer.parseInt(cthd.getSoluong());
                    //   String thanhTienStr = cthd.getThanhtien();
                    double thanhTien = Double.parseDouble(cthd.getThanhtien());
                    doanhthu += thanhTien;
                    if (!top5Products.contains(cthd) && soluong > maxQuantity) {
                        maxQuantity = soluong;
                        maxProduct = cthd;
                    }
                }
                if (maxProduct != null) {
                    top5Products.add(maxProduct);
                }
            }

            StringBuilder htmlCode = new StringBuilder();
            htmlCode.append("<b class=\"top-5-sn\">Top 5 sản phẩm bán chạy</b>");
            List<SanPham> dssp = spDao.findAll();
            for (int i = 0; i < top5Products.size(); i++) {
                ChiTietHoaDon cthd = top5Products.get(i);
                String masp = cthd.getMasp();
                String soluong = cthd.getSoluong();
                String hinhanh = "";
                for (SanPham sp : dssp) {
                    if (sp.getMaSP().equals(cthd.getMasp())) {
                        hinhanh = sp.getHinhAnh();
                    }
                }
                      
                htmlCode.append("<img class=\"sp").append(i + 1).append("\" alt=\"\" src=\"/J2EE/view/img/SanPham/").append(hinhanh).append("\" />");
                htmlCode.append("<b class=\"tn").append(i + 1).append("\">Tên: ").append(masp).append("</b>");
                htmlCode.append("<div class=\"s-lng").append(i + 1).append("\">Số lượng: ").append(soluong).append("</div>");
            }
            List<String> top5Users = new ArrayList<>();
            List<Double> top5TotalAmounts = new ArrayList<>();

// Tính tổng số tiền mỗi người dùng đã mua và lưu vào top5Users và top5TotalAmounts
            for (ChiTietHoaDon cthd : dscthd) {
                String maKhachHang = cthd.getUsername();
                double tongtien = Double.parseDouble(cthd.getThanhtien());

                // Kiểm tra xem người dùng đã có trong danh sách top 5 chưa
                int index = top5Users.indexOf(maKhachHang);
                if (index != -1) {
                    double totalAmount = top5TotalAmounts.get(index) + tongtien;
                    top5TotalAmounts.set(index, totalAmount);
                } else {
                    top5Users.add(maKhachHang);
                    top5TotalAmounts.add(tongtien);
                }
            }
// Sắp xếp top 5 người dùng theo tổng số tiền giảm dần
            for (int i = 0; i < top5TotalAmounts.size() - 1; i++) {
                for (int j = i + 1; j < top5TotalAmounts.size(); j++) {
                    if (top5TotalAmounts.get(i) < top5TotalAmounts.get(j)) {
                        Collections.swap(top5TotalAmounts, i, j);
                        Collections.swap(top5Users, i, j);
                    }
                }
            }

// Tạo HTML code để hiển thị top 5 người dùng và tổng số tiền mỗi người đã mua
            StringBuilder htmlCode_kh = new StringBuilder();
            //  htmlCode.append("<b class=\"top-5-sn\">Top 5 khách hàng mua nhiều nhất</b>");

            for (int i = 0; i < Math.min(5, top5Users.size()); i++) {
                String u = top5Users.get(i);
                List<User> dsu=uDao.findAll();
                double tongtien = top5TotalAmounts.get(i);
                String ten = "";
                String hinhanh ="";
                for (User j :dsu) {
                    if (j.getUsername().equals(u)) {
                        ten = j.getFullname();  
                        hinhanh=j.getHinhanh();
                    }
                      System.out.println(hinhanh);
                
                }
                htmlCode_kh.append("<img class=\"kh").append(i + 1).append("\" alt=\"\" src=\"/J2EE/view/img/account/").append(hinhanh).append("\" />");
                htmlCode_kh.append("<b class=\"name-kh").append(i + 1).append("\">Tên: ").append(ten).append("</b>");
                htmlCode_kh.append("<div class=\"money").append(i + 1).append("\">Tổng tiền: ").append(tongtien).append("</div>");
            }
            //Thống kê biểu đồ 12 tháng
            List<String> ds_thang = new ArrayList<>();
            float t1=0,t2=0,t3=0,t4=0,t5=0,t6=0,t7=0,t8=0,t9=0,t10=0,t11=0,t12=100;
            for(ChiTietHoaDon thang:dscthd){
                if(thang.getNgaydat().substring(4, 6).equals("01")){
                    t1+=Float.parseFloat(thang.getThanhtien());
                }else if(thang.getNgaydat().substring(3, 5).equals("02")){
                    t2+=Float.parseFloat(thang.getThanhtien());
                }else if(thang.getNgaydat().substring(3, 5).equals("03")){
                    t3+=Float.parseFloat(thang.getThanhtien());
                }else if(thang.getNgaydat().substring(3, 5).equals("04")){
                    t4+=Float.parseFloat(thang.getThanhtien());
                }else if(thang.getNgaydat().substring(3, 5).equals("05")){
                    t5+=Float.parseFloat(thang.getThanhtien());
                }else if(thang.getNgaydat().substring(3, 5).equals("06")){
                    t6+=Float.parseFloat(thang.getThanhtien());
                }else if(thang.getNgaydat().substring(3, 5).equals("07")){
                    t7+=Float.parseFloat(thang.getThanhtien());
                }else if(thang.getNgaydat().substring(3, 5).equals("08")){
                    t8+=Float.parseFloat(thang.getThanhtien());
                }else if(thang.getNgaydat().substring(3, 5).equals("09")){
                    t9+=Float.parseFloat(thang.getThanhtien());
                }else if(thang.getNgaydat().substring(3, 5).equals("10")){
                    t10+=Float.parseFloat(thang.getThanhtien());
                }else if(thang.getNgaydat().substring(3, 5).equals("11")){
                    t11+=Float.parseFloat(thang.getThanhtien());
                }else if(thang.getNgaydat().substring(3, 5).equals("12")){
                    t12+=Float.parseFloat(thang.getThanhtien());
                }
            }
            ds_thang.add(String.valueOf(t1));
            ds_thang.add(String.valueOf(t2));
            ds_thang.add(String.valueOf(t3));
            ds_thang.add(String.valueOf(t4));
            ds_thang.add(String.valueOf(t5));
            ds_thang.add(String.valueOf(t6));
            ds_thang.add(String.valueOf(t7));
            ds_thang.add(String.valueOf(t8));
            ds_thang.add(String.valueOf(t9));
            ds_thang.add(String.valueOf(t10));
            ds_thang.add(String.valueOf(t11));
            ds_thang.add(String.valueOf(t12));
            req.setAttribute("ds_thang", ds_thang);
            
            req.setAttribute("htmlCode_kh", htmlCode_kh.toString());
            req.setAttribute("htmlCode_sp", htmlCode.toString());
            req.setAttribute("donhang", dshd.size());
            req.setAttribute("khachhang", d);
            req.setAttribute("doanhthu", String.format("%.2f VND", doanhthu));
            req.getRequestDispatcher("/view/thong-ke.jsp").forward(req, resp);
            req.getRequestDispatcher("/view/thong-ke.jsp").forward(req, resp);
        }
    }
}
