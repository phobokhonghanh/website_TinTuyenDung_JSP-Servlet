package vn.edu.hcmuaf.fit.filter;

import vn.edu.hcmuaf.fit.control.UtilSession;
import vn.edu.hcmuaf.fit.model.Account;
import vn.edu.hcmuaf.fit.service.DAOAccount;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(filterName = "AuthenticationFilter")
public class AuthFilter implements Filter {
    private ServletContext context;
    private int count = 1;

    public void init(FilterConfig config) throws ServletException {
        this.context = config.getServletContext();
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;

        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        Account account = UtilSession.getInstance().getValue(request, "account");
        String action = request.getParameter("action");
        String id = request.getParameter("id");
        String trang = request.getParameter("trang");
        int role = 1;
        int status = 0;
        String uri = request.getRequestURI();

        if (request.getAttribute("javax.servlet.forward.request_uri") != null) {
            uri = (String) request.getAttribute("javax.servlet.forward.request_uri");
        }
        String url = sessionUrl(account, uri, action, id, trang, request); // phan quyen url
        updateSessionAccount(account, request); // kiem tra trang thai tai khoan khi bi Admin xoa tai khoan

        if (url.startsWith("/admin")) {
            if (account != null) {
                role = account.getRole();
                status = account.getStatus();
                if (role == 0 && status == 1) {
                    chain.doFilter(servletRequest, servletResponse);
                } else {
                    response.sendRedirect(request.getContextPath() + "/Login?action=login");
                }
            } else {
                response.sendRedirect(request.getContextPath() + "/Login?action=login");
            }
        } else if (url.startsWith("/business")) {
            if (account != null) {
                role = account.getRole();
                status = account.getStatus();
                if ((role == 2 || role == 0) && status == 1) {
                    chain.doFilter(servletRequest, servletResponse);
                } else {
                    response.sendRedirect(request.getContextPath() + "/Login?action=login");
                }
            } else {
                response.sendRedirect(request.getContextPath() + "/Login?action=login");
            }
        } else if (url.startsWith("/candidate")) {
            if (account != null) {
                role = account.getRole();
                status = account.getStatus();
                if ((role == 1 || role == 0) && status == 1) {
                    chain.doFilter(servletRequest, servletResponse);
                } else {
                    response.sendRedirect(request.getContextPath() + "/Login?action=login");
                }
            } else {
                response.sendRedirect(request.getContextPath() + "/Login?action=login");
            }
        } else {
            chain.doFilter(servletRequest, servletResponse);
        }
    }

    public String sessionUrl(Account account, String uri, String action, String id, String trang, HttpServletRequest request) {
        String rs = "";
        int index = uri.indexOf("/");
        if (index != -1) { // kiem tra ton tai cua /
            rs = uri.substring(uri.indexOf("/", 1));
        }
        if (action != null) {
            rs += "?action=" + action;
            if (trang != null) {
                rs += "&trang=" + trang;
            }
            if (id != null) {
                rs += "&id=" + id;
            }
        }
//        if (!url.startsWith("/Login") && (url.startsWith("/candidate") || url.startsWith("/business") || url.startsWith("/admin")) && account == null && urlSession == null) {
        if (!rs.startsWith("/Login") && account == null) {
            UtilSession.getInstance().putUrlSession(request, "url", rs);
        }
        return rs;
    }

    public void updateSessionAccount(Account account, HttpServletRequest request) {
        if (account != null) {
            if (!DAOAccount.checkStatus(account.getUsername(), account.getStatus())) {
                account = null;
                UtilSession.getInstance().removeValue(request, "account");
            }
        }
    }

}
