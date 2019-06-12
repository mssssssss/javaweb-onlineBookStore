package com.bookstore.servlet.bookDiscuss;

import com.bookstore.dao.IBookDiscussDAO;
import com.bookstore.dao.impl.BookDiscussDAOImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DeleteBookDiscussServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		IBookDiscussDAO dao = new BookDiscussDAOImpl();
		String msg = "…æ≥˝ È∆¿ ß∞‹£°";
		if(dao.delete(id)) {
			msg = "…æ≥˝ È∆¿≥…π¶£°";
		}
		request.setAttribute("msg", msg);
		request.setAttribute("returnPath", "/FindAllBookDiscussServlet?nowPage=1");
		RequestDispatcher rd = request.getRequestDispatcher("/background/message.jsp");
		rd.forward(request, response);
	}
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
