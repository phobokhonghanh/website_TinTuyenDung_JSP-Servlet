package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.Util.Util;
import vn.edu.hcmuaf.fit.model.Account;
import vn.edu.hcmuaf.fit.model.Log;
import vn.edu.hcmuaf.fit.service.DAOAccount;
import vn.edu.hcmuaf.fit.service.DAOLog;
import vn.edu.hcmuaf.fit.service.MailService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ResetPassword", value = "/ResetPassword")
public class ResetPassword extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        DAOAccount d = new DAOAccount();
        String oldPassword = request.getParameter("oldPassword");
        String newPassword = request.getParameter("newPassword");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        Account getAccountResetPassword = d.getAccountResetPassword(username, email);

        String action = request.getParameter("action");
        switch (action) {
            case "forgotPassword":
                if (getAccountResetPassword == null) {
                    request.setAttribute("message", "Email không tồn tại! Vui lòng nhập lại email!");
                    UtilControl.forward("visitor/quen-mat-khau.jsp", request, response);
                } else {
                    DAOLog.getInstance().insert(Log.WARNING, getAccountResetPassword.getId(),
                            "", "Bạn vừa quên mật khẩu?", 1);
                    String name = getAccountResetPassword.getName();
                    String password = Util.randomPassword();
                    String subject = " Reset password ";
                    String content = "Hi " + name + ", We provide your password again: " + password;
                    MailService.sendMail(email, subject, content);
                    password = Util.encryptionPassword(password);
                    d.updatePassword(username, password);
                    response.sendRedirect(request.getContextPath() + "/Login?action=login");
                }
                break;
            case "changePassword":
                oldPassword = Util.encryptionPassword(oldPassword);
                if (oldPassword.equals(UtilSession.getInstance().getValue(request, "account").getPassword())) {
                    String newEncryptedPassword = Util.encryptionPassword(newPassword);
                    DAOAccount.getAccount().setPassword(newEncryptedPassword);
                    d.updatePassword(UtilSession.getInstance().getValue(request, "account").getUsername(), newEncryptedPassword);
                    UtilSession.getInstance().getValue(request, "account").setPassword(newEncryptedPassword);
                    request.setAttribute("message", "Đổi mật khẩu thành công!");
                    if( UtilSession.getInstance().getValue(request,"account").getRole() == 2){
                        response.sendRedirect("business/busi-trang-chu.jsp");
                    }else {
                        response.sendRedirect("visitor/trang-chu-candi.jsp");
                    }
                } else {
                    DAOLog.getInstance().insert(Log.WARNING, UtilSession.getInstance().getValue(request, "account").getId(),
                            "", "Thay đổi mật khẩu không thành công !", 1);
                    request.setAttribute("message", "Sai mật khẩu!");
                    if( UtilSession.getInstance().getValue(request,"account").getRole() == 2){
                        UtilControl.forward("business/busi-doi-mat-khau.jsp", request, response);
                    }else {
                    UtilControl.forward("candidate/candi-doi-mat-khau.jsp", request, response);
                    }
                }
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }


}
