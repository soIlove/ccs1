<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.yc.daily.UserInfo" %>
<!-- taglib 的语法格式如下：
       其中 uri 属性确定标签库的 URI，这个 URI 可以确定一个标签库,
       而 prefix 属性指定标签库前缀，即所有使用该前缀的标签将由此标签库处理。
 -->
<%@ taglib uri="WEB-INF/test.tld" prefix="aa"%>
<html>
<head>
<title>自定义标签示范</title>
</head>
<body>
 <!-- 为什么要使用自定义标签呢？主要是为了取代丑陋的 JSP 脚本。在 HTML 页面中插入 JSP 脚本有如下几个坏处：
          •JSP 脚本非常丑陋，难以阅读。
          •JSP 脚本和 HTML 代码混杂，维护成本高。
          •HTML 页面中嵌入 JSP 脚本，导致美工人员难以参与开发。
      出于以上三点的考虑，我们需要一种可在页面中使用的标签
      这种标签具有和 HTML 标签类似的语法，但由可以完成 JSP 脚本的功能——这种标签就是 JSP 自定义标签。
  -->
  
  <!-- 在 JSP1.1 规范中开发自定义标签库比较复杂，JSP 2 规范简化了标签库的开发，在 JSP 2 中开发标签库只需如下几个步骤：
          1.开发自定义标签处理类；
          2.建立一个 *.tld 文件，每个 *.tld 文件对应一个标签库，每个标签库对应多个标签；
         // 3.配置web.xml；(可简化)
          4.在需要使用此标签的jsp页面头部引入；
          5.在 JSP 文件中使用自定义标签。
   -->


<h2>下面显示的是自定义标签中的内容</h2>
<!-- 创建需要展现UserInfo的实例（用于测试数据） -->
    <%
    UserInfo user = new UserInfo();
    user.setUserName("Xuwei");
    user.setAge(33);
    user.setEmail("test@test.test");
    pageContext.setAttribute("userinfo", user);  
    %>
    
    
    <!-- 给标签设置user属性绑定要展现的UserInfo对象  -->
    <aa:showUserInfo user="${userinfo }" />
    
    
</body>
</html>