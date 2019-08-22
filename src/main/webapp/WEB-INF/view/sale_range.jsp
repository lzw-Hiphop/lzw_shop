<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>首页</title>
    <title>巨匠电子商务门户</title>
    <LINK href="/css/Gjun.css" rel=stylesheet>
    <script language="JavaScript" src="/js/Gjun.js"></script>
    <script language="JavaScript" src="/js/jquery.min.js"></script>
    <script language="JavaScript">
        $(document).ready(function () {
            alert(" success load.....");
            $(".cart").click(function () {
                alert($(this).attr("id"));
            });
        });
    </script>
</head>
<body onLoad="MM_preloadImages('/images/index_on.gif','images/reg_on.gif','images/order_on.gif','../images/top/topxmas/jp_on.gif','../images/top/topxmas/download_on.gif','../images/top/topxmas/bbs_on.gif','../images/top/topxmas/designwz_on.gif')"
      topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0">
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="table2">
    <tr>
        <td align="left" width="7%" background="../../images/top_bg.gif"><img src="../../images/logo.jpg" width="162"
                                                                              height="36">
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
    <tr>
        <td background="../../images/bot_bg.gif" align="left" height="12">
            <table width="30%" align="center">
                <td><a href="../../index.html">所有商品</a></td>

                <td><a href="../../index.html">图书</a></td>

                <td><a href="../../index.html">音像</a></td>

                <td><a href="../../index.html">食品</a></td>

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
            欢迎<font color="red"></font>光临！
        </td>
    </tr>
</table>
<br>

<form action="loginAction.do" method=post name="login">
    <table cellpadding=1 cellspacing=1 align=center class=tableborder1>
        <tr>
            <td valign=middle align=center height=25 background="../../images/bg2.gif" width=""><font
                    color="#ffffff"><b>排名</b></font></td>
            <td valign=middle align=center height=25 background="../../images/bg2.gif" width=""><font
                    color="#ffffff"><b>商品名</b></font></td>
        </tr>


        <c:forEach var="i" begin="1" end="${productRange.size()}" step="1">
            <tr>
                <td class=tablebody2 valign=middle align=center width="">${i}</td>
                <td class=tablebody1 valign=middle align=center width="">${productRange.toArray()[i-1]}</td>
            </tr>
        </c:forEach>

    </table>
</form>


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