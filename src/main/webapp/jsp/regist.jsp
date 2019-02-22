<%@ page contentType="text/html" language="Java" import="java.sql.*" errorPage="" pageEncoding="utf-8"%>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>minsu</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<style type="text/css">
*{
	margin: 0;
	padding: 0;
}



body{
	font-family: "微软雅黑";
	font-size: 14px;
	background: url(/jsp/image/1234.png) fixed center center;
}
.logo_box{
	width: 280px;
	height: 300px;
	padding: 35px;
	color: #EEE;
	position: relative;
	left: 50%;
	top:100px;
	margin-left: -175px;
	background-color:rgba(0, 0, 0, 0.5);
}
.logo_box h1{
	text-align: center;
	height: 20px;
	font: 40px "microsoft yahei",Helvetica,Tahoma,Arial,"Microsoft jhengHei",sans-serif;
	color: #FFFFFF;
	line-height: 20px;
	padding:0 0 35px 0;
}
.text{
	width: 220px;
	height: 46px;
	outline: none;
	display: inline-block;
	font: 14px "microsoft yahei",Helvetica,Tahoma,Arial,"Microsoft jhengHei";
	margin-left: 50px;
	border: none;
	background: none;
	line-height: 46px;
}
.input_outer{
	height: 46px;
	padding: 0 5px;
	margin-bottom: 20px;
	border-radius: 50px;
	position: relative;
	border: rgba(255,255,255,0.2) 2px solid !important;
}
.regist{
	height: 46px;
	padding: 0 5px;
	margin-bottom: 20px;
	border-radius: 50px;
	position: relative;
	border:none;
	width: 280px;
	font-size: 20px;
	background-color: #1E90FF;
	color:white;
}
.u_user{
	width: 25px;
	height: 25px;
	background: url(../jsp/image/login_ico.png);
	background-position:  -125px 0;
	position: absolute;
	margin: 12px 13px;
}
.us_uer{
	width: 25px;
	height: 25px;
	background-image: url(../jsp/image/login_ico.png);
	background-position: -125px -34px;
	position: absolute;
	margin: 12px 13px;
}

input{
	color: white;
}
/* #tip1{
	color: red;
    display: block;
    position: absolute;
    right: 47%;
    bottom: 19%;

} */
</style>
</head>
<body>


<div class="logo_box">
<h1>Practice学生</h1>
<form action="/user/regist.html" name="regist" method="POST">
        <div class="input_outer">
			<span class="u_user"></span>
			<input name="userName" class="text" placeholder="输入账号"  type="text" id="loginname" onblur="checklogin()">
		</div>
		<div class="input_outer">
			<span class="us_uer"></span>
			<input name="userPsd" class="text"  placeholder="输入密码" type="password" id="logpass" onblur="checkpass1()">
		</div>
		<div class="input_outer">
			<span class="us_uer"></span>
			<input name="checkpassword" class="text"  placeholder="确认密码" type="password" id="check" onblur="checkpass2()">
		</div>

	    <input class="regist" type="submit" name="submit" value="注册">
</form>
<!-- <div id="tip1">确认密码错误！</div> -->
</div>

</body>
<script type="text/javascript">

function checkpass2(){
   if(document.getElementById('logpass').value!=document.getElementById('check').value){
      alert("确认密码错误！");
   }
}
</script>
</html>