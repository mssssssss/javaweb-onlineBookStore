<%--�����ҳ--%>
<%@ page language="java" contentType="text/html; charset=gbk"%>
<%@page import="java.util.List"%>
<%@page import="com.bookstore.bean.BookInfo"%>
<%@page import="com.bookstore.bean.News"%>
<%@page import="com.bookstore.bean.BookType"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Set"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">--%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>�����</title>
<meta name="keywords" content="�ؼ���" />
<meta name="description" content="ҳ������" />
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
                ��ǰ�û����:<b>${sessionScope.customerInfo.custName}</b> ��ӭ���ʱ��̳ǣ�&nbsp;&nbsp;&nbsp;
            </c:when>
            <c:otherwise>
                ��ǰ�û����:�ο� ��¼�󷽿��µ�&nbsp;&nbsp;&nbsp;
            </c:otherwise>
        </c:choose>
   	<a  href="${pageContext.request.contextPath}/qtLogin.jsp">�û���¼</a>
   	<a  href="${pageContext.request.contextPath}/background/index.jsp">����Ա��½</a>
    </div>
	<div class="top1_2">
		<div class="top1_2_l">
        </div>
		<div class="top1_2_r">
        	<ul class="other">
            	<li>
	            	<a href="<%=request.getContextPath() %>/gouwuche.jsp">
                        <%--<a href="#">--%>
	            	<img src="images/car.jpg"/><br />���ﳵ</a>
            	</li>
				<li><a href="#"><img src="images/car.jpg"/><br />������ѯ</a></li>
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
        		<%@include file="leftBookType.jsp"%>
        	</div>
        </div>
        <div class="middle_left3">
        	<h3 class="paihtit">��������</h3>
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
      <%--�ֲ�ͼƬ--%>
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
	//��������
	for(var i = 0, n = st._count - 1; i <= n;){
		(nums[i] = $("idNum").appendChild(document.createElement("li"))).innerHTML = ++i;
	}
	
	forEach(nums, function(o, i){
		o.onmouseover = function(){ o.className = "on"; st.Auto = false; st.Run(i); };
		o.onmouseout = function(){ o.className = ""; st.Auto = true; st.Run(); };
	});
	
	//���ð�ť��ʽ
	st.onStart = function(){
		forEach(nums, function(o, i){ o.className = st.Index == i ? "on" : ""; });
	};
	st.Run();
</SCRIPT>
            </div>
        <%--��Ѷ���ŵ�չʾ--%>
         	<div class="middle_right1R">
            	<div class="middle_right1Rtitle"> </div>
                <div class="middle_right1Rcon">
                   <ul>
                		<%for(int i = 0; i < newsList.size(); i++){ 
                		News news = new News();
                		news = newsList.get(i);
                		%>
                    	<li><a style="font-family:����" href="<%=request.getContextPath() %>/ShowNewsServlet?id=<%=news.getNewsId() %>"><%=news.getNewTitle() %></a></li>
                    	<%} %>
   				   </ul>
            </div>
            <%--<div class="middle_right1Rimg">--%>
            	<%--<img src="images/middle_right1Rimg.jpg" />--%>
            <%--</div>--%>
        </div>
        <div class="middle_right2">
            	<div class="middle_right2Rtitle">������Ʒ <i>New book</i></div>
                <div class="middle_right2Rcon">
					<ul>
						<%for(int i = 0; i < sjbooks.size(); i++) { 
						BookInfo bookInfo = new BookInfo();
						bookInfo = sjbooks.get(i);
						%>
                        <li><a href="<%=request.getContextPath() %>/ShowBookInfoServlet?id=<%=bookInfo.getBookId() %>">
                        <img src="imgsx/<%=bookInfo.getSmallImg() %>" width="95" height = "180"/><br /><%=bookInfo.getBookName() %></a>
                        <br />
                        <span class="borline">�г��ۣ���<%=bookInfo.getPrice() %></span>
                        <br /><span>�̳Ǽۣ���<%=bookInfo.getHyprice() %></span>
                        <a href="<%=request.getContextPath() %>/ShowBookInfoServlet?id=<%=bookInfo.getBookId() %>">
                        <img src="<%=request.getContextPath()%>/images/btn3.gif" 
                        		width="90" height="25"/></a></li>
                        <%} %>
					</ul>                
            </div>           
        </div>
         <div class="middle_right2">
            	<div class="middle_right2Rtitle title2">������Ʒ  <i>hot book</i></div>
                <div class="middle_right2Rcon">
					<ul>
						<%for(int i = 0; i < rxbooks.size(); i++) { 
						BookInfo bookInfo = new BookInfo();
						bookInfo = rxbooks.get(i);
						%>
                        <li><a href="<%=request.getContextPath() %>/ShowBookInfoServlet?id=<%=bookInfo.getBookId() %>">
                        <img src="imgsx/<%=bookInfo.getSmallImg() %>" width="95" height = "180"/><br /><%=bookInfo.getBookName() %></a>
                        <br />
                        <span class="borline">�г��ۣ���<%=bookInfo.getPrice() %></span>
                        <br /><span>�̳Ǽۣ���<%=bookInfo.getHyprice() %></span>
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
                        <span class="borline">�г��ۣ���<%=bookInfo.getPrice() %></span>
                        <br /><span>�̳Ǽۣ���<%=bookInfo.getHyprice() %></span>
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
<div class="footer">
	<ul class="lbox">
    	<li style="alignment:center; background: none; font-size: 14px; font-weight: bolder;">����ָ��</li>
        <li><a href="#">��������</a></li>
        <li><a href="#">��Ʊ�ƶ�</a></li>
        <li><a href="#">����Э��</a></li>
        <li><a href="#">��Ա�Ż�</a></li>
        <li><a href="#">��Ա����</a></li>
    </ul>
    <ul class="lbox">
        <li style="alignment:center; background: none; font-size: 14px; font-weight: bolder;">֧����ʽ</li>
        <li><a href="#">��������</a></li>
        <li><a href="#">����֧��</a></li>
        <li><a href="#">��Ʒ��֧��</a></li>
        <li><a href="#">����ת��</a></li>
        <li><a href="#">���Ѵ���</a></li>
    </ul>
   	<ul class="lbox">
        <li style="alignment:center; background: none; font-size: 14px; font-weight: bolder;">��������</li>
        <li><a href="#">���ͷ����ѯ</a></li>
        <li><a href="#">����״̬˵��</a></li>
        <li><a href="#">�����쳣˵��</a></li>
        <li><a href="#">�����޸Ķ���</a></li>
        <li><a href="#">����ȡ������</a></li>
    </ul>
   	<ul class="lbox nolbox">
        <li style="alignment:center; background: none; font-size: 14px; font-weight: bolder;">���ͷ�ʽ</li>
        <li><a href="#">���յ�</a></li>
        <li><a href="#">���մ�</a></li>
        <li><a href="#">��������</a></li>
        <li><a href="#">�����ǩ��</a></li>
        <li><a href="#">���Ѵ�ǩ</a></li>
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
    Copyright (C) ����� 2009-2019, All Rights Reserved<br />
    ������Υ���Ͳ�����Ϣ�ٱ��绰��4001066666-5 ���䣺simaqinsheng@gmail.com
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
                    $elem.innerText = "O��O";
                    break;
                case 20:
                    $elem.innerText = "(??? ? ???)";
                    break;
                case 30:
                    $elem.innerText = "(??? ? ???)";
                    break;
                case 40:
                    $elem.innerText = "(???_???)";
                    break;
                case 50:
                    $elem.innerText = "�����أ���";
                    break;
                case 60:
                    $elem.innerText = "(�s��ڡ�)�s(�ء���";
                    break;
                case 70:
                    $elem.innerText = "?( ??��?? )?";
                    break;
                case 80:
                    $elem.innerText = "�r(?>��<?)�q";
                    break;
                case 90:
                    $elem.innerText = "( ? ??��??)?????";
                    break;
                case 100:
                case 101:
                case 102:
                case 103:
                case 104:
                case 105:
                    $elem.innerText = "(?��?�ա�?)";
                    break;
                default:
                    // $elem.innerText = "?";
                    $elem.innerText = "O��O";
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
    };
</script>
</body>
</html>
