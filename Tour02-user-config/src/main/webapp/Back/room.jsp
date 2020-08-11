<%@ page import="cn.kgc.entity.RoomType" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/17
  Time: 6:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/amazeui.min.css" />
    <link rel="stylesheet" href="css/admin.css" />
</head>
<body>

<div class="sss"></div>
<div class="admin-content-body">
    <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">房间管理</strong><small></small></div>
    </div>

    <hr>

    <div class="am-g">
        <div class="am-u-sm-12 am-u-md-6">
            <div class="am-btn-toolbar">
                <div class="am-btn-group am-btn-group-xs">
                    <button type="button" class="am-btn am-btn-default" onclick=location.href="/Back/roomadd.jsp"><span class="am-icon-plus"></span> 新增</button>
                </div>
            </div>
        </div>
        <div class="am-u-sm-12 am-u-md-3">
        </div>
        <div class="am-u-sm-12 am-u-md-3">
            <div class="am-input-group am-input-group-sm">
                <form action="/RoomTypeMangageServlet?operate=0" class="from_1" method="post">
                    <input type="text" class="input_2"  name="roomname" placeholder="请输入姓名查询" required/>
                    <input  type="submit" value="搜索" >
                </form>


                <%--<span class="am-input-group-btn">--%>
                <%--</span>--%>


            </div>
        </div>
    </div>
    <div class="am-g">
        <div class="am-u-sm-12">
            <form class="am-form">
                <table class="am-table am-table-striped am-table-hover table-main">
                    <thead>
                    <tr>
                        <th class="table-check"><input type="checkbox"></th>
                        <th class="table-id">ID</th>
                        <th class="table-title">房间名字</th>
                        <th class="table-type">简介</th>
                        <th>图片</th>
                        <th class="table-set">操作</th>
                    </tr>

                    </thead>


                    <tbody>

                        <%
                        List<RoomType> roomTypeList=(List<RoomType>)session.getAttribute("roomList");

                        for (RoomType room:roomTypeList){
                            String userNames = room.getName();
                            session.setAttribute("username",userNames);
                            //request.setAttribute("userName",userNames);

                    %>


                    <tr>
                        <td><input type="checkbox"></td>
                        <td><%=room.getId()%></td>
                        <td>
                            <a href="#"><%=session.getAttribute("username")%></a>
                        </td>
                        <td><%=room.getName()%></td>

                        <td><%=room.getDescribe()%></td>

                        <td>
                        <%=room.getPicPath()%>
                        <td>
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                                    <%--<%--%>
                                    <%--String username = (String)session.getAttribute("words");--%>
                                    <%--if (username==null){--%>
                                    <%--%>--%>
                                    <a href="/UserManagerServlet?operate=1&id=<%=room.getId()%>" class="am-btn am-btn-default am-btn-xs am-text-secondary" ><span class="am-icon-pencil-square-o"></span> 编辑</a>

                                    <a href="/UserManagerServlet?operate=2&id=<%=room.getId()%>" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</a>
                                    <%--<%--%>
                                    <%--}--%>
                                    <%--%>--%>
                                </div>
                            </div>
                        </td>
                    </tr>

                        <%
                        }
                    %>
</body>
</html>
