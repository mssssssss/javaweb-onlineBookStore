<%--用户登陆系统的界面--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">--%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />

<title>网站前台登陆</title>
<link href="css/front/coupon_register.css" rel="stylesheet" type="text/css" />
<link href="css/front/common.css" rel="stylesheet" type="text/css" />
<link href="css/front/css.css" rel="stylesheet" type="text/css" />

    <%--<link href="background/css/bootstrap.css" rel="stylesheet" type="text/css" />--%>
<script language="javascript" src="js/util.js"></script>
<script language="javascript" type="text/javascript">
	function trim(str){
		return str.replace(/(^\s*)|(\s*$)/g, "");
	}
	
	var valiateUsrFlag=true;
	var valiatePwdFlag=true;
	function checkFormSuccess(){
	if(valiateUsrFlag&&valiatePwdFlag){
		var errorMsg = document.getElementById("errorMsg");
		errorMsg.innerHTML='';
        errorMsg.className='color_1';
	   }
	}
	
	function checkUserName(){
		var result=true;
		var errorMsg = document.getElementById("errorMsg");
		var username = document.getElementById("username");
		if(trim(username.value).length==0){
			errorMsg.innerHTML='用户名为必填项，请输入您的用户名';
	        errorMsg.className='n_zc_red';
			result=false;
			valiateUsrFlag=false;
		}else{
			valiateUsrFlag=true;	
		}
		checkFormSuccess();
		return result;		
	}
			
	function checkPassword(){
		var result=true;
		var errorMsg = document.getElementById("errorMsg");
		var password = document.getElementById("password");
		if(trim(password.value).length==0&&valiateUsrFlag){//如果用户名或密码或验证码三者中有两个或者两个以上的出现了错误的情况则提示信息按照用户名、密码、验证码的优先级显示相应的提示文字
			errorMsg.innerHTML='密码为必填项，请输入您的密码';
	        errorMsg.className='n_zc_red';
			result=false;
			valiatePwdFlag=false;
		}else if(trim(password.value).length < 3&&valiateUsrFlag){
			errorMsg.innerHTML='您输入的密码有误，请重新输入';
	        errorMsg.className='n_zc_red';
			result=false;
			valiatePwdFlag=false;
		}else if(trim(password.value).length > 16&&valiateUsrFlag){
			errorMsg.innerHTML='您输入的密码有误，请重新输入';
	        errorMsg.className='n_zc_red';
			result=false;
			valiatePwdFlag=false;
		}else{
			valiatePwdFlag=true;
		}
		checkFormSuccess();
		return result;
	}

	//校验全部字段
    function checkAll(){
    	var result = true;
    	if(!checkUserName())
    		result = false;
   		if(!checkPassword())
    		result = false;
    	return result;
    }
	//提交
	function check(form){
		if(checkAll()){
			form.submit();
		}
    }
</script>
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
		<%--<a href="<%=request.getContextPath()%>/QtLoginServlet" class="color_56"></a> <span class="color_55">|</span>--%>
		<%--<a href="http://book.jd.com/?cu=true&utm_source=baidu-search&utm_medium=cpc&utm_campaign=t_262767352_baidusearch&utm_term=16409889721_0_1139ce8fca7e4ebfb6cb34d7e9d98c17" class="color_56"></a> <span class="color_55">|</span>--%>
		<%--<a href="http://book.jd.com/?cu=true&utm_source=baidu-search&utm_medium=cpc&utm_campaign=t_262767352_baidusearch&utm_term=16409889721_0_1139ce8fca7e4ebfb6cb34d7e9d98c17" class="color_56"></a>--%>
		</div>

		<div class="n_dl_l"></div>
		<div class="n_dl_l_1"></div>
	  </div>
	  <form action="<%=request.getContextPath()%>/QtLoginServlet" method="post">
	  <%--<input name="source" type="hidden" value="http://www.egou.com/" />--%>
		<div align="center">
			<div align="center">
				<div ><img src="images/couponregister/i_320.jpg" align="center"> </div>
				<div   style="margin:0; padding:10px 40px 0 43px; width:262px;  border-left:1px solid #BBE3FF; border-right:1px solid #BBE3FF;">
				  <table align="center" width="262" border="0" cellspacing="0" cellpadding="0">
                    <%--<tr>--%>
                      <%--&lt;%&ndash;<td height="30" colspan="4"><span class="color_1" id="errorMsg"></span></td>&ndash;%&gt;--%>
                        <%--<td>&nbsp;</td>--%>
                    <%--</tr>--%>
                    <tr>
                      <td width="120" height="40" style="font-size: 15px" >用户名:</td>
                      <td height="35" colspan="3">
                      <input type="text" name="username" id="username"  onblur="checkUserName()" tabindex="1" class="input_35" />
                      <script language="javascript" type="text/javascript">
			              var msg='';
			              if(""!=msg){
				              document.getElementById("errorMsg").innerHTML=msg;
				              document.getElementById("errorMsg").className='n_zc_red';
			              }
		              </script>
                      </td>
                    </tr>
                    <tr>
                      <td height="40" style="font-size: 15px">密&nbsp;&nbsp;码：</td>
                      <td height="35" colspan="3"><input type="password" name="password" id="password"  onblur="checkPassword()" tabindex="2" class="input_35"  />
                      <script language="javascript" type="text/javascript">
			              msg='';
			              if(""!=msg){
				              document.getElementById("errorMsg").innerHTML=msg;
				              document.getElementById("errorMsg").className='n_zc_red';
			              }
		              </script>
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
                    <%--<tr>--%>
                      <%--<td height="25" colspan="4" align="center">--%>
                      <%--<a href="#" class="color_28">已注册会员手机验证可免费领取优惠券，GO!</a></td>--%>
                    <%--</tr>--%>
                  </table>
				</div>
				<div class="n_dl_c_l_c"></div>
			</div>
			<%--<div class="n_dl_c_r">--%>
				<%--<div class="n_dl_c_r_a"></div>--%>
				<%--<div class="n_dl_c_r_b">--%>
				  <%--<table width="248" border="0" cellspacing="0" cellpadding="0">--%>
                    <%--<tr>--%>
                      <%--<td width="46" height="40" align="center"><img src="images/couponregister/icon_116.gif" width="20" height="20" /></td>--%>
                      <%--<td width="202" height="40" class="color_58">免费注册即刻享受购物返点!</td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                      <%--<td height="40" align="center"><img src="images/couponregister/icon_117.gif" width="23" height="20" /></td>--%>
                      <%--<td height="40" class="color_58">不购物也能拿现金!</td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                      <%--<td height="40" align="center"><img src="images/couponregister/icon_118.gif" width="20" height="20" /></td>--%>
                      <%--<td height="40" class="color_58">推荐会员，奖励现金!</td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                      <%--<td height="40" align="center"><img src="images/couponregister/icon_119.gif" width="24" height="21" /></td>--%>
                      <%--<td height="40" class="color_58">不间断的送优惠券!</td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                      <%--<td height="40" align="center"><img src="images/couponregister/icon_120.gif" width="18" height="22" /></td>--%>
                      <%--<td height="40" class="color_58">易购会员独享优惠活动!</td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                      <%--<td height="33" colspan="4" align="center" style="color: red;">--%>
                      <%--在易购您可以畅读全场!</td>--%>
                    <%--</tr>--%>
                  <%--</table>--%>
				<%--</div>--%>
				<%--<div class="n_dl_c_r_c"></div>--%>
			<%--</div>--%>
	  	</div>
	 </form>
			
<div class="Bottom">
	<div class="Bottom_1" style="margin-top:20px"></div>
		<div class="Bottom_2">
		  <table width="950" cellspacing="0" cellpadding="0">
			<tr>
			  <td colspan="3" align="center"><a href="http://book.jd.com/?cu=true&utm_source=baidu-search&utm_medium=cpc&utm_campaign=t_262767352_baidusearch&utm_term=16409889721_0_1139ce8fca7e4ebfb6cb34d7e9d98c17" target="_blank" class="color">关于说明</a> | <a href="#" target="_blank" class="color">媒体报道</a> | <a href="#"  class="color">网上购物</a> | <a href="#" target="_blank" class="color">广告合作</a> | <a href="#" target="_blank" class="color">建议疑问</a> | <a href="#" target="_blank" class="color">网站帮助</a> | <a href="#" target="_blank" class="color">网站地图</a> | <a href="#" target="_blank" class="color">友情链接</a> |
	   			<a href="http://book.jd.com/?cu=true&utm_source=baidu-search&utm_medium=cpc&utm_campaign=t_262767352_baidusearch&utm_term=16409889721_0_1139ce8fca7e4ebfb6cb34d7e9d98c17" target="_blank" class="color">联系我们</a>
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

 

 