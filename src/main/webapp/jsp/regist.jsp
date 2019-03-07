<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<title>Register</title>
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
			<div class="register">
				<form action="/user/regist.html" method="post">
					<div class="register-top-grid">
						<h3>Personal Information</h3>
						<div>
							<span>用户名<label>*</label></span>
							<input type="text" name="userName" id="username" onblur="checkpass2()">
						</div>
						<div style="height: 61px;"></div>
						<div>
							<span>密码<label>*</label></span>
							<input type="password" name="userPsd" id="logpass">
						</div>
						<div style="height: 61px;"></div>
						<div>
							<span>确认密码<label>*</label></span>
							<input type="password" id="check" onblur="checkpass2()">
						</div>
						<div style="height: 61px;"></div>
						<div>
							<input id="button" type="submit" name="" value="注册" class="btn btn-primary" style="width: 100px;" disabled="disabled">
						</div>
						<div class="clearfix"> </div>
					</div>
				</form>
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
<script type="text/javascript">
	var psd1 = document.getElementById('logpass');
	var psd2 = document.getElementById('check');
	var un = document.getElementById('username');
	function checkpass2(){
		if(psd1.value!=psd2.value){
			alert("确认密码错误！");
		}
		if(psd1.value==psd2.value && un.value != '' && psd1.value != '' && psd2.value != ''){
			document.getElementById('button').disabled=false;
		}
	}
</script>
</html>