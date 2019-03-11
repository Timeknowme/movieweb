<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Movie_store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="../css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- start plugins -->
    <script type="text/javascript" src="http://apps.bdimg.com/libs/jquery/1.11.1/jquery.min.js"></script>
    <link href='http://fonts.useso.com/css?family=Roboto+Condensed:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
    <script src="../js/responsiveslides.min.js"></script>
    <script>
        $(function () {
            $("#slider").responsiveSlides({
                auto: true,
                nav: true,
                speed: 500,
                namespace: "callbacks",
                pager: true,
            });
        });
    </script>
</head>
<body>
<div class="container">
    <div class="container_wrap">
        <div class="header_top">
            <div class="col-sm-3 logo"><a href="/movie/showIndex.html"><img src="/jsp/img/logo.png" alt=""/></a></div>
            <div class="col-sm-6 nav">
                <ul>
                    <li><span class="simptip-position-bottom simptip-movable" data-tooltip="喜剧"><a href="/movie/searchMovieByType.html?movieType=喜剧"> </a></span></li>
                    <li><span class="simptip-position-bottom simptip-movable" data-tooltip="科幻"><a href="/movie/searchMovieByType.html?movieType=科幻"> </a> </span></li>
                    <li><span class="simptip-position-bottom simptip-movable" data-tooltip="悬疑"><a href="/movie/searchMovieByType.html?movieType=悬疑"> </a></span></li>
                    <li><span class="simptip-position-bottom simptip-movable" data-tooltip="爱情"><a href="/movie/searchMovieByType.html?movieType=爱情"> </a></span></li>
                    <li><span class="simptip-position-bottom simptip-movable" data-tooltip="动画"><a href="/movie/searchMovieByType.html?movieType=动画"> </a></span></li>
                    <li><span class="simptip-position-bottom simptip-movable" data-tooltip="更多"><a href="/movie/searchMovieByType.html?movieType="> </a></span></li>
                </ul>
            </div>
            <div class="col-sm-3 header_right">
                <ul class="header_right_box">
                    <c:if test="${sessionScope.user == null && sessionScope.admin == null}">
                    <li><p><a href="/user/regist.html">注册</a></p></li>
                    <li><p><a href="/user/login.html">登录</a></p></li>
                    <li><p><a href="/admin/adminLogin.html">管理员</a></p></li>
                    </c:if>
                    <c:if test="${sessionScope.user != null}">
                        <li style="width:50%;"><a href="/user/usermain.html?userId=${sessionScope.user.userId}"><img src="${sessionScope.user.userHeadpic}" style="height: 50px;width: 60%;border-radius:50%;float: left;"></a> </li>
                        <li style="margin-top: 10px;"><p><a href="/user/exit.html">exit</a></p></li>
                    </c:if>
                    <c:if test="${sessionScope.admin != null}">
                        <li><p><a href="/admin/adminmain.html?adminId=${sessionScope.admin.adminId}">${sessionScope.admin.adminName}</a></p></li>
                        <li><p><a href="/admin/adminexit.html">exit</a></p></li>
                    </c:if>
                    <div class="clearfix"> </div>
                </ul>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="slider">
            <div class="callbacks_container">
                <ul class="rslides" id="slider">
                    <li><img src="/jsp/img/banner.jpg" class="img-responsive" alt=""/>
                        <div class="button">
                            <a href="#" class="hvr-shutter-out-horizontal">Watch Now</a>
                        </div>
                    </li>
                    <li><img src="/jsp/img/banner1.jpg" class="img-responsive" alt=""/>
                        <div class="button">
                            <a href="#" class="hvr-shutter-out-horizontal">Watch Now</a>
                        </div>
                    </li>
                    <li><img src="/jsp/img/banner2.jpg" class="img-responsive" alt=""/>
                        <div class="button">
                            <a href="#" class="hvr-shutter-out-horizontal">Watch Now</a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <div class="content">
            <div class="box_1">
                <h1 class="m_2">Featurd Movies</h1>
                <div class="search">
                    <form action="/movie/searchMovieByName.html" method="post">
                        <input type="text" name="movieName" value="Search..." onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
                        <input type="submit" value="">
                    </form>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="box_2">
                <c:forEach var="movies" items="${movies}">
                <div class="col-md-3" style="height: 350px">
                    <a href="/movie/showMovie.html?movieId=${movies.movieId}"><img src="${movies.movieHeadpic}" style="width: 80%;"></a>
                    <div style="text-align: center;padding-top: 10px;">
                        <font style="font-size: 18px;">${movies.movieName}</font>
                        <font style="margin-left: 10px;color: #FF7F50;">${movies.movieFscore}</font>
                    </div>
                </div>
                </c:forEach>
                <div class="clearfix"> </div>
            </div>
            <HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)" width="100%" color=#987cb9 SIZE=3>
            <div class="box_1">
                <h1 class="m_2">NEWS</h1>

                <div class="clearfix"> </div>
            </div>
            <div class="box_2" style="font-size: 18px;width: 80%;margin: 0 auto;">
                <c:forEach var="news" items="${news}">
                    <div><a href="/news/showNews.html?newsId=${news.newsId}">${news.newsTitle}</a><p style="float:right; font-size: 16px;">By:${news.newsAuthor}</p></div>
                    <div style="height:2px;width:100%;border-top:1px solid #ccc;float:left;margin-bottom:10px;"></div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <footer id="footer">
        <div id="footer-3d">
            <div class="gp-container">
                <span class="first-widget-bend"></span>
            </div>
        </div>
        <div id="footer-widgets" class="gp-footer-larger-first-col">
            <div class="gp-container">
                <div class="footer-widget footer-1">
                    <div class="wpb_wrapper">
                        <img src="images/f_logo.png" alt=""/>
                    </div>
                    <br>
                    <p>It is a long established fact that a reader will be distracted by the readable content of a page.</p>
                    <p class="text">There are many variations of passages of Lorem Ipsum available, but the majority have suffered.</p>
                </div>
                <div class="footer_box">
                    <div class="col_1_of_3 span_1_of_3">
                        <h3>Categories</h3>
                        <ul class="first">
                            <li><a href="#">Dance</a></li>
                            <li><a href="#">History</a></li>
                            <li><a href="#">Specials</a></li>
                        </ul>
                    </div>
                    <div class="col_1_of_3 span_1_of_3">
                        <h3>Information</h3>
                        <ul class="first">
                            <li><a href="#">New products</a></li>
                            <li><a href="#">top sellers</a></li>
                            <li><a href="#">Specials</a></li>
                        </ul>
                    </div>
                    <div class="col_1_of_3 span_1_of_3">
                        <h3>Follow Us</h3>
                        <ul class="first">
                            <li><a href="#">Facebook</a></li>
                            <li><a href="#">Twitter</a></li>
                            <li><a href="#">Youtube</a></li>
                        </ul>

                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </footer>
</div>
</body>
</html>