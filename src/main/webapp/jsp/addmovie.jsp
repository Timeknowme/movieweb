<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Usermain</title>
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
</head>
<style type="text/css">
    #xmTanImg{
        width: 225px;
        height: 225px;
        margin: 20px;
        float: left;
    }
    .file {
        position: relative;
        display: inline-block;
        background-color: #EDEDED;
        border: 1px solid #C8E0E0;
        border-radius: 4px;
        padding: 4px 12px;
        overflow: hidden;
        color: #767676;
        text-decoration: none;
        text-indent: 0;
        line-height: 20px;
    }
    .file input {
        position: absolute;
        right: 0;
        top: 0;
        opacity: 0;
    }
</style>
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
            <div class="col-md-3">

                <div style="text-align: center;margin-top: 10px;font-size: 20px;">
                    <ul class="first">
                        <li><a href="/user/listAllUser.html">管理用户</a></li>
                        <li><a href="/movie/listAllMovie.html">管理电影</a></li>
                        <li><a href="/news/listAllNews.html">管理新闻</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-8">
                <div>
                    <h1 style="font-size: 25px;">添加电影</h1>
                </div>
                <form class="form-horizontal" style="text-align: center;margin-top: 20px;" enctype="multipart/form-data" action="/movie/addMovie.html" method="post">
                    <div class="form-group">
                        <label for="movieName" class="col-sm-2 control-label">电影名称</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="movieName" id="movieName" placeholder="请输入电影名称">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="movieDirector" class="col-sm-2 control-label">导演</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="movieDirector" id="movieDirector" placeholder="请输入导演">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="movieWriter" class="col-sm-2 control-label">编剧</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="movieWriter" id="movieWriter" placeholder="请输入编剧">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="movieActor" class="col-sm-2 control-label">主演</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="movieActor" id="movieActor" placeholder="请输入主演">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="movieType" class="col-sm-2 control-label">类型</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="movieType" id="movieType" placeholder="请输入电影类型">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="movieLocation" class="col-sm-2 control-label">地区</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="movieLocation" id="movieLocation" placeholder="请输入电影地区">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="movieLanguage" class="col-sm-2 control-label">语言</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="movieLanguage" id="movieLanguage" placeholder="请输入电影语言">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="movieDate" class="col-sm-2 control-label">上映时间</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="movieDate" id="movieDate" placeholder="请输入电影上映时间">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="movieTime" class="col-sm-2 control-label">时长</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="movieTime" id="movieTime" placeholder="请输入电影时长">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="movieBrief" class="col-sm-2 control-label">简介</label>
                        <div class="col-sm-10">
                            <textarea class="form-control" name="movieBrief" id="movieBrief"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="pic" class="col-sm-2 control-label">电影封面</label>
                        <div class="col-sm-10">
                            <img id="xmTanImg" src=""/><br><br>
                            从计算机中选择一张照片<input type="file" value="从计算机中选择一张照片" id="pic" name="pic" onchange="xmTanUploadImg(this)" accept="image/*"/></a>
                        </div>
                    </div>
                    <input type="submit" name="" value="提交" class="btn btn-primary" style="width: 100px;">
                </form>
            </div>
            <div class="clearfix"></div>
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