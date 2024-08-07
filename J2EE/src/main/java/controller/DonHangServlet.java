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
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
@WebServlet({
    "/donhang/index",
    "/donhang/edit/*",
    "/donhang/xacnhan/*",
    "/donhang/loc_dh",})
public class DonHangServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ChiTietHoaDonDAO cthdDao = new ChiTietHoaDonDAO();
        HoaDon hd = new HoaDon();
        HoaDonDAO hdDao = new HoaDonDAO();

        //  List<ChiTietHoaDon> dsloc = new ArrayList<>() ;
        String uri = req.getRequestURI();
        if (uri.contains("index")) {

            req.setAttribute("items_ht", hdDao.getTinhTrang_HoanThanh());
           req.setAttribute("items_cxl", hdDao.getTinhTrang_ChuaXuLy());
            req.getRequestDispatcher("/view/donhang.jsp").forward(req, resp);

        } else if (uri.contains("edit")) {
            String id = uri.substring(uri.lastIndexOf("/") + 1);
            req.setAttribute("item_ctdh", cthdDao.CTDH(id));
        } else if (uri.contains("loc_dh")) {
           List<ChiTietHoaDon> dscthd = cthdDao.findAll();
            List<ChiTietHoaDon> dsloc = new ArrayList<>();
            String date = req.getParameter("txtngay");
            for (ChiTietHoaDon i : dscthd) {
                String ngayHT = i.getNgayhoanthanh();
                String ngay = ngayHT.split(" ")[0];
               
                if (ngay.equals(date)) {
                    dsloc.add(i);
                }
                // req.setAttribute("message", "ngày nè" +date);
            }
            
            req.setAttribute("items_loc", dsloc);
            

        } else if (uri.contains("xacnhan")) {
            String id = uri.substring(uri.lastIndexOf("/") + 1);
            HoaDon hoadon = hdDao.findById(id);
            List<ChiTietHoaDon> chitiet = cthdDao.findAll();
            try {
               
                Date date = Calendar.getInstance().getTime();
                        DateFormat dateFormat = new SimpleDateFormat("dd-M-yyyy hh:mm:ss a");
                        String ngaydat = dateFormat.format(date);
                         hoadon.setTinhtrang("Đơn hàng đã được giao thành công");
                         hoadon.setNgayhoanthanh(ngaydat);
                for (ChiTietHoaDon i : chitiet) {
                    if (i.getMahd().equals(id)) {
                        i.setNgayhoanthanh(ngaydat);
                        cthdDao.update(i);
                    }
                }

                hdDao.update(hoadon);
                req.setAttribute("message", "Cập nhật thành công");
            } catch (Exception e) {
                req.setAttribute("message", "Thất bại" + id);
            }
        }
       // req.setAttribute("items_loc",dsloc);
        // req.setAttribute("item_ctdh", cthdDao.findById("1"));
        req.setAttribute("items_ht", hdDao.getTinhTrang_HoanThanh());
        req.setAttribute("items_cxl", hdDao.getTinhTrang_ChuaXuLy());
        req.getRequestDispatcher("/view/donhang.jsp").forward(req, resp);

    }

}
