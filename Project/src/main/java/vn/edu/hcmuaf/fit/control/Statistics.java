package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.Util.Util;
import vn.edu.hcmuaf.fit.service.DAOBill;
import vn.edu.hcmuaf.fit.service.DAOPost;
import vn.edu.hcmuaf.fit.service.modelQuanLy.QuanLyThongKe;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@WebServlet(name = "Statistics", value = "/admin/Statistics")
public class Statistics extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");
        String file = request.getParameter("file");
        String year = request.getParameter("year");
        DAOBill daoBill = new DAOBill();
        DAOPost daoPost = new DAOPost();
        int[] doanhThuNam;
        int[] doanhThuNamTruoc;
        int[] baiVietNam;

        switch (action) {
            case "adminThongke":
                if (year == null) {
                    year = String.valueOf(Calendar.getInstance().get(Calendar.YEAR));
                }
                doanhThuNam = daoBill.doanhThuNam(year);
                doanhThuNamTruoc = daoBill.doanhThuNam(String.valueOf(Integer.valueOf(year) - 1));
                baiVietNam = daoPost.baiVietNam(year);
                request.setAttribute("year", year);
                request.setAttribute("doanhThuNam", doanhThuNam);
                request.setAttribute("doanhThuNamTruoc", doanhThuNamTruoc);
                request.setAttribute("baiVietNam", baiVietNam);
                UtilControl.forward("Admin-baocao-thongke.jsp", request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
