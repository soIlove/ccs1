<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href="style/oa.css" rel="stylesheet" type="text/css">
<script language="javascript" src="script/public.js"></script>
<title>用户账单</title>
</head>
<BODY bgColor=#dee7ff leftMargin=0 background="" topMargin=0 marginheight="0" marginwidth="0">
<center>
	  <form action="trade.do" method="post">
	  <input type="hidden" name="method" value="deposit">
	  
      <TABLE width="778" border=0 align=center cellPadding=0 cellSpacing=0 borderColor=#ffffff style="FONT-SIZE: 10pt">
        <TBODY>
          <TR>
            <TD width="82%" height=14 align=right vAlign=center noWrap>
            </TD>
            <TD width="18%" align=right vAlign=center noWrap>　</TD>
          </TR>
          <TR>
            <TD height=14 align=right vAlign=center noWrap>
            	<!-- 在这里插入查询表单 -->
            </TD>
            <TD height=14 align="left" vAlign=center noWrap>
            <% 
            /**
            * 在这里定义“添加”，“查询”等按钮
            * <input type="image" name="find" value="find" src="images/cz.gif">
            * &nbsp;&nbsp;&nbsp;&nbsp; 
            * <a href="#" onClick="BeginOut('document.do?method=addInput','470')">
            * <img src="images/addpic.gif" border=0 align=absMiddle style="CURSOR: hand"></a>
            */ 
            %>
            
              信用卡号：<input type="text" name="cardNo" value="${bill.card.cardNo }" readonly="true">
              
              用户姓名：<input type="text" value="${bill.card.owner.name }" readonly="true">
              
              账单期数：<input type="text" name="sn" value="${bill.sn }" readonly="true"> <br>
              
              账单总额：<input type="text" name="amount" readonly="true" value="${bill.amount }">
              
              超期罚款：<input type="text" name="amerce" readonly="true" value="${tradeForm.amerce }">
              
              应交总额：<input type="text" name="" value="${tradeForm.shouldPay}" readonly="true">
              <input type="submit" name="submit2" value="付款">
            </TD>
          </TR>
          <TR>
            <TD height=28 colspan="2" align=center vAlign=center noWrap background=images/list_middle.jpg>&nbsp;&nbsp;
            <!-- 可以在这里插入分页导航条 -->
            *********************************** 账单明细列表 ***************************************
            </TD>
          </TR>
        </TBODY>
      </TABLE>
      </form>
      <table width="778" border="0" cellPadding="0" cellSpacing="1" bgcolor="#6386d6">
          <!-- 列表标题栏 -->
	      <tr bgcolor="#EFF3F7" class="TableBody1">
		      <td width="25%" height="37" align="center"><b>类型</b></td>
		      <td width="25%" height="37" align="center"><B>备注[商户]</B></td>
		      <td width="25%" height="37" align="center"><b>发生时间</b></td>
		      <td width="25%" height="37" align="center"><b>发生金额</b></td>
          </tr>
          <!-- 列表数据栏 -->
          <c:if test="${!empty trades}">
          <c:forEach items="${trades }" var="trade">
	      <tr bgcolor="#EFF3F7" class="TableBody1" onmouseover="this.bgColor = '#DEE7FF';" onmouseout="this.bgColor='#EFF3F7';">
		      <td align="center" vAlign="center">${trade.type}</td>
	          <td align="center" vAlign="center">${trade.remark }</td>
	          <td align="center" vAlign="center">${trade.tradeTime }</td>
	          <td align="center" vAlign="center"><fmt:formatNumber type="currency" value="${trade.amount}" /> </td>
        </tr>
        </c:forEach>
		</c:if>
        <!-- 在列表数据为空的时候，要显示的提示信息 -->
	    <c:if test="${empty trades}">
	    <tr>
	    	<td colspan="5" align="center" bgcolor="#EFF3F7" class="TableBody1" onmouseover="this.bgColor = '#DEE7FF';" onmouseout="this.bgColor='#EFF3F7';">
	    	没有找到相应的记录
	    	</td>
	    </tr>
	    </c:if>
      </table>
      <TABLE width="778" border=0 align=center cellPadding=0 cellSpacing=0 borderColor=#ffffff style="FONT-SIZE: 10pt">
        <TBODY>
          <TR>
            <TD height=28 align=right vAlign=center noWrap background=images/list_middle.jpg>&nbsp;&nbsp;
            <!-- 可以在这里插入分页导航条 -->
    		</TD>
          </TR>
        </TBODY>
      </TABLE>
</center>

</body>

</html>
