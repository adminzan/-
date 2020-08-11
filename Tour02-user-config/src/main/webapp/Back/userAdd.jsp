<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/7
  Time: 18:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/UserManagerServlet?operate=3" enctype="multipart/form-data" method="post">
    姓名：<input type="text" name="userName" required><br>
    密码：<input type="password" name="password" required><br>
    年龄：<input type="text" name="userage" pattern="^[1-7][0-9]$" required placeholder="10到80"  ><br>
    类型：<select name="type" required>
    <option value="0">普通人</option>
    <option value="1">管理员</option>
    </select><br>
    用户图片：<input type="file" name="pic" id="pic" accept="image/jpeg" required><br>

    <input type="submit" value="提交">
</form>
</body>
</html>
