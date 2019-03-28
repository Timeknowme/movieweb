<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%> <%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%> <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>编辑器完整版实例</title> <!-- 引入相应js文件  -->
    <script type="text/javascript" src="./ueditor/ueditor.config.js"></script>
    <script type="text/javascript" src="./ueditor/ueditor.all.js"></script>
</head>
<body> <!--
        创建表单区域并实例化一个UEditor实例
       提交到servlet中
       实例化UE的时候注意 >>textarea标签 name就是后台需要获取的参数名，id是用来实例化UE的名字

   --> <form action="publish"method="post">
            类别： <input type="text"name="category"/><br/>
    标题：<input type="text"name="title"/><br/>
    <textarea name="content" id="myEditor">这里写你的初始化内容</textarea>
    <script type="text/javascript">
    UE.getEditor('myEditor');
</script>
    <input type="submit"value="提交"/>
</form>
</body>
</html>