<%--管理员身份验证界面--%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%
	if(session.getAttribute("sysAdmin") == null) {
		response.sendRedirect("login.jsp");
	}
%>
