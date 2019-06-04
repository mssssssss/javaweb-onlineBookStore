<%--管理员登陆界面--%>
<%@ page language="java" contentType="text/html; charset=GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html >
<head>
<title>登陆界面-网上图书商城后台管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<%--<link href="css/bootstrap.css">--%>
	<link rel="stylesheet" href="css/bootstrap.css">
<link>
</head>
<%--<body bgcolor="#BDE7FD" text="#000000">--%>
<body style="background-color: #BDE7FD" text="#000000">
		<table width="500">
			<tr>
				<td width="50">&nbsp;<img src="images/ht01.jpg" width="80" height="80"></td>
			</tr>
		</table>
		<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="R#BDE7FD">
			<tr>
				<td class="wr2">
					<div align="center"  class="divcss5" style="background-color: #1A7CBC;  font-size:36px;">
						网上图书商城后台登录
					</div>
				</td>
			</tr>
		</table>
		<br/>
		<br/>
		<%--<form method="post" name="form1" action="${pageContext.request.contextPath}/BackgroundLoginServlet" >--%>
		<%--<table width="100%" bgcolor="#BDE7FD">--%>
				<%--<tr>--%>
				<%--<td class="wr2">--%>
					<%--<div align="center">--%>
					<%--<font color="blue"><b>用户名</b></font> : <input type="text" name="name"/><br><br>--%>
					<%--<font color="blue"><b>密&nbsp;码</b></font>  : <input type="password" name="pwd"/><br><br>--%>
					<%--<input type="submit" style="width:80px;height:26px;" value="登陆" /> <br><br>--%>
					<%--</div>    --%>
				<%--</tr>--%>
		<%--</table>--%>
			<%--<table>--%>

			<%--</table>--%>
		<div align="center" >
		<form method="post" name="form1"  action="${pageContext.request.contextPath}/BackgroundLoginServlet" >
				<table style="margin-left: 40px; margin-top: 15px">
					<tr>
						<td align="center" style="font-size: 26px; font-family: 宋体">用户名：</td>
						<td><input type="text" class="form-control" name="name"  value="${param.name }" /></td>
						<%--onclick="mes.innerHTML=''"--%>
					</tr>
					<tr><td>&nbsp;</td></tr>
					<tr>
						<td align="center" style="font-size: 26px; font-family: 宋体">密码:</td>
						<td><input type="password" class="form-control" name="pwd" value="${param.pwd }" /></td>
					</tr>
					<tr><td>&nbsp;</td></tr>
					<%--<tr>--%>
						<%--<td align="center">验证码:</td>--%>
						<%--<td><input type="text" name="checkcode"  class="form-control"/></td>--%>
						<%--<td>&nbsp;&nbsp;<img border="0" src="/codecheck" height="33px" />&nbsp;&nbsp;--%>
							<%--<input type="submit" value="换一张" class="btn btn-primary"--%>
								   <%--onclick="form1.action='/changecheckcode'" /></td>--%>
					<%--</tr>--%>
					<tr><td>&nbsp;</td></tr>
					<tr>
						<td>&nbsp;</td>
						<td>
							<input type="submit" value="登录"  class="btn  btn-lg btn-primary" />
							<%--onclick="form1.action='/login'"--%>
						<%--<input type="submit" value="登录"  onclick="form1.action='logincheck'"  class="btn btn-primary" />--%>
							<label style="float: right; "><input type="reset"  value="重置" class="btn btn-lg btn-primary" /></label>
							<%--<input type="reset" value="重置" style="width: 50%" class="btn btn-primary" />--%>
						</td>
					</tr>
				</table>
		</form>
		</div>
		<%--<div id="mes">--%>
			<%--${info}--%>
		<%--</div>--%>
		<%--<p align="center">--%>
		<%--</p>--%>
	</body>
</html>
