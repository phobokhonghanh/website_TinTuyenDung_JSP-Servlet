package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.Util.Util;
import vn.edu.hcmuaf.fit.model.Log;
import vn.edu.hcmuaf.fit.service.DAOAccount;
import vn.edu.hcmuaf.fit.service.DAOLog;
import vn.edu.hcmuaf.fit.service.MailService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;

@WebServlet(name = "SignUp", value = "/SignUp")
public class SignUp extends HttpServlet {
    public static final int ROLE_ADMIN = 0;
    public static final int ROLE_CANDIDATE = 1;
    public static final int ROLE_BUSINESS = 2;
    // trạng thái đăng kí mặc định chưa được xác nhận email
    public static final int STATUS_DEFAULT = 0;
    // tài khoản đăng kí bằng trang web
    public static final int TYPE = 0;
    // tài khoản đăng kí bên thứ 3
    public static final int TYPE_GG = 1;


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DAOAccount d = new DAOAccount();
        String name = request.getParameter("hoten");
        String user_name = request.getParameter("user_name");
        String password = request.getParameter("password");
        password = Util.encryptionPassword(password);
        String email = request.getParameter("email");
        HttpSession session = request.getSession();
        Integer countSignUp = (Integer) session.getAttribute("countSignUp");
        String emailRegisterAttempts = (String) session.getAttribute("emailRegisterAttempts");
        String phone = request.getParameter("phone");
        String companyName = request.getParameter("companyName");
        String address = request.getParameter("location");
        String description = request.getParameter("description");
        int type = 0;
        String img = null;
        Date date = Date.valueOf(LocalDate.now());
        int role = UtilControl.setRole("btndangky_candi", "btndangky_busi", request);
        String action = request.getParameter("action");

        if (user_name != null) {
            if (role == 1) {
                if (d.registerCandi(email, user_name, password, name, type, role, 0, date)) {
                    response.sendRedirect("visitor/dang-nhap.jsp");
                } else {
                    if (countSignUp == null && emailRegisterAttempts == null){
                        session.setAttribute("countSignUp",0);
                        session.setAttribute("emailRegisterAttempts", email);
                    }else if (countSignUp >= 2 && emailRegisterAttempts.equals(email)){
                        DAOLog.getInstance().insert(Log.ALERT, -1, String.valueOf(request.getRequestURL())  + ", địa chỉ IP: "+request.getRemoteAddr(), "Email " + email + "đang cố gắng đăng kí", 0);
                    }else {
                        session.setAttribute("countSignUp", countSignUp + 1);
                    }
                    String message = d.getMessage();
                    request.setAttribute("message", message);
                    UtilControl.forward(role, "admin/dang-ky-Admin.jsp", "visitor/dang-ky-candi.jsp", "visitor/dang-ky-busi.jsp", request, response);
                }
            } else if (role == 0) {
                if (d.registerAdmin(user_name, password, email, role, date, 0)) {
                    response.sendRedirect("visitor/dang-nhap.jsp");
                } else {
                    String message = d.getMessage();
                    request.setAttribute("message", message);
                    UtilControl.forward(role, "admin/dang-ky-Admin.jsp", "visitor/dang-ky-candi.jsp", "visitor/dang-ky-busi.jsp", request, response);
                }
            } else {
                if (d.registerBusi(user_name, password, role, name, email, phone, type, 0, companyName, address, description, date)) {
                    response.sendRedirect("visitor/dang-nhap.jsp");
                } else {
                    String message = d.getMessage();
                    request.setAttribute("message", message);
                    UtilControl.forward(role, "admin/dang-ky-Admin.jsp", "visitor/dang-ky-candi.jsp", "visitor/dang-ky-busi.jsp", request, response);
                }
            }
        }
        if (action == null) {
            String subject = "Email Verification";
            String content = "Click the link to verify your email: " + request.getRequestURL() + "?action=daxacthuc&u=" + user_name + "&e=" + email;
            MailService.sendMail(email, subject, content);
        } else {
            switch (action) {
                case "candidate":
                    UtilControl.forward("visitor/dang-ky-candi.jsp", request, response);
                    break;
                case "business":
                    UtilControl.forward("visitor/dang-ky-busi.jsp", request, response);
                    break;
                case "admin":
                    UtilControl.forward("visitor/dang-ky-admin.jsp", request, response);
                    break;
                case "daxacthuc":
                    d.xacThucEmail(request.getParameter("u"), request.getParameter("e"));
                    response.sendRedirect("visitor/index.jsp");
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }


}
