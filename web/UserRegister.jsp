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
    <link type="text/css" rel="stylesheet" href="background/css/bootstrap.css">
    <style type="text/css">
        td{padding:10px }
    </style>
</head>
<body style="background-color: #add8e6">
<%--<script language="JavaScript" src="js/clickFunction.js"></script>--%>

<p>&nbsp;</p>
<p align="center" style=" font-size: 25px;">新增用户基本信息</p>
<form action="UserRegistServlet" method="post" >
    <table width="400px"  align="center" style="font-size: 20px;">
        <tr>
            <td align="right" >用户名：</td>
            <td ><input type="text" name="custName" class="form-control"></td>
        </tr>
        <tr>
            <td align="right">密码：</td>
            <td><input type="text" name="pwd" class="form-control"></td>
        </tr>
        <tr>
            <td align="right">邮箱：</td>
            <td><input type="text" name="email" class="form-control"></td>
        </tr>
        <tr>
            <td align="right">电话：</td>
            <td><input type="text" name="tel" class="form-control"></td>
        </tr>
        <tr>
            <td align="right">地址：</td>
            <td><input type="text" name="address" class="form-control"></td>
        </tr>
        <tr>
            <td align="right">性别：</td>
            <td><input type="text" name="sex" class="form-control">（0代表男，1代表女）</td>
        </tr>
        <tr>
            <td align="right">年龄：</td>
            <td ><input type="text" name="age" class="form-control" ></td>
        </tr>

        <tr>
            <td align="right">qq号：</td>
            <td><input type="text" name="qq" class="form-control"></td>
        </tr>
        <tr>
            <td align="right">验证码:</td>
            <td align="right"><input type="text" name="yzm" class="form-control"><img src="VerificationServlet" alt=""></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td align="right"><input type="submit" value="提交" class="btn btn-primary"/>&nbsp;&nbsp;&nbsp;<div style="float: right;" align="right"><input type="reset" value="重置" class="btn btn-danger"/></div></td>
        </tr>
    </table>
</form>
<script>
    onload = function() {
        var click_cnt = 0;
        var $html = document.getElementsByTagName("html")[0];
        var $body = document.getElementsByTagName("body")[0];
        $html.onclick = function(e) {
            var $elem = document.createElement("b");
            // $elem.style.color = "#E94F06";
            $elem.style.color = "#1A7CBC";
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
    };
</script>

</body>

</html>