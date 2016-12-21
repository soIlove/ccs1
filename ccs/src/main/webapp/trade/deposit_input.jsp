<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>还款</title>
</head>
<body>
<form onSubmit="return Validator.Validate(this,2)" action="trade.do" method="post">
<input type="hidden" name="method" value="searchBills">
信用卡号：<input type="text" name="cardNo" dataType="Require" msg="您必须输入用户标识"> <br>
还款期号：<input type="text" name="sn">(格式：yyyy-MM，如：2007-05) <br>
<input type="submit" name="submit1" value="查询用户账单">
</form>
</body>
</html>