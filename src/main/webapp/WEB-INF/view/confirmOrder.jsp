<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Language" content="zh-cn">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="description" content="巨匠电子商务门户">
    <title>巨匠电子商务门户</title>
    <LINK href="../../css/Gjun.css" rel=stylesheet>
    <script language="JavaScript" src="../../js/Gjun.js"></script>
</head>
<body onLoad="MM_preloadImages('../images/index_on.gif','../images/reg_on.gif','../images/order_on.gif','../images/top/topxmas/jp_on.gif','../images/top/topxmas/download_on.gif','../images/top/topxmas/bbs_on.gif','../images/top/topxmas/designwz_on.gif')"
      topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0">
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="table2">
    <tr>
        <td align="left" width="7%" background="../../images/top_bg.gif"><img src="../../images/logo.jpg" width="162"
                                                                              height="36"></td>
        <td width="62%" background="../../images/top_bg.gif">　</td>
        <td width="31%" background="../../images/top_bg.gif" align="right">
            <img src="../../images/top_r.gif" width="352" height="58" border="0"></td>
    </tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td background="../../images/dh_bg.gif" align="left" height="12">
            <table width="100" border="0" cellspacing="0" cellpadding="0" align="center">
                <tr>
                    <td width="5%">　</td>
                    <td width="10%"><a href="../index.html" onMouseOut="MM_swapImgRestore()"
                                       onMouseOver="MM_swapImage('Image1','','../images/index_on.gif',1)">
                        <img name="Image1" border="0" src="../../images/index.gif" width="90" height="36"></a></td>
                    <td width="10%"><a href="../../user/userinfo.html" onMouseOut="MM_swapImgRestore()"
                                       onMouseOver="MM_swapImage('Image2','','../images/reg_on.gif',1)">
                        <img name="Image2" border="0" src="../../images/reg.gif" width="92" height="36"></a></td>
                    <td width="10%"><a href="../../shopcart.html" onMouseOut="MM_swapImgRestore()"
                                       onMouseOver="MM_swapImage('Image4','','../images/carts_on.gif',1)">
                        <img name="Image4" border="0" src="../../images/cart.gif" width="92" height="36"></a></td>
                    <td width="10%"><a href="../../user/order.html" onMouseOut="MM_swapImgRestore()"
                                       onMouseOver="MM_swapImage('Image5','','../images/order_on.gif',1)">
                        <img name="Image5" border="0" src="../../images/order.gif" width="92" height="36"></a></td>
                    <td width="10%"><a href="../index.html" onMouseOut="MM_swapImgRestore()"
                                       onMouseOver="MM_swapImage('Image6','','../images/exit_on.gif',1)">
                        <img name="Image6" border="0" src="../../images/exit.gif" width="92" height="36"></a></td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<table cellspacing="1" cellpadding="3" align="center" border="0" width="98%">
    <tr>
        <td width="65%"><BR>
            >> 欢迎访问 <b>巨匠电子商务门户</b></td>
        <td width="35%" align="right">

        </td>
    </tr>
</table>


<!--文件体开始-->

<table cellspacing=1 cellpadding=3 align=center class=tableBorder2>
    <tr>
        <td height=25 valign=middle>
            <img src="../../images/Forum_nav.gif" align="absmiddle">
            <a href=index.jsp>巨匠电子商务门户</a> →
            <img border="0" src="../../images/dog.gif" width="19" height="18">
            确认定单
        </td>
    </tr>
</table>
<br>

<form name="order" method="post" action="../adm/saveOrderAction.do"/>
<table cellpadding="3" cellspacing="1" align="center" class="tableborder1" id="table1">
    <tr>
        <td valign="middle" colspan="2" align="center" height="25" background="../../images/bg2.gif">
            <font color="#ffffff"><b>用户信息</b></font><input type="button" value="修改"
                                                           onclick="javascript:window.location='userinfo.jsp';"></td>
    </tr>
    <tr>
        <td width="40%" class="tablebody2" align="right"><b>用户名</b>：</td>
        <td width="60%" class="tablebody1">中午</td>
    </tr>
    <tr>
        <td class="tablebody2" align="right"><b>联系地址</b>：</td>
        <td class="tablebody1">上海</td>
    </tr>
    <tr>
        <td class="tablebody2" align="right"><b>邮编</b>：</td>
        <td class="tablebody1">200001</td>
    </tr>
    <tr>
        <td class="tablebody2" align="right"><b>家庭电话</b>：</td>
        <td class="tablebody1">123456</td>
    </tr>
    <tr>
        <td class="tablebody2" align="right"><b>办公室电话</b>：</td>
        <td class="tablebody1">654321</td>
    </tr>
    <tr>
        <td class="tablebody2" align="right"><b>手机</b>：</td>
        <td class="tablebody1">12345678900</td>
    </tr>
    <tr>
        <td class="tablebody2" align="right"><b>Email地址</b>：</td>
        <td class="tablebody1">b1b@126.coms</td>
    </tr>
</table>
<br>
<!--文件尾开始-->
<table cellpadding="3" cellspacing="1" align="center" class="tableborder1" id="table2">
    <tr>
        <td valign="middle" colspan="2" align="center" height="25" background="../../images/bg2.gif">
            <font color="#FFFFFF"><b>付款方式</b></font></td>
    </tr>
    <tr>
        <td width="40%" class="tablebody2" align="right">　</td>
        <td width="60%" class="tablebody1">
            <select name="payway">

                <option value="2">邮局汇款</option>

                <option value="1">货到付款</option>

                <option value="3">银行转帐</option>

            </select></td>
    </tr>
</table>
<br>
<table cellpadding=3 cellspacing=1 align=center class=tableborder1 id="table3">
    <tr>
        <td valign=middle align=center height=25 background="../../images/bg2.gif" colspan="5">
            <font color="#ffffff"><b>商品购物清单</b></font><input type="button" value="修改"
                                                             onclick="javascript:window.location='../shopcart.jsp';">
        </td>
    </tr>
    <c:forEach var="p" items="${products}">
    <tr>
        <td class=tablebody2 valign=middle align=center width="">${p.productId}</td>
        <td class=tablebody1 valign=middle width="">&nbsp;&nbsp;<a href="productDetail.jsp?productid=2"
                                                                   target="_blank">${p.productName}</a></td>
        <td class=tablebody2 valign=middle align=center width="">价格：${p.baseprice}</td>
        <td class=tablebody1 valign=middle align=center width="">数量：${p.count}</td>
        <td class=tablebody2 valign=middle align=left width="">小计：￥${p.subTotal}</td>
    </tr>
        <c:set var="total" value="${total+p.subTotal}"/>
    </c:forEach>
    <tr>
        <td class=tablebody1 valign=middle align=center colspan="4">　</td>
        <td class=tablebody1 valign=middle align=left width="">合计：<font color="#ff0000"><b>￥${total}</b></font></td>
    </tr>

</table>
<p align="center">请认真检查以上订单信息，确认无误后，点击 → <a href="/cart/pay" style="cursor:hand"><img
        src="../../images/submit.gif"></a>
    </form>
</p>

<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" height="28">
    <tr>
        <td height="17" background="../../images/bot_bg.gif">
            　
        </td>
    </tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
    <tr>
        <td bgcolor="#f1f1f6" height="53" valign="center">
            <p align="center">Copyright &copy;2004 - 2005 <a href="http://www.Gjun.com.cn"><b><font
                    face="Verdana,">Gjun</font></b><font color=#CC0000>.com.cn</font></b><br>
        </td>
    </tr>
</table>
</body>
</html>

