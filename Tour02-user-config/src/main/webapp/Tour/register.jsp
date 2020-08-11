<%--
  Created by IntelliJ IDEA.
  User: YGY
  Date: 2020/7/6
  Time: 2:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Panagea - Premium site template for travel agencies, hotels and restaurant listing.">
    <meta name="author" content="Ansonika">
    <title>Panagea | Premium site template for travel agencies, hotels and restaurant listing.</title>

    <!-- Favicons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">

    <!-- BASE CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/vendors.css" rel="stylesheet">

    <!-- YOUR CUSTOM CSS -->
    <link href="css/custom.css" rel="stylesheet">

</head>

<body id="register_bg">

<nav id="menu" class="fake_menu"></nav>

<div id="preloader">
    <div data-loader="circle-side"></div>
</div>
<!-- End Preload -->

<div id="login">
    <aside>
        <figure>
            <a href="index.html"><img src="img/logo_sticky.png" width="155" height="36" data-retina="true" alt="" class="logo_sticky"></a>
        </figure>
        <form autocomplete="off" action="/RegisterServlet" method="get">
            <div class="form-group">
                <label>姓</label>
                <input class="form-control" type="text">
                <i class="ti-user"></i>
            </div>

            <div class="form-group">
                <label>邮箱</label>
                <input class="form-control" id="username" name="username" type="email">
                <i class="icon_mail_alt"></i>
                <p style="text-align: right" onclick="a1()">发送</p>
            </div>

            <%--<script src="/static/js/jquery-3.5.1.js"></script>--%>

            <script type="text/javascript">
                var flag = false;
                function a1() {
                    alert("已发送验证码！");
                    $.ajax({
                        url:"/EmailServlet",
                        data:{"username":$("#username").val()},
                        success:function (data,status) {
                        }
                    });
                }
            </script>

            <div class="form-group">
                <label>邮箱验证码：</label>
                <input  class="form-control" name="code" id="code" type="text" onblur="a2()">
                <i class="ti-user"></i>
            </div>


            <div class="form-group">
                <label>密码</label>
                <input class="form-control" name="pwd" type="password" id="password1">
                <i class="icon_lock_alt"></i>
            </div>
            <div class="form-group">
                <label>确认密码</label>
                <input class="form-control" type="password" id="password2">
                <i class="icon_lock_alt"></i>
            </div>
            <div id="pass-info" class="clearfix"></div>
            <!--<a href="#0" class="btn_1 rounded full-width add_top_30">现在注册</a>-->
            <input type="submit" value="注册" class="btn_1 rounded full-width add_top_30">
            <div class="text-center add_top_10">Already have an acccount? <strong><a href="login.html">Sign In</a></strong></div>
        </form>
        <div class="copy">© 2020 YGY</div>
    </aside>
</div>
<!-- /login -->

<!-- COMMON SCRIPTS -->
<script src="js/jquery-2.2.4.min.js"></script>
<script src="js/common_scripts.js"></script>
<script src="js/main.js"></script>
<script src="assets/validate.js"></script>

<!-- SPECIFIC SCRIPTS -->
<script src="js/pw_strenght.js"></script>



</body>
</html>
