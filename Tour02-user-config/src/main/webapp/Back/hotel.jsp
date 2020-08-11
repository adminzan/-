<%@ page import="java.util.List" %>
<%@ page import="cn.kgc.entity.Hotel" %>
<%@page import="cn.kgc.entity.HotelPage" %>
<%--
  Created by IntelliJ IDEA.
  User: YGY
  Date: 2020/7/6
  Time: 14:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="/Tour/js/jquery-2.2.4.min.js"></script>

<script type="text/javascript">

    $(function () {
        // alert("111");
        $(".delbtn").click(function () {

            alert("111");

            var name = $(this).parents("tr").find("td:eq(0)").text();

            var flag = confirm("确认要删除" + name + "么？");

            if (!flag) {
                return false;
            }
            //return false;


        })

    })

</script>

<html>

<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="css/amazeui.min.css"/>
    <link rel="stylesheet" href="css/admin.css"/>


    <style type="text/css">
        .table th, .table td {
            text-align: center;
            vertical-align: middle !important;
        }

        .from_1 {
            margin-left: -600px;
        }

        .input_2 {
            width: 150px;
        }
    </style>
</head>

<body>
<div class="admin-content-body">
    <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">酒店管理</strong>
            <small></small>
        </div>
    </div>

    <hr>

    <div class="am-g">
        <div class="am-u-sm-12 am-u-md-6">
            <div class="am-btn-toolbar">
                <div class="am-btn-group am-btn-group-xs">
                    <button type="button" class="am-btn am-btn-default" onclick=location.href="/Back/hoteladd.jsp"><span
                            class="am-icon-plus"></span> 新增
                    </button>
                </div>
            </div>
        </div>
        <div class="am-u-sm-12 am-u-md-3">

        </div>
        <div class="am-u-sm-12 am-u-md-3">
            <div class="am-input-group am-input-group-sm">
                <form action="/HotelManagerServlet?operate=7&pageNum=1" class="from_1" method="post">
                    <input type="text" class="input_2" name="name" placeholder="请输入酒店名查询">
                    <input type="submit" value="搜索">
                </form>
            </div>
        </div>
    </div>
    <div class="am-g">
        <div class="am-u-sm-12">
            <form class="am-form">
                <table class="am-table am-table-striped am-table-hover table-main">
                    <thead>
                    <tr>
                        <th class="table-check">
                            <input type="checkbox">
                        </th>

                        <th class="table-id">ID</th>
                        <th class="table-title">酒店名称</th>
                        <th class="table-type">简介</th>
                        <th class="table-author am-hide-sm-only">价格</th>
                        <th class="table-set">图片简介</th>
                        <th class="table-set">等级</th>
                        <th class="table-set">评分</th>
                    </tr>
                    </thead>
                    <tbody>
                    <%
                        HotelPage<Hotel> hotelPage = (HotelPage<Hotel>) session.getAttribute("hotelList2");
                        List<Hotel> hotelList = hotelPage.getData();
                        for (Hotel hotel : hotelList) {
                            String hotelName = hotel.getName();
                            session.setAttribute("name", hotelName);
                    %>


                    <c:forEach items="${requestScope.list}" var="hotelList">
                        <td><input type="checkbox"></td>
                        <td><%=hotel.getId()%>
                        </td>
                        <td><%=hotel.getName()%>
                        </td>
                        <td>
                            <%
                                String str = null;
                                if(hotel.getDescribe().length()>10){
                                    str = hotel.getDescribe().substring(0,10);
                                }else{
                                    str = hotel.getDescribe();
                                }
                            %>
                            <%=str%>
                        </td>
                        <td><%=hotel.getPrice()%>
                        </td>
                        <td><img src="/Tour/img/hotel/<%=hotel.getPicPath()%>" class="img-fluid" alt="" width="100"
                                 height="70"></td>
                        <td><%=hotel.getLevel()%>
                        </td>
                        <td><%=hotel.getMark()%>
                        </td>

                        <td>
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                                    <a href="/HotelManagerServlet?operate=4&id=<%=hotel.getId()%>"><span
                                            class="am-icon-pencil-square-o"></span> 编辑</a>
                                    <a href="/HotelManagerServlet?operate=2&id=<%=hotel.getId()%>"><span
                                            class="am-icon-trash-o"></span>删除</a>


                                </div>
                            </div>
                        </td>
                        </tr>
                    </c:forEach>


                    <%
                        }
                    %>


                    </tbody>
                </table>
                <div class="am-cf">
                    共<%=hotelPage.getTotalRecode()%>条记录
                    <div class="am-fr">
                        <ul class="am-pagination">
                            <li>
                                <a href="/HotelManagerServlet?operate=6&pageNum=1">首页</a>
                            </li>
                            <li>
                                <a href="/HotelManagerServlet?operate=6&pageNum=<%=hotelPage.getPageNum()-1%>">上一页</a>
                            </li>
                            <%
                                for (int i = 1; i <= hotelPage.getTotalPage(); i++) {

                            %>
                            <li>
                                <a href="/HotelManagerServlet?operate=6&pageNum=<%=i%>"><span
                                        style="display:inline "><%=i%></span></a>
                            </li>

                            <%
                                }
                            %>


                            <li>
                                <a href="/HotelManagerServlet?operate=6&pageNum=<%=hotelPage.getPageNum()+1%>">下一页</a>
                            </li>
                            <li>
                                <a href="/HotelManagerServlet?operate=6&pageNum=<%=hotelPage.getTotalPage()%>">末页</a>
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













