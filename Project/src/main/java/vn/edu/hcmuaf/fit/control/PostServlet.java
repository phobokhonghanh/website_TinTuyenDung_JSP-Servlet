package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.model.*;
import vn.edu.hcmuaf.fit.service.DAOCV;
import vn.edu.hcmuaf.fit.service.DAOLog;
import vn.edu.hcmuaf.fit.service.DAOPost;
import vn.edu.hcmuaf.fit.service.DAOPrice;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@WebServlet(name = "Post", value = {"/admin/PostManager", "/business/Post", "/Category", "/Post", "/candidate/Post"})
public class PostServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        DAOCV cv = new DAOCV();
        DAOPost daoPost = new DAOPost();
        Account account = UtilSession.getInstance().getValue(request, "account");
        String url2 = UtilSession.getInstance().getUrlSession(request, "url2");
        List<Post> postAll;
        String action = request.getParameter("action");
        String idManager = request.getParameter("id");
        String keywords = request.getParameter("keywords") == null ? "" : request.getParameter("keywords");
        String categoryId = request.getParameter("categoryId") == null ? "0" : request.getParameter("categoryId");
        String trang = request.getParameter("trang");
        int tongBaiViet;
        int soBaiViet;
        if (trang == null) {
            trang = "1";
        }
        int t = Integer.parseInt(trang);

        switch (action) {
            // ------------------------ RESOLVE CANDIDATE ------------------------
            case "xemthongtinvieclam":
                String id2 = request.getParameter("id");
                int idPost = Integer.parseInt(id2);
                int id = UtilSession.getInstance().getValue(request, "account").getId();

                List<CV> cvs = cv.getCV(id);
                Post post2 = daoPost.getPostDetail(idPost);
                Company company = daoPost.getCompanyFromPost(idPost);
                Account account1 = daoPost.getAccountFromPost(idPost);

                request.setAttribute("cvs", cvs);
                request.setAttribute("post2", post2);
                request.setAttribute("company", company);
                request.setAttribute("account1", account1);

                UtilControl.forward("/visitor/thong-tin-viec-lam-candi.jsp", request, response);
                break;
            case "danhsanhvieclam":
                tongBaiViet = daoPost.getPostAllApproveSize();
                soBaiViet = tongBaiViet / 5;
                if (tongBaiViet % 5 != 0) {
                    soBaiViet++;
                }
                List<Post> postAll1 = daoPost.getPostAllApprove(t);//lay danh sách việc làm
                request.setAttribute("sobd", soBaiViet);
                request.setAttribute("trang", t);
                request.setAttribute("tongBaiViet", tongBaiViet);
                request.setAttribute("postAll", postAll1);// gáng danh sách việc làm
                UtilControl.forward("visitor/danh-sach-viec-lam-candi.jsp", request, response);
                break;
            case "category":
                tongBaiViet = daoPost.getPostOfCategoryApprove(idManager, "2");
                soBaiViet = tongBaiViet / 5;
                if (tongBaiViet % 5 != 0) {
                    soBaiViet++;
                }
                List<Post> postAllOfCategoryApprove = daoPost.getPostOfCategoryApprove(idManager, "2", t);
                request.setAttribute("postAll", postAllOfCategoryApprove);
                request.setAttribute("sobd", soBaiViet);
                request.setAttribute("trang", t);
                request.setAttribute("categoryId", idManager);
                request.setAttribute("tongBaiViet", tongBaiViet);
                UtilControl.forward("visitor/danh-sach-viec-lam-candi.jsp", request, response);
                break;
            case "vieclamdaungtuyen":
                if (account != null) {
                    List<Post> postApplied1 = daoPost.getPostApplied(account.getId());
                    request.setAttribute("jobApplied", postApplied1);
                }
                UtilControl.forward("candi-viec-lam-da-ung-tuyen.jsp", request, response);
                break;

            case "timkiem":
                if (!keywords.matches("[\\p{L}\\s]*")) {
                    DAOLog.getInstance().insert(Log.WARNING, account != null ? account.getId() : -1,
                            String.valueOf(request.getRequestURL()) + ", địa chỉ IP: "+request.getRemoteAddr(), (account != null ? "Tài khoản " + account.getUsername() : "Người dùng ẩn danh") + " tìm kiếm từ khóa mức độ chuyên sâu cao - Từ khóa: " + keywords, 0);
                }
                tongBaiViet = categoryId.equals("0") ? daoPost.getPostSearchApprove(keywords, "2") : daoPost.getPostSearchCategory(keywords, categoryId, "2");
                soBaiViet = tongBaiViet / 5;
                if (tongBaiViet % 5 != 0) {
                    soBaiViet++;
                }
                List<Post> postSearch;
                if (categoryId.equals("0")) {
                    postSearch = daoPost.getPostSearchApprove(keywords, "2", t);
                } else {
                    request.setAttribute("categoryId", categoryId);
                    postSearch = daoPost.getPostSearchCategory(keywords, categoryId, "2", t);
                }
                request.setAttribute("sobd", soBaiViet);
                request.setAttribute("trang", t);
                request.setAttribute("tongBaiViet", tongBaiViet);

                request.setAttribute("keywords", keywords);
                request.setAttribute("postAll", postSearch);
                UtilControl.forward("visitor/danh-sach-viec-lam-candi.jsp", request, response);
                break;
            // ------------------------ RESOLVE BUSINESS ------------------------
            case "dangtin":
                String title = request.getParameter("title");
                String rank = request.getParameter("rank");
                String category = request.getParameter("category");
                String type = request.getParameter("type");
                String address = request.getParameter("address");
                String salary = request.getParameter("salary");
                String quantity = request.getParameter("quantity");
                String gen = request.getParameter("gen");
                String description = request.getParameter("description");
                String requests = request.getParameter("requests");
                String rights = request.getParameter("rights");
                String file = request.getParameter("file");
                Date createDate = new Date(); // lấy ngày hiện tại
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(createDate);
                calendar.add(Calendar.MONTH, 1);
                Date endDate = calendar.getTime(); // thêm một tháng
                daoPost.insertPost(category, title, quantity, salary, address, type, rank, gen, description, rights, requests, Post.status_unpaid, endDate);
                response.sendRedirect(request.getContextPath() + "/business/Post?action=giohang");
                break;
            case "giohang":
                Price price = DAOPrice.getInstance().getPrice();
                List<Post> posts = daoPost.getPost(account.getId(), Post.status_unpaid);
                request.setAttribute("postList", posts);
                request.setAttribute("price", price);
                UtilControl.forward("busi-gio-hang.jsp", request, response);
                break;
            case "tintuyendung":
                List<Post> postExpired;
                String billID = request.getParameter("billID");

                tongBaiViet = daoPost.getTotalPostBusi(account.getId());
                soBaiViet = tongBaiViet / 3;
                if (tongBaiViet % 3 != 0) {
                    soBaiViet++;
                }
                postAll = daoPost.getPostIdBusi(account.getId(), t);
                postExpired = daoPost.getPostExpired(account.getId(), 4);
                if (billID != null) {
                    tongBaiViet = daoPost.getTotalPostIdBill(billID);
                    soBaiViet = tongBaiViet / 3;
                    if (tongBaiViet % 3 != 0) {
                        soBaiViet++;
                    }
                    postAll = daoPost.getPostIdBill(billID, t);
                    daoPost.updateBill(billID, Bill.STATUS_SEEN);
                    request.setAttribute("billId", billID);
                    if (!trang.equals("1") || url2 == null) {
                        UtilSession.getInstance().putUrlSession(request, "url2", "/admin/Pay?action=quanlydoanhthu");
                    } else {
                        UtilSession.getInstance().removeValue(request, "url2");
                    }
                }
                request.setAttribute("post", postAll);
                request.setAttribute("postExpired", postExpired);
                request.setAttribute("sobv", soBaiViet);
                request.setAttribute("trang", t);

                UtilControl.forward("busi-tin-tuyen-dung.jsp", request, response);
                break;

//                            ------------------------ RESOLVE ADMIN ------------------------
            case "quanlybaidang":
                tongBaiViet = daoPost.getTotalPostPaid();
                soBaiViet = tongBaiViet / 5;
                if (tongBaiViet % 5 != 0) {
                    soBaiViet++;
                }
                daoPost.updatePostEndDate();
                postAll = daoPost.getPostAll(t);
                request.setAttribute("postAll", postAll);
                request.setAttribute("sobd", soBaiViet);
                request.setAttribute("trang", t);
                UtilControl.forward("Admin-quan-li-bai-dang.jsp", request, response);
                break;
            case "search":
                String status = request.getParameter("status") == null ? "0" : request.getParameter("status");
                if (!keywords.matches("[\\p{L}\\s]*")) {
                    DAOLog.getInstance().insert(Log.WARNING, account != null ? account.getId() : -1,
                            String.valueOf(request.getRequestURL())  + ", địa chỉ IP: "+request.getRemoteAddr(), (account != null ? "Tài khoản " + account.getUsername() : "Người dùng ẩn danh") + " tìm kiếm từ khóa mức độ chuyên sâu cao - Từ khóa: " + keywords, 0);
                }
                tongBaiViet = status.equals("0") ? daoPost.getPostSearch(keywords) : daoPost.getPostSearchStatus(keywords, status);
                soBaiViet = tongBaiViet / 5;
                if (tongBaiViet % 5 != 0) {
                    soBaiViet++;
                }
                List<Post> postAllSearch;
                if (status.equals("0")) {
                    postAllSearch = daoPost.getPostSearch(keywords, t);
                } else {
                    request.setAttribute("status", status);
                    postAllSearch = daoPost.getPostSearchStatus(keywords, status, t);
                }
                request.setAttribute("keywords", keywords);
                request.setAttribute("postAll", postAllSearch);
                request.setAttribute("sobd", soBaiViet);
                request.setAttribute("trang", t);
                UtilControl.forward("Admin-quan-li-bai-dang.jsp", request, response);
                break;
            case "approve":
                Post post = daoPost.getPostDetail(Integer.valueOf(idManager));
                DAOLog.getInstance().insert(Log.INFO, account != null ? account.getId() : -1,
                        String.valueOf(request.getRequestURL()  + ", địa chỉ IP: "+request.getRemoteAddr()), (account != null ? "Tài khoản " + account.getUsername() : "Người dùng ẩn danh") + " đã duyệt bài viết có id: " + idManager, 0);
                DAOLog.getInstance().insert(Log.INFO, post.getAccountId(),
                        "", "Bài viết " + post.getTitle() + " tạo ngày " + post.getCreateDate() + " đã được duyệt ", 1);
                daoPost.updatePost(Integer.valueOf(idManager), Post.status_approve);
                response.sendRedirect(request.getContextPath() + "/admin/PostManager?action=quanlybaidang");
                break;
            case "lock":
                Post postLock = daoPost.getPostDetail(Integer.valueOf(idManager));
                DAOLog.getInstance().insert(Log.ALERT, account != null ? account.getId() : -1,
                        String.valueOf(request.getRequestURL())  + ", địa chỉ IP: "+request.getRemoteAddr(), (account != null ? "Tài khoản " + account.getUsername() : "Người dùng ẩn danh") + " khóa bài viết có id: " + idManager, 0);
                DAOLog.getInstance().insert(Log.INFO, postLock.getAccountId(),
                        "", "Bài viết đã khóa (nội dung không hợp lệ): " + postLock.getTitle() + ". Mọi thắc mắc vui lòng liên hệ chúng tôi qua email ", 1);
                daoPost.updatePost(Integer.valueOf(idManager), Post.status_lock);
                response.sendRedirect(request.getContextPath() + "/admin/PostManager?action=quanlybaidang");
                break;
            case "remove":
                Post postRemove = daoPost.getPostDetail(Integer.valueOf(idManager));
                DAOLog.getInstance().insert(Log.WARNING, account != null ? account.getId() : -1,
                        String.valueOf(request.getRequestURL())  + ", địa chỉ IP: "+request.getRemoteAddr(), (account != null ? "Tài khoản " + account.getUsername() : "Người dùng ẩn danh") + " không duyệt bài viết có id: " + idManager, 0);
                DAOLog.getInstance().insert(Log.INFO, postRemove.getAccountId(),
                        "", "Bài viết không được duyệt (nội dung không hợp lệ): " + postRemove.getTitle() + ". Mọi thắc mắc vui lòng liên hệ chúng tôi qua email", 1);
                daoPost.updatePost(Integer.valueOf(idManager), Post.status_unpaid);
                response.sendRedirect(request.getContextPath() + "/admin/PostManager?action=quanlybaidang");
                break;
            case "delete":
                DAOLog.getInstance().insert(Log.DANGER, account != null ? account.getId() : -1,
                        String.valueOf(request.getRequestURL())  + ", địa chỉ IP: "+request.getRemoteAddr(), (account != null ? "Tài khoản " + account.getUsername() : "Người dùng ẩn danh") + " xóa bài viết có id: " + idManager, 0);
                daoPost.deletePost(idManager);
                response.sendRedirect(request.getContextPath() + "/admin/PostManager?action=quanlybaidang");
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }
}
