package vn.edu.hcmuaf.fit.control.login;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "/LoginGoogle", value = "/login-google")
public class LoginGoogle extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String code = request.getParameter("code");
        if (code == null || code.isEmpty()) {
            request.setAttribute("error", "Login failed!");
            request.getRequestDispatcher("visitor/dang-nhap.jsp").forward(request, response);
        } else {
            response.sendRedirect(request.getContextPath() + "/Login?action=google&code=" + code);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}

