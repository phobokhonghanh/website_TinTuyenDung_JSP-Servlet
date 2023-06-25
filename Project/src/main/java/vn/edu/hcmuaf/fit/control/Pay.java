package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.model.Account;
import vn.edu.hcmuaf.fit.model.Log;
import vn.edu.hcmuaf.fit.model.Post;
import vn.edu.hcmuaf.fit.service.DAOBill;
import vn.edu.hcmuaf.fit.service.DAOLog;
import vn.edu.hcmuaf.fit.service.DAOPost;
import vn.edu.hcmuaf.fit.service.modelQuanLy.QuanLyDoanhThu;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Pay", value = {"/admin/Pay", "/Pay"})
public class Pay extends HttpServlet {
    DAOPost dp = new DAOPost();
    DAOBill db = new DAOBill();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String[] post = request.getParameterValues("choose");
        String numAccount = request.getParameter("numAccount");
        String pay = request.getParameter("pay2");
        String status = "";
        String action = request.getParameter("action");
        String id = request.getParameter("id");
        String keywords = request.getParameter("keywords");
        String statusSearch = request.getParameter("statusSearch") == null ? "3" : request.getParameter("statusSearch");
        Account account = UtilSession.getInstance().getValue(request, "account");
        int trang = Integer.parseInt(request.getParameter("trang") == null ? "1" : request.getParameter("trang"));
        int tongDanhSach;
        int tongSoTrang;
        switch (action) {
            case "quanlydoanhthu":
                List<QuanLyDoanhThu> list;
                List<QuanLyDoanhThu> listAll;
                if ((statusSearch.equals("3")) && ((keywords == null) || (keywords.equals("")))) {
                    list = db.getQuanliDoanhThu(trang);
                    listAll = db.getQuanliDoanhThu();
                    tongDanhSach = listAll.size();
                } else {
                    String month = (keywords == null || (keywords.equals(""))) ? "" : keywords.split("-")[1].substring(1);
                    String year = (keywords == null || (keywords.equals(""))) ? "" : keywords.split("-")[0];
                    list = db.getQuanliDoanhThuSearch(month, year, statusSearch, trang);
                    listAll = db.getQuanliDoanhThuSearch(month, year, statusSearch);
                    tongDanhSach = listAll.size();
                    if (statusSearch.equals("3")) {
                        list = db.getQuanliDoanhThuSearch(month, year, trang);
                        listAll = db.getQuanliDoanhThuSearch(month, year);
                        tongDanhSach = listAll.size();

                    }
                    if ((keywords == null) || (keywords.equals(""))) {
                        list = db.getQuanliDoanhThuSearch(statusSearch, trang);
                        listAll = db.getQuanliDoanhThuSearch(statusSearch);
                        tongDanhSach = listAll.size();

                    }
                }
                tongSoTrang = tongDanhSach / 5;
                if (tongDanhSach % 5 != 0) {
                    tongSoTrang++;
                }

                request.setAttribute("tongSoTrang", tongSoTrang);
                request.setAttribute("trang", trang);
                request.setAttribute("keywords", keywords);
                request.setAttribute("statusSearch", statusSearch);
                request.setAttribute("listDoanhThu", list);
                request.setAttribute("listDoanhThuAll", listAll);

                UtilControl.forward("Admin-quan-li-doanh-thu.jsp", request, response);

                break;
            case "thanhtoan":
                // đẩy csdl vào bill
                if (db.insertBill(numAccount, pay)) {
                    // đổi trạng thái cho post và thêm id của bill vào post
                    int idBill = db.getIdBill();
                    for (String p : post) {
                        try {
                            dp.updatePost(Integer.valueOf(p), Post.status_paided, idBill);
                            DAOLog.getInstance().insert(Log.ALERT, account != null ? account.getId() : -1,
                                    String.valueOf(request.getRequestURL())  + ", địa chỉ IP: "+request.getRemoteAddr(), (account != null ? "Tài khoản " + account.getUsername() : "Người dùng ẩn danh") + " đã thanh toán tổng số tiền: " + pay, 0);
                            DAOLog.getInstance().insert(Log.INFO, account != null ? account.getId() : -1,
                                    "", "Đã thanh toán tổng số tiền: " + pay + ". Mọi thắc mắc vui lòng liên hệ chúng tôi qua email ", 1);
                        } catch (Exception e) {
                            status = "failed";
                            request.setAttribute("status", status);
                            UtilControl.forward("business/busi-gio-hang.jsp", request, response);
                        }
                    }
                    response.sendRedirect("business/busi-trang-chu.jsp");
                }
                break;
            case "xoa":
                dp.deletePost(id);
                response.sendRedirect("business/Post?action=giohang");
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
