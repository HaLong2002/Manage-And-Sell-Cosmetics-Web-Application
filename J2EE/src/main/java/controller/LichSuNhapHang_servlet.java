/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.ChiTiet_NH_dao;
import model.ChiTiet_NhapHang;
import model.NhapHang;
import model.NhapHang_dao;
import model.SanPham;
import model.SanPham_dao;

/**
 *
 * @author HP
 */
@WebServlet({"/LS/index",
    "/LS/xacnhan",
    "/LS/edit_nh/*",
    "/LS/edit_sp/*"
})
public class LichSuNhapHang_servlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        NhapHang_dao nh_dao = new NhapHang_dao();
        NhapHang nh = new NhapHang();
        ChiTiet_NH_dao ctnh_dao = new ChiTiet_NH_dao();
        ChiTiet_NhapHang ctnh = new ChiTiet_NhapHang();
        SanPham_dao sp_dao= new SanPham_dao();
        List<ChiTiet_NhapHang> items_ctnh = new ArrayList<ChiTiet_NhapHang>();
        String uri = req.getRequestURI();
        if (uri.contains("edit_nh")) {
            String ma = uri.substring(uri.lastIndexOf("/") + 1);
            nh = nh_dao.findByMa(ma);
            
            items_ctnh.removeAll(items_ctnh);
            List<ChiTiet_NhapHang> l_tam =ctnh_dao.findAll();
            for(ChiTiet_NhapHang i: l_tam){
                if(i.getMaNH().equals(ma)){
                    items_ctnh.add(i);
                }
            }
        }else if (uri.contains("xacnhan")) {
            try {
                NhapHang nh_tam=nh_dao.findByMa(req.getParameter("txtma_nh"));
                nh_tam.setTinhtrang("Nhap hang thanh cong");
                nh_dao.update(nh_tam);
                
                List<SanPham> l_sp = new ArrayList<SanPham>();
                l_sp=sp_dao.findAll();
                List<ChiTiet_NhapHang> l_ctnh = new ArrayList<ChiTiet_NhapHang>();
                l_ctnh = ctnh_dao.findAll();
                for (ChiTiet_NhapHang i_ct : l_ctnh) {
                    for (SanPham i_sp : l_sp) {
                        if(i_ct.getMaSP().equals(i_sp.getMaSP())){
                            SanPham sp=i_sp;
                            int sl=Integer.parseInt(i_sp.getSoLuong()) +Integer.parseInt(i_ct.getSoluong());
                            sp.setSoLuong(String.valueOf(sl));
                            sp_dao.update(sp);
                        }
                    }
                }
                req.setAttribute("message", "Cap nhat thanh cong");
            } catch (Exception e) {
                req.setAttribute("message", "Cap nhat that bai");
            }

        }else if (uri.contains("edit_sp")) {
            String stt = uri.substring(uri.lastIndexOf("/") + 1);
            ctnh = ctnh_dao.findByMa(stt);
            
            String linkanh="";
            List<SanPham> l_sp_tam = sp_dao.findAll();
            for (SanPham i : l_sp_tam) {
                if(i.getMaSP().equals(ctnh.getMaSP())){
                    linkanh=i.getHinhAnh();
                }
            }
            req.setAttribute("form_ctnh", ctnh);
            req.setAttribute("linkanh", linkanh);
        }
        req.setAttribute("form_nh", nh);
        req.setAttribute("items_nh", nh_dao.findAll());
        
        req.setAttribute("items_ctnh", items_ctnh);

        req.getRequestDispatcher("/view/LichSuNhapHang.jsp").forward(req, resp);
    }

}
