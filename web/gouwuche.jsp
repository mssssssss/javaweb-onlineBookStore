<%@page language="java" contentType="text/html; charset=utf-8"%>
<%@page import="com.bookstore.servlet.shoppingCart.Gouwuche"%>
<%@page import="java.util.Collection"%>
<%@page import="com.bookstore.servlet.shoppingCart.GouwucheItem"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=1024" />
<title>我的购物袋</title>
<link rel="stylesheet" type="text/css" href="style/style.css" />
<link rel="stylesheet" href="style/public.css" type="text/css" />
<script type="text/javascript">
  function isDelete(bookName) {
  	return confirm("您确定要删除商品 " + bookName + " 吗？");
  }
  function updateGwcItemNum(bookId, num) {
  	if(isNaN(num)) {
  		alert("输入图书的数量必须是数字！");
  		return;
  	}
  	var a = parseInt(num);
  	if(a <= 0){
  		alert("输入的图示数量必须大于等于1！");
  		return;
  	}
  	location = "<%=request.getContextPath() %>/UpdateGwcItemNumServlet?id="+ bookId +"&num="+num;
  }
</script>
	<style type="text/css">
		a:hover{
			color:red;}
	</style>
</head>
<body>
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
   	<a href="${pageContext.request.contextPath}/qtLogin.jsp">用户登陆</a>
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
            	<li><a href="#"><img src="images/car.jpg"/><br />购物车</a></li>
				<li><a href="#"><img src="images/car.jpg"/><br />订单查询  </a></li>
				<li><a href="#"><img src="images/car.jpg"/><br />我的空间</a></li>
				<li><a href="http://book.jd.com/?cu=true&utm_source=baidu-search&utm_medium=cpc&utm_campaign=t_262767352_baidusearch&utm_term=16409889721_0_1139ce8fca7e4ebfb6cb34d7e9d98c17"><img src="images/car.jpg"/><br />购书服务 </a></li>
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
<div class="content">
    	  <div class="title1"></div>
        <!-- 购物袋 -->
        <dl id="myCartTitle">
        	<dt>我挑选的商品</dt>
        	<dd>现在 <a href="<%=request.getContextPath() %>/qtLogin.jsp">登录</a>，商品将永久保存到“我的购物袋”</dd></dl>
			<div class="clear"><img src="#" width="1" height="1"/></div>
			<div id="myCartTable">
		<table width="100%" border="0" cellspacing="0" cellpadding="5">
		  <tr>
			<th>商品名称</th>
			<th>单价（元）</th>
			<th>数量</th>
			<th>优惠</th>
			<th>小计（元）</th>
			<th>赠送积分</th>
			<th>操作</th>
		  </tr>
		  <%
		  Gouwuche gwc = (Gouwuche)session.getAttribute("gwc");
		  Collection<GouwucheItem> gouwucheItems =  gwc.getAllItems();
		  for(GouwucheItem gwcItem : gouwucheItems) {
		  %>
		  <tr>
				<td align="left" width="400">
					<div class="shpic"><img src="<%=request.getContextPath() %>/imgsx/<%=gwcItem.getSmallImg() %>" /></div>
					<span class="shname"><a href="<%=request.getContextPath() %>/ShowBookInfoServlet?id=<%=gwcItem.getBookId() %>"><%=gwcItem.getBookName() %></a><br />
				    <span class="fccc"> 精装 正品</span>
			    </td>
				<td align="center" width="130">售 价 ：<%=gwcItem.getHyprice() %><span class="fccc"><del> <br />
			    	市场价：<%=gwcItem.getPrice() %></del></span>
			    </td>
				<td align="center" width="120">
					<a title="减-" style="cursor:pointer" class="btn_minus_s"
						href="<%=request.getContextPath() %>/UpdateGwcItemNumServlet?id=<%=gwcItem.getBookId() %>&num=<%=gwcItem.getNum()-1 %>">-</a>  
					<input type="text" class="text_num" value="<%=gwcItem.getNum() %>" size="2" maxlength="2" autocomplete="off" 
						onchange="updateGwcItemNum(<%=gwcItem.getBookId() %>,this.value)"/>
					<a title="加+" style="cursor:pointer" class="btn_plus_s"
						href="<%=request.getContextPath() %>/UpdateGwcItemNumServlet?id=<%=gwcItem.getBookId() %>&num=<%=gwcItem.getNum()+1 %>">+</a>
				</td>
				<td align="center" width="50">
					¥<%=(gwcItem.getPrice()-gwcItem.getHyprice())* gwcItem.getNum() %>
				</td>
				<td align="center" width="60">¥<%=gwcItem.getHyprice() * gwcItem.getNum() %></td>
				<td align="center" width="30"><span class="cols col-6"><span>7</span></span></td>
				<td align="center" width="100">
					<span class="cols col-7">
					<a style="cursor:pointer" href="<%=request.getContextPath() %>/DeleteGwcItemServlet?id=<%=gwcItem.getBookId() %>"
						onclick="return isDelete('<%=gwcItem.getBookName() %>')" style="cursor:pointer">删除</a>
					</span>
				</td>
		  </tr>
		  <%} %>
		  <tr>
		  	<td colspan="7" align="right" class="zongj">
		            总价：¥<%=gwc.getOldPrices() %>元 -
                                    优惠：¥<%=gwc.getYhPrices() %>元 -
                                    商品总计(不含运费)：<span class="fred">¥<%=gwc.getHyPrices() %>元</span> 获得：2积分点</td>
		  </tr>
		  <tr><td colspan="7">
		  			<div class="left">
						<a class="btn_clear_cart"  href="<%=request.getContextPath() %>/InitIndexServlet"><img src="images/jxgw.png"/></a>
                    	<a  class="btn_clear_cart"
                    href="<%=request.getContextPath() %>/ClearGwcItemServlet"
                    	onclick="return confirm('您确定要清空购物车吗?');"><img src="images/qkgw.png"/></a>
                    </div>
					<div class="right" >
						<a href="<%=request.getContextPath() %>/InitOrderServlet" class="bg_cart btn_check_order">
						<img src="images/jies.png"/>
						</a>
					</div>
         </td></tr>
		</table>
		</div>
		<div id="interested">
			<h3>您可能感兴趣的宝贝&hellip;</h3>
				<a href="#" class="J_ClearBrowse clear" style="display: none;">清空</a>
			<div class="con">
				<ul class="tabs" id="menu3">
					<li onmouseover="settab(3,0)"  class="current "><a href="#"><span>最近收藏的</span></a></li>
					<li onmouseover="settab(3,1)"><a href="#"><span>最近浏览过的</span></a></li>
					<li onmouseover="settab(3,2)"><a href="#"><span>猜你喜欢的</span></a></li>
				</ul>
				<div id="main3">
					<ul class="pannel">
						<li class="pic" ><a href="#" class="list"><img src="images/pic1.jpg"/><br /><span  style="alignment: center">活着</span><br> <span  class="fred">￥10</span></a></li>
						<li class="pic"><a href="#" class="list"><img src="images/pic2.jpg"/><br /><span style="alignment: center">淡定的人生不寂寞</span><br> <span  class="fred">￥35</span></a> </li>
						<li class="pic"><a href="#" class="list"><img src="images/pic3.jpg"/><br /><span style="alignment: center">30年后，你拿什么养活自己</span><br> <span  class="fred">￥30</span></a></li>
						<li class="pic"><a href="#" class="list"><img src="images/pic4.jpg"/><br /><span style="alignment: center">百年孤独</span><br> <span  class="fred">￥99</span></a></li>
					</ul>
					<ul class="pannel">
						<li class="pic"><a href="#" class="list"><img src="images/pic5.jpg"/><br /><span style="alignment: center">你若安好，便是晴天</span> <br><span  class="fred">￥29</span></a></li>
				 		<li class="pic"><a href="#" class="list"><img src="images/pic6.jpg"/><br><br><br /><span style="alignment: center">人脉是设计出来的</span> <br><span  class="fred">￥39</span></a> </li>
						<li class="pic"><a href="#" class="list"><img src="images/pic7.jpg"/><br><br><br /><span style="alignment: center">红顶商人</span><br> <span  class="fred">￥49</span></a></li>
						<li class="pic"><a href="#" class="list"><img src="images/pic8.jpg"/><br><br><br /><span style="alignment: center">女人要为理想而奋斗</span><br> <span  class="fred">￥35</span></a></li>
					</ul>
	  			</div>
		  	</div>
		</div>
		<div class="clear"><img src="#" width="1" height="1"/></div>  	
</div>
<!-- footer -->
<div class="footer">
	<ul class="lbox">
    	<li><a href="#">顾客必读</a></li>
        <li><a href="#">订单状态</a></li>
    </ul>
    <ul class="lbox">
        <li><a href="#">会员积分</a></li>
        <li><a href="#">积分换购</a></li>
    </ul>
   	<ul class="lbox">
        <li><a href="#">商品退货</a></li>
        <li><a href="#">保修准则</a></li>
    </ul>
   	<ul class="lbox">
        <li><a href="#">购后事宜</a></li>
        <li><a href="#">包修包换</a></li>
    </ul>
</div>
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
		互联网违法和不良信息举报电话：4001066666-5 邮箱：service@cs.yunqidian.com
	</div>
</body>
</html>

