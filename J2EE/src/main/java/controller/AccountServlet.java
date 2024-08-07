/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import model.UserDAO;
import model.User;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.String.format;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Properties;
import java.util.Random;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.beanutils.BeanUtils;

/**
 *
 * @author Admin
 */
@WebServlet({
    "/account/index",
    "/account/sign-in",
    "/account/sign-up",
    "/account/sign-out",
    "/account/quenmatkhau",
    "/account/change-password",
    "/account/edit-profile",
    "/account/cancel",
    "/account/update-password",
    "/account/exit-reset",
    "/account/updateInfor",
    "/account/resend",
    "/account/send-code",
    "/account/confirm",
    "/account/resend-code",
    "/account/thongtintaikhoan",
    "/account/send-email",
    "/account/form-sign-up",
    "/account/form-sign-in",
    "/account/reset-password",
    "/account/exit",
    "/account/form-taikhoan",
    "/account/form-sp",
    "/account/form-lsnh",
    "/account/form-ncc",
    "/account/form-tk",
    "/account/form-lsdh",
    "/account/thoat-quen-mat-khau",
    "/account/thoat-nhap-ma-code",
        "/account/laylaimatkhau",
          "/account/thongtinnguoidung"
})

public class AccountServlet extends HttpServlet {

    public String macode = RandomCode();
    public String name = "ĐĂNG NHẬP";
    public String emailTo;
    public String hinhanh = "login.png";
    public String role;

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if (uri.contains("index")) {
            req.setAttribute("name", name);
            req.setAttribute("hinhanh", hinhanh);
           // req.getRequestDispatcher("/view/header.jsp").forward(req, resp);
           resp.sendRedirect(req.getContextPath() + "/sanpham/tat-ca-san-pham");
      //   req.getRequestDispatcher("/view/TrangDiem.jsp").forward(req, resp);
        } else if (uri.contains("sign-in")) {
            this.doSignIn(req, resp);
        } else if (uri.contains("form-sign-in")) {
            req.getRequestDispatcher("/view/dang-nhap.jsp").forward(req, resp);
        } else if (uri.contains("form-sign-up")) {
            req.getRequestDispatcher("/view/dang-ky.jsp").forward(req, resp);
        } else if (uri.contains("sign-up")) {
            this.doSignUp(req, resp);
        } else if (uri.contains("send-email")) {
            this.doMail(req, resp);
        } else if (uri.contains("confirm")) {
            this.doCheck(req, resp);
        } else if (uri.contains("resend")) {
            this.doResend(req, resp);
        } else if (uri.contains("quenmatkhau")) {
            req.getRequestDispatcher("/view/quen-matkhau.jsp").forward(req, resp);
        } else if (uri.contains("cancel")) {
            this.doCancel(req, resp);
        } else if (uri.contains("change-password")) {
            req.getRequestDispatcher("/view/doi-matkhau.jsp").forward(req, resp);
        } else if (uri.contains("update-password")) {
            this.doChangePass(req, resp);
        } else if (uri.contains("updateInfor")) {
            this.doUpdateInfor(req, resp);
        } else if (uri.contains("thongtintaikhoan")) {
            this.getInforAccount(req, resp);
        } else if (uri.contains("thongtintaikhoan")) {
            req.getRequestDispatcher("/view/dang-nhap.jsp").forward(req, resp);
        } else if (uri.contains("exit-reset")) {
            req.getRequestDispatcher("/view/dang-nhap.jsp").forward(req, resp);
        } else if (uri.contains("exit")) {
            this.doCancel(req, resp);
        } else if (uri.contains("sign-out")) {
            this.doSignOut(req, resp);
        } else if (uri.contains("form-taikhoan")) {
            resp.sendRedirect(req.getContextPath() + "/user/index");
        } else if (uri.contains("form-sp")) {
            resp.sendRedirect(req.getContextPath() + "/SP/index");
        } else if (uri.contains("form-lsnh")) {
            resp.sendRedirect(req.getContextPath() + "/LS/index");
        } else if (uri.contains("form-ncc")) {
            resp.sendRedirect(req.getContextPath() + "/NCC/index");
        } else if (uri.contains("form-lsdh")) {
            resp.sendRedirect(req.getContextPath() + "/donhang/index");
        } else if (uri.contains("form-tk")) {
            resp.sendRedirect(req.getContextPath() + "/thongke/index");
        } else if (uri.contains("thoat-quen-mat-khau")) {
            req.getRequestDispatcher("/view/dang-nhap.jsp").forward(req, resp);
        } else if (uri.contains("thoat-nhap-ma-code")) {
            req.getRequestDispatcher("/view/dang-nhap.jsp").forward(req, resp);
        }else if (uri.contains("laylaimatkhau")) {
            this.doResetPass(req, resp);
           // req.getRequestDispatcher("/view/dang-nhap.jsp").forward(req, resp);

    }else if (uri.contains("thongtinnguoidung")) {
            this.getInforAccount_User(req, resp);
           // req.getRequestDispatcher("/view/dang-nhap.jsp").forward(req, resp);

    }
    }

    private void doSignIn(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("txtusername");
        String pw = req.getParameter("txtpassword");

        try {
            UserDAO dao = new UserDAO();
            User user = dao.findById(id);
            if (!user.getPassword().equals(pw)) {
                req.setAttribute("message_mk", "Mật khẩu sai!!!");
                
            } else {
                //  req.setAttribute("message", "Đăng nhập thành công!");
                req.getSession().setAttribute("user", user);
                req.getSession().setAttribute("name", user.getUsername());
                req.getSession().setAttribute("hinhanh", user.getHinhanh());
                req.getSession().setAttribute("role", user.getRole());
                name = user.getUsername();
                hinhanh = user.getHinhanh();
                role = user.getRole();
                if (role.equals("Admin")) {
                    RequestDispatcher dispatcher = req.getRequestDispatcher("/user/index");
                    dispatcher.forward(req, resp);
                    return;
                } else if (role.equals("Manage")) {
                    req.getRequestDispatcher("/view/SanPham.jsp").forward(req, resp);
                    return;
                } else if (role.equals("User")) {
                    RequestDispatcher dispatcher = req.getRequestDispatcher("/sanpham/tat-ca-san-pham");
                    dispatcher.forward(req, resp);
                    return;
                }
            }
        } catch (Exception e) {
           req.setAttribute("message_dn", "Sai tên đăng nhập!!!");

        }
        req.getRequestDispatcher("/view/dang-nhap.jsp").forward(req, resp);
    }

    private void doSignUp(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        UserDAO userDAO = new UserDAO();
        User user = new User();

        try {
            String username = req.getParameter("txtusername");
            String password = req.getParameter("txtpassword");
            String email = req.getParameter("txtemail");
            String fullname = req.getParameter("txtfullname");
            String dateStr = req.getParameter("txtdate");
            String sex = req.getParameter("radiogen");
            boolean gioiTinh = Boolean.parseBoolean(sex);
            SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
            Date date = dateFormat.parse(dateStr);
            user.setUsername(username);
            user.setEmail(email);
            user.setFullname(fullname);
            user.setHinhanh("macdinh1.png");
            user.setPassword(password);
            user.setGioitinh(gioiTinh);
            user.setRole("User");
            user.setDate(date);
            userDAO.create(user);
           // req.setAttribute("message", "Thêm mới thành công");
            req.getRequestDispatcher("/view/dang-nhap.jsp").forward(req, resp);
        } catch (Exception e) {
            req.setAttribute("message", "Đăng ký thất bại thất bại");
        }
        req.getRequestDispatcher("/view/dang-ky.jsp").forward(req, resp);

    }

    private String RandomCode() {
        Random random = new Random();
        int randomNumber = random.nextInt(90000) + 10000;
        String randomString = String.valueOf(randomNumber);
        return randomString;
    }

    private void doMail(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
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
        UserDAO dao = new UserDAO();
        emailTo = request.getParameter("txtemail");
        macode = RandomCode();
        String emailSubject = "Mã xác minh tài khoản ICY Cosmetic ";
        String emailContent = macode;
        try {
            String checkmail = dao.getEmail(emailTo);

            if (checkmail != null) {
                request.setAttribute("message", "thanh cong");

            }
            Message mess = new MimeMessage(session);
            mess.setFrom(new InternetAddress(username));
            mess.setRecipients(Message.RecipientType.TO, InternetAddress.parse(emailTo));
            mess.setSubject(emailSubject);
            mess.setText(emailContent + "là mã xác minh của bạn!");
            Transport.send(mess);
            System.out.println("done");
            request.setAttribute("message", "Đã gửi mail!" + macode);
            request.getRequestDispatcher("/view/ma-xacnhan.jsp?macode=" + macode).forward(request, response);

        } catch (Exception e) {
            request.setAttribute("message", "Email không tồn tại trong hệ thống.Xin vui lòng thử lại!!!");
            request.getRequestDispatcher("/view/quen-matkhau.jsp").forward(request, response);
        }
    }

    private void doCheck(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String code = req.getParameter("txtmaxacnhan");

        if (!code.equals(" ") && code.equals(macode)) {
            req.getRequestDispatcher("/view/reset-pass.jsp").forward(req, resp);
        } else {
            req.setAttribute("message", "Mã xác minh không đúng.Xin vui lòng thử lại !!!!");
            req.getRequestDispatcher("/view/ma-xacnhan.jsp").forward(req, resp);
        }
    }

    private void getInforAccount(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        // name = req.getParameter("username");
        try {

            if (!name.equals("ĐĂNG NHẬP")) {
                UserDAO userDAO = new UserDAO();
                //  String id = req.getParameter("txtusername");
                User user = userDAO.findById(name);
                req.setAttribute("form", user);
                req.getRequestDispatcher("/view/thongtin-taikhoan.jsp").forward(req, resp);
            } else {
                req.getRequestDispatcher("/view/dang-nhap.jsp").forward(req, resp);
            }

        } catch (Exception e) {
            req.getRequestDispatcher("/view/dang-nhap.jsp").forward(req, resp);

        }

    }
     private void getInforAccount_User(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        // name = req.getParameter("username");
        try {

            if (!name.equals("ĐĂNG NHẬP")) {
                UserDAO userDAO = new UserDAO();
                //  String id = req.getParameter("txtusername");
                User user = userDAO.findById(name);
                req.setAttribute("form", user);
                req.getRequestDispatcher("/view/infor_User.jsp").forward(req, resp);
            } else {
                req.getRequestDispatcher("/view/dang-nhap.jsp").forward(req, resp);
            }

        } catch (Exception e) {
            req.getRequestDispatcher("/view/dang-nhap.jsp").forward(req, resp);

        }

    }

    private void doResend(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

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

        macode = RandomCode();
        String emailSubject = "Mã xác minh tài khoản ICY Cosmetic ";
        String emailContent = macode;
        try {

            Message mess = new MimeMessage(session);
            mess.setFrom(new InternetAddress(username));
            mess.setRecipients(Message.RecipientType.TO, InternetAddress.parse(emailTo));
            mess.setSubject(emailSubject);
            mess.setText(emailContent + "là mã xác minh của bạn!");
            Transport.send(mess);
            System.out.println("done");
            req.setAttribute("message", "Đã gửi mail!" + macode);
            req.getRequestDispatcher("/view/ma-xacnhan.jsp?macode=" + macode).forward(req, resp);

        } catch (Exception e) {
            req.setAttribute("message", "Mã xác minh không đúng.Xin vui lòng thử lại !!!!");
            req.getRequestDispatcher("/view/ma-xacnhan.jsp").forward(req, resp);
        }
    }

    private void doUpdateInfor(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        UserDAO userDAO = new UserDAO();
        String username = req.getParameter("txtusername");
        User user = userDAO.findById(username);
        try {
            String email = req.getParameter("txtemail");
            String fullname = req.getParameter("txtfullname");
            String dateStr = req.getParameter("txtngaysinh");
            String sex = req.getParameter("radiogen");
            String anh = req.getParameter("src_img");

            boolean gioiTinh = Boolean.parseBoolean(sex);
            SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
            Date date = dateFormat.parse(dateStr);
            user.setEmail(email);
            user.setFullname(fullname);
            user.setHinhanh(anh);
            user.setGioitinh(gioiTinh);
           // user.setRole("User");
            //req.setAttribute("message", "đây là"+anh);
            user.setDate(date);
            userDAO.update(user);
            getInforAccount(req, resp);
        } catch (Exception e) {
            req.setAttribute("message", "Cập nhật thất bại");

        }
        req.getRequestDispatcher("/view/thongtin-taikhoan.jsp").forward(req, resp);

    }

    private void doChangePass(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        UserDAO userDAO = new UserDAO();
        User user = userDAO.findById(name);
        try {
            String passold = req.getParameter("btnpassold");
            String passnew = req.getParameter("btnpassnew");
            String repassnew = req.getParameter("btnrepass");
            if (passold.equals("") || passnew.equals("") || repassnew.equals("")) {
                req.setAttribute("message_err", "Vui lòng nhập đầy đủ thông tin!!!");
            } else if (!user.getPassword().equals(passold)) {
                req.setAttribute("message_err", "Mật khẩu không đúng!!!");

            } else if (!passnew.equals(repassnew)) {
                req.setAttribute("message_err", "Mật khẩu không khớp.Vui lòng kiểm tra lại!!!");
            } else {
                user.setPassword(passnew);
                userDAO.update(user);
                req.setAttribute("message_com", "Cập nhật thành công");
            }

        } catch (Exception e) {
            req.setAttribute("message", "Cập nhật thất bại");
        }
        req.getRequestDispatcher("/view/doi-matkhau.jsp").forward(req, resp);

    }

    private void doResetPass(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        UserDAO userDAO = new UserDAO();
        User user = userDAO.getUser(emailTo);
        
        try {
            String passnew = req.getParameter("btnpassnew");
            String repassnew = req.getParameter("btnrepass");
            if (!passnew.equals(repassnew)){
                  req.setAttribute("message", "Mật khẩu không trùng khớp.Xin vui lòng kiểm tra lại!!!");
            }
          else if (passnew.equals(repassnew) && !passnew.equals("")&& !repassnew.equals("")) {
            user.setPassword(passnew);
            userDAO.update(user);
            req.getRequestDispatcher("/view/dang-nhap.jsp").forward(req, resp);
            }
            else if (passnew.equals("")|| repassnew.equals("")){
                req.setAttribute("message", "Nhập đầy đủ thông tin!!!");
            }
        } catch (Exception e) {
            req.getRequestDispatcher("/view/reset-pass.jsp").forward(req, resp);
        }
         req.getRequestDispatcher("/view/reset-pass.jsp").forward(req, resp);
        
       
    }

    private void doCancel(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        UserDAO userDAO = new UserDAO();
        User user = userDAO.findById(name);
        req.setAttribute("form", user);
        req.getRequestDispatcher("/view/thongtin-taikhoan.jsp").forward(req, resp);

    }

    private void doSignOut(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        name = "ĐĂNG NHẬP";
        hinhanh = "login.png";
        req.setAttribute("name", name);
        req.setAttribute("hinhanh", hinhanh);
         RequestDispatcher dispatcher = req.getRequestDispatcher("/sanpham/tat-ca-san-pham");
                    dispatcher.forward(req, resp);
        

    }

}
