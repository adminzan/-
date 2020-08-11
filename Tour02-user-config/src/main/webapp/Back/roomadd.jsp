<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/17
  Time: 6:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="/RoomTypeMangageServlet?operate=1" method="post">
    id:<input type="text" name="hid"><br>
    名称：<input type="text" name="name" required><br>
    简介：<input type="text" name="describe"><br>
    图片：<input type="text" name="picPath"><br>
    <input type="submit" value="确定">
</form>

</body>
</html>
