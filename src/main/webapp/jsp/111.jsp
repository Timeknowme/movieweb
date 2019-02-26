<%--
  Created by IntelliJ IDEA.
  User: xu
  Date: 2018/12/19
  Time: 14:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <script src="../js/jquery-3.3.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
</head>
<body>
123
<a href="/user/exit.html">exit</a>
<a href="/user/update.html?userId=${sessionScope.user.userId}">update</a>
<a href="/movie/updateMovie.html?movieId=2">updatemovie</a>
<a href="/movie/deleteMovie.html?movieId=1">deletemovie</a>
<a href="/collect/addCol.html?userId=1&movieId=2">addcol</a>
<a href="/collect/deleteCol.html?userId=1&movieId=2">delcol</a>
<a href="/user/uploadHeadPic.html">uploadpic</a>

<form action="/comment/addComment.html?userId=1&movieId=2" method="post">
    <input type="text" name="text">
    <input type="submit" value="submit">
</form>

<form action="/score/addScore.html?userId=1&movieId=2" method="post">
    <input type="text" name="scoreNum">
    <input type="submit" value="submit">
</form>
<form action="/user/updatePsd.html" method="post">
    old:<input type="text" name="oldPsd">
    new:<input type="text" name="newPsd">
    <input type="submit" value="submit">
</form>
<%
    Object s = session.getAttribute("updatepsd");
    if(s != null && s.equals("success")){%>
        <script type="text/javascript">
            alert("修改成功，请重新登录");
        </script>
    <%}else if(s != null && s.equals("error")){%>
        <script type="text/javascript">
            alert("修改失败");
        </script>
    <%}
%>
${sessionScope.user.userHeadpic}
<img src="${sessionScope.user.userHeadpic}"/>
<img src="/img/111.jpeg"/>
</body>
</html>
