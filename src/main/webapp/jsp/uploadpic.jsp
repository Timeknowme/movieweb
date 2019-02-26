<%@ page contentType="text/html" language="Java" import="java.sql.*" errorPage="" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<style type="text/css">
	body{margin:0 auto;}
	ul,li{margin: 0;padding: 0;list-style: none;float: left;}
	a{color: inherit;text-decoration: none;}
	#head{
		width: 70%;
		height: 50px;
		margin: 0 auto;
	}
	#logo{
		width: 6%;
		height: 100%;
		float: left;
	}
	#logo img{
		width: 100%;
		height: 100%;
	}
	#headmenu{
		width: 60%;
		height: 100%;
		float: left;
	}
	#headmenu ul li{
		float: left;
		width: 120px;
		height: 100%;
		font-size: 18px;
		color: #000000;
		text-align: center;
		line-height: 60px;
	}
	#headlogin{
		width: 25%;
		height: 100%;
		float: right;
	}
	#headlogin ul li{
		float: left;
		width: 120px;
		height: 100%;
		font-size: 18px;
		color: #696969;
		text-align: center;
		line-height: 60px;
	}
	#main{
		width: 70%;
		height: 500px;
		margin: 0 auto;
		margin-top: 50px;
	}
	#main-left{
		width: 25%;
		height: 180px;
		float: left;
		background-color: #F5F5F5;
	}
	#main-left ul{
		width: 100%;
		height: 100%;
	}
	#main-left ul li{
		width: 100%;
		height: 60px;
		float: left;
		font-size: 18px;
		text-align: center;
		line-height: 60px;
	}
	#main-right{
		width: 70%;
		height: 100%;
		float: right;
		background-color: #F5F5F5;
	}
	#right-top{
    	height: 45px;
    	background-color: #EDEDED;
    	line-height: 45px;
    	padding-left: 20px;
    	border-bottom: 1px solid #C8E0E0;
    }
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

	<hr style="background-color:gray;height: 1px;width:90%;border: none;"/>
	<div id="main">
		<div id="main-left">
			<ul>
				<li>修改头像</li>
			</ul>
		</div>
		<div id="main-right">
			<div id="right-top">个人头像</div>
	        <img id="xmTanImg" src="${sessionScope.user.userHeadpic}"/><br><br>

	        <form action="/user/uploadHeadPic.html" method="POST" enctype="multipart/form-data"><br><br>
	        <a href="" class="file">从计算机中选择一张照片<input type="file" value="从计算机中选择一张照片" name="pic" onchange="xmTanUploadImg(this)" accept="image/*"/></a>
	        <br>
	        <input type="submit" class="file" style="cursor: pointer;" value="上传">
	        </form>
		</div>
	</div>
</body>
<script type="text/javascript">
 function xmTanUploadImg(obj) {
                var file = obj.files[0];
                console.log(obj);console.log(file);
                console.log("file.size = " + file.size);  //file.size 单位为byte
                var reader = new FileReader();
                reader.onloadstart = function (e) {
                    console.log("开始读取....");
                }
                reader.onprogress = function (e) {
                    console.log("正在读取中....");
                }
                reader.onabort = function (e) {
                    console.log("中断读取....");
                }
                reader.onerror = function (e) {
                    console.log("读取异常....");
                }
                reader.onload = function (e) {
                    console.log("成功读取....");

                    var img = document.getElementById("xmTanImg");
                    img.src = e.target.result;
                }
                reader.readAsDataURL(file)
            }
</script>
</html>