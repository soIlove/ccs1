<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%-- <%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title><decorator:title default="欢迎使用源辰CCS系统" /></title>
<style type="text/css">
/* common styling */
.menu {font-family: arial, sans-serif; width:750px; position:relative; margin:0; font-size:11px; margin:5px 0;}
.menu ul li a, .menu ul li a:visited {display:block; text-decoration:none; color:#000;width:104px; height:20px; text-align:center; color:#fff; border:1px solid #fff; background:#710069; line-height:20px; font-size:11px; overflow:hidden;}
.menu ul {padding:0; margin:0;list-style-type: none; }
.menu ul li {float:left; margin-right:1px; position:relative;}
.menu ul li ul {display: none;}

/* specific to non IE browsers */
.menu ul li:hover a {color:#fff; background:#36f;}
.menu ul li:hover ul {display:block; position:absolute; top:21px; left:0; width:105px;}
.menu ul li:hover ul li a.hide {background:#6a3; color:#fff;}
.menu ul li:hover ul li:hover a.hide {background:#6fc; color:#000;}
.menu ul li:hover ul li ul {display: none;}
.menu ul li:hover ul li a {display:block; background:#ddd; color:#000;}
.menu ul li:hover ul li a:hover {background:#6fc; color:#000;}
.menu ul li:hover ul li:hover ul {display:block; position:absolute; left:105px; top:0;}
.menu ul li:hover ul li:hover ul.left {left:-105px;}

</style>
<!--[if lte IE 6]>
<style type="text/css">
.menu ul li a.hide, .menu ul li a:visited.hide {display:none;}
.menu ul li a:hover ul li a.hide {display:none;}

.menu ul li a:hover {color:#fff; background:#36f;}
.menu ul li a:hover ul {display:block; position:absolute; top:21px; left:0; width:105px;}
.menu ul li a:hover ul li a.sub {background:#6a3; color:#fff;}
.menu ul li a:hover ul li a {display:block; background:#ddd; color:#000;}
.menu ul li a:hover ul li a ul {visibility:hidden;}
.menu ul li a:hover ul li a:hover {background:#6fc; color:#000;}
.menu ul li a:hover ul li a:hover ul {visibility:visible; position:absolute; left:105px; top:0; color:#000;}
.menu ul li a:hover ul li a:hover ul.left {left:-105px;}

</style>
<![endif]-->
</head>
<body>
<h1>尚学堂源辰CCS系统</h1>${test}
<!-- 显示菜单开始 -->
<div class="menu">
	<ul>
<li><a class="hide" href="javascript:alert('test')">菜单1</a>

<!--[if lte IE 6]>
<a href="javascript:alert('test')">菜单1
<table><tr><td>
<![endif]-->

	<ul>
		<li><a href="javascript:alert('test')" title="子菜单1">子菜单1</a></li>
		<li><a href="javascript:alert('test')" title="子菜单2">子菜单2</a></li>
	</ul>

<!--[if lte IE 6]>
</td></tr></table>
</a>
<![endif]-->

</li>

<li><a class="hide" href="javascript:alert('test')">菜单2</a>

<!--[if lte IE 6]>
<a href="javascript:alert('test')">菜单2
<table><tr><td>
<![endif]-->

	<ul>
		<li><a href="javascript:alert('test')" title="子菜单1">子菜单1</a></li>
		<li><a href="javascript:alert('test')" title="子菜单2">子菜单2</a></li>
	</ul>

<!--[if lte IE 6]>
</td></tr></table>
</a>
<![endif]-->

</li>

	</ul>
</div>
<!-- 显示菜单结束 -->

<hr>
<!-- 显示主体内容开始 -->
<decorator:body/>
<!-- 显示主体内容结束 -->
</body>
</html>