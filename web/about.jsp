<%--
  Created by IntelliJ IDEA.
  User: 12247
  Date: 2019/6/5
  Time: 20:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>关于</title>
    <link href="background/css/bootstrap.css">
</head>
<body bgcolor="#add8e6">
<div align="center">
    <table  width="460px" style="font-size: 26px; color: #1A7CBC;">
        <tr><td>&nbsp;</td><td>&nbsp;</td></tr>
        <tr><td>&nbsp;</td><td>&nbsp;</td></tr>
        <tr><td>网站信息</td><td>&nbsp;</td></tr>
        <tr><td>网站名：</td><td>云起点</td></tr>
        <tr><td>建立时间：</td><td>2009-03-01</td></tr>
        <tr><td>联系客服：</td><td>13577832679</td></tr>
        <tr><td>举报电话：</td><td>400656115532</td></tr>
        <tr><td>&nbsp;</td><td>&nbsp;</td></tr>
        <tr><td>开发者信息</td><td>&nbsp;</td></tr>
        <tr><td>姓名：</td><td>宁志成&nbsp;&nbsp; 毛双双</td></tr>
        <tr><td>学校：</td><td>南昌大学</td></tr>
        <tr><td>班级：</td><td>软件工程177班</td></tr>
        <tr><td>学号：</td><td>8002117277   8002117254</td></tr>
    </table>
</div>
<%--点击空白页面出现特效--%>
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
                    $elem.innerText = "(๑•́ ∀ •̀๑)";
                    break;
                case 30:
                    $elem.innerText = "(๑•́ ₃ •̀๑)";
                    break;
                case 40:
                    $elem.innerText = "(๑•̀_•́๑)";
                    break;
                case 50:
                    $elem.innerText = "（￣へ￣）";
                    break;
                case 60:
                    $elem.innerText = "(╯°口°)╯(┴—┴";
                    break;
                case 70:
                    $elem.innerText = "૮( ᵒ̌皿ᵒ̌ )ა";
                    break;
                case 80:
                    $elem.innerText = "╮(｡>口<｡)╭";
                    break;
                case 90:
                    $elem.innerText = "( ง ᵒ̌皿ᵒ̌)ง⁼³₌₃";
                    break;
                case 100:
                case 101:
                case 102:
                case 103:
                case 104:
                case 105:
                    $elem.innerText = "(ꐦ°᷄д°᷅)";
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
