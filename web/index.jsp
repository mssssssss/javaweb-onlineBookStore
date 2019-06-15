<%--书城主页--%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@page import="java.util.List"%>
<%@page import="com.bookstore.bean.BookInfo"%>
<%@page import="com.bookstore.bean.News"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">--%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>云起点</title>
<meta name="keywords" content="关键字" />
<meta name="description" content="页面描述" />
<link rel="stylesheet" href="style/public.css" type="text/css" />
<link rel="stylesheet" href="style/index.css" type="text/css" />
<script src="js/banner.js" type="text/javascript"></script>
    <style type="text/css">
        a:hover{ color: red;}
    </style>
</head>
<body>
<%
	List<News> newsList = (List<News>)request.getAttribute("news");
	List<BookInfo> sjbooks = (List<BookInfo>)request.getAttribute("sjbooks");
	List<BookInfo> rxbooks = (List<BookInfo>)request.getAttribute("rxbooks");
	List<BookInfo> tjbooks = (List<BookInfo>)request.getAttribute("tjbooks");
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
   	<a  href="${pageContext.request.contextPath}/qtLogin.jsp">用户登录</a>
   	<a  href="${pageContext.request.contextPath}/background/index.jsp">管理员登陆</a>
    </div>
	<div class="top1_2">
		<div class="top1_2_l">
        </div>
		<div class="top1_2_r">
        	<ul class="other">
            	<li>
	            	<a href="<%=request.getContextPath() %>/gouwuche.jsp">
                        <%--<a href="#">--%>
	            	<img src="images/car.jpg"/><br />购物车</a>
            	</li>
				<li><a href="#"><img src="images/car.jpg"/><br />订单查询</a></li>
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
        		<%@include file="leftBookType.jsp"%>
        	</div>
        </div>
        <div class="middle_left3">
        	<h3 class="paihtit">最新排行</h3>
        	<%for(int i = 0; i < rxbooks.size(); i++){ 
        		BookInfo bookInfo = new BookInfo();
        		bookInfo = rxbooks.get(i);
        	%>
			<a href="<%=request.getContextPath() %>/ShowBookInfoServlet?id=<%=bookInfo.getBookId() %>"><%=bookInfo.getBookName() %></a>
			<%} %>
        </div>
         <div class="middle_left2">
        	<img src="images/02.jpg"/>
        </div>
        <div class="middle_left2">
            <img src="images/01.jpg"/>
        </div>
        <div class="middle_left2">
        	<img src="images/1.jpg"/>
        </div>
        <div class="middle_left2">
            <img src="images/2.jpg"/>
        </div>
         <div class="middle_left2">
            <img src="images/3.jpg"/>
         </div>
    </div>

    <div class="middle_right">
        	<div class="middle_right1L">
            	<DIV id="idContainer2" class="container">
<TABLE id="idSlider2" border="0" cellspacing="0" cellpadding="0">
  <TBODY>
  <TR>
      <%--轮播图片--%>
    <TD class="td_f"><A href="#"><IMG src="images/01.jpg"/></A></TD>
	<TD class="td_f"><A href="#"><IMG src="images/02.jpg"/></A></TD>
	<TD class="td_f"><A href="#"><IMG src="images/03.jpg"/></A></TD>
	<TD class="td_f"><A href="#"><IMG src="images/04.jpg"/></A></TD>
	<TD class="td_f"><A href="#"><IMG src="images/05.jpg"/></A></TD>
   </TR></TBODY></TABLE>
<UL id="idNum" class="num"></UL>
</DIV>
<SCRIPT>
	var forEach = function(array, callback, thisObject){
		if(array.forEach){
			array.forEach(callback, thisObject);
		}else{
			for (var i = 0, len = array.length; i < len; i++) { callback.call(thisObject, array[i], i, array); }
		}
	};
	
	var st = new SlideTrans("idContainer2", "idSlider2", 5, { Vertical: false });
	
	var nums = [];
	//插入数字
	for(var i = 0, n = st._count - 1; i <= n;){
		(nums[i] = $("idNum").appendChild(document.createElement("li"))).innerHTML = ++i;
	}
	
	forEach(nums, function(o, i){
		o.onmouseover = function(){ o.className = "on"; st.Auto = false; st.Run(i); };
		o.onmouseout = function(){ o.className = ""; st.Auto = true; st.Run(); };
	});
	
	//设置按钮样式
	st.onStart = function(){
		forEach(nums, function(o, i){ o.className = st.Index == i ? "on" : ""; });
	};
	st.Run();
</SCRIPT>
            </div>
        <%--资讯新闻的展示--%>
         	<div class="middle_right1R">
            	<div class="middle_right1Rtitle"> </div>
                <div class="middle_right1Rcon">
                   <ul>
                		<%for(int i = 0; i < newsList.size(); i++){ 
                		News news = new News();
                		news = newsList.get(i);
                		%>
                    	<li><a style="font-family:黑体" href="<%=request.getContextPath() %>/ShowNewsServlet?id=<%=news.getNewsId() %>"><%=news.getNewTitle() %></a></li>
                    	<%} %>
   				   </ul>
            </div>
            <%--<div class="middle_right1Rimg">--%>
            	<%--<img src="images/middle_right1Rimg.jpg" />--%>
            <%--</div>--%>
        </div>
        <div class="middle_right2">
            	<div class="middle_right2Rtitle">最新商品 <i>New book</i></div>
                <div class="middle_right2Rcon">
					<ul>
						<%for(int i = 0; i < sjbooks.size(); i++) { 
						BookInfo bookInfo = new BookInfo();
						bookInfo = sjbooks.get(i);
						%>
                        <li><a href="<%=request.getContextPath() %>/ShowBookInfoServlet?id=<%=bookInfo.getBookId() %>">
                        <img src="imgsx/<%=bookInfo.getSmallImg() %>" width="95" height = "180"/><br /><%=bookInfo.getBookName() %></a>
                        <br />
                        <span class="borline">市场价：￥<%=bookInfo.getPrice() %></span>
                        <br /><span>商城价：￥<%=bookInfo.getHyprice() %></span>
                        <a href="<%=request.getContextPath() %>/ShowBookInfoServlet?id=<%=bookInfo.getBookId() %>">
                        <img src="<%=request.getContextPath()%>/images/btn3.gif" 
                        		width="90" height="25"/></a></li>
                        <%} %>
					</ul>                
            </div>           
        </div>
         <div class="middle_right2">
            	<div class="middle_right2Rtitle title2">热销商品  <i>hot book</i></div>
                <div class="middle_right2Rcon">
					<ul>
						<%for(int i = 0; i < rxbooks.size(); i++) { 
						BookInfo bookInfo = new BookInfo();
						bookInfo = rxbooks.get(i);
						%>
                        <li><a href="<%=request.getContextPath() %>/ShowBookInfoServlet?id=<%=bookInfo.getBookId() %>">
                        <img src="imgsx/<%=bookInfo.getSmallImg() %>" width="95" height = "180"/><br /><%=bookInfo.getBookName() %></a>
                        <br />
                        <span class="borline">市场价：￥<%=bookInfo.getPrice() %></span>
                        <br /><span>商城价：￥<%=bookInfo.getHyprice() %></span>
                        <a href="<%=request.getContextPath() %>/ShowBookInfoServlet?id=<%=bookInfo.getBookId() %>">
                        <img src="<%=request.getContextPath()%>/images/btn3.gif" 
                        		width="90" height="25"/></a></li>
                        <%} %>
					</ul>                       
            </div>           
        </div>
         <div class="middle_right3">
            	<div class="middle_right3Rtitle title3"></div>
                <div class="middle_right3Rcon">
				 <ul>
						<%for(int i = 0; i < tjbooks.size(); i++) { 
						BookInfo bookInfo = new BookInfo();
						bookInfo = tjbooks.get(i);
						%>
                        <li><a href="<%=request.getContextPath() %>/ShowBookInfoServlet?id=<%=bookInfo.getBookId() %>">
                        <img src="imgsx/<%=bookInfo.getSmallImg() %>" width="95" height = "180"/><br /><%=bookInfo.getBookName() %></a>
                        <br />
                        <span class="borline">市场价：￥<%=bookInfo.getPrice() %></span>
                        <br /><span>商城价：￥<%=bookInfo.getHyprice() %></span>
                        <a href="<%=request.getContextPath() %>/ShowBookInfoServlet?id=<%=bookInfo.getBookId() %>">
                        <img src="<%=request.getContextPath()%>/images/btn3.gif" 
                        		width="90" height="25"/></a></li>
                        <%} %>
				</ul>                 
            </div>           
        </div>
    </div>    
</div>  
<div class="clear"><img src="#" width="1" height="1"/></div>
<!-- footer -->
<%--下面的看看就好--%>
<div class="footer">
	<ul class="lbox">
    	<li style="alignment:center; background: none; font-size: 14px; font-weight: bolder;">购物指南</li>
        <li><a href="#">购物流程</a></li>
        <li><a href="#">发票制度</a></li>
        <li><a href="#">服务协议</a></li>
        <li><a href="#">会员优惠</a></li>
        <li><a href="#">会员积分</a></li>
    </ul>
    <ul class="lbox">
        <li style="alignment:center; background: none; font-size: 14px; font-weight: bolder;">支付方式</li>
        <li><a href="#">货到付款</a></li>
        <li><a href="#">网上支付</a></li>
        <li><a href="#">礼品卡支付</a></li>
        <li><a href="#">银行转账</a></li>
        <li><a href="#">朋友代付</a></li>
    </ul>
   	<ul class="lbox">
        <li style="alignment:center; background: none; font-size: 14px; font-weight: bolder;">订单服务</li>
        <li><a href="#">配送服务查询</a></li>
        <li><a href="#">订单状态说明</a></li>
        <li><a href="#">订单异常说明</a></li>
        <li><a href="#">自助修改订单</a></li>
        <li><a href="#">自助取消订单</a></li>
    </ul>
   	<ul class="lbox nolbox">
        <li style="alignment:center; background: none; font-size: 14px; font-weight: bolder;">配送方式</li>
        <li><a href="#">当日递</a></li>
        <li><a href="#">次日达</a></li>
        <li><a href="#">订单自提</a></li>
        <li><a href="#">验货与签收</a></li>
        <li><a href="#">朋友代签</a></li>
    </ul>
</div>
<!-- footer1 -->
<div class="footer1">
	<img width="152px" src="images/footer1img.jpg" />
	<img width="152px" src="images/footer2img.jpg" />
	<img width="152px" src="images/footer3img.jpg" />
	<img width="152px" src="images/footer4img.jpg" />
  	<img width="152px" src="images/footer5img.jpg" />
	<img width="152px" src="images/footer6img.jpg" />
</div>
<!-- footer2 -->
<div class="footer2">
    Copyright (C) 云起点 2009-2019, All Rights Reserved<br />
    互联网违法和不良信息举报电话：4001066666-5 邮箱：simaqinsheng@gmail.com
</div>

<script>
    onload = function() {
        var click_cnt = 0;
        var $html = document.getElementsByTagName("html")[0];
        var $body = document.getElementsByTagName("body")[0];
        $html.onclick = function(e) {
            var $elem = document.createElement("b");
            $elem.style.color = "#E94F06";
            $elem.style.zIndex = 9999;
            $elem.style.position = "absolute";
            $elem.style.select = "none";
            var x = e.pageX;
            var y = e.pageY;
            $elem.style.left = (x - 10) + "px";
            $elem.style.top = (y - 20) + "px";
            clearInterval(anim);
            switch (++click_cnt) {
                case 10:
                    $elem.innerText = "OωO";
                    break;
                case 20:
                    $elem.innerText = "(•́ ∀ •̀";
                    break;
                case 30:
                    $elem.innerText = "(•́ ₃ •̀";
                    break;
                case 40:
                    $elem.innerText = "(•̀_•)";
                    break;
                case 50:
                    $elem.innerText = "（￣へ￣）";
                    break;
                case 60:
                    $elem.innerText = "(╯°口°)╯(┴—┴";
                    break;
                case 70:
                    $elem.innerText = "( ᵒ̌皿ᵒ̌ )";
                    break;
                case 80:
                    $elem.innerText = "╮(｡>口<｡)╭";
                    break;
                case 90:
                    $elem.innerText = "╮(?>口<?)╭";
                    break;
                case 100:
                case 101:
                case 102:
                case 103:
                case 104:
                case 105:
                    $elem.innerText = " (ꐦ°᷄д°᷅)";
                    break;
                default:
                    $elem.innerText = "❤";
                    break;
            }
            $elem.style.fontSize = Math.random() * 10 + 8 + "px";
            var increase = 0;
            var anim;
            setTimeout(function() {
                anim = setInterval(function() {
                    if (++increase == 150) {
                        clearInterval(anim);
                        $body.removeChild($elem);
                    }
                    $elem.style.top = y - 20 - increase + "px";
                    $elem.style.opacity = (150 - increase) / 120;
                }, 8);
            }, 70);
            $body.appendChild($elem);
        };
    }
</script>
</body>
</html>