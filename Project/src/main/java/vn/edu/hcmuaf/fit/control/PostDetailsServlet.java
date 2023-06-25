package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.model.Post;
import vn.edu.hcmuaf.fit.service.DAOCV;
import vn.edu.hcmuaf.fit.service.DAOPost;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "/Post_details", value = "/candidate/Post_details")
public class  PostDetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        DAOPost p = new DAOPost();
        DAOCV cv = new DAOCV();
        int id = UtilSession.getInstance().getValue(request, "account").getId();
        String action = request.getParameter("action");
        String cvId = request.getParameter("cv");
        String postId = request.getParameter("postId");

        switch (action) {
            case "nopcv":
                cv.insertPostapplied(cvId, postId);
                response.sendRedirect(request.getContextPath() + "/candidate/Post_details?action=vieclamdaungtuyen");
                break;
            case "vieclamdaungtuyen":
                List<Post> postApplied = p.getPostApplied(id);
//                List<PostApplied> postApplied2 = cv.getPostApplied(id);
                request.setAttribute("jobApplied", postApplied);
//                request.setAttribute("jobApplied2", postApplied2);
                UtilControl.forward("candi-viec-lam-da-ung-tuyen.jsp", request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
