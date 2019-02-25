<%--
  Created by IntelliJ IDEA.
  User: xu
  Date: 2018/12/24
  Time: 9:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/movie/addMovie.html" method="post">
    name:<input type="text" name="movieName">
    director:<input type="text" name="movieDirector">
    writer:<input type="text" name="movieWriter">
    actor:<input type="text" name="movieActor">
    type:<input type="text" name="movieType">
    <input type="submit" value="submit">
</form>

<form action="/movie/updateMovie.html?movieId=${movie.movieId}" method="post">
    name:<input type="text" name="movieName" value="${movie.movieName}">
    director:<input type="text" name="movieDirector" value="${movie.movieDirector}">
    writer:<input type="text" name="movieWriter" value="${movie.movieWriter}" >
    actor:<input type="text" name="movieActor" value="${movie.movieActor}" >
    type:<input type="text" name="movieType" value="${movie.movieType}" >
    <input type="submit" value="submit">
</form>
<form action="/movie/searchMovie.html" method="post">
    name:<input type="text" name="movieName">
    <input type="submit" value="sousuo">
</form>
<c:forEach var="movies" items="${movies}">
    <div>
            ${movies.movieName}
    </div>
</c:forEach>
<c:forEach var="movietop" items="${movietop}">
    <div>
        ${movietop.movieName}
    </div>
</c:forEach>
<div>
    ${movie.movieName}
    ${score}
        <c:forEach var="comments" items="${comments}">
            <div>
                    ${comments.commentText}
                ${comments.user.userName}
            </div>
        </c:forEach>
</div>
</body>
</html>
