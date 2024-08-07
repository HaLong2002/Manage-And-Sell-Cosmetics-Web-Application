/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import model.UserDAO;
import model.User;
import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.date;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;


/**
 *
 * @author Admin
 */
@WebServlet({"/user/index",
    "/user/edit/*",
    "/user/create",
    "/user/update",
    "/user/delete",
    "/user/delete-row/*"
})
public class UserServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserDAO userDAO = new UserDAO();
        User user = new User();
        String uri = req.getRequestURI();

        if (uri.contains("index")) {
            req.setAttribute("form", user);
            req.setAttribute("items", userDAO.findAll());
            req.getRequestDispatcher("/view/user.jsp").forward(req, resp);
        } else if (uri.contains("edit")) {
            String id = uri.substring(uri.lastIndexOf("/") + 1);
            user = userDAO.findById(id);
        } else if (uri.contains("create")) {
            this.doCreateUser(req, resp);
        } else if (uri.contains("update")) {
           this.doUpdateUser(req, resp);
        } else if (uri.contains("delete")) {
            this.doDeleteUser(req, resp);
        }else if (uri.contains("delete-row")) {
            this.doDeleteUserRow(req, resp);
        }
        
        req.setAttribute("form", user);
        req.setAttribute("items", userDAO.findAll());
        req.getRequestDispatcher("/view/user.jsp").forward(req, resp);
    }

    private void doCreateUser(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        UserDAO userDAO = new UserDAO();
        User user = new User();
        try {
            String username = req.getParameter("txtusername");
            String password = req.getParameter("txtpassword");
            String email = req.getParameter("txtemail");
            String fullname = req.getParameter("txtfullname");
            String dateStr = req.getParameter("txtdate");
            SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
            Date date = dateFormat.parse(dateStr);
            user.setUsername(username);
            user.setEmail(email);
            user.setFullname(fullname);
            user.setHinhanh("hinh1");
            user.setPassword(password);
            user.setGioitinh(true);
            user.setRole("quản lý bán hàng");
            user.setDate(date);
            userDAO.create(user);
            req.setAttribute("message_comp", "Thêm mới thành công");

        } catch (Exception e) {
            req.setAttribute("message_err", "thêm mới thất bại");
        }
    }

    private void doDeleteUser(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        UserDAO userDAO = new UserDAO();
        try {
            String id = req.getParameter("txtusername");
            userDAO.remove(id);
            req.setAttribute("message_comp", "Delete thành công");
        } catch (Exception e) {
            req.setAttribute("message_err", "Delete thất bại");
        }
    }

    private void doUpdateUser(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
            UserDAO userDAO = new UserDAO();
          String username = req.getParameter("txtusername");
            User user = userDAO.findById(username);
      
        
        try {
            
            String password = req.getParameter("txtpassword");
            String email = req.getParameter("txtemail");
            String fullname = req.getParameter("txtfullname");
            String dateStr = req.getParameter("txtdate");
            String sex = req.getParameter("radiogen");
            boolean gioiTinh = Boolean.parseBoolean(sex);
            String role = req.getParameter("radiorole");
            SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
            Date date = dateFormat.parse(dateStr);
          //  username.set(username);
            user.setEmail(email);
            user.setFullname(fullname);
            user.setPassword(password);
            user.setGioitinh(gioiTinh);
            user.setRole(role);
            user.setDate(date);
            userDAO.update(user);
            req.setAttribute("message_comp", "Cập nhật thành công");
        } catch (Exception e) {
            req.setAttribute("message_err", "Cập nhật thất bại");
        }
    }
    private void doDeleteUserRow(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        UserDAO userDAO = new UserDAO();
        User user = new User();
        String uri = req.getRequestURI();

        try {
            String id = uri.substring(uri.lastIndexOf("/") + 1);
            user = userDAO.findById(id);
           // userDAO.remove(id);
            req.setAttribute("message_comp", "Delete thành công");
        } catch (Exception e) {
            req.setAttribute("message_err", "Delete thất bại");
        }
    }
    
}
