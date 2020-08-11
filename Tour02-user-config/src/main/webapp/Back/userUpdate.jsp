
<%@ page import="cn.kgc.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/7
  Time: 19:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>

<html>
<head>
    <title>Title</title>
</head>

<body>

<form action="/UserManagerServlet?operate=11" method="post">
    id:   <input type="text" name="id" value="${usernamess.id}" READONLY><br>
    姓名：<input type="text" name="userName" value="${usernamess.userName}" required><br>
    密码：<input type="password" name="passWord" value="${usernamess.passWord}" required><br>
    类型：<select name="type">
    <option>请选择</option>
    <option value="0">管理员</option>
    <option value="1">凡人</option>
</select><br>
    <input type="submit" value="提交">

</form>

</body>
</html>
