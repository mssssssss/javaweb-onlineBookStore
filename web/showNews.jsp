<%--���ŵľ�����ʾ��Ϣ--%>
<%@ page language="java" contentType="text/html; charset=gbk"%>
<%@page import="com.bookstore.bean.BookInfo"%>
<%@page import="java.util.List"%>
<%@page import="com.bookstore.bean.BookDiscuss"%>
<%@page import="com.bookstore.bean.News"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>�����</title>
<meta name="keywords" content="�ؼ���" />
<meta name="description" content="ҳ������" />
<link rel="stylesheet" href="style/public.css" type="text/css" />
<link rel="stylesheet" href="style/index.css" type="text/css" />
<script src="js/banner.js" type="text/javascript"></script>
<SCRIPT src="js/jquery-1.2.6.pack.js" type="text/javascript"></SCRIPT>
<SCRIPT src="js/base.js" type="text/javascript"></SCRIPT>

</head>
<body>
<%
	News news = (News)request.getAttribute("news");
	List<News> newsList = (List<News>)request.getAttribute("newsList");
%>
<!-- top1 -->
<div class="top1">
	<div class="top1_1">
		<c:choose >
			<c:when test="${sessionScope.customerInfo.custName!=null}">
				��ǰ�û����:<b>${sessionScope.customerInfo.custName}</b> ��ӭ���ʱ��̳ǣ�&nbsp;&nbsp;&nbsp;
			</c:when>
			<c:otherwise>
				��ǰ�û����:�ο� ��¼�󷽿��µ�&nbsp;&nbsp;&nbsp;
			</c:otherwise>
		</c:choose>
   	<a href="${pageContext.request.contextPath}/qtLogin.jsp">�û���¼</a>
   	<a href="${pageContext.request.contextPath}/background/index.jsp">����Ա��½</a>
    </div>
	<div class="top1_2">
		<div class="top1_2_l">
            <ul class="yudingCon">
                <%--<li>����:<input type="text" name="" class="kuang" />  </li>--%>
            	<%--<li>����:<input type="text" name="" class="kuang" />  </li>--%>
            	<%--<li class="ribtn"><input type="image" src="images/btn.gif" class="btn"/></li>--%>
		</ul>
        </div>
		<div class="top1_2_r">
        	<ul class="other">
            	<li><a href="<%=request.getContextPath() %>/gouwuche.jsp"><img src="images/car.jpg"/><br />���ﳵ</a></li>
				<li><a href="#"><img src="images/car.jpg"/><br />������ѯ  </a></li>
				<li><a href="#"><img src="images/car.jpg"/><br />�ҵĻ���</a></li>
				<li><a href="http://www.dangdang.com/"><img src="images/car.jpg"/><br />������վ</a></li>
			</ul>
            <ul class="menu">
				<li><a href="<%=request.getContextPath() %>/InitIndexServlet">��ҳ</a></li>
				<li><a href="#">С˵</a></li>
				<li><a href="#">����</a></li>
				<li><a href="#">����</a></li>
				<li><a href="help.jsp">����</a></li>
				<li><a href="about.jsp">����</a></li>
            </ul>
        </div>
	</div>
</div>
<!-- middle -->
<div class="middle">
	<div class="middle_left">
  		<div class="middle_left1">
        	<div class="middle_left1title">
            	������Ʒ����
            </div>
            <div class="middle_left1con">
				<%@ include file = "leftBookType.jsp" %>                
            </div>
            <div class="zzzz">
            
            </div>
        </div>
    </div>
    <div class="middle_right">
    	<div class="middle_right6tit">
        	����ǰ��λ�ã���վ��ҳ ---- ������Ϣ  
        </div>
        <div class="middle8">
        	<div class="middle8tit">
            	<a href="#"><span>������Ϣ</span></a>
            </div>
        <div class="middle8con" >             
		<%=news.getContext() %>
		<p>����ʱ�䣺 <%=news.getCreateTime() %> </p>
        </div>
         <div class="middle9">
        	<div class="middle9tit">��������:</div>
        		
        	</div>
        </div> 
        <%--<div class="middle9">--%>
        	<%--<div class="middle9tit">�û�����</div>--%>
            <%--<div class="middle_right9con">--%>
            	<%--<div>�û����������û�</div>--%>
                <%--<div>E-mail:<input type="text" name="text" size="25" /></div>--%>
            	<%--<div>���۵ȼ���<input name="" type="radio" value="" /><img src="images/pl1.gif"/> --%>
            	<%--<input name="" type="radio" value="" /><img src="images/pl1.gif"/> --%>
            	<%--<input name="" type="radio" value="" /><img src="images/pl1.gif"/> --%>
            	<%--<input name="" type="radio" value="" /><img src="images/pl1.gif"/> --%>
            	<%--<input name="" type="radio" value="" /><img src="images/pl1.gif"/></div>--%>
            	<%--<div>�������ݣ�<textarea name="" cols="" rows=""></textarea></div>--%>
                <%--<div>��֤�룺<input type="text"  size="15" /><img src="images/yz.gif"/></div>--%>
                <%--<div><input type="button"  class="btn4" value=" " /></div>--%>
            <%--</div>--%>
            <%--</div>        --%>
        </div> 		   
        	   
	</div>
<!-- footer2 -->
<div class="footer3">
	<div class="footer3_in">
	<a href="#">��˾���</a><span>|</span><a href="#">��������</a><span>|</span><a href="#">��˽����</a><span>|</span><a href="#">��ѯ�ȵ�</a><span>|</span><a href="#">������ļ</a><span>|</span><a href="#">���ͷ�ʽ</a><span>|</span><a href="#">��ϵ����</a>
    </div>
    <div class="footer2">
		Copyright (C) ����� 2009-2019, All Rights Reserved<br />
		������Υ���Ͳ�����Ϣ�ٱ��绰��4001066666-5 ���䣺service@cs.yunqidian.com
    </div>
</div>
</body>
</html>





