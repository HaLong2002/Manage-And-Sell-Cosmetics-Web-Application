/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.SanPham;
import model.SanPham_dao;
import org.apache.commons.beanutils.BeanUtils;

/**
 *
 * @author HP
 */
@WebServlet({"/SP/index",
    "/SP/create",
    "/SP/edit/*",
    "/SP/update",
    "/SP/reset",
    "/SP/timkiem1",
    "/SP/timkiem2",
    "/SP/timkiem3",
    "/SP/delete"})
public class SanPham_servlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        SanPham_dao dao = new SanPham_dao();
        SanPham sp = new SanPham();
        List<SanPham> list_sp = new ArrayList<SanPham>();
        list_sp=dao.findAll();
        String uri = req.getRequestURI();
        if (uri.contains("edit")) {
            String ma = uri.substring(uri.lastIndexOf("/") + 1);
            sp = dao.findByMa(ma);
        } else if (uri.contains("create")) {
            try {
                sp.setMaSP(req.getParameter("txtMa"));
                sp.setTenSP(req.getParameter("txtTen"));
                sp.setLoaiSP(req.getParameter("txtLoai"));
                sp.setGiaBan(req.getParameter("txtGia"));
                sp.setSoLuong("0");
                sp.setDonViTinh(req.getParameter("txtDV"));
                sp.setHinhAnh(req.getParameter("src_image"));
//                BeanUtils.populate(sp, req.getParameterMap());
                dao.create(sp);
                
                req.setAttribute("message", "Them moi thanh cong");
            } catch (Exception e) {
                req.setAttribute("message", "Them moi that bai");
            }
        } else if (uri.contains("update")) {
            try {
                sp.setMaSP(req.getParameter("txtMa"));
                sp.setTenSP(req.getParameter("txtTen"));
                sp.setLoaiSP(req.getParameter("txtLoai"));
                sp.setGiaBan(req.getParameter("txtGia"));
                sp.setSoLuong(req.getParameter("txtSL"));
                sp.setDonViTinh(req.getParameter("txtDV"));
                sp.setHinhAnh(req.getParameter("src_image"));
                dao.update(sp);
                req.setAttribute("message", "Cap nhat thanh cong");
            } catch (Exception e) {
                req.setAttribute("message", "Cap nhat that bai");
            }

        } else if (uri.contains("delete")) {
            try {
                String ma = req.getParameter("txtMa");
                dao.remove(ma);
                req.setAttribute("message", "Xoa thanh cong");
            } catch (Exception e) {
                req.setAttribute("message", "Xoa that bai");
            }
        } else if (uri.contains("reset")) {
            try {
                req.setAttribute("items", dao.findAll()); //items: List<SanPham>
                req.getRequestDispatcher("/view/SanPham.jsp").forward(req, resp);

            } catch (Exception e) {
                req.setAttribute("message", "Reset that bai");
            }
        }else if (uri.contains("timkiem1")) {
            String ma = req.getParameter("txtTK");
            List<SanPham> list_tam = new ArrayList<SanPham>();
            for (SanPham item : list_sp) {
                if(item.getMaSP().toLowerCase().contains(ma.toLowerCase())==true){
                    list_tam.add(item);
                }
            }
            list_sp=list_tam;
        }else if (uri.contains("timkiem3")) {
            String gbd=req.getParameter("txtGiaBD");
            String gkt=req.getParameter("txtGiaKT");
            float giabd = Float.parseFloat(gbd);
            float giakt = Float.parseFloat(gkt);
            List<SanPham> list_tam = new ArrayList<SanPham>();
            for (SanPham item : list_sp) {
                if(Float.parseFloat(item.getGiaBan())>giabd && Float.parseFloat(item.getGiaBan())<=giakt){
                    list_tam.add(item);
                }else if(gbd.equals("0") && Float.parseFloat(item.getGiaBan())<=giakt){
                    list_tam.add(item);
                }else if(gkt.equals("0") && Float.parseFloat(item.getGiaBan())>=giabd){
                    list_tam.add(item);
                }
            }
            list_sp=list_tam;
        }
        req.setAttribute("form", sp);
        req.setAttribute("items", list_sp); 
        req.getRequestDispatcher("/view/SanPham.jsp").forward(req, resp);
    }

}
