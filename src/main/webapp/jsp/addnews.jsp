<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <script type="text/javascript" src="../ueditor/ueditor.config.js"></script>
    <script type="text/javascript" src="../ueditor/ueditor.all.js"></script>
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
                        <li style="width:50%;"><a href="/user/usermain.html?userId=${sessionScope.user.userId}"><img src="${sessionScope.user.userHeadpic}" style="width:60%;border-radius:50%;float: left;"></a> </li>
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
                    <h1 style="font-size: 25px;">添加新闻</h1>
                </div>
                <form class="form-horizontal" style="text-align: center;margin-top: 20px;" enctype="multipart/form-data" action="/news/addNews.html" method="post">
                    <div class="form-group">
                        <label for="newsTitle" class="col-sm-2 control-label">新闻标题</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="newsTitle" id="newsTitle" placeholder="请输入新闻标题">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="newsAuthor" class="col-sm-2 control-label">作者</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="newsAuthor" id="newsAuthor" placeholder="请输入作者">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="myEditor" class="col-sm-2 control-label">新闻内容</label>
                        <div class="col-sm-10">
                            <textarea name="newsContent" id="myEditor" style="width: 100%; height: 400px;">这里写你的初始化内容</textarea>

                            <!-- 实例化编辑器 -->
                            <script type="text/javascript">
                                var ue = UE.getEditor('myEditor');
                            </script>
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
                        <div class="copy">
                            <p>Copyright &copy; 2015.Company name All rights reserved.<a target="_blank" href="#">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </footer>
</div>
</body>