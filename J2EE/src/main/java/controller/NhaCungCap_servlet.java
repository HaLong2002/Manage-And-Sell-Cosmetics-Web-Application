/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.ChiTiet_NH_dao;
import model.ChiTiet_NhapHang;
import model.JpaUtils;
import model.NhaCungCap_dao;
import model.NhaCungCap;
import model.NhapHang_dao;
import model.NhapHang;
import model.SanPham_dao;
import model.SanPham;
import org.apache.commons.beanutils.BeanUtils;

/**
 *
 * @author HP
 */
@WebServlet({"/NCC/index",
    "/NCC/create",
    "/NCC/edit_ncc/*",
    "/NCC/them_ctnh/*",
    "/NCC/edit_nh/*",
    "/NCC/edit_ctnh/*",
    "/NCC/edit_xoa/*",
    "/NCC/update",
    "/NCC/reset",
    "/NCC/delete",
    "/NCC/nhaphang"
})
public class NhaCungCap_servlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        NhaCungCap_dao ncc_dao = new NhaCungCap_dao();
        NhaCungCap ncc = new NhaCungCap();
        NhapHang_dao nh_dao = new NhapHang_dao();
        NhapHang nh = new NhapHang();
        ChiTiet_NH_dao ctnh_dao = new ChiTiet_NH_dao();
        ChiTiet_NhapHang ctnh = new ChiTiet_NhapHang();
        SanPham_dao sp_dao = new SanPham_dao();
        SanPham sp = new SanPham();
        List<SanPham> list_SPNCC = new ArrayList<SanPham>();
        List<ChiTiet_NhapHang> list_ctnh = new ArrayList<ChiTiet_NhapHang>();
        String stt = "";//số thứ tự của sản phẩm chưa nhập trong chi tiết nhập hàng
        String uri = req.getRequestURI();
        if (uri.contains("edit_ncc")) {
            String ma = uri.substring(uri.lastIndexOf("/") + 1);
            ncc = ncc_dao.findByMa(ma);
//            //ma:gia
            list_SPNCC.removeAll(list_SPNCC);
            List<SanPham> l_sp = sp_dao.findAll();
            String[] maspncc = ncc.getMaSP().split(",");
            for (int i = 0; i <= maspncc.length - 1; i++) {
                String[] tam = maspncc[i].split(":");
                SanPham sp_ncc = new SanPham();
                for (SanPham item : l_sp) {
                    if (tam[0].equals(item.getMaSP())) {
                        sp_ncc.setMaSP(item.getMaSP());
                        sp_ncc.setTenSP(item.getTenSP());
                        sp_ncc.setLoaiSP(item.getLoaiSP());
                        sp_ncc.setSoLuong(item.getSoLuong());
                        sp_ncc.setDonViTinh(item.getSoLuong());
                        sp_ncc.setHinhAnh(item.getHinhAnh());
                        sp_ncc.setGiaBan(tam[1]);
                        list_SPNCC.add(sp_ncc);
                    }
                }
            }
        } else if (uri.contains("create")) {
            try {
                ncc.setMaNCC(req.getParameter("txtma"));
                ncc.setTenNCC(req.getParameter("txtten"));
                ncc.setEmail(req.getParameter("txtemail"));
                ncc.setDiachi(req.getParameter("txtdiachi"));
                ncc.setSdt(req.getParameter("txtsdt"));
                ncc.setHinhanh(req.getParameter("src_image"));
                ncc_dao.create(ncc);

                req.setAttribute("message", "Them moi thanh cong");
            } catch (Exception e) {
                req.setAttribute("message", "Them moi that bai");
            }
        } else if (uri.contains("update")) {
            try {
                String ma = uri.substring(uri.lastIndexOf("/") + 1);
                ncc = ncc_dao.findByMa(ma);
                ncc.setMaNCC(ncc.getMaNCC());
                ncc.setTenNCC(req.getParameter("txtten"));
                ncc.setEmail(req.getParameter("txtemail"));
                ncc.setDiachi(req.getParameter("txtdiachi"));
                ncc.setSdt(req.getParameter("txtsdt"));
                ncc.setMaSP(ncc.getMaSP());
                ncc.setHinhanh(req.getParameter("src_image"));
                ncc_dao.update(ncc);
                req.setAttribute("message", "Cap nhat thanh cong");
            } catch (Exception e) {
                req.setAttribute("message", "Cap nhat that bai");
            }

        } else if (uri.contains("delete")) {
            try {
                String ma = req.getParameter("txtma");
                ncc_dao.remove(ma);
                req.setAttribute("message", "Xoa thanh cong");
            } catch (Exception e) {
                req.setAttribute("message", "Xoa that bai");
            }
        } else if (uri.contains("them_ctnh")) {
            try {
                String[] spncc = uri.substring(uri.lastIndexOf("/") + 1).split(",");
                String m = spncc[0];
                String gia = spncc[1];
                List<ChiTiet_NhapHang> a = ctnh_dao.findAll();
                ChiTiet_NhapHang temp = new ChiTiet_NhapHang();
                // Kiểm tra xem có bản ghi nào có mã sản phẩm giống với mã sản phẩm mới không
                boolean check = true;
                for (ChiTiet_NhapHang ds_ctnh : a) {
                    if (ds_ctnh.getMaSP().equals(m)) {
                        check = false;
                        break;
                    }
                }
                if (check) {
                    // Trường hợp chưa có sản phẩm đó trong phiếu nhập
                    int stt_ctnh = a.size() + 1;
                    temp.setStt(String.valueOf(stt_ctnh));
                    temp.setMaNH("chuanhap");
                    temp.setMaNCC(req.getParameter("txtma"));
                    temp.setMaSP(m);
                    temp.setSoluong("1");
                    temp.setGia(gia);
                    temp.setThanhtien(gia);
                    ctnh_dao.create(temp);
                    System.out.println("Đã thêm mới");
                }
                boolean check_ncc = true;
                for (ChiTiet_NhapHang ds_ctnh : a) {
                    if (ds_ctnh.getMaSP().equals(m) && ds_ctnh.getMaNCC().equals(req.getParameter("txtma"))) {
                        check_ncc = false;
                        break;
                    }
                }
                if (check_ncc) {
                    // Trường hợp có sản phẩm đó nhưng khác nhà cung cấp
                    int stt_ctnh = a.size() + 1;
                    temp.setStt(String.valueOf(stt_ctnh));
                    temp.setMaNH("chuanhap");
                    temp.setMaNCC(req.getParameter("txtma"));
                    temp.setMaSP(m);
                    temp.setSoluong("1");
                    temp.setGia(gia);
                    temp.setThanhtien(gia);
                    ctnh_dao.create(temp);
                    System.out.println("Đã thêm mới");
                }
                for (ChiTiet_NhapHang ds_ctnh : a) {
                    //Trường hợp sản phẩm của nhà cung cấp đó đã có sẵn trong phiếu nhập thì chỉ cộng thêm số lượng
                    if (ds_ctnh.getMaSP().equals(m) && ds_ctnh.getMaNCC().equals(req.getParameter("txtma"))) {
                        temp = ds_ctnh;
                        int sl = Integer.parseInt(ds_ctnh.getSoluong()) + 1;
                        float tt = sl * Float.parseFloat(ds_ctnh.getGia());
                        temp.setSoluong(String.valueOf(sl));
                        temp.setThanhtien(String.valueOf(tt));
                        ctnh_dao.update(temp);
                        System.out.println("Đã sửa TH3");
                    }
                }
                req.setAttribute("message", "Them moi thanh cong");
            } catch (Exception e) {
                req.setAttribute("message", "Them moi that bai");
            }
        } else if (uri.contains("edit_nh")) {

            stt = uri.substring(uri.lastIndexOf("/") + 1);
            ctnh = ctnh_dao.findByMa(stt);

            req.setAttribute("form_ctnh", ctnh);
        } else if (uri.contains("edit_ctnh")) {

            stt = uri.substring(uri.lastIndexOf("/") + 1);
            ChiTiet_NhapHang tam = ctnh_dao.findByMa(stt);

            try {
                if (!req.getParameter("txt_slnhap").equals("") && !req.getParameter("txt_tt").equals("")) {
                    tam.setSoluong(req.getParameter("txt_slnhap"));
                    tam.setThanhtien(req.getParameter("txt_tt"));
                    ctnh_dao.update(tam);
                }
                req.setAttribute("message", "Cap nhap thanh cong");
            } catch (Exception e) {
                req.setAttribute("message", "Cap nhap that bai");
            }
        } else if (uri.contains("edit_xoa")) {
            String s = uri.substring(uri.lastIndexOf("/") + 1);
            try {
                ctnh_dao.remove(s);
                req.setAttribute("message", "Xoa thanh cong");
            } catch (Exception e) {
                req.setAttribute("message", "Xoa that bai");
            }
        } else if (uri.contains("nhaphang")) {
            try {
                int len = nh_dao.findAll().size();
                int ma = len + 1;
                nh.setMaNH(String.valueOf(ma));
                nh.setNgay(req.getParameter("txt_ngay"));
                nh.setTenTK(req.getParameter("txt_nv"));
                nh.setTongtien(req.getParameter("txt_tongtien"));
                nh.setTinhtrang("Chua Xac Nhan");
                nh_dao.create(nh);

                List<ChiTiet_NhapHang> up_ctnh = new ArrayList<ChiTiet_NhapHang>();
                up_ctnh = ctnh_dao.findAll();
                for (ChiTiet_NhapHang ct : up_ctnh) {
                    if (ct.getMaNH().equals("chuanhap")) {
                        ChiTiet_NhapHang entity = ct;
                        entity.setMaNH(String.valueOf(ma));
                        ctnh_dao.update(entity);
                    }
                }

//                ================Gửi Email====================
                List<ChiTiet_NhapHang> ds_ctnh = ctnh_dao.findByRole(String.valueOf(ma));
                List<String> ds_email = new ArrayList<String>();

                for (ChiTiet_NhapHang i_ctnh : ds_ctnh) {
                    for (NhaCungCap i_ncc : ncc_dao.findAll()) {
                        if (i_ctnh.getMaNCC().equals(i_ncc.getMaNCC())) {
                            ds_email.add(i_ncc.getEmail());
                        }
                    }
                }
                System.out.println(ds_email.size());
                // Sử dụng HashSet để loại bỏ các phần tử trùng lặp
                HashSet<String> l_tam = new HashSet<>(ds_email);

                // Tạo một danh sách mới từ các phần tử duy nhất
                List<String> ds_email_moi = new ArrayList<>(l_tam);

                final String username = "beautyicy6@gmail.com";//your email id
                final String password = "romc vtly xkkb zzxk";// your password
                Properties prop = new Properties();
                prop.put("mail.smtp.host", "smtp.gmail.com");
                prop.put("mail.smtp.port", "587");
                prop.put("mail.smtp.auth", "true");
                prop.put("mail.smtp.starttls.enable", "true");
                Session session = Session.getInstance(prop, new javax.mail.Authenticator() {
                    @Override
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });
                System.out.println(ds_email_moi.size());
                for (String i_email : ds_email_moi) {
                    System.out.println(i_email);
                    String emailTo = i_email;
                    String emailSubject = "Thông tin đơn hàng của bạn";
                    String sp_nhap="";
                    float t=0;
                    for (ChiTiet_NhapHang i_ct : ds_ctnh) {
                        for (NhaCungCap i_ncc : ncc_dao.findAll()) {
                            if (i_ct.getMaNCC().equals(i_ncc.getMaNCC())) {
                                sp_nhap += i_ct.getMaSP() + "....." + i_ct.getGia() + "....." + i_ct.getSoluong() + "....." + i_ct.getThanhtien()+"\n";
                                t += Float.parseFloat(i_ct.getThanhtien());

                            }
                        }
                    }
                    String emailContent = " =============================================== \n"
                                        + "|                   Phiếu nhập                  |\n"
                                        + " =============================================== \n"
                                        + "     Mã SP     Giá     SL     Thành tiền\n"
                                        + sp_nhap+"\n"
                                        + " =============================================== \n"
                                        + "                       Tổng:"+t
                                        + " =============================================== \n"
                            ;

                    try {
                        MimeMessage mess = new MimeMessage(session);
                        mess.setFrom(new InternetAddress(username));
                        mess.setRecipients(Message.RecipientType.TO, InternetAddress.parse(emailTo));
                        mess.setSubject(emailSubject, "UTF-8");
                        mess.setText(emailContent, "UTF-8");
                        Transport.send(mess);
                    } catch (Exception e) {
                    }
                }
                req.setAttribute("message", "Đã gửi mail!");
            } catch (Exception e) {
                req.setAttribute("message", "gửi thất bại");
            }

        }
        req.setAttribute("form_ncc", ncc);
        req.setAttribute("items_ncc", ncc_dao.findAll());

        req.setAttribute("items_spncc", list_SPNCC);

        float tong = 0;
        List<ChiTiet_NhapHang> l_ctnh = ctnh_dao.findAll();
        for (ChiTiet_NhapHang i : l_ctnh) {
            if (i.getMaNH().equals("chuanhap")) {
                list_ctnh.add(i);
                tong = tong + Float.parseFloat(i.getThanhtien());
            }
        }
        req.setAttribute("items_ctnh", list_ctnh);
        req.setAttribute("tongtien_chuanhap", tong);

        req.getRequestDispatcher("/view/NhaCungCap.jsp").forward(req, resp);
    }
}
