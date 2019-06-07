<%--以guest身份登陆进去的管理页面的左部--%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<style type="text/css">
	a{text-decoration: none; color:#1A7CBC}
	a:hover{color: red; }
</style>
	<table  width="160" border="0" cellspacing="0" cellpadding="0">
		<tr>

			<td background="images/ht04.jpg" class="wr4">
				<div align="center">用 户 管 理</div></td>
			<td width="12"><img src="images/ht03.jpg" width="12" height="20">
			</td>
		</tr>
	</table>
	<table width="160" border="0" cellspacing="0" cellpadding="2">
		<tr>
			<td width="40">&nbsp;</td>
			<td class="wr4" width="120"><a
				href="<%= request.getContextPath() %>/FindAllAdminServlet?nowPage=1" target="mainFrame">管理员信息</a>
			</td>
		</tr>
		<tr>
			<td width="40">&nbsp;</td>
			<td class="wr4" width="120"><a
				href="<%= request.getContextPath() %>/FindAllCustomerInfoServlet?nowPage=1" target="mainFrame">用户基本信息</a>
			</td>
		</tr>
		<tr>
			<td width="40">&nbsp;</td>
			<td class="wr4" width="120"><a
				href="<%=request.getContextPath()%>/FindAllCusDetailInfoServlet?nowPage=1" target="mainFrame">用户详细信息</a>
			</td>
		</tr>
		<tr>
			<td width="40">&nbsp;</td>
			<td class="wr4" width="120">&nbsp;</td>
		</tr>
	</table>
	<table width="160" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td background="images/ht06.jpg" class="wr4">
				<div align="center">图 书 信 息</div></td>
			<td width="12"><img src="images/ht05.jpg" width="12" height="20">
			</td>
		</tr>
	</table>
	<table width="160" border="0" cellspacing="0" cellpadding="2">
		<tr>
			<td width="40">&nbsp;</td>
			<td class="wr4" width="120"><a
				href="<%=request.getContextPath()%>/FindAllNewsServlet?nowPage=1" target="mainFrame">新闻发布</a>
			</td>
		</tr>
		<tr>
			<td width="40">&nbsp;</td>
			<td class="wr4" width="120"><a
				href="<%=request.getContextPath()%>/FindAllBookTypeServlet?nowPage=1" target="mainFrame">图书类别</a>
			</td>
		</tr>
		<tr>
			<td width="40">&nbsp;</td>
			<td class="wr4" width="120"><a
				href="<%=request.getContextPath()%>/FindAllBookInfoServlet?nowPage=1" target="mainFrame">图书基本信息</a>
			</td>
		</tr>
		<tr>
			<td width="40">&nbsp;</td>
			<td class="wr4" width="120">&nbsp;</td>
		</tr>
	</table>
	<table width="160" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td background="images/ht08.jpg" class="wr4">
				<div align="center">交 互 管 理</div></td>
			<td width="12"><img src="images/ht07.jpg" width="12" height="20">
			</td>
		</tr>
	</table>
	<table width="160" border="0" cellspacing="0" cellpadding="2">
		<tr>
			<td width="40">&nbsp;</td>
			<td class="wr4" width="120"><a
				href="<%=request.getContextPath()%>/FindAllBookDiscussServlet?nowPage=1" target="mainFrame">图书评价</a>
			</td>
		</tr>
		<tr>
			<td width="40">&nbsp;</td>
			<td class="wr4" width="120"><a href="<%=request.getContextPath()%>/FindAllFavoriteServlet?nowPage=1" target="mainFrame">评价管理</a>
			</td>
		</tr>
		<tr>
			<td width="40">&nbsp;</td>
			<td class="wr4" width="120"><a href="#">访问分析</a>
			</td>
		</tr>
		<tr>
			<td width="40">&nbsp;</td>
			<td class="wr4" width="120">&nbsp;</td>
		</tr>
	</table>
	<table width="160" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td background="images/ht04.jpg" class="wr4">
				<div align="center">
					<%--<a href="systemSet.htm" target="mainFrame">系 统 设 置</a>--%>
						系 统 设 置
				</div></td>
			<td width="12"><img src="images/ht03.jpg" width="12" height="20">
			</td>
		</tr>
		<tr>
			<td >
				<div align="center">
					<a href="<%=request.getContextPath()%>/BackgroundLoginOutServlet" target="_parent">退 出 系 统</a>
					<%--回到管理员登陆的界面--%>
				</div></td>
			<%--<td width="12"><img src="images/ht07.jpg" width="12" height="20">--%>
			<%--</td>--%>
		</tr>
	</table>
