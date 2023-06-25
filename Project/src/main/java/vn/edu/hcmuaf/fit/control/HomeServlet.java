package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.model.Account;
import vn.edu.hcmuaf.fit.service.DAOCategory;
import vn.edu.hcmuaf.fit.service.DAOPost;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "HomeServlet", value = {"/Home"})
public class HomeServlet extends HttpServlet {
    private int r = 1;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        DAOPost p = new DAOPost();
        request.setAttribute("listPAT5", p.getPostAllTop5());
        request.setAttribute("categoryList", DAOCategory.getInstance().getCategoryAll());
        Account account = UtilSession.getInstance().getValue(request, "account");
        if (account != null) {
            r = account.getRole();
            UtilControl.send(r, "/admin/Admin-trang-chu.jsp", "/visitor/trang-chu-candi.jsp", "/business/busi-trang-chu.jsp", response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doGet(request, response);
    }

}
