package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.model.Account;

import javax.servlet.http.HttpServletRequest;
import java.util.Objects;

public class UtilSession {
    public static UtilSession utilSession = null;

    public static UtilSession getInstance() {
        if (utilSession == null) {
            utilSession = new UtilSession();
        }
        return utilSession;
    }

    public void putValue(HttpServletRequest request, String key, Objects value) {
        request.getSession().setAttribute(key, value);
    }

    public Account getValue(HttpServletRequest request, String key) {
        return (Account) request.getSession().getAttribute(key);
    }

    public String getUrlSession(HttpServletRequest request, String key) {
        return (String) request.getSession().getAttribute(key);
    }

    public void removeValue(HttpServletRequest request, String key) {
        request.getSession().removeAttribute(key);
    }

    public void putAccountSession(HttpServletRequest request, String key, Account value) {
        request.getSession().setAttribute(key, value);
    }

    public void putUrlSession(HttpServletRequest request, String key, String value) {
        request.getSession().setAttribute(key, value);
    }
}