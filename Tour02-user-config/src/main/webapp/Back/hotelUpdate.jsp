
<%@ page import="java.util.List" %>
    <%@ page import="cn.kgc.entity.Hotel" %>

<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="css/amazeui.min.css" />
    <link rel="stylesheet" href="css/admin.css" />
    <style type="text/css" >
        input,input.return{
            margin-top: 10px;
        }

        textarea{
            margin-top: 10px;
        }



    </style>
</head>

<body>
<div class="admin-content-body">
    <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">编辑酒店</strong><small></small></div></div>

    <hr>

    <!-- content start -->
    <div class="am-g">
        <div class="am-u-sm-12 am-u-md-6">
            <div class="am-btn-toolbar">
                <form action="/HotelManagerServlet?operate=1" method="post">
                        <input type="hidden" readonly name="id" value="${hotel.id}" style="width: 200px"><br/>

                        酒店名称：<input type="text" name="name" value="${hotel.name}" style="width: 200px" ><br/>

                        简 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;介：<textarea cols="22" rows="4"  name="describe"  required style="width: 200px"></textarea><br />

                        价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格：<input type="text" name="price" value="${hotel.price}" required style="width: 200px"><br/>

                        图片展示：<input type="text" name="picPath" value="${hotel.picPath}" style="width: 200px"><br/>

                        详细图片：<input type="text" name="picPath2" style="width: 200px" value="${hotel.picPath2}"><br/><br/>

                        等 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;级：<select name="level" required="true" style="width: 200px">


                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>

                    </select><br/>


                        评 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;分: <input type="text"  name="mark" style="width: 200px" ><br/>
                        <input type="submit" value="确定">&nbsp;&nbsp;
                        <input type="reset" value="取消">




                    </form>


            </div>
        </div>
    </div>

    <script type="text/javascript"
            src="assets/js/libs/jquery-1.10.2.min.js">
    </script>
    <script type="text/javascript" src="myplugs/js/plugs.js">
    </script>

</div>
</body>
</html>