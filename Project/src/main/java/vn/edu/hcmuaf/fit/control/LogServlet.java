package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.model.Account;
import vn.edu.hcmuaf.fit.model.Log;
import vn.edu.hcmuaf.fit.service.DAOLog;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Log", value = {"/admin/Log", "/business/Log"})
public class LogServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        Account account = UtilSession.getInstance().getValue(request, "account");
        List<Log> listLog;
        DAOLog daoLog = DAOLog.getInstance();
        int trang = Integer.parseInt(request.getParameter("trang") == null ? "1" : request.getParameter("trang"));
        int tongBaiViet;
        int tongSoTrang;
        switch (action) {
            case "logManager":
                tongBaiViet = daoLog.getListLogAdminSize(account.getId());
                tongSoTrang = tongBaiViet / 5;
                if (tongBaiViet % 5 != 0) {
                    tongSoTrang++;
                }
                listLog = daoLog.getAllListLogAdmin(account.getId(), trang);
                request.setAttribute("listAll", listLog);
                request.setAttribute("tongSoTrang", tongSoTrang);
                request.setAttribute("trang", trang);
                UtilControl.forward("Admin-thong-bao.jsp", request, response);
                break;
            case "logBusi":
                tongBaiViet = daoLog.getTotalNotification(account.getId());
                tongSoTrang = tongBaiViet / 6;
                if (tongBaiViet % 6 != 0) {
                    tongSoTrang++;
                }
                listLog = daoLog.getNotificationtAll(account.getId(), trang);
                request.setAttribute("listAll", listLog);
                request.setAttribute("tongSoTrang", tongSoTrang);
                request.setAttribute("trang", trang);
                UtilControl.forward("busi-thong-bao-he-thong.jsp", request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        doGet(request, response);
    }

}
