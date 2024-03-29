package com.bookstore.servlet; /**
 * Copyright (C), 2015-2019
 * FileName: ${NAME}
 * Author:   niko
 * Date:     2019/6/6 18:49
 * Description: ${DESCRIPTION}
 * History:
 * <author>          <time>          <version>
 *          18:49           1.0
 */

import com.bookstore.bean.CustomerDetailInfo;
import com.bookstore.bean.CustomerInfo;
import com.bookstore.dao.impl.CustomerDetailInfoDAOImpl;
import com.bookstore.dao.impl.CustomerInfoDAOImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Copyright (C), 2015-2019
 * ProjectName: javaweb-onlineBookStore
 * Author:   niko
 * Date:     2019/6/6 18:49
 * <author>          <time>          <version>          
 *      18:49           1.0
 */
@WebServlet(name = "UserRegistServlet",urlPatterns = "/UserRegistServlet")
public class UserRegistServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CustomerInfo info = new CustomerInfo();
        info.setCustName(request.getParameter("custName"));
        info.setPwd(request.getParameter("pwd"));
        info.setEmail(request.getParameter("email"));

        CustomerDetailInfo detailInfoinfo = new CustomerDetailInfo();
        detailInfoinfo.setTel(request.getParameter("tel"));
        detailInfoinfo.setAddress(request.getParameter("address"));
        detailInfoinfo.setSex(Integer.parseInt(request.getParameter("sex")));
        detailInfoinfo.setAge(Integer.parseInt(request.getParameter("age")));
        detailInfoinfo.setQq(request.getParameter("qq"));

        CustomerInfoDAOImpl customerInfoDAO = new CustomerInfoDAOImpl();
        CustomerDetailInfoDAOImpl customerDetailInfoDAO = new CustomerDetailInfoDAOImpl();

        if(customerInfoDAO.save(info)&&customerDetailInfoDAO.save(detailInfoinfo)&&request.getParameter("yzm").toString().equals(request.getSession().getAttribute("yzm").toString())){
            response.sendRedirect("/qtLogin.jsp");
        }
        else {
            System.out.println("注册失败");
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
