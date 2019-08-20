<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<html>
<head>
    <title>Title</title>
</head>
<body>

<table border="1">
    <tr>
        <td>Category_id</td>
        <td>Category_name</td>
        <td>Category_desc</td>
    </tr>
    <c:forEach var="v" items="${categorys}">
        <tr>
            <td>${v.categoryId}</td>
            <td>${v.categoryName}</td>
            <td>${v.categoryDesc}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
