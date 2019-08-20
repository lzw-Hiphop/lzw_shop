<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>巨匠电子商务门户</title>
    <LINK href="../../css/Gjun.css" rel=stylesheet>
    <script language="JavaScript" src="../../js/Gjun.js"></script>
</head>
<body onLoad="MM_preloadImages('images/index_on.gif','images/reg_on.gif','images/order_on.gif','../images/top/topxmas/jp_on.gif','../images/top/topxmas/download_on.gif','../images/top/topxmas/bbs_on.gif','../images/top/topxmas/designwz_on.gif')"
      topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0">
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="table2">
    <tr>
        <td align="left" width="7%" background="../../images/top_bg.gif"><img src="../../images/logo.jpg" width="162" height="36">
        </td>
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
                    <td width="10%"><a href="../../index.html" onMouseOut="MM_swapImgRestore()"
                                       onMouseOver="MM_swapImage('Image1','','images/index_on.gif',1)">
                        <img name="Image1" border="0" src="../../images/index.gif" width="90" height="36"></a></td>
                    <td width="10%"><a href="../../userManage.html" onMouseOut="MM_swapImgRestore()"
                                       onMouseOver="MM_swapImage('Image2','','images/reg_on.gif',1)">
                        <img name="Image2" border="0" src="../../images/reg.gif" width="92" height="36"></a></td>
                    <td width="10%"><a href="../../shopcart.html" onMouseOut="MM_swapImgRestore()"
                                       onMouseOver="MM_swapImage('Image4','','images/carts_on.gif',1)">
                        <img name="Image4" border="0" src="../../images/cart.gif" width="92" height="36"></a></td>
                    <td width="10%"><a href="../../user/order.html" onMouseOut="MM_swapImgRestore()"
                                       onMouseOver="MM_swapImage('Image5','','images/order_on.gif',1)">
                        <img name="Image5" border="0" src="../../images/order.gif" width="92" height="36"></a></td>
                    <td width="10%"><a href="../../index.html" onMouseOut="MM_swapImgRestore()"
                                       onMouseOver="MM_swapImage('Image6','','images/exit_on.gif',1)">
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
            <a href=../../WEB-INF/view/index.jsp>巨匠电子商务门户</a> →
            <img border="0" src="../../images/dog.gif" width="19" height="18">
            购物清单
        </td>
    </tr>
</table>
<br>

<table cellpadding=3 cellspacing=1 align=center class=tableborder1>
    <tr>
        <td valign=middle align=center height=25 background="../../images/bg2.gif" width=""><font
                color="#ffffff"><b>序号</b></font></td>
        <td valign=middle align=center height=25 background="../../images/bg2.gif" width=""><font color="#ffffff"><b>产品名称</b></font>
        </td>
        <td valign=middle align=center height=25 background="../../images/bg2.gif" width=""><font
                color="#ffffff"><b>库存</b></font></td>
        <td valign=middle align=center height=25 background="../../images/bg2.gif" width=""><font
                color="#ffffff"><b>价格</b></font></td>
        <td valign=middle align=center height=25 background="../../images/bg2.gif" width=""><font
                color="#ffffff"><b>数量</b></font></td>
        <td valign=middle align=center height=25 background="../../images/bg2.gif" width=""><font
                color="#ffffff"><b>合计</b></font></td>
        <td valign=middle align=center height=25 background="../../images/bg2.gif" width=""><font
                color="#ffffff"><b>操作</b></font></td>
    </tr>

    <c:forEach var="p" items="${products}">
        <tr>
            <input type="hidden" name="productid" value="${p.productId}">
            <input type="hidden" name="count" value="${p.count}">
            <td class=tablebody1 valign=middle align=center width="">${p.productId}</td>
            <td class=tablebody2 valign=middle width="">&nbsp;&nbsp;<a
                    href="/productDetail?productId=${p.productId}">${p.productName}</a></td>
            <td class=tablebody1 valign=middle align=center width="">${p.store}</td>
            <td class=tablebody2 valign=middle align=center width="">${p.baseprice}</td>
            <form action="/cart/update" method="get">
                    <td class=tablebody1 valign=middle align=center width="">
                        <input type="hidden" name="productid" value="${p.productId}">
                <input type="text" name="num" value="${p.count}" size="4"
                       onblur="javascript:if(this.value<1){alert('对不起，产品数量不能小于 1 ');this.focus();}else{num.value=this.value;}"/>
            </td>
            <td class=tablebody2 valign=middle align=left width="">&nbsp;&nbsp;${p.subTotal}</td>
            <td class=tablebody1 valign=middle align=center width="">
                <input type="button" value="取消"
                       onclick="javascript:window.location='/cart/remove?productid=${p.productId}';">
                <input type="submit" value="保存修改">
            </td>
            </form>
            <c:set var="total" value="${total+p.subTotal}"/>
        </tr>
    </c:forEach>
    <tr>
        <td class=tablebody1 valign=middle align=center colspan="4">　</td>
        <td class=tablebody1 valign=middle align=center width="">　</td>
        <td class=tablebody1 valign=middle align=left width="">&nbsp;&nbsp;<font color="#ff0000"><b>￥${total}</b></font></td>
        <td class=tablebody1 valign=middle align=center width="">　</td>
    </tr>
    <tr>
        <td class=tablebody2 valign=middle align=center colspan="12">
            <input type="button" value="提交订单" onclick="javascript:window.location='/cart/list';">
            <input type="button" value="继续购物" onclick="javascript:window.location='/index';">
            <input type="button" value="清空购物车" onclick="javascript:window.location='/cart/removeall';">
        </td>
    </tr>
</table>
<br>
<!--文件尾开始-->
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
                    face="Verdana,">Gjun</font></b><font color=#CC0000>.com.cn</font></b></a><br>
        </td>
    </tr>
</table>
</body>
</html>

