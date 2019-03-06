<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<title>Login</title>
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
					<li><p><a href="/user/regist.html">注册</a></p></li>
					<li><p><a href="/user/login.html">登录</a></p></li>
					<li class="last"><i class="edit"> </i></li>
					<div class="clearfix"> </div>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
		<div class="content">
			<div class="register">
				<div class="col-md-6 login-left">
					<h3>New Customers</h3>
					<p>By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping addresses, view and track your orders in your account and more.</p>
					<a class="acount-btn" href="/user/regist.html">Create an Account</a>
				</div>
				<div class="col-md-6 login-right">
					<h3>Registered Customers</h3>
					<p>If you have an account with us, please log in.</p>
					<form action="/user/login.html" method="post">
						<div>
							<span>用户名<label>*</label></span>
							<input type="text" name="userName">
						</div>
						<div>
							<span>密码<label>*</label></span>
							<input type="text" name="userPsd">
						</div>
						<input type="submit" value="登录">
					</form>
					<%
						Object s = session.getAttribute("userlogin");
						if(s != null && s.equals("error")){%>
						<script type="text/javascript">
							alert("用户名或者密码错误");
						</script>
					<%
						session.removeAttribute("userlogin");}
					%>
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
</html>