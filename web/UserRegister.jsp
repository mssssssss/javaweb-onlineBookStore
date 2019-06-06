<%--
  Created by IntelliJ IDEA.
  User: 12247
  Date: 2019/6/5
  Time: 20:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册界面</title>
    <link type="text/css" rel="stylesheet" src="background/css/bootstrap.css">
</head>
<body>
<form action="UserRegistServlet" method="post" class="form-control">
    <table align="center" class="table">
        <caption>新增用户基本信息</caption>
        <tr>
            <td>用户名称：</td>
            <td><input type="text" name="custName"></td>
        </tr>
        <tr>
            <td>用户密码：</td>
            <td><input type="text" name="pwd"></td>
        </tr>
        <tr>
            <td>用户邮箱：</td>
            <td><input type="text" name="email"></td>
        </tr>
        <tr>
            <td>用户联系电话：</td>
            <td><input type="text" name="tel"></td>
        </tr>
        <tr>
            <td>用户地址：</td>
            <td><input type="text" name="address"></td>
        </tr>
        <tr>
            <td>用户性别：</td>
            <td><input type="text" name="sex"></td>
        </tr>
        <tr>
            <td>用户年龄：</td>
            <td><input type="text" name="age"></td>
        </tr>

        <tr>
            <td>用户qq号码：</td>
            <td><input type="text" name="qq"></td>
        </tr>
        <tr>
            <td><input type="submit" value="提交" class="btn-success"/></td>
            <td><input type="reset" value="重置" class="btn-default"/></td>
        </tr>
    </table>
</form>
</body>
</html>
