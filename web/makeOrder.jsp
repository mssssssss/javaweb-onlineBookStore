<%--用户订单信息显示界面--%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--<!DOCTYPE html PUBLIC "-//W3C//DTD XhTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">--%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-cn">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<meta name="viewport" content="width=1024" />
<title>我的购物车</title>
<link rel="stylesheet" type="text/css" href="style/style.css" />
<link rel="stylesheet" type="text/css" href="style/orderInfo.css" />
<link rel="stylesheet" href="style/public.css" type="text/css" />
	<style type="text/css">
		a:hover{color: red;}
	</style>
</head>

<body>
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

		</ul>
        </div>
		<div class="top1_2_r">
        	<ul class="other">
            	<li>
	            	<a href="<%=request.getContextPath() %>/gouwuche.jsp">
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
<form action="${pageContext.request.contextPath}/MakeOrderServlet">
<div class="content" style="margin-top:-90px; width:1310px">
    	<div class="title2"></div>
        <!-- 购物袋 -->
		<dl id="myCartTitle">
        	<dt>确认订单信息</dt>
        	<dd><a href="#" style="margin-right:-310px">管理收货地址</a></dd> 
		 </dl>
			<div class="clear"><img src="#" width="1" height="1"></div>
		 <div class="address"> 
				<div id=part_consignee>
				<div class=o_write>
				<h1>收货人信息&nbsp;
                  <span style="DISPLAY: none"><a style="COLOR: #ff6600" onclick=addNewAddress(this); href="javascript:void(0)">[创建一个新地址]</a></span> 
                </h1>
				<div class=middle>
				<div id=addressListPanel></div>
				<div id=consignee_addr>
				<TABLE border=0 cellSpacing=0 width="100%">
				  <TBODY>
				  <TR>
					<TD vAlign="middle" width=85 align=right><FONT color=red>*</FONT>收货人姓名：</TD>
					<TD vAlign="middle" align=left>
					<INPUT value="${sessionScope.customerInfo.custName}"
					name="customerName" class=txt maxLength=20 type=text>&nbsp; </TD>
			     </TR>
				 
				  <TR>
					<TD vAlign="middle" align=right><FONT color=red>*</FONT>地　　址：</TD>
					<TD vAlign="middle" align=left>
					<INPUT value="${sessionScope.customerDetailInfo.address}"
					  style="WIDTh: 327px;" id=consignee_address class=txt 
					  name="address" maxLength=50 type=text>&nbsp; </TD></TR>
				  <TR>
					<TD vAlign="middle" align=right><FONT color=red>*</FONT>电话：</TD>
					<TD vAlign="middle" align=left>
					<INPUT value="${sessionScope.customerDetailInfo.tel}"
					  id=consignee_message class=txt name="tel"> &nbsp;<FONT 
					  color=#000000>用于接收发货通知短信及送货前确认</FONT> </TD>
				 </TR>
				 <TR>
					<TD vAlign="middle" align=right>备注：</TD>
					<TD vAlign="middle" align=left>
					<INPUT value="" name="context"
					  id="consignee_message" class="txt" name="tel"> </TD>
				 </TR>
				  <TR>
					<TD valign="middle" align="right">电子邮件：</TD>
					<TD valign="middle" align="left">
					<INPUT value="${sessionScope.customerInfo.email}"
					  id=consignee_email class=txt type=text> &nbsp;<FONT 
					  color=#000000>用来接收订单提醒邮件，便于您及时了解订单状态</FONT> </TD>
				  </TR>
				  </TBODY></TABLE></div></div>
				</div></div>
			<div id=part_payTypeAndShipType>

<div id=part_invoice>

<div id=part_cart></div>
</div>
	    <dl id="myCartTitle">
        	<dt>确认挑选的商品</dt>
        	<dd>”</dd>        
	    </dl>
		<div class="clear"><img src="#" width="1" height="1"></div>
		<div id="myCartTable">
		<table width="100%" border="0" cellspacing="" cellpadding="5">
		  <tr>
		  	<th>商品图片</th>
			<th>商品名称</th>
			<th>单价（元）</th>
			<th>数量</th>
			<th>优惠</th>
			<th>小计（元）</th>
			<th>赠送积分</th>
			<th>操作</th>
		  </tr>
		  <c:forEach var="item" items="${sessionScope.gwc.allItems}">
			  <tr>
				<td align="center" width="60">
					<img src="${pageContext.request.contextPath}/imgsx/${item.smallImg}" />
			    </td>
			    <td align="center" width="60">
					<a href="${pageContext.request.contextPath}/ShowBookInfoServlet?id=${item.bookId}">${item.bookName}</a>
			    </td>
				<td align="center" width="80">
					售 价 ：${item.hyprice}
					<span class="fccc"><del> <br />
					市场价：${item.price} 
					</del></span>
				</td>
				<td align="center" width="70">${item.num}</td>
				<td align="center" width="50">${(item.price-item.hyprice)*item.num}</td>
				<td align="center" width="60">${item.hyprice*item.num}</td>
				<td align="center" width="30"><span>7</span></td>
				<td align="center" width="100">
					<span class="cols col-7"><a href="#" style="cursor:pointer">加入收藏</a></span>
				</td>
			  </tr>
		  </c:forEach>
		  <tr><td colspan="8" align="right" class="zongj">
		      总价：${sessionScope.gwc.oldPrices}元 -
                              优惠：${sessionScope.gwc.yhPrices}元
            = 商品总计(不含运费)：<span class="fred">${sessionScope.gwc.hyPrices}元</span>  获得：0 积分点</td>
		  </tr>
		  <tr><td colspan="8">
		    <div class="left">
		       <a class="btn_clear_cart" href="${pageContext.request.contextPath}/InitIndexServlet"><img src="images/jxgw.png"></a>
               <a class="btn_clear_cart" href="${pageContext.request.contextPath}/ClearGwcItemServlet" onclick="return confirm('您确定要清空购物车吗?');"><img src="images/qkgw.png"></a>
            </div>
				<div class="right" >
					<input type="image" src="images/tjdd.png">
				</div>
         </td></tr>
		</table>
		</div>
</div>
<div class="footer2" style="margin-left:130px">
版权所有：ilovemss.blog.csdn.net<br/>
电话:029-62966051 87811277 传真：029-62966051 陕ICP备1109231号
</div>
</form>
</body>
</html>

