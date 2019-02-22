<%--
  Created by IntelliJ IDEA.
  User: xu
  Date: 2018/12/19
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="/user/update.html" method="post">
    name:<input type="text" name="userRealname" value="${user.userRealname}">
    sex:<input type="text" name="userSex" value="${user.userSex}">
    birth:<input type="text" name="userBirth" value="${user.userBirth}">
    city:<input type="text" name="userCity" value="${user.userCity}">
    email:<input type="text" name="userEmail" value="${user.userEmail}">
    <input type="submit" value="submit">
</form>
</body>
</html>
