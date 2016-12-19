package com.yc.daily;

import javax.servlet.jsp.*;

import javax.servlet.jsp.tagext.*;

public class UserInfoTag extends TagSupport {

	//JSP 自定义标签类还有如下要求。
	//  •如果标签类包含属性，每个属性都有对应的 getter 和 setter 方法。
    //  •重写 doStartTag() 方法，这个方法负责生成页面内容。

    private UserInfo user;

    //doStartTag()   在开始标签属性设置后调用
    //如果返回SKIP_BODY则忽略标签之中的内容
    //如果返回EVAL_BODY_INCLUDE则将标签体的内容进行输出
    public int doStartTag() throws JspException {
        try {
            JspWriter out = this.pageContext.getOut();
            if(user == null) {
                out.println("No UserInfo Found...");
                return SKIP_BODY;
            }
            out.println("<table width='500px' border='1' align='center'>");
            out.println("<tr>");
            out.println("<td width='20%'>Username:</td>");
            out.println("<td>" + user.getUserName() + "</td>");
            out.println("</tr>");
            out.println("<tr>");
            out.println("<td>Age:</td>");
            out.println("<td>" + user.getAge() + "</td>");
            out.println("</tr>");
            out.println("<tr>");
            out.println("<td>Email:</td>");
            out.println("<td>" + user.getEmail() + "</td>");
            out.println("</tr>");
            out.println("</table>");
        } catch(Exception e) {
            throw new JspException(e.getMessage());
        }
        return SKIP_BODY;
    }

    //doEndTag() 在结束标签之前调用
    //返回SKIP_PAGE跳过整个jsp页面后面的输出
    //返回EVAL_PAGE执行页面余下部分
    @Override
    public int doEndTag() throws JspException {
        return EVAL_PAGE;
    }

    //release() 生命周期结束时调用
    @Override
    public void release() {
        super.release();
        this.user = null;
    }

    //getter and setters
    public UserInfo getUser() {
        return user;
    }

    public void setUser(UserInfo user) {
        this.user = user;
    }
}

