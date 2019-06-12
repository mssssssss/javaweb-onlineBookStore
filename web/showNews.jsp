<%--新闻的具体显示信息--%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@page import="com.bookstore.bean.BookInfo"%>
<%@page import="java.util.List"%>
<%@page import="com.bookstore.bean.BookDiscuss"%>
<%@page import="com.bookstore.bean.News"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>云起点</title>
<meta name="keywords" content="关键字" />
<meta name="description" content="页面描述" />
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
				当前用户身份:<b>${sessionScope.customerInfo.custName}</b> 欢迎访问本商城！&nbsp;&nbsp;&nbsp;
			</c:when>
			<c:otherwise>
				当前用户身份:游客 登录后方可下单&nbsp;&nbsp;&nbsp;
			</c:otherwise>
		</c:choose>
   	<a href="${pageContext.request.contextPath}/qtLogin.jsp">用户登录</a>
   	<a href="${pageContext.request.contextPath}/background/index.jsp">管理员登陆</a>
    </div>
	<div class="top1_2">
		<div class="top1_2_l">
            <ul class="yudingCon">
                <%--<li>书名:<input type="text" name="" class="kuang" />  </li>--%>
            	<%--<li>作者:<input type="text" name="" class="kuang" />  </li>--%>
            	<%--<li class="ribtn"><input type="image" src="images/btn.gif" class="btn"/></li>--%>
		</ul>
        </div>
		<div class="top1_2_r">
        	<ul class="other">
            	<li><a href="<%=request.getContextPath() %>/gouwuche.jsp"><img src="images/car.jpg"/><br />购物车</a></li>
				<li><a href="#"><img src="images/car.jpg"/><br />订单查询  </a></li>
				<li><a href="#"><img src="images/car.jpg"/><br />我的积分</a></li>
				<li><a href="http://www.dangdang.com/"><img src="images/car.jpg"/><br />关联网站</a></li>
			</ul>
            <ul class="menu">
				<li><a href="<%=request.getContextPath() %>/InitIndexServlet">首页</a></li>
				<li><a href="#">小说</a></li>
				<li><a href="#">文艺</a></li>
				<li><a href="#">传记</a></li>
				<li><a href="help.jsp">帮助</a></li>
				<li><a href="about.jsp">关于</a></li>
            </ul>
        </div>
	</div>
</div>
<!-- middle -->
<div class="middle">
	<div class="middle_left">
  		<div class="middle_left1">
        	<div class="middle_left1title">
            	所有商品分类
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
        	您当前的位置：网站首页 ---- 新闻信息  
        </div>
        <div class="middle8">
        	<div class="middle8tit">
            	<a href="#"><span>新闻信息</span></a>
            </div>
        <div class="middle8con" >             
		<%=news.getContext() %>
		<p>发布时间： <%=news.getCreateTime() %> </p>
        </div>
         <div class="middle9">
        	<div class="middle9tit">网友评论:</div>
        		
        	</div>
        </div> 
        <%--<div class="middle9">--%>
        	<%--<div class="middle9tit">用户评论</div>--%>
            <%--<div class="middle_right9con">--%>
            	<%--<div>用户名：匿名用户</div>--%>
                <%--<div>E-mail:<input type="text" name="text" size="25" /></div>--%>
            	<%--<div>评论等级：<input name="" type="radio" value="" /><img src="images/pl1.gif"/> --%>
            	<%--<input name="" type="radio" value="" /><img src="images/pl1.gif"/> --%>
            	<%--<input name="" type="radio" value="" /><img src="images/pl1.gif"/> --%>
            	<%--<input name="" type="radio" value="" /><img src="images/pl1.gif"/> --%>
            	<%--<input name="" type="radio" value="" /><img src="images/pl1.gif"/></div>--%>
            	<%--<div>评论内容：<textarea name="" cols="" rows=""></textarea></div>--%>
                <%--<div>验证码：<input type="text"  size="15" /><img src="images/yz.gif"/></div>--%>
                <%--<div><input type="button"  class="btn4" value=" " /></div>--%>
            <%--</div>--%>
            <%--</div>        --%>
        </div> 		   
        	   
	</div>
<!-- footer2 -->
<div class="footer3">
	<div class="footer3_in">
	<a href="#">公司简介</a><span>|</span><a href="#">免责条款</a><span>|</span><a href="#">隐私保护</a><span>|</span><a href="#">咨询热点</a><span>|</span><a href="#">合作招募</a><span>|</span><a href="#">配送方式</a><span>|</span><a href="#">联系我们</a>
    </div>
    <div class="footer2">
		Copyright (C) 云起点 2009-2019, All Rights Reserved<br />
		互联网违法和不良信息举报电话：4001066666-5 邮箱：service@cs.yunqidian.com
    </div>
</div>
</body>
</html>





