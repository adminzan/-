<%@ page import="java.util.List" %>
<%@ page import="cn.kgc.entity.Tour" %>
<%@ page import="cn.kgc.entity.Page" %><%--
  Created by IntelliJ IDEA.
  User: YGY
  Date: 2020/7/6
  Time: 14:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<script src="/Tour/js/jquery-2.2.4.min.js"></script>

<script type="text/javascript">

    $(function () {
        //alert("111");
        $(".delbtn").click(function () {
            var name=$(this).parents("tr").find("td:eq(0)").text();
            var flag =confirm("确认要删除"+name+"么？");
            if(!flag){
                return false;
            }
        });

    })

</script>



<html>

<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="css/amazeui.min.css" />
    <link rel="stylesheet" href="css/admin.css" />

    <style type="text/css">
        table th,table td {
            text-align: center;
            vertical-align: middle!important;
        }
    </style>
</head>

<body>
<div class="admin-content-body">
    <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">景点管理</strong><small></small></div>
    </div>

    <hr>

    <div class="am-g">
        <div class="am-u-sm-12 am-u-md-6">
            <div class="am-btn-toolbar">
                <div class="am-btn-group am-btn-group-xs">
                    <button type="button" class="am-btn am-btn-default"><span class="am-icon-plus"></span> <a href="touradd.jsp" >新增</a></button>
                </div>
            </div>
        </div>
        <div class="am-u-sm-12 am-u-md-3">

        </div>
        <div class="am-u-sm-12 am-u-md-3">
            <div class="am-input-group am-input-group-sm">
                <form action="/TourManagerServlet?operate=5&pageNum" method="post">
                <input type="text" class="" name="name">
                <input type="submit" value="搜索">
                    <%--<span class="am-input-group-btn">--%>
                    <%--<button class="am-btn am-btn-default" type="button" name="name">搜索</button>--%>
          <%--</span>--%>
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
                        <th class="table-check"><input type="checkbox"></th>
                        <%--<th class="table-id">ID</th>--%>
                        <th class="table-title">城市</th>
                        <th class="table-title">景点名称</th>
                        <th class="table-type">简介</th>
                        <th class="table-author am-hide-sm-only">团票价格</th>
                        <th class="table-set">展示图片</th>
                        <th class="table-set">评分</th>
                        <th class="table-set">回复数</th>
                    </tr>
                    </thead>
                    <tbody>

                    <%
                        Page<Tour> tourPage = (Page<Tour>) session.getAttribute("Page");
                        List<Tour> tourList=tourPage.getData();
                        for (Tour tour:tourList){
                            String sub=null;
                     %>
                    <tr>
                    <td><input type="checkbox"></td>
                    <%--<td><%=tour.getId()%></td>--%>
                        <td><%=tour.getCity()%></td>
                        <td><%=tour.getName()%></td>
                        <%
                            if(tour.getTourDescribe().length()>10) {
                                sub=tour.getTourDescribe().substring(0, 10);
                            }else{
                                sub=tour.getTourDescribe();
                            }
                        %>
                        <td><%=sub%></td>
                    <td><%=tour.getPrice()%></td>
                    <td><img  src="/Tour/img/tour/<%=tour.getPicPath()%>" class="img-fluid" alt="" width="100" height="70"></td>
                    <td><%=tour.getMark()%></td>
                    <td><%=tour.getReviews()%></td>
                    <%--<td class="am-hide-sm-only">男</td>--%>
                    <td>
                        <div class="am-btn-toolbar">
                            <div class="am-btn-group am-btn-group-xs">
                                <a href="/TourManagerServlet?operate=4&id=<%=tour.getId()%>" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</a>
                                <a href="/TourManagerServlet?operate=2&id=<%=tour.getId()%>" class="am-btn am-btn-default am-btn-xs am-text-secondary delbtn"><span class="am-icon-pencil-square-o"></span> 删除</a>
                            </div>
                        </div>
                    </td>
                    </tr>


                   <%-- <c:forEach items="${requestScope.list}" var="tourList">
                        <td><input type="checkbox"></td>
                        &lt;%&ndash;<td><%=tour.getId()%></td>&ndash;%&gt;
                        <td><%=tour.getName()%></td>
                        <td><%=sub%></td>
                        <td><%=tour.getPrice()%></td>
                        <td><img  src="/Tour/img/<%=tour.getPicPath()%>" class="img-fluid" alt="" width="100" height="70"></td>
                        <td><%=tour.getMark()%></td>
                        <td><%=tour.getReviews()%></td>
                        &lt;%&ndash;<td class="am-hide-sm-only">男</td>&ndash;%&gt;
                        <td>
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                                    <a href="/TourManagerServlet?operate=4&id=<%=tour.getId()%>" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</a>
                                    <a href="/TourManagerServlet?operate=2&id=<%=tour.getId()%>" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only delbtn"><span class="am-icon-trash-o"></span> 删除</a>
                                </div>
                            </div>
                        </td>
                        </tr>
                    </c:forEach>--%>

                    <%--<tr>
                        <td><input type="checkbox"></td>
                        <td><%=tour.getId()%></td>
                        <td><%=tour.getName()%></td>
                        <td><%=tour.getJianjie().substring(0,10)%></td>
                        <td><%=tour.getPrice()%></td>
                        <td><img  src="/Tour/img/<%=tour.getPicPath()%>" class="img-fluid" alt="" width="100" height="70"></td>
                        <td><%=tour.getMark()%></td>
                        <td><%=tour.getReviews()%></td>
                        &lt;%&ndash;<td class="am-hide-sm-only">男</td>&ndash;%&gt;
                        <td>
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                                    <a href="/TourManagerServlet?operate=4&id=<%=tour.getId()%>" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</a>
                                    <a href="/TourManagerServlet?operate=2&id=<%=tour.getId()%>" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only delbtn"><span class="am-icon-trash-o"></span> 删除</a>
                                </div>
                            </div>
                        </td>
                    </tr>--%>

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

                    </tbody>
                </table>
                <div class="am-cf">
                    共${Page.totalRecode}条记录
                    <div class="am-fr">
                        <ul class="am-pagination">
                            <li <%--class="am-disabled"--%>>
                                <a href="/TourManagerServlet?operate=6&pageNum=1">首页</a>
                            </li>
                            <li class="am-pagination">
                                <a href="/TourManagerServlet?operate=6&pageNum=${Page.pageNum-1}">上一页</a>
                            </li>

                               <%

                                for (int i=1;i<=tourPage.getTotalPage();i++){

                                    /*if (tourPage.getPageNum()==tourPage.getIndex()){*/
                                %>
                            <li>
                                <a href="/TourManagerServlet?operate=6&pageNum=<%=i%>"><span style="display:inline"><%=i%></span></a>
                            </li>
                                <%

                                }
                                %>

                                <%--<c:forEach begin="1"  end="${page.totalPage}" var="index">
                                    <c:choose>
                                        <c:when test="${page.pageNum==index}">
                                            <span style="color: red">[${index}]</span>
                                        </c:when>
                                        <c:otherwise>
                                            <a href="/TourManagerServlet?operate=6&pageNum=${index}">${index}</a>
                                        </c:otherwise>

                                    </c:choose>
                                </c:forEach>
                                --%>
                            <li>
                                <a href="/TourManagerServlet?operate=6&pageNum=${Page.pageNum+1}">下一页</a>
                            </li>
                            <li>
                                <a href="/TourManagerServlet?operate=6&pageNum=${Page.totalPage}">末页</a>
                            </li>


                            <%--<li>
                                <a href="#">5</a>
                            </li>
                            <li>
                                <a href="#">»</a>
                            </li>--%>
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