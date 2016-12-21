<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href="style/oa.css" rel="stylesheet" type="text/css">
<title>用户申请信息</title>
</head>
<body>
<center>
<form action="user.do" method="post">
<TABLE class="tableEdit" border="0" cellspacing="1" cellpadding="0" style="width:580px;">
	<TBODY>
		<TR>
			<!-- 这里是添加、编辑界面的标题 -->
			<td align="center" class="tdEditTitle">用户申请信息</TD>
		</TR>
		<TR>
			<td>
			<!-- 主输入域开始 -->

<input type="hidden" name="method" value="add">
<table class="tableEdit" style="width:580px;" cellspacing="0" border="0" cellpadding="0">
	<tr>
		<td class="tdEditLabel" >用户姓名</td>			
		<td class="tdEditContent"><input type="text" name="name"></td>
		<td class="tdEditLabel" >身份证号</td>			
		<td class="tdEditContent"><input type="text" name="idCardNo"></td>
	</tr>
	<tr>
		<td class="tdEditLabel" >用户密码</td>			
		<td class="tdEditContent"><input type="text" name="password"></td>
		<td class="tdEditLabel" >申请等级</td>			
		<td class="tdEditContent">
		<select name="applyLevel">
			<option value="GOLDEN">金卡</option>
			<option value="SILVER">银卡</option>
			<option value="EXCELLENT">优质卡</option>
			<option value="GENERAL">普通卡</option>
		</select>
		</td>
	</tr>
	<tr>
		<td class="tdEditLabel" >性别</td>			
		<td class="tdEditContent"><input type="text" name="sex"></td>
		<td class="tdEditLabel" >月收入</td>			
		<td class="tdEditContent"><input type="text" name="salary">
		</td>
	</tr>
</table>

			<!-- 主输入域结束 -->
			</td>
		</TR>
	</TBODY>
</TABLE>

<TABLE>
		<TR align="center">
			<TD colspan="3" bgcolor="#EFF3F7">
			<input type="submit" name="saveButton"
				class="MyButton" value="保存用户申请信息"> 
			<input type="button" class="MyButton"
				value="关闭窗口" onclick="window.close()">
			</TD>
		</TR>
</TABLE>
</form>
</center>
</body>
</html>