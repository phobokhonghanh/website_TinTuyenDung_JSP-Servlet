package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.model.Account;
import vn.edu.hcmuaf.fit.model.Log;
import vn.edu.hcmuaf.fit.service.DAOAccount;
import vn.edu.hcmuaf.fit.service.DAOLog;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Account", value = {"/admin/AccountManager", "/Account"})
public class AccountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        String username = request.getParameter("username");
        String role = request.getParameter("role") == null ? "3" : request.getParameter("role");
        String keywords = request.getParameter("keywords") == null ? "" : request.getParameter("keywords");
        Account account = UtilSession.getInstance().getValue(request, "account");
        List<Account> listAccount;
        DAOAccount d = new DAOAccount();
        int trang = Integer.parseInt(request.getParameter("trang") == null ? "1" : request.getParameter("trang"));
        int tongTaiKhoan;
        int tongSoTrang;

        switch (action) {
            //                            ------------------------ RESOLVE CANDI ------------------------
            case "updateAccount":
                String name = request.getParameter("name");
                if (account != null) {
                    account.setName(name);
                    d.updateAccountCandi(account.getUsername(), account.getName());
                    if (UtilSession.getInstance().getValue(request, "account").getRole() == 2) {
                        response.sendRedirect(request.getContextPath() + "/business/busi-tai-khoan.jsp");
                    } else {
                        response.sendRedirect(request.getContextPath() + "/candidate/candi-tai-khoan.jsp");
                    }
                } else {
                        request.getRequestDispatcher("visitor/dang-nhap.jsp").forward(request, response);
                }
                break;
            //                            ------------------------ RESOLVE BUSI ------------------------
           
            //                            ------------------------ RESOLVE ADMIN ------------------------
            case "accountManager":
                tongTaiKhoan = d.getTotalAccount();
                tongSoTrang = tongTaiKhoan / 5;
                if (tongTaiKhoan % 5 != 0) {
                    tongSoTrang++;
                }
                listAccount = d.getAllAccount(trang);
                request.setAttribute("tongSoTrang", tongSoTrang);
                request.setAttribute("trang", trang);
                request.setAttribute("listAccount", listAccount);
                UtilControl.forward("Admin-quan-li-nguoi-dung.jsp", request, response);
                break;
            case "search":
                if (!keywords.matches("[\\p{L}\\s]*")) {
                    DAOLog.getInstance().insert(Log.WARNING, account != null ? account.getId() : -1,
                            String.valueOf(request.getRequestURL())  + ", địa chỉ IP: "+request.getRemoteAddr(), (account != null ? "Tài khoản " + account.getUsername() : "Người dùng ẩn danh") + " tìm kiếm từ khóa mức độ chuyên sâu cao - Từ khóa: " + keywords, 0);
                }
                tongTaiKhoan = role.equals("3") ? d.getAccountSearchSize(keywords) : d.getAccountSearchSize(keywords, role);
                tongSoTrang = tongTaiKhoan / 5;
                if (tongTaiKhoan % 5 != 0) {
                    tongSoTrang++;
                }
                if (role.equals("3")) {
                    listAccount = d.getAccountSearch(keywords, trang);
                } else {
                    request.setAttribute("role", role);
                    listAccount = d.getAccountSearch(keywords, role, trang);
                }
                request.setAttribute("listAccount", listAccount);
                request.setAttribute("tongSoTrang", tongSoTrang);
                request.setAttribute("trang", trang);

                request.setAttribute("keywords", keywords);
                UtilControl.forward("Admin-quan-li-nguoi-dung.jsp", request, response);
                break;
            case "lock":
                if (!(DAOAccount.getAccountQuery(username).getType() == 2)) {
                    DAOLog.getInstance().insert(Log.ALERT, account != null ? account.getId() : -1,
                            String.valueOf(request.getRequestURL())  + ", địa chỉ IP: "+request.getRemoteAddr(),
                            (account != null ? "Tài khoản " + account.getUsername() : "Người dùng ẩn danh") + " đã khóa tài khoản " + username, 0);
                    d.updateStatusAccount(username, Account.LOCK);
                    response.sendRedirect(request.getContextPath() + "/admin/AccountManager?action=accountManager");
                } else {
                    DAOLog.getInstance().insert(Log.DANGER, account != null ? account.getId() : -1,
                            String.valueOf(request.getRequestURL())  + ", địa chỉ IP: "+request.getRemoteAddr(),
                            (account != null ? "Tài khoản " + account.getUsername() : "Người dùng ẩn danh") + " khóa không thành công tài khoản " + username, 0);
                    response.sendRedirect(request.getContextPath() + "/visitor/error.jsp");
                }
                break;
            case "unlock":
                DAOLog.getInstance().insert(Log.ALERT, account != null ? account.getId() : -1,
                        String.valueOf(request.getRequestURL())  + ", địa chỉ IP: "+request.getRemoteAddr(),
                        (account != null ? "Tài khoản " + account.getUsername() : "Người dùng ẩn danh") + " đã mở khóa tài khoản " + username, 0);
                d.updateStatusAccount(username, Account.ACTIVATED);
                response.sendRedirect(request.getContextPath() + "/admin/AccountManager?action=accountManager");
                break;

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
