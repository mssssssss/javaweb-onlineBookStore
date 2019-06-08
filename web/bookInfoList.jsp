<%--所有的书籍信息展示--%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<style type="text/css">
		a:hover{
			color:red;
		}
	</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>云起点</title>
<meta name="keywords" content="关键字" />
<meta name="description" content="页面描述" />
<link rel="stylesheet" href="style/public.css" type="text/css" />
<link rel="stylesheet" href="style/index.css" type="text/css" />
<script type="text/javascript">
    	function gotoNowPage(nowPage) {
    		if(isNaN(nowPage)) {
    			alert("请输入整型数值！");
    			return;
    		}
    		if(nowPage <= 0 || nowPage > ${requestScope.pageCount}) {
    			alert("请输入页码范围内的数值！");
    			return;
    		}
    		location = "${pageContext.request.contextPath}/ShowBookListByTypeId?typeId=${param.typeId}&nowPage="+nowPage;
    	}
</script>
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
            	<li><a href="${pageContext.request.contextPath}/gouwuche.jsp"><img src="images/car.jpg"/><br />购物车</a></li>
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
            <%@include file="leftBookType.jsp"%>
            </div>
            <div class="zzzz"> </div>
        </div>
        <div class="middle_left3">
        	<h3 class="paihtit">最新排行</h3>
        	<c:forEach var="zxbooks" items="${requestScope.rxbooks}" begin="0" end="9">
        		<a href="${pageContext.request.contextPath}/ShowBookInfoServlet?id=${zxbooks.bookId}">${zxbooks.bookName}</a>
        	</c:forEach>
        </div> 
    </div>
    <div class="middle_right">
      <div class="middle_right6tit">您当前的位置：网站首页   产品列表页</div>
		 <div class="middle_right6con">
            <div class="warpbor">
            <c:forEach var="books" items="${requestScope.bookInfos}">
            	<div class="middle_right6con">
              	<div class="warpbor">
                <div class="leftshop"><a href="${pageContext.request.contextPath}/ShowBookInfoServlet?id=${books.bookId}">
                <img src="${pageContext.request.contextPath}/imgsx/${books.smallImg}" width="98" height="160"/></a></div>
                <%--<div class="righttext"><h3>目送：${books.author}</h3><p/> --%>
					<div class="righttext"><h3>${books.bookName}:${books.author}</h3><p/>
       				 <span class="fontcc">(50629条评论)</span><br />
       				  ${books.author}著/${books.pbdate}<br />
       				  ${books.context}
     			   <span class="xiangx">${books.hyprice}<span class="textde">${books.price}</span> 折扣：${books.hyprice / books.price}折 
     			   <a href="<%=request.getContextPath() %>/AddGwcItemServlet?id=${books.bookId}"><img src="images/btn_buy.gif"/></a>
     			   <a href="#"><img src="images/btn_keep.gif"/></a></span>
     		    </div>
       		  </div>
  			</div>
            </c:forEach>
 		    </div>
  			<div align="center">
			共${requestScope.pageCount}页
  			第${requestScope.nowPage}页
  			<c:if test="${requestScope.nowPage == 1}" var="result">
  				第一页 上一页
  			</c:if>
  			<c:if test="${!result}">
  				<a href="${pageContext.request.contextPath}/ShowBookListByTypeId?typeId=${param.typeId}&nowPage=1">第一页</a>
  				<a href="<%=request.getContextPath()%>/ShowBookListByTypeId?typeId=${param.typeId}&nowPage=${requestScope.nowPage-1}">上一页</a>
  			</c:if>
  			<c:if test="${requestScope.nowPage == requestScope.pageCount}" var="result">
  				下一页 最后页
  			</c:if>
  			<c:if test="${!result}">
  				<a href="${pageContext.request.contextPath}/ShowBookListByTypeId?typeId=${param.typeId}&nowPage=${requestScope.nowPage+1}">下一页</a>
  				<a href="${pageContext.request.contextPath}/ShowBookListByTypeId?typeId=${param.typeId}&nowPage=${requestScope.pageCount}">最后页</a>	
  			</c:if>
  			<select onchange="gotoNowPage(this.value)">
  				<c:forEach begin="1" end="${requestScope.pageCount}" varStatus="status">
  					<option value="${status.count}"
  						<c:if test="${requestScope.nowPage == status.count}">
  							selected;
  						</c:if>
  		 			>第${status.count}页</option>
  				</c:forEach>
  		 	</select>
  		 	第
  		 	<input size="2" value="${requestScope.nowPage}" onchange="gotoNowPage(this.value)"/>
  		 	页	
		</div>
		<br />
	</div>
</div>
</div>
<!-- footer2 -->
<div class="footer3">
	<div class="footer3_in">
	<a href="http://product.dangdang.com/23690437.html#ddclick?act=click&pos=23690437_0_1_p&cat=01.38.07.00.00.00&key=&qinfo=&pinfo=7023_1_60&minfo=&ninfo=&custid=&permid=20160414103850170642707113084209851&ref=&rcount=&type=&t=1460601593000&searchapi_version=test_new">公司简介</a><span>|</span><a href="#">免责条款</a><span>|</span><a href="#">隐私保护</a><span>|</span><a href="#">咨询热点</a><span>|</span><a href="#">合作招募</a><span>|</span><a href="#">配送方式</a><span>|</span><a href="#">联系我们</a>
    </div>
    <div class="footer2">
        Copyright (C) 云起点 2009-2019, All Rights Reserve<br />
    电话:029-62966051 87811277 传真：029-62966051 陕ICP备1109231号
    </div>
</div>
</body>
</html>
