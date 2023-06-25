package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.Util.Util;
import vn.edu.hcmuaf.fit.bean.UserGoogle;
import vn.edu.hcmuaf.fit.model.Account;
import vn.edu.hcmuaf.fit.model.Log;
import vn.edu.hcmuaf.fit.properties.google.GoogleUtils;
import vn.edu.hcmuaf.fit.service.DAOAccount;
import vn.edu.hcmuaf.fit.service.DAOLog;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;

@WebServlet(name = "Login", value = {"/Login", "/Logout"})
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String rememberMe = request.getParameter("remember_me");
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        DAOAccount d = new DAOAccount();
        String passclone = password;
        password = Util.encryptionPassword(password);
        boolean checkAccount = d.checkAccount(username, password);

        HttpSession session = request.getSession();
        Integer countLogin = (Integer) session.getAttribute("countLogin");
        String userNameAttempts = (String) session.getAttribute("userNameAttempts");
        String message = "Đăng nhập thất bại. Tài khoản hoặc mật khẩu không đúng";
        String action = request.getParameter("action");
        if (action != null) {
            switch (action) {
                case "login":
                    request.getRequestDispatcher("visitor/dang-nhap.jsp").forward(request, response);
                    break;
                case "logout":
                    UtilSession.getInstance().removeValue(request, "account");
                    response.sendRedirect("visitor/trang-chu-candi.jsp");
                    break;
                case "google":
                    String code = request.getParameter("code");
                    String accessToken = GoogleUtils.getToken(code);
                    UserGoogle userGoogle = GoogleUtils.getUserInfo(accessToken);
                    d.castAccountGG(userGoogle);
                    UtilSession.getInstance().putAccountSession(request, "account", (Account) d.getAccount());
                    if (!d.checkEmail(d.getAccount().getEmail())) {
                        d.registerCandi(d.getAccount().getEmail(), d.getAccount().getUsername(), Util.encryptionPassword(d.getAccount().getEmail()), d.getAccount().getName(), 0, d.getAccount().getRole(), d.getAccount().getStatus(), Date.valueOf(LocalDate.now()));
                    }
                    response.sendRedirect("visitor/trang-chu-candi.jsp");
                    break;
            }
        } else {
            // Luu cookies neu nguoi dung chon 'Remember me'
            if (rememberMe != null && rememberMe.equals("on")) {
                Cookie usernameCookie = new Cookie("username", username);
                Cookie passwordCookie = new Cookie("password", passclone);
                Cookie rememberMeCookie = new Cookie("remember_me", "true");

                usernameCookie.setMaxAge(60 * 60 * 24 * 30); // 30 ngay
                passwordCookie.setMaxAge(60 * 60 * 24 * 30); // 30 ngay
                rememberMeCookie.setMaxAge(60 * 60 * 24 * 30); // 30 ngay

                response.addCookie(usernameCookie);
                response.addCookie(passwordCookie);
                response.addCookie(rememberMeCookie);
            } else {
//                Xoa cookies neu nguoi dung khong chon 'Remember me'
                Cookie[] cookies = request.getCookies();
                if (cookies != null) {
                    for (Cookie cookie : cookies) {
                        if (cookie.getName().equals("username") || cookie.getName().equals("password")
                                || cookie.getName().equals("remember_me")) {
                            cookie.setMaxAge(0);
                            response.addCookie(cookie);
//                            System.out.println(cookie.getName());
                        }
                    }
                }
            }

            // Chuyen huong đen trang chu (thay doi duong dan phu hop)
            if (checkAccount && d.getAccount().getStatus() == 1) {
                UtilSession.getInstance().putAccountSession(request, "account", (Account) d.getAccount());
                Account account = UtilSession.getInstance().getValue(request, "account");
                String url = UtilSession.getInstance().getUrlSession(request, "url");
                if (url == null) {
                    UtilControl.send(d.getAccount().getRole(), "admin/Admin-trang-chu.jsp", "visitor/trang-chu-candi.jsp", "business/busi-trang-chu.jsp", response);
                } else {
                    if (url.startsWith("/admin") && account.getRole() == 0) {
                        response.sendRedirect(request.getContextPath() + url);
                    } else if (url.startsWith("/business") && (account.getRole() == 2 || account.getRole() == 0)) {
                        response.sendRedirect(request.getContextPath() + url);
                    } else if (url.startsWith("/candidate") && (account.getRole() == 1 || account.getRole() == 0)) {
                        response.sendRedirect(request.getContextPath() + url);
                    } else {
                        UtilControl.send(d.getAccount().getRole(), "admin/Admin-trang-chu.jsp", "visitor/trang-chu-candi.jsp", "business/busi-trang-chu.jsp", response);
                    }
                    UtilSession.getInstance().removeValue(request, "url");
                    if (countLogin != null && userNameAttempts != null) {
                        session.removeAttribute("countLogin");
                        session.removeAttribute("userNameAttempts");
                    }
                }
            } else {
                if (countLogin == null && userNameAttempts == null) {
                    session.setAttribute("countLogin", 0);
                    session.setAttribute("userNameAttempts", username);
                } else if (countLogin >= 2 && userNameAttempts.equals(username)) { // case 2: login attempts >= 3
                    DAOLog.getInstance().insert(Log.DANGER, -1, String.valueOf(request.getRequestURL()) + ", địa chỉ IP: " + request.getRemoteAddr(), "Tài khoản " + username + "đang cố gắng đăng nhập ", 0);
                    message = "Tài khoản tạm thời bị khóa. Vui lòng đăng nhập lại sau!";
                } else {
                    session.setAttribute("countLogin", countLogin + 1);
                }
                // chuyen huong lai trang dang nhap neu khong xac thuc duoc
                request.setAttribute("message", message);
                UtilControl.forward("visitor/dang-nhap.jsp", request, response);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
