<%@ page import="java.util.List" %>
<%@ page import="cn.kgc.entity.Tour" %><%--
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
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">景点管理 > 添加景点</strong><small></small></div></div>

    <hr>

    <!-- content start -->
    <div class="am-g">
        <div class="am-u-sm-12 am-u-md-6">
            <div class="am-btn-toolbar">
                <form action="/TourManagerServlet?operate=3 " enctype="multipart/form-data" method="post">
                    景点名称：<input type="text" name="name" placeholder="请填写具体景点名称"><br/>
                    所在城市：<input type="text" name="city" required><br>
                    简 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;介：<textarea cols="22" rows="4"  name="jianjie"></textarea><br />
                    团票价格：<input type="text" name="price"><br/>
                    评 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;分：<input type="text" name="mark"><br/>

                    上传封面：<input type="file" name="picPath"  accept="image/gif,image/jpeg,image/jpg,image/png,image/svg"><br/>
                    上传照片：<input type="file" name="picPath2" accept="image/*"><br/>


                    评论条量：<input type="text" name="reviews"><br/>
                    <input type="submit" value="确定">
                    <input type="reset" value="取消">
                   <%-- <button href="/TourManagerServlet?operate=0" class="return">返回</button>--%>


                </form>
                <!--<form class="am-form am-form-horizontal"
                     method="post"
                    style="padding-top:30px;" data-am-validator>
                    <div class="am-form-group">
                        <label for="user-name" class="am-u-sm-3 am-form-label">
                        新密码 </label>
                        <div class="am-u-sm-9">
                            <input type="password" id="doc-vld-pwd-1" required placeholder="请输入新密码"
                                name="password"> <small>输入新密码。</small>
                        </div>
                    </div>
                    <div class="am-form-group">
                        <label for="user-name" class="am-u-sm-3 am-form-label">
                            重复密码</label>
                        <div class="am-u-sm-9">
                            <input type="password" id="doc-vld-pwd-2" required placeholder="请输入重复密码"
                                name="pwd"  data-equal-to="#doc-vld-pwd-1"  required> <small>输入重复密码。</small>
                        </div>
                    </div>
                    <div class="am-form-group">
                        <div class="am-u-sm-9 am-u-sm-push-3">
                            <input type="submit" class="am-btn am-btn-success" value="修改密码" />
                        </div>
                    </div>
                </form>-->
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