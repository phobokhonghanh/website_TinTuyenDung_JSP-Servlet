package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.model.CV;
import vn.edu.hcmuaf.fit.model.Post;
import vn.edu.hcmuaf.fit.model.PostApplied;
import vn.edu.hcmuaf.fit.service.DAOCV;
import vn.edu.hcmuaf.fit.service.DAOPost;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CV", value = {"/candidate/CV", "/business/CV"})
public class CVServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        DAOCV cv = new DAOCV();
        DAOPost p = new DAOPost();
        String action = request.getParameter("action");
        int id = UtilSession.getInstance().getValue(request, "account").getId();
        String cvId = request.getParameter("id");

        switch (action) {
            case "taocv":
                String title = request.getParameter("title");
                String name = request.getParameter("name");
                String rank = request.getParameter("rank");
                String email = request.getParameter("email");
                String phone = request.getParameter("phone");
                String gen = request.getParameter("gen");
                String address = request.getParameter("address");
                String salary = request.getParameter("salary");
                String skill = request.getParameter("skill");
                String introduce = request.getParameter("introduce");
                String exp = request.getParameter("exp");
                String lv = request.getParameter("lv");
                cv.insertCV(title, name, rank, email, phone, gen, address, salary, skill, introduce, exp, lv);
                response.sendRedirect(request.getContextPath() + "/candidate/CV?action=quanlycv");
                break;
            case "quanlycv":
                List<CV> cvs = cv.getCV(id);
                request.setAttribute("cvList", cvs);
                UtilControl.forward("candi-quan-ly-cv.jsp", request, response);
                break;
            case "xemcv":
                CV cvs2 = cv.getDetailCV(cvId);
                request.setAttribute("cv", cvs2);
                UtilControl.forward("/visitor/thong-tin-cv-candi.jsp", request, response);
                break;
            case "busiquanlycv":
                List<CV> quanlycv = cv.getCVApplied(id);
                List<PostApplied> postApplied = cv.getPostApplied(id);
                List<Post> post = p.getPost(id);
                request.setAttribute("cvList", quanlycv);
                request.setAttribute("post", post);
                request.setAttribute("postApplied", postApplied);
                UtilControl.forward("busi-quan-ly-cv.jsp", request, response);
                break;
            case "xemcvdaungtuyen":
                List<CV> quanlycv2 = cv.getCVApplied2(cvId);
                List<PostApplied> postApplied2 = cv.getPostApplied(id);
                List<Post> post2 = p.getPost(id);
                request.setAttribute("cvList", quanlycv2);
                request.setAttribute("post", post2);
                request.setAttribute("postApplied", postApplied2);
                UtilControl.forward("busi-quan-ly-cv.jsp", request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
