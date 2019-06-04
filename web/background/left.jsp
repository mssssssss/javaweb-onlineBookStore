<%--管理员管理页面的下 左部分--%>
<%--随着管理员身份的不同，具有不同的管理功能--%>
<%@page import="com.bookstore.bean.SysAdmin"%>
<%@ page language="java" contentType="text/html; charset=gbk"%>
<%@include file="checkLogin.jsp" %>
<html>
<head>
<title>网上图书商城后台管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>

<body bgcolor="#FFFFDB" text="#000000" leftmargin="0" topmargin="0"
	marginwidth="0" marginheight="0">
	<%
		SysAdmin sysAdmin = (SysAdmin)session.getAttribute("sysAdmin");
	%>
	<table width="160" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td>&nbsp;</td>
			<td width="12">&nbsp;</td>
		</tr>
		<tr>
			<td align="center">管理员：<%=sysAdmin.getAdminName()%></td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td width="12">&nbsp;</td>
		</tr>
		<%--不同的管理员身份(admintype),所对应的功能也不同--%>
		<%if(sysAdmin.getAdminType() == 3) {%>
			<%@include file="adminLeft.jsp"%>				
		<%} else if(sysAdmin.getAdminType() == 2) {%>
			<%@include file="guestLeft.jsp"%>
		<%} else if(sysAdmin.getAdminType() == 1) {%>
			<%@include file="userLeft.jsp"%>
		<%}%>		
		
		<%--<tr>--%>
			<%--<td class="wr4">&nbsp;</td>--%>
			<%--<td width="12">&nbsp;</td>--%>
		<%--</tr>--%>
		<%--<tr>--%>
			<%--<td background="images/ht08.jpg" class="wr4">--%>
				<%--<div align="center">--%>
				<%--<a href="<%=request.getContextPath()%>/BackgroundLoginOutServlet" target="_parent">退 出 系 统</a>--%>
					<%--&lt;%&ndash;回到管理员登陆的界面&ndash;%&gt;--%>
				<%--</div></td>--%>
			<%--&lt;%&ndash;<td width="12"><img src="images/ht07.jpg" width="12" height="20">&ndash;%&gt;--%>
			<%--&lt;%&ndash;</td>&ndash;%&gt;--%>
		<%--</tr>--%>
	</table>
</body>
</html>


