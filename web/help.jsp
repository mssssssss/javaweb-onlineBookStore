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
    <title>帮助</title>
</head>
<body bgcolor="#add8e6">
<br>
<h2 style="color: #1A7CBC">使用说明:</h2>
<p style="font-size: 20px; color: #1A7CBC">
    1. 本网站是一个网上购书中心，在这里你可以买到任何你想要的图书。<br><br>
    2. 在提交订单之前，你需要先以会员的身份登录，如果没有账户，可以先进行注册，填写一些必要的个人信息。<br><br>
    3. 本网站支持微信支付，支付宝支付，银行卡支付，找朋友代付，货到付款等多种付款方式。付款成功后，可在订单查询中找到相应订单信息。<br><br>
    4. 付款成功后，用户可以自行选择是否开具发票。<br><br>
    5. 本网站具有完好的售后事宜，支持7天内无理由退换服务。<br>
</p>

<h2 style="color: #1A7CBC">交易条款：</h2>
<p style="font-size: 20px; color: #1A7CBC">
    客户在接受商品订购与送货的同时，有义务遵守以下交易条款<br><br>
    1. 订购的商品价格以您下订单时京东网上价格为准。<br><br>
    2. 请清楚准确地填写您的真实姓名、送货地址及联系方式。因如下情况造成订单延迟或无法配送等，我们将不承担责任：<br><br>
    A. 客户提供错误信息和不详细的地址；<br><br>
    B. 货物送达无人签收，由此造成的重复配送所产生的费用及相关的后果；<br><br>
    C. 不可抗力，例如：自然灾害、交通戒严、突发战争等。<br><br>
    3. 安全性：无论您是电话订购商品或是网络订购商品，我们会保证交易信息的安全，并由我们授权的员工处理您的订单。<br><br>
    4. 隐私权：我们尊重您的隐私权，在任何情况下，我们都不会将您的个人和订单信息出售或泄露给任何第三方（国家司法机关调取除外）。我们从网站上或电话中得到的所有客户信息仅用来处理您的相关订单。<br><br>
    5. 免责：如因不可抗力或其它京东无法控制的原因使京东销售系统崩溃或无法正常使用导致网上交易无法完成或丢失有关的信息、记录等，京东会尽可能合理地协助处理善后事宜，并努力使客户免受经济损失。<br><br>
    6. 客户监督：京东希望通过不懈努力，为客户提供最佳服务，京东在给客户提供服务的全过程中接受客户的监督。<br><br>
    7. 争议处理：如果客户与京东之间发生任何争议，可依据当时双方所认定的协议及相关法律进行解决。
</p>

<h2 style="color: #1A7CBC">我们承诺：</h2>
<p  style="font-size: 20px; color: #1A7CBC">
    1. 我们秉承质优价低、放心满意的销售理念为您服务。我们所出售的商品均为正品行货，与您亲临商场选购的商品一样享受相同的质量保证；<br><br>含有质量保证书的商品按照保证书的承诺执行，其它商品按国家有关规定执行。<br><br>
    2. 我们承诺在运输“保价费”上永久免费，在配送环节上承担保险费用，运输过程的风险一律由我们承担，<br><br>客户收到货物如果有损坏、遗失等情形，只要当场提出声明，并进行相关举证，我们将按照正常售后退换货程序予以先行处理。<br><br>
    3. 我们承诺通过我司提供的网上支付平台支付，为客户承担全额手续费，<br><br>但由于客户原因取消正常状态下的订单要求款项返还时，则由客户承担相关手续费；货物打包不收取任何包装费。
</p>
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
