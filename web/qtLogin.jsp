<%--用户登陆系统的界面--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">--%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>网站前台登陆</title>
<link href="css/front/coupon_register.css" rel="stylesheet" type="text/css" />
<link href="css/front/common.css" rel="stylesheet" type="text/css" />
<link href="css/front/css.css" rel="stylesheet" type="text/css" />

<script language="javascript" src="js/util.js"></script>
    <style>
        a:hover{color: red;}
    </style>
</head>

<body>
<div class="full">
  <div class="t_Top">
	  	<div align="center" class="divcss5" style=" font-size:40px; margin-top:20px">网上图书商城前台登录</div>
      <br/>
		<div class="n_dl_r">
		</div>
		<div class="n_dl_l"></div>
		<div class="n_dl_l_1"></div>
	  </div>
	  <form action="<%=request.getContextPath()%>/QtLoginServlet" method="post">
		<div align="center">
			<div align="center">
				<div ><img src="images/i_320.jpg" align="center"> </div>
				<div   style="margin:0; padding:10px 40px 0 43px; width:262px;  border-left:1px solid #BBE3FF; border-right:1px solid #BBE3FF;">
				  <table align="center" width="262" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="120" height="40" style="font-size: 15px" >用户名:</td>
                      <td height="35" colspan="3">
                      <input type="text" name="username" id="username"  tabindex="1" class="input_35" />
                      </td>
                    </tr>
                    <tr>
                      <td height="40" style="font-size: 15px">密&nbsp;&nbsp;码：</td>
                      <td height="35" colspan="3"><input type="password" name="password" id="password"  tabindex="2" class="input_35"  />

                      </td>
                    </tr>
                    <tr>
                      <td height="25">&nbsp;</td>
                      <td height="25" colspan="3"></td>
                    </tr>
                    <tr>
                      <td height="25">&nbsp;</td>
                      <td height="25" colspan="3"><input type="checkbox" name="memorize" value="memorize" tabindex="4" />
                     	 记住我&nbsp;&nbsp; <a href="#" class="color_57">忘记密码</a></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                      <td height="55" colspan="2" align="right">
                      <input style="background-color: #1A7CBC;border-radius:4px; width: 70px; height:30px; color: white; alignment: left" type="submit" name="Submit" value="登 录"  tabindex="5" onclick="check(form)" /></td>
                        <td colspan="2" align="right"><a href="UserRegister.jsp"><input style="background-color: #1A7CBC;border-radius:4px; width: 70px; height:30px; color: white;" type="button" name="Register" value="注 册"  tabindex="5" /></a></td>
                    </tr>

                  </table>
				</div>
				<div class="n_dl_c_l_c"></div>
			</div>
	  	</div>
	 </form>

<div class="Bottom">
	<div class="Bottom_1" style="margin-top:20px"></div>
		<div class="Bottom_2">
		  <table width="950" cellspacing="0" cellpadding="0">
			<tr>
			  <td colspan="3" align="center">
                  <a href="#" target="_blank" class="color">关于说明</a> | <a href="#" target="_blank" class="color">媒体报道</a> | <a href="#"  class="color">网上购物</a> | <a href="#" target="_blank" class="color">广告合作</a> | <a href="#" target="_blank" class="color">建议疑问</a> | <a href="#" target="_blank" class="color">网站帮助</a> | <a href="#" target="_blank" class="color">网站地图</a> | <a href="#" target="_blank" class="color">友情链接</a> |
	   			<a href="#" target="_blank" class="color">联系我们</a>
	   		  </td>
			</tr>
			<tr>
			  <td width="250"></td>
			  <td width="389" align="center"><span style="color:#666666"> Copyright &copy; 云起点 2009-2019, All Rights Reserved<br />
				<a  style="text-decoration: none;" href="#" >云起点  |</a>
                  <a style="text-decoration: none;"href="#">营业执照  |</a><a style="text-decoration: none;"href="#" > 京ICP证070359号</a> </span></td>
			 	<td width="309" height="60" align="left" valign="middle"></td>
			</tr>
		  </table>
 	</div>
</div>
</div>

</body>
</html>

 

 