<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="easyui/themes/icon.css">
<link type="text/css" rel="stylesheet" href="easyui/themes/default/easyui.css">
<link type="text/css" rel="stylesheet" href="css/login.css">
</head>
<body>
	<div id="loginDiv">
		<form id="loginForm" action="admin/login">
			<p><label>${errorMsg }&nbsp;</label></p><c:remove var="errorMsg" scope="session"/>
			<p><input name="uname" placeholder="请输入用户名" required="required"/></p>
			<p><input type="password" name="upwd" placeholder="请输入密码"  required="required"/></p>
			<p><img src="vcode.jpg" title="看不清，换一张"/><input name="vcode" placeholder="请输入验证码" id="vcode"  required="required"/></p>
			<p><input type="submit" value="登录" id="loginBtn"/><a href="page/forgetPassword.jsp" >忘记密码</a></p>
		</form>
	</div>
	<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="js/login.js"></script>
</body>
</html>