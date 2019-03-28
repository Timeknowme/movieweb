<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
    <title>Single</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Movie_store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/bootstrap-3.3.4.css">
    <link href="../css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="../css/star-rating.css" media="all" rel="stylesheet" type="text/css"/>
    <!-- start plugins -->
    <script type="text/javascript" src="../js/jquery-1.11.1.min.js"></script>
    <script src="../js/star-rating.js" type="text/javascript"></script>
    <link href='http://fonts.useso.com/css?family=Roboto+Condensed:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
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
        <div class="content">
            <div class="movie_top">
                <div style="font-size: 30px;margin-bottom: 10px;">
                    <span style="padding-left: 14px;">${movie.movieName}</span>
                </div>
                <div class="col-md-9 movie_box">
                    <div class="grid images_3_of_2">
                        <div class="movie_image">
                            <img src="${movie.movieHeadpic}" class="img-responsive" alt=""/>
                        </div>
                        <div class="movie_rate">
                            电影评分：${movie.movieFscore}
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                    <div class="desc1 span_3_of_2">
                        <p class="movie_option"><strong>导演: </strong>${movie.movieDirector}</p>
                        <p class="movie_option"><strong>编剧: </strong>${movie.movieWriter}</p>
                        <p class="movie_option"><strong>主演: </strong>${movie.movieActor}</p>
                        <p class="movie_option"><strong>类型: </strong>${movie.movieType}</p>
                        <p class="movie_option"><strong>地区: </strong>${movie.movieLocation}</p>
                        <p class="movie_option"><strong>语言: </strong>${movie.movieLanguage}</p>
                        <p class="movie_option"><strong>上映时间: </strong>${movie.movieDate}</p>
                        <p class="movie_option"><strong>时长: </strong>${movie.movieTime}</p>
                        <c:if test="${sessionScope.user != null}">
                            <c:if test="${isCollect == null}">
                                <div class="down_btn"><a class="btn1" href="/collect/addCol.html?userId=${sessionScope.user.userId}&movieId=${movie.movieId}">收   藏</a></div>
                            </c:if>
                            <c:if test="${isCollect != null}">
                                <div class="down_btn"><a class="btn1" href="/collect/deleteColMovie.html?userId=${sessionScope.user.userId}&movieId=${movie.movieId}">取消收藏</a></div>
                            </c:if>
                        </c:if>
                        <c:if test="${sessionScope.user == null}">
                            <div class="down_btn"><a class="btn1" href="/user/login.html">收   藏</a></div>
                        </c:if>
                    </div>


                    <div class="clearfix"> </div>
                    <p class="m_4">剧情简介</p>
                    <p class="m_4">${movie.movieBrief}</p>
                    <div style="width: 100%;">
                        <p style="font-size: 20px;">电影剧照</p>
                        <c:forEach var="moviepicList" items="${moviepicList}">
                            <div style="width: 30%;height: 250px;float: left;margin-top: 10px;margin-left: 10px;">
                                <img src="${moviepicList.mpicAddress}" style="width: 100%;height: 100%;">
                            </div>
                        </c:forEach>
                        <div class="clearfix"> </div>
                    </div>
                    <form action="/score/addScore.html" method="post" style="margin-top: 10px;">
                        <div class="to">
                            <p>给这部电影评分</p>
                        </div>
                        注意，每个用户对每部电影仅能进行一次评分。
                        <input id="input-21e" name="scoreNum" value="0" type="text" class="rating" data-min=0 data-max=10 data-step=1 data-size="xs"
                               title="" data-show-caption="false">
                        <input type="hidden" value="${sessionScope.user.userId}" name="userId">
                        <input type="hidden" value="${movie.movieId}" name="movieId">
                        <c:if test="${sessionScope.user != null}">
                            <c:if test="${isScoredByIp == null}">
                                <c:if test="${isScore == null}">
                                    <input name="submit" type="submit" value="评分" style="width: 100px;height: 30px;"><br>
                                </c:if>
                                <c:if test="${isScore != null}">
                                    您已经给该电影评过分，您的评分为${score.scoreNum}
                                </c:if>
                            </c:if>
                            <c:if test="${isScoredByIp != null}">
                                该IP或用户已经为该电影评过分。
                            </c:if>
                        </c:if>
                        <c:if test="${sessionScope.user == null}">
                            <input name="submit" type="button" value="评分" style="width: 100px;height: 30px;" onclick="window.location='/user/login.html'"><br>
                        </c:if>
                        <div class="clearfix"></div>
                    </form>
                    <form action="/comment/addComment.html" method="post">
                        <div class="to">
                            <p>分享你的影评</p>
                        </div>
                        <div class="text">
                            <textarea name="text" value="Message:" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}">Message:</textarea>
                            <input type="hidden" name="userId" value="${sessionScope.user.userId}">
                            <input type="hidden" name="movieId" value="${movie.movieId}">
                        </div>
                        <div class="form-submit1">
                            <c:if test="${sessionScope.user != null}">
                                <input name="submit" type="submit" id="submit" value="发表影评"><br>
                            </c:if>
                            <c:if test="${sessionScope.user == null}">
                                <input name="submit" type="button" id="submit" value="发表影评" onclick="window.location='/user/login.html'"><br>
                            </c:if>
                        </div>
                        <div class="clearfix"></div>
                    </form>
                    <div class="single">
                        <h1>Comments</h1>
                        <ul class="single_list">
                            <c:forEach var="comments" items="${comments}">
                            <li>
                                <div class="preview"><a href="#"><img src="${comments.user.userHeadpic}" class="img-responsive" alt=""></a></div>
                                <div class="data">
                                    <div class="title">${comments.user.userName}  /  <fmt:formatDate value="${comments.commentUpdateTime}" pattern="yyyy年MM月dd日HH点mm分ss秒" />  </div>
                                    <p>${comments.commentText}</p>
                                </div>
                                <div class="clearfix"></div>
                            </li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
                <div class="col-md-3">
                    <p style="font-size: 25px;">当前推荐</p>
                    <div class="movie_img"><div class="grid_2">
                        <a href="/movie/showMovie.html?movieId=1"><img src="/jsp/img/movie1.jpg" class="img-responsive" alt="" style="width: 230px;height: 270px;"></a>
                    </div>
                    </div>
                    <div class="grid_2 col_1">
                        <a href="/movie/showMovie.html?movieId=2"><img src="/jsp/img/movie2.jpg" class="img-responsive" alt="" style="width: 230px;height: 270px;"></a>
                    </div>
                    <div class="grid_2 col_1">
                        <a href="/movie/showMovie.html?movieId=3"><img src="/jsp/img/movie3.jpg" class="img-responsive" alt="" style="width: 230px;height: 270px;"></a>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <footer id="footer">
        <div id="footer-3d">
            <div class="gp-container">
                <span class="first-widget-bend"> </span>
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