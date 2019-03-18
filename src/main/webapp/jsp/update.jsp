<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Update</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Movie_store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="../css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- start plugins -->
    <script type="text/javascript" src="../js/jquery-1.11.1.min.js"></script>
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
            <div class="col-md-3">
                <div style="width:150px; border-radius:50%; overflow:hidden;text-align: center;margin-left: 20%;">
                    <img src="${sessionScope.user.userHeadpic}" style="width: 100%;height: 150px;border-radius:50%;">
                </div>
                <div style="text-align: center;margin-top: 10px;font-size: 20px;">
                    <ul class="first">
                        <li><a href="/collect/viewCol.html?userId=${sessionScope.user.userId}">我的收藏</a></li>
                        <li><a href="/comment/viewcom.html?userId=${sessionScope.user.userId}">我的评论</a></li>
                        <li><a href="/score/showScore.html?userId=${sessionScope.user.userId}">我的评分</a></li>
                        <li><a href="/user/update.html?userId=${sessionScope.user.userId}">修改个人信息</a></li>
                        <li><a href="/user/uploadHeadPic.html?userId=${sessionScope.user.userId}">修改头像</a></li>
                        <li><a href="/user/updatePsd.html?userId=${sessionScope.user.userId}">修改密码</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-7">
                <div>
                    <h1 style="font-size: 25px;">修改个人信息</h1>
                </div>
                <form class="form-horizontal" style="text-align: center;margin-top: 20px;" action="/user/update.html" method="post">
                    <div class="form-group">
                        <label for="userRealname" class="col-sm-2 control-label">姓名</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="userRealname" id="userRealname" value="${user.userRealname}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="userSex" class="col-sm-2 control-label">性别</label>
                        <div>
                            <label class="radio-inline">
                                <input type="radio" name="userSex" id="userSex1" value="男"> 男
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="userSex" id="userSex"  value="女"> 女
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="userBirth" class="col-sm-2 control-label">生日</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="userBirth" id="userBirth" value="${user.userBirth}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="userCity" class="col-sm-2 control-label">所在城市</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="userCity" id="userCity" value="${user.userCity}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="userEmail" class="col-sm-2 control-label">email</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="userEmail" id="userEmail" value="${user.userEmail}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="userQQ" class="col-sm-2 control-label">QQ</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="userQQ" id="userQQ" value="${user.userQQ}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="userTelphone" class="col-sm-2 control-label">联系方式</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="userTelphone" id="userTelphone" value="${user.userTelphone}" oninput="value=value.replace(/[^\d]/g,'')">
                        </div>
                    </div>
                    <input type="hidden" id="us" value="${user.userSex}">
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
<script type="text/javascript">
    var sex = document.getElementById("us").value;
    if(sex == "男"){
        document.getElementById("userSex1").checked = true;
    } else {
        document.getElementById("userSex").checked = true;
    }
</script>
</html>
