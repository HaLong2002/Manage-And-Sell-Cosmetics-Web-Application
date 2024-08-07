package controller;

import model.ChiTietHoaDonDAO;
import model.HoaDonDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.beanutils.BeanUtils;
import model.SanPhamDAO;
import model.CartBean;
import model.ChiTietHoaDon;
import model.ChiTietHoaDonDTO;
import model.HoaDon;
import model.SanPham;
import model.SanPhamDTO;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Properties;
import java.util.function.UnaryOperator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
import javax.mail.Session;
import model.GioHang;
import model.GioHangDAO;
import model.GioHangDTO;
import model.User;
import model.UserDAO;

@WebServlet({"/sanpham/tat-ca-san-pham", "/sanpham/trang-diem", "/sanpham/cham-soc-da", "/sanpham/lam-sach-da",
    "/sanpham/my-pham-chuc-nang", "/sanpham/chong-nang", "/sanpham/index/gio-hang", "/sanpham/index/thanh-toan",
    "/sanpham/index/dat-hang", "/sanpham/index/chi-tiet-san-pham/*", "/don-hang/index/*", "/don-hang/chi-tiet-don-hang/*",
    "/sanpham/ket-qua-tim-kiem"})

public class SanPhamServlet extends HttpServlet {

    private static int tongtien = 0;
    private static String nhap_tim_kiem = "";
    private static String content_email_donhang = "";

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String uri = req.getRequestURI();

        if (uri.contains("tat-ca-san-pham")) {
            this.doTatCaSanPham(req, resp);
        } else if (uri.contains("trang-diem")) {
            this.doTrangDiem(req, resp);
        } else if (uri.contains("gio-hang")) {
            this.doGioHang(req, resp);
        } else if (uri.contains("thanh-toan")) {
            this.doThanhToan(req, resp);
        } else if (uri.contains("cham-soc-da")) {
            this.doChamSocDa(req, resp);
        } else if (uri.contains("lam-sach-da")) {
            this.doLamSachDa(req, resp);
        } else if (uri.contains("my-pham-chuc-nang")) {
            this.doMyPhamChucNang(req, resp);
        } else if (uri.contains("chong-nang")) {
            this.doChongNang(req, resp);
        } else if (uri.contains("chi-tiet-san-pham")) {
            this.doChiTietSanPham(req, resp);
        } else if (uri.contains("dat-hang")) {
            this.doDatHang(req, resp);
        } else if (uri.contains("chi-tiet-don-hang")) {
            this.doChiTietDonHang(req, resp);
        } else if (uri.contains("don-hang")) {
            this.doDonHang(req, resp);
        } else if (uri.contains("ket-qua-tim-kiem")) {
            this.doKetQua_TimKiem(req, resp);
        }

    }

    private void doTatCaSanPham(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        SanPhamDAO dao = new SanPhamDAO();

        List<SanPham> dssp = dao.findAll();
        System.err.println(dssp.size());

        req.setAttribute("items", dssp);
        req.getRequestDispatcher("/view/TatCaSanPham.jsp").forward(req, resp);
    }

    private void doTrangDiem(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        SanPhamDAO dao = new SanPhamDAO();

        req.setAttribute("items", dao.findByRole("Trang điểm"));

        req.getRequestDispatcher("/view/TrangDiem.jsp").forward(req, resp);
    }

    private void doGioHang(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        SanPham sp = new SanPham();
        SanPhamDAO dao = new SanPhamDAO();
        GioHang gh = new GioHang();
        GioHangDAO gh_dao = new GioHangDAO();

        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");

        String username = req.getParameter("username-nguoi-dung");
        List<GioHang> ds_gh = gh_dao.findByRole(username);
        List<GioHangDTO> ds_gh_dto = new ArrayList<GioHangDTO>();
        for (GioHang i_gh : ds_gh) {
            SanPham i_sp = new SanPham();
            i_sp = dao.findById(i_gh.getMasp());
            GioHangDTO gh_dto = new GioHangDTO(i_gh, i_sp);
            ds_gh_dto.add(gh_dto);
        }

        PrintWriter out = resp.getWriter();
        try {
            String action = req.getParameter("xoa-san-pham");
            if (action == null) {

                req.setAttribute("items", ds_gh_dto);
                req.getRequestDispatcher("/view/GioHang.jsp").forward(req, resp);
                return;
            } else if (action.equals("Xóa")) {
                String[] list = req.getParameterValues("rmv");

                List<GioHangDTO> ds_gh_dto1 = new ArrayList<GioHangDTO>();
                if (list != null) {

                    for (GioHangDTO i_gh_dto : ds_gh_dto) {
                        int d = 0;
                        for (int i = 0; i < list.length; i++) {
                            if (i_gh_dto.getGiohang().getMasp().equals(list[i])) {
                                d++;
                            }
                        }
                        if (d == 0) {
                            ds_gh_dto1.add(i_gh_dto);
                        } else {
                            gh_dao.remove(i_gh_dto.getGiohang().getMagh());
                        }
                    }
                    req.setAttribute("items", ds_gh_dto1);
                    req.getRequestDispatcher("/view/GioHang.jsp").forward(req, resp);
                    return;
                }
            }
//            else if (action.equals("submit-thanh-toan")) {
//                List<GioHang> ds_gh1 = gh_dao.findByRole(username);
//                String[] list_sl = req.getParameterValues("so-luong-duoc-chon");
//                String[] list_masp = req.getParameterValues("ma-sp");
//                for (int i = 0; i < list_masp.length; i++) {
//                    SanPham sp1 = dao.findById(list_masp[i]);
//                    int dongia = Integer.parseInt(sp1.getGiaBan());
//                    int sl = Integer.parseInt(list_sl[i]);
//                    System.out.println(list_sl[i]);
//                    int tt = dongia * sl;
//                    GioHang gh1 = new GioHang(ds_gh1.get(i).getMagh(), username, list_masp[i], Integer.parseInt(list_sl[i]), String.valueOf(tt));
//                    gh_dao.update(gh1);
//                    System.out.println(ds_gh1.get(i).getSoluong());
//                }
//                doThanhToan(req, resp);
////                req.getRequestDispatcher("/view/ThanhToan.jsp").forward(req, resp);
////                return;
//            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            out.close();
        }

    }

    private void doThanhToan(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");

        GioHangDAO gh_dao = new GioHangDAO();
        SanPhamDAO dao = new SanPhamDAO();

        String action = req.getParameter("nhan-nut-dat-hang");
        if (action == null) {

            String username1 = req.getParameter("username-nguoi-dung");
            List<GioHang> ds_gh1 = gh_dao.findByRole(username1);
            String[] list_sl = req.getParameterValues("so-luong-duoc-chon");
            String[] list_masp1 = req.getParameterValues("ma-sp");
            for (int i = 0; i < list_masp1.length; i++) {
                SanPham sp1 = dao.findById(list_masp1[i]);
                int dongia = Integer.parseInt(sp1.getGiaBan());
                int sl = Integer.parseInt(list_sl[i]);
                int tt = dongia * sl;
                GioHang gh1 = new GioHang(ds_gh1.get(i).getMagh(), username1, list_masp1[i], Integer.parseInt(list_sl[i]), String.valueOf(tt));
                gh_dao.update(gh1);
            }

            String username = req.getParameter("username-nguoi-dung");
            List<GioHang> ds_gh = gh_dao.findByRole(username);
            List<GioHangDTO> ds_gh_dto = new ArrayList<GioHangDTO>();
            for (GioHang i_gh : ds_gh) {
                SanPham i_sp = new SanPham();
                i_sp = dao.findById(i_gh.getMasp());
                GioHangDTO gh_dto = new GioHangDTO(i_gh, i_sp);
                ds_gh_dto.add(gh_dto);
            }
            req.setAttribute("items", ds_gh_dto);
            req.getRequestDispatcher("/view/ThanhToan.jsp").forward(req, resp);
            return;
        }
        if (action.equals("ĐẶT HÀNG")) {
            HoaDon hd = new HoaDon();
            HoaDonDAO hd_dao = new HoaDonDAO();
            ChiTietHoaDonDAO cthd_dao = new ChiTietHoaDonDAO();

            List<HoaDon> dshd = hd_dao.findAll();
            List<ChiTietHoaDon> ds_cthd = cthd_dao.findAll();

            try {
                String mahd = String.valueOf(dshd.size() + 1);
                hd.setMahd(mahd);
                hd.setUsername(req.getParameter("username-nguoi-dung"));
                hd.setHoten(req.getParameter("ho-ten"));
                hd.setSdt(req.getParameter("sdt"));
                hd.setDiachi(req.getParameter("dia-chi"));
                Date date = Calendar.getInstance().getTime();
                DateFormat dateFormat = new SimpleDateFormat("dd-M-yyyy hh:mm:ss a");
                String ngaydat = dateFormat.format(date);
                hd.setNgaylap(ngaydat);
                hd.setNgayhoanthanh("");
                hd.setTongtienhang(req.getParameter("tong-tien-hang"));
                hd.setPhivanchuyen("28000");
                hd.setThanhtien(req.getParameter("thanh-tien"));
                hd.setPhuongthuc_thanhtoan("Thanh toán khi nhận hàng");
                hd.setTinhtrang("Đơn hàng đang được chuẩn bị");
                hd_dao.create(hd);

                String thongtin_nguoidat
                        = "Mã đơn hàng: " + mahd + "\n"
                        + "Tên tài khoản: " + req.getParameter("username-nguoi-dung") + "\n"
                        + "Họ tên: " + req.getParameter("ho-ten") + "\n"
                        + "Số điện thoại: " + req.getParameter("sdt") + "\n"
                        + "Địa chỉ: " + req.getParameter("dia-chi") + "\n"
                        + "Ngày đặt hàng: " + ngaydat + "\n\n";

                String thongtin_tongtien_hoadon
                        = "\nPhương thức thanh toán: Thanh toán khi nhận hàng" + "\n"
                        + "Tổng tiền hàng: " + req.getParameter("tong-tien-hang") + "\n"
                        + "Phí vận chuyển: 28.000 đ" + "\n"
                        + "Thành tiền: " + req.getParameter("thanh-tien") + "\n";

                int sl_ct = ds_cthd.size() + 1;
                String[] list_masp = req.getParameterValues("ma-sp");
                SanPhamDAO sp_dao = new SanPhamDAO();
                String dssp = "Danh sách sản phẩm:\n";
                String[] list_soluong = req.getParameterValues("so-luong");
                String[] list_thanhtien_sp = req.getParameterValues("thanh-tien-sp");
                for (int i = 0; i < list_masp.length; i++) {
                    ChiTietHoaDon cthd = new ChiTietHoaDon();
                    String mact = String.valueOf(sl_ct);
                    cthd.setMact(mact);
                    cthd.setMahd(mahd);
                    cthd.setNgaydat(ngaydat);
                    cthd.setNgayhoanthanh("");
                    cthd.setUsername(req.getParameter("username-nguoi-dung"));
                    cthd.setMasp(list_masp[i]);

                    SanPham sp = new SanPham();
                    sp = sp_dao.findById(list_masp[i]);

                    cthd.setSoluong(list_soluong[i]);
                    cthd.setThanhtien(list_thanhtien_sp[i]);

                    dssp = dssp + sp.getTenSP() + "\t" + "Số lượng: " + list_soluong[i] + "\t" + "Thành tiền: " + list_thanhtien_sp[i] + "\n";

                    cthd_dao.create(cthd);
                    sl_ct = sl_ct + 1;
                }

                content_email_donhang = thongtin_nguoidat + dssp + thongtin_tongtien_hoadon;

                req.setAttribute("message", "Cap nhat thanh cong");
                doDatHang(req, resp);
                RequestDispatcher rd = req.getRequestDispatcher("/view/DatHang.jsp");
                rd.forward(req, resp);
                return;
            } catch (Exception e) {
                req.setAttribute("message", "Cap nhat that bai");
                System.out.println("Cap nhat that bai");
            }
        }
    }

    private void doDatHang(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");

        HoaDonDAO hd_dao = new HoaDonDAO();
        ChiTietHoaDonDAO cthd_dao = new ChiTietHoaDonDAO();
        SanPhamDAO sp_dao = new SanPhamDAO();
        String mahd = String.valueOf(hd_dao.findAll().size());
        List<ChiTietHoaDon> ds_cthd = cthd_dao.findByRole(mahd);
        for (ChiTietHoaDon cthd : ds_cthd) {
            int sl = Integer.parseInt(cthd.getSoluong());
            SanPham sp = new SanPham();
            sp = sp_dao.findById(cthd.getMasp());
            int sl_sp = Integer.parseInt(sp.getSoLuong());
            sp.setSoLuong(String.valueOf(sl_sp - sl));
            sp_dao.update(sp);
        }

        String user = req.getParameter("username-nguoi-dung");

        GioHangDAO gh_dao = new GioHangDAO();
        List<GioHang> ds_gh = gh_dao.findByRole(user);
        for (GioHang gh : ds_gh) {
            gh_dao.remove(gh.getMagh());
        }

        UserDAO user_dao = new UserDAO();
        User u = user_dao.findById(user);

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
        //String emailTo = req.getParameter("to");
        String emailTo = u.getEmail();
        String emailSubject = "Thông tin đơn hàng của bạn";
        String emailContent = content_email_donhang;

        try {
            MimeMessage mess = new MimeMessage(session);
            mess.setFrom(new InternetAddress(username));
            mess.setRecipients(Message.RecipientType.TO, InternetAddress.parse(emailTo));
            mess.setSubject(emailSubject, "UTF-8");
            mess.setText(emailContent, "UTF-8");
            Transport.send(mess);
        } catch (Exception e) {
        }

        req.getRequestDispatcher("/view/DatHang.jsp").forward(req, resp);
    }

    private void doChamSocDa(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        SanPhamDAO dao = new SanPhamDAO();

        req.setAttribute("items", dao.findByRole("Chăm sóc da"));

        req.getRequestDispatcher("/view/ChamSocDa.jsp").forward(req, resp);
    }

    private void doLamSachDa(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        SanPhamDAO dao = new SanPhamDAO();

        req.setAttribute("items", dao.findByRole("Làm sạch da"));

        req.getRequestDispatcher("/view/LamSachDa.jsp").forward(req, resp);
    }

    private void doMyPhamChucNang(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        SanPhamDAO dao = new SanPhamDAO();

        req.setAttribute("items", dao.findByRole("Mỹ phẩm chức năng"));

        req.getRequestDispatcher("/view/MyPhamChucNang.jsp").forward(req, resp);
    }

    private void doChongNang(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        SanPhamDAO dao = new SanPhamDAO();

        req.setAttribute("items", dao.findByRole("Chống nắng"));

        req.getRequestDispatcher("/view/ChongNang.jsp").forward(req, resp);
    }

    private void doChiTietSanPham(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        SanPhamDAO dao = new SanPhamDAO();
        SanPham sp = new SanPham();

        String uri = req.getRequestURI();
        String id = uri.substring(uri.lastIndexOf("/") + 1);
        sp = dao.findById(id);

        req.setAttribute("form", sp);
        req.getRequestDispatcher("/view/ChiTietSanPham.jsp").forward(req, resp);

        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();
        try {
            String action = req.getParameter("them-gio-hang");

            if (action == null) {
                req.setAttribute("form", sp);
                req.getRequestDispatcher("/view/ChiTietSanPham.jsp").forward(req, resp);
                return;
            } else if (action.equals("Add to Cart")) {

                String username = req.getParameter("username-nguoi-dung");
                System.out.println(username);
                String tensp = req.getParameter("tensp");
                String loaisp = req.getParameter("loaisp");
                String giaban = req.getParameter("giaban");
                String soluong = req.getParameter("soluong");
                String donvitinh = req.getParameter("donvitinh");
                String hinhanh = req.getParameter("hinhsp");
                int sl_duoc_chon = Integer.parseInt(req.getParameter("so-luong-duoc-chon"));
                tongtien = sl_duoc_chon * Integer.parseInt(sp.getGiaBan());
                SanPham sp_giohang = new SanPham(id, tensp, loaisp, giaban, soluong, donvitinh, sp.getHinhAnh());

                GioHangDAO gh_dao = new GioHangDAO();
                List<GioHang> ds_gh = gh_dao.findByRole(username);
                List<GioHang> ds_tcgh = gh_dao.findAll();
                SanPham sp1 = dao.findById(id);

                int d = 0;
                String magh = "";
                int sl = 0;
                int max = 0;
                for (GioHang i : ds_tcgh) {
                    int t = Integer.parseInt(i.getMagh());
                    if (t > max) {
                        max = t;
                    }
                }
                for (GioHang i : ds_gh) {
                    if (i.getMasp().equals(id)) {
                        magh = i.getMagh();
                        sl = i.getSoluong() + sl_duoc_chon;
                        d++;
                    }
                }

                if (d == 0) {
                    int magh1 = max + 1;
                    GioHang gh = new GioHang(String.valueOf(magh1), username, id, sl_duoc_chon, String.valueOf(tongtien));
                    gh_dao.create(gh);
                    req.setAttribute("message", "Them vao gio hang thanh cong!");
                } else {
                    if (sl < Integer.parseInt(sp1.getSoLuong())) {
                        GioHang gh = new GioHang(magh, username, id, sl, String.valueOf(tongtien));
                        gh_dao.update(gh);
                    } else {
                        req.setAttribute("message", "So luong trong gio hang vuot qua so luong san pham trong kho!");
                    }
                }

                req.getRequestDispatcher("/view/ChiTietSanPham.jsp").forward(req, resp);
//                RequestDispatcher dispatcher = req.getRequestDispatcher("/sanpham/index/chi-tiet-san-pham");
//                dispatcher.forward(req, resp);

                return;

                /*
                HttpSession session = req.getSession(true);
                CartBean shop = (CartBean) session.getAttribute("SHOP");
                if (shop == null) {
                    shop = new CartBean();
                }
                String tensp = req.getParameter("tensp");
                String loaisp = req.getParameter("loaisp");
                String giaban = req.getParameter("giaban");
                String soluong = req.getParameter("soluong");
                String donvitinh = req.getParameter("donvitinh");
                String hinhanh = req.getParameter("hinhsp");
                int sl_duoc_chon = Integer.parseInt(req.getParameter("so-luong-duoc-chon"));
                tongtien = sl_duoc_chon * Integer.parseInt(sp.getGiaBan());
                SanPham sp_giohang = new SanPham(id, tensp, loaisp, giaban, soluong, donvitinh, sp.getHinhAnh());
                SanPhamDTO sp_DTO = new SanPhamDTO(sp_giohang, sl_duoc_chon, tongtien);
                shop.addSanPham(sp_DTO, sl_duoc_chon, tongtien);
                session.setAttribute("SHOP", shop);*/
//                req.getRequestDispatcher("/view/ChiTietSanPham.jsp").forward(req, resp);
//                return;
            }
        } catch (Exception e) {
            req.setAttribute("message", "Thêm vào giỏ hàng thất bại!");
            e.printStackTrace();
        } finally {
            out.close();
        }
    }

    private void doDonHang(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");

        HoaDonDAO hd_dao = new HoaDonDAO();

        String uri = req.getRequestURI();
        String id = uri.substring(uri.lastIndexOf("/") + 1);

        String username = req.getParameter("username-nguoi-dung");
        List<HoaDon> dshd = hd_dao.findByRole(username);

        String action = req.getParameter("loc-don-hang");
        if (action == null) {
            req.setAttribute("items", dshd);
            req.getRequestDispatcher("/view/DonHang_1.jsp").forward(req, resp);
            return;
        } else if (action.equals("Chờ giao hàng")) {
            List<HoaDon> dshd_chuanbi = new ArrayList<HoaDon>();
            for (HoaDon hd : dshd) {
                if (hd.getTinhtrang().equals("Đơn hàng đang được chuẩn bị")) {
                    dshd_chuanbi.add(hd);
                }
            }
            req.setAttribute("items", dshd_chuanbi);
            req.getRequestDispatcher("/view/DonHang_1.jsp").forward(req, resp);
            return;
        } else if (action.equals("Hoàn thành")) {
            List<HoaDon> dshd_hoanthanh = new ArrayList<HoaDon>();
            for (HoaDon hd : dshd) {
                if (hd.getTinhtrang().equals("Đơn hàng đã được giao thành công")) {
                    dshd_hoanthanh.add(hd);
                }
            }
            req.setAttribute("items", dshd_hoanthanh);
            req.getRequestDispatcher("/view/DonHang_1.jsp").forward(req, resp);
            return;
        } else if (action.equals("Tất cả")) {
            req.setAttribute("items", dshd);
            req.getRequestDispatcher("/view/DonHang_1.jsp").forward(req, resp);
            return;
        }

    }

    private void doChiTietDonHang(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        HoaDon hd = new HoaDon();
        HoaDonDAO hd_dao = new HoaDonDAO();
        ChiTietHoaDonDAO cthd_dao = new ChiTietHoaDonDAO();
        SanPhamDAO sp_dao = new SanPhamDAO();
        List<ChiTietHoaDonDTO> ds_cthd_dto = new ArrayList<ChiTietHoaDonDTO>();

        String uri = req.getRequestURI();
        String id = uri.substring(uri.lastIndexOf("/") + 1);
        hd = hd_dao.findById(id);
        List<ChiTietHoaDon> dscthd = cthd_dao.findByRole(id);

        for (ChiTietHoaDon cthd : dscthd) {
            SanPham sp = new SanPham();
            sp = sp_dao.findById(cthd.getMasp());
            ChiTietHoaDonDTO cthd_dto = new ChiTietHoaDonDTO(sp, cthd);
            ds_cthd_dto.add(cthd_dto);
        }

        req.setAttribute("form", hd);
        req.setAttribute("items", ds_cthd_dto);
        req.getRequestDispatcher("/view/ChiTietDonHang.jsp").forward(req, resp);
    }

    private void doKetQua_TimKiem(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");

        String timkiem = req.getParameter("nhap-tim-kiem");
        if (timkiem != null) {
            nhap_tim_kiem = timkiem;
        }
        List<SanPham> kqtk = new ArrayList<SanPham>();

        SanPhamDAO dao = new SanPhamDAO();

        List<SanPham> dssp = dao.findAll();
        for (SanPham sp : dssp) {
            if (sp.getTenSP().toLowerCase().contains(nhap_tim_kiem.toLowerCase())) {
                kqtk.add(sp);
            }
        }

        String action = req.getParameter("loc-sp");
        if (action == null) {

            req.setAttribute("items", kqtk);
            req.getRequestDispatcher("/view/KetQuaTimKiem.jsp").forward(req, resp);
            return;
        } else if (action.equals("ÁP DỤNG")) {

            String[] list_loaisp = req.getParameterValues("loc-loaisp");
            String gia_tu = req.getParameter("tu-gia");
            String den_gia = req.getParameter("den-gia");

            List<SanPham> kqtk_apdung_loaisp = new ArrayList<SanPham>();
            List<SanPham> kqtk_apdung_gia = new ArrayList<SanPham>();

            if (list_loaisp != null) {
                for (SanPham sp : kqtk) {
                    for (String list_loaisp1 : list_loaisp) {
                        if (sp.getLoaiSP().equals(list_loaisp1)) {
                            kqtk_apdung_loaisp.add(sp);
                        }
                    }
                }
            }
            if (list_loaisp == null) {
                kqtk_apdung_loaisp.addAll(kqtk);
            }
            if (gia_tu != "" && den_gia != "") {
                for (SanPham sp : kqtk_apdung_loaisp) {
                    float giaban = Float.parseFloat(sp.getGiaBan());
                    float tu = Float.parseFloat(gia_tu);
                    float den = Float.parseFloat(den_gia);
                    if (tu <= giaban && giaban <= den) {
                        kqtk_apdung_gia.add(sp);
                    }
                }
            }
            if (gia_tu != "" && den_gia == "") {
                for (SanPham sp : kqtk_apdung_loaisp) {
                    float giaban = Float.parseFloat(sp.getGiaBan());
                    float tu = Float.parseFloat(gia_tu);
                    if (tu <= giaban) {
                        kqtk_apdung_gia.add(sp);
                    }
                }
            }
            if (gia_tu == "" && den_gia != "") {
                for (SanPham sp : kqtk_apdung_loaisp) {
                    float giaban = Float.parseFloat(sp.getGiaBan());
                    float den = Float.parseFloat(den_gia);
                    if (giaban <= den) {
                        kqtk_apdung_gia.add(sp);
                    }
                }
            }
            if (gia_tu == "" && den_gia == "") {
                kqtk_apdung_gia.addAll(kqtk_apdung_loaisp);
            }
            req.setAttribute("items", kqtk_apdung_gia);
            req.getRequestDispatcher("/view/KetQuaTimKiem.jsp").forward(req, resp);
            return;
        }

    }
}
