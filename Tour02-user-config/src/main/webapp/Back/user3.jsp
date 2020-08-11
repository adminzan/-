<%@ page import="java.util.List" %>
<%@ page import="cn.kgc.entity.User" %>
<%@ page import="cn.kgc.entity.UserPage" %>

<%--
  Created by IntelliJ IDEA.
  User: YGY
  Date: 2020/7/6
  Time: 14:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="css/amazeui.min.css" />
    <link rel="stylesheet" href="css/admin.css" />
    <style type="text/css">
        .input_1{
            width: 100px;

        }
        .input_2{
            width: 150px;

        }
        .from_1{
            margin-left: -600px;
           /*margin-top: 30px;*/
        }
        .from_2{
            margin-left: -350px;
            margin-top: -45px;
        }
        /*.am-pagination1{*/
            /*list-style: none;*/
            /**/
        /*}*/
        .am-paginations{
            list-style: none;
        }
        .li_1{
            float: right;
        }
        .li_2{
            float: right;
        }
        .li_3{
            float: right;
        }
        ul.am-paginations li{
            display: inline-block;
            border: 1px solid white;
        }
        .sss{
            border: 1px solid #2c8d5a !important;
        }
    </style>

</head>

<body>
<div class="sss"></div>
<div class="admin-content-body">
    <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">新闻管理</strong><small></small></div>
    </div>

    <hr>

    <div class="am-g">
        <div class="am-u-sm-12 am-u-md-6">
            <div class="am-btn-toolbar">
                <div class="am-btn-group am-btn-group-xs">
                    <button type="button" class="am-btn am-btn-default" onclick=location.href="/Back/userAdd.jsp"><span class="am-icon-plus"></span> 新增</button>
                </div>
            </div>
        </div>
        <div class="am-u-sm-12 am-u-md-3">
        </div>
        <div class="am-u-sm-12 am-u-md-3">
            <div class="am-input-group am-input-group-sm">
                <form action="/UserManagerServlet?operate=4" class="from_1" method="post">
                <input type="text" class="input_2"  name="username" placeholder="请输入姓名查询" required/>
                    <input  type="submit" value="搜索" >
                </form>

                <form action="/UserManagerServlet?operate=5" method="post" class="from_2">
                    按年龄查询：
                    <input class="input_1" type="text" name="agename1" placeholder="开始" required/>
                    <input class="input_1" type="text" name="agename2" placeholder="结束" required/>
                    <input type="submit" value="搜索">
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
                        <th class="table-title">姓名</th>
                        <th class="table-type">用户名</th>
                        <th>年龄</th>
                        <th class="table-author am-hide-sm-only">性别</th>
                        <th>权限</th>
                        <th>用户图片</th>
                        <th class="table-set">操作</th>
                    </tr>

                    </thead>


                    <tbody>

                    <%
                        UserPage<User> userUserPage =(UserPage<User>)session.getAttribute("userList");
                        List<User> userList = userUserPage.getData();
                        for (User user:userList){
                            String userNames = user.getUserName();
                            session.setAttribute("username",userNames);
                            //request.setAttribute("userName",userNames);

                    %>


                    <tr>
                        <td><input type="checkbox"></td>
                        <td><%=user.getId()%></td>
                        <td>
                            <a href="#"><%=session.getAttribute("username")%></a>
                        </td>
                        <td><%=user.getUserName()%></td>

                        <td><%=user.getAge()%></td>
                        <td class="am-hide-sm-only">男</td>

                        <td>
                            <%

                                if (user.getType()==0){

                            %>

                            管理员

                            <%
                                }else{
                            %>

                            普通人

                            <%
                                }
                            %>

                        </td>

                        <td>
                            <img src="/Tour/img/user/<%=user.getPicPath()%>"class="img-fluid" alt="" width="100" height="70">
                        </td>
                        <td>
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                                    <%--<%--%>
                                        <%--String username = (String)session.getAttribute("words");--%>
                                        <%--if (username==null){--%>
                                    <%--%>--%>
                                    <a href="/UserManagerServlet?operate=1&id=<%=user.getId()%>" class="am-btn am-btn-default am-btn-xs am-text-secondary" ><span class="am-icon-pencil-square-o"></span> 编辑</a>

                                    <a href="/UserManagerServlet?operate=2&id=<%=user.getId()%>" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</a>
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
                    <%--<tr>
                        <td><input type="checkbox"></td>
                        <td>1</td>
                        <td>
                            <a href="#">张三</a>
                        </td>
                        <td>admin</td>
                        <td class="am-hide-sm-only">男</td>
                        <td>
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                                    <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>1</td>
                        <td>
                            <a href="#">张三</a>
                        </td>
                        <td>admin</td>
                        <td class="am-hide-sm-only">男</td>
                        <td>
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                                    <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>1</td>
                        <td>
                            <a href="#">张三</a>
                        </td>
                        <td>admin</td>
                        <td class="am-hide-sm-only">男</td>
                        <td>
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                                    <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>1</td>
                        <td>
                            <a href="#">张三</a>
                        </td>
                        <td>admin</td>
                        <td class="am-hide-sm-only">男</td>
                        <td>
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                                    <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>1</td>
                        <td>
                            <a href="#">张三</a>
                        </td>
                        <td>admin</td>
                        <td class="am-hide-sm-only">男</td>
                        <td>
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                                    <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>1</td>
                        <td>
                            <a href="#">张三</a>
                        </td>
                        <td>admin</td>
                        <td class="am-hide-sm-only">男</td>
                        <td>
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                                    <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>1</td>
                        <td>
                            <a href="#">张三</a>
                        </td>
                        <td>admin</td>
                        <td class="am-hide-sm-only">男</td>
                        <td>
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                                    <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>1</td>
                        <td>
                            <a href="#">张三</a>
                        </td>
                        <td>admin</td>
                        <td class="am-hide-sm-only">男</td>
                        <td>
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                                    <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>1</td>
                        <td>
                            <a href="#">张三</a>
                        </td>
                        <td>admin</td>
                        <td class="am-hide-sm-only">男</td>
                        <td>
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                                    <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>1</td>
                        <td>
                            <a href="#">张三</a>
                        </td>
                        <td>admin</td>
                        <td class="am-hide-sm-only">男</td>
                        <td>
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                                    <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
                                </div>
                            </div>
                        </td>
                    </tr>--%>


                    <%--<%--%>
                        <%--List<Page> users =(List<Page>) session.getAttribute("userList");--%>
                        <%--Page page1= (Page) users;--%>
                    <%--%>--%>


                    </tbody>
                </table>
                <div class="am-cf">
                    共<%=userUserPage.getTotalRecode()%>条记录
                    <div class="am-fr">
                        <ul class="am-paginations">
                            <li>
                                <a href="/UserManagerServlet?operate=5&agename1=<%=session.getAttribute("likename")%>&agename2=<%=session.getAttribute("likename1")%>&pageNum=1">首页</a>
                            </li>
                            <li class="li_1">
                                <a href="/UserManagerServlet?operate=5&agename1=<%=session.getAttribute("likename")%>&agename2=<%=session.getAttribute("likename1")%>&pageNum=<%=userUserPage.getPageNum()+1%>">下一页</a>
                            </li>
                            <li class="li_2">
                                <%
                                for (int i = 1; i<= userUserPage.getTotalPage(); i++){
                                    if (i== userUserPage.getPageNum()){
                                %>

                                <a href="/UserManagerServlet?operate=5&agename1=<%=session.getAttribute("likename")%>&agename2=<%=session.getAttribute("likename1")%>&pageNum=<%=i%>">
                                    [<%=i%>]
                                </a>

                                <%
                                    }else{

                                %>

                                <a href="/UserManagerServlet?operate=5&agename1=<%=session.getAttribute("likename")%>&agename2=<%=session.getAttribute("likename1")%>&pageNum=<%=i%>">
                                    <%=i%>
                                </a>

                                <%
                                    }
                                }
                                %>
                            </li>
                            <%--<li class="am-active11">--%>
                                <%--&lt;%&ndash;<span style="color: red">[]</span>&ndash;%&gt;--%>
                                <%--<a class="aaa" href="/UserManagerServlet?operate=6&pageNum=1" >1</a>--%>
                                <%--&lt;%&ndash;<a href="/UserManagerServlet?operate=6andpageNum=1">1</a>&ndash;%&gt;--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<a class="aaa" href="/UserManagerServlet?operate=6&pageNum=2">2</a>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<a class="aaa" href="/UserManagerServlet?operate=6&pageNum=3">3</a>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<a class="aaa" href="/UserManagerServlet?operate=6&pageNum=4">4</a>--%>
                            <%--</li>--%>
                            <%--<li>--%>

                                <%--<a class="aaa" href="/UserManagerServlet?operate=6&pageNum=5">5</a>--%>
                            <%--</li>--%>
                            <li class="li_3">
                                <a href="/UserManagerServlet?operate=5&agename1=<%=session.getAttribute("likename")%>&agename2=<%=session.getAttribute("likename1")%>&pageNum=<%=userUserPage.getPageNum()-1%>">上一页</a>

                            </li>
                        </ul>
                    </div>
                </div>
                <hr>
            </form>
        </div>
    </div>
</div>
</body>
</html>