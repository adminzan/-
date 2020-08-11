

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
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">添加酒店</strong><small></small></div></div>

    <hr>

    <!-- content start -->
    <div class="am-g">
        <div class="am-u-sm-12 am-u-md-6">
            <div class="am-btn-toolbar">
                <form action="/HotelManagerServlet?operate=3" enctype="multipart/form-data" method="post">
                    酒店名称：<input type="text" name="name" required="true" placeholder="请填写具体酒店名称" style="width: 200px"><br/>

                    简 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;介：<textarea cols="22" name="jianjie" rows="4" minlength="10" required="true" placeholder="输入的字数不能少余10个" name="describe" style="width: 200px;"></textarea><br />

                    价 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格：<input type="text" name="price" required="true" style="width: 200px"><br/>

                    城 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;市：<input type="text" name="city" required="true" style="width: 200px"><br/>

                    图片封面：<input type="file" required="true" name="picPath" placeholder="" style="width: 200px"><br/>

                    <%--图片地址：<input type="text" name="picPath2" required="true"  placeholder="请输入图片路径" style="width: 200px"><br/><br/>--%>

                    等 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;级：
                    <select name="level" required="true" style="width: 200px">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select><br/>

                    评 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;分: <input type="text" required="true" name="mark" style="width: 200px"><br/>

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

