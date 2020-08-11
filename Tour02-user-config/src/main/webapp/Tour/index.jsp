<%--
  Created by IntelliJ IDEA.
  User: YGY
  Date: 2020/7/4
  Time: 16:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description"
          content="Panagea - Premium site template for travel agencies, hotels and restaurant listing.">
    <meta name="author" content="Ansonika">
    <title>途遇旅行</title>

    <!-- Favicons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114"
          href="img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144"
          href="img/apple-touch-icon-144x144-precomposed.png">

    <!-- BASE CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/vendors.css" rel="stylesheet">

    <!-- YOUR CUSTOM CSS -->
    <link href="css/custom.css" rel="stylesheet">
    <script type="text/javascript" src="/Tour/js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript">

        $(function () {
            alert("初始化页面！！！");

            selectEightTourList();

            getFourHotelList();

            selectFourRestaurantList();

            //给登录绑定事件
            $("#signInBut").click(function () {
                alert("111")
                signIn();
            })


        })

        //查询8个人名景点并渲染
        function selectEightTourList() {
            $.ajax({
                url: "/getEightTourList",
                data: {},
                success: function (result) {
                    var str = "";
                    $(result).each(function () {
                        str += "<div class=\"item\">\n" +
                            "\t\t\t\t\t<div class=\"box_grid\">\n" +
                            "\t\t\t\t\t\t<figure>\n" +
                            "\t\t\t\t\t\t\t<a href=\"#0\" class=\"wish_bt\"></a>\n" +
                            "\t\t\t\t\t\t\t<a href=\"tour-detail.html\"><img src=\"img/tour/" + this.picpath + "\" class=\"img-fluid\" alt=\"\" width=\"800\" height=\"533\"><div class=\"read_more\"><span>Read more</span></div></a>\n" +
                            "\t\t\t\t\t\t\t<small>" + this.city + "</small>\n" +
                            "\t\t\t\t\t\t</figure>\n" +
                            "\t\t\t\t\t\t<div class=\"wrapper\">\n" +
                            "\t\t\t\t\t\t\t<h3><a href=\"tour-detail.html\">" + this.name + "</a></h3>\n" +
                            "\t\t\t\t\t\t\t<p>" + this.tourdescribe.substr(0, 10) + "</p>\n" +
                            "\t\t\t\t\t\t\t<span class=\"price\">From <strong>" + this.price + "</strong> /per person</span>\n" +
                            "\t\t\t\t\t\t</div>\n" +
                            "\t\t\t\t\t\t<ul>\n" +
                            "\t\t\t\t\t\t\t<li><i class=\"icon_clock_alt\"></i> 1h 30min</li>\n" +
                            "\t\t\t\t\t\t\t<li><div class=\"score\"><span>Superb<em>350 Reviews</em></span><strong>8.9</strong></div></li>\n" +
                            "\t\t\t\t\t\t</ul>\n" +
                            "\t\t\t\t\t</div>\n" +
                            "\t\t\t\t</div>";
                    })
                    $("#reccomended").empty().append(str);

                    $("#reccomended").owlCarousel({
                        center: true,
                        items: 2,
                        loop: true,
                        margin: 0,
                        responsive: {
                            0: {
                                items: 1
                            },
                            767: {
                                items: 2
                            },
                            1000: {
                                items: 3
                            },
                            1400: {
                                items: 4
                            }
                        }
                    });

                }
            })
        }

        //查询4个热门旅店并渲染
        function getFourHotelList() {
            $.ajax({
                url: "/getFourHotelList",
                data: {},
                success: function (result) {
                    var str = "";
                    $(result).each(function () {
                        str += "\t\t\t\t\t<div class=\"col-xl-3 col-lg-6 col-md-6\">\n" +
                            "\t\t\t\t\t\t<a href=\"hotel-detail.html\" class=\"grid_item\">\n" +
                            "\t\t\t\t\t\t\t<figure>\n" +
                            "\t\t\t\t\t\t\t\t<div class=\"score\"><strong>" + this.mark + "</strong></div>\n" +
                            "\t\t\t\t\t\t\t\t<img src=\"img/" + this.picpath + "\" class=\"img-fluid\" alt=\"\">\n" +
                            "\t\t\t\t\t\t\t\t<div class=\"info\">\n" +
                            "\t\t\t\t\t\t\t\t\t<div class=\"cat_star\"><i class=\"icon_star\"></i><i class=\"icon_star\"></i><i class=\"icon_star\"></i><i class=\"icon_star\"></i></div>\n" +
                            "\t\t\t\t\t\t\t\t\t<h3>" + this.name + "</h3>\n" +
                            "\t\t\t\t\t\t\t\t</div>\n" +
                            "\t\t\t\t\t\t\t</figure>\n" +
                            "\t\t\t\t\t\t</a>\n" +
                            "\t\t\t\t\t</div>";
                    })
                    $("#hotelRow").empty().append(str).trigger("create");
                }
            })
        }

        //查询4个热门餐厅并渲染
        function selectFourRestaurantList() {
            $.ajax({
                url: "/getFourRestaurantList",
                data: {},
                success: function (result) {
                    var str = "";
                    $(result).each(function () {
                        str += "\t\t\t\t\t<div class=\"col-xl-3 col-lg-6 col-md-6\">\n" +
                            "\t\t\t\t\t\t<a href=\"hotel-detail.html\" class=\"grid_item\">\n" +
                            "\t\t\t\t\t\t\t<figure>\n" +
                            "\t\t\t\t\t\t\t\t<div class=\"score\"><strong>" + this.mark + "</strong></div>\n" +
                            "\t\t\t\t\t\t\t\t<img src=\"img/" + this.picpath + "\" class=\"img-fluid\" alt=\"\">\n" +
                            "\t\t\t\t\t\t\t\t<div class=\"info\">\n" +
                            "\t\t\t\t\t\t\t\t\t<div class=\"cat_star\"><i class=\"icon_star\"></i><i class=\"icon_star\"></i><i class=\"icon_star\"></i><i class=\"icon_star\"></i></div>\n" +
                            "\t\t\t\t\t\t\t\t\t<h3>" + this.name + "</h3>\n" +
                            "\t\t\t\t\t\t\t\t</div>\n" +
                            "\t\t\t\t\t\t\t</figure>\n" +
                            "\t\t\t\t\t\t</a>\n" +
                            "\t\t\t\t\t</div>";
                    })
                    $("#restaurantRow").empty().append(str).trigger("create");
                }
            })
        }

        //登录函数
        function signIn() {
            $.ajax({
                url: "/signIn",
                data: $("#signInForm").serialize(),
                success: function (result) {
                    if (result.id != null && result != 'null') {
                        var user = result;
                        //将登录的数据
                        sessionStorage.setItem("user",user);
                        var str = "";
                        if (user.vip == 1 || user.vip == 2){
                            str += "<a id=\"my-sign-in\" class=\"my-login\" style=\"line-height: 40px;color: #985f0d;\">"+user.username+"</a>";
                        }else if (user.vip == 3 || user.vip == 4){
                            str += "<a id=\"my-sign-in\" class=\"my-login\" style=\"line-height: 40px;color: #ffff00;\">"+user.username+"</a>";
                        }else if (user.vip == 5 || user.vip == 6){
                            str += "<a id=\"my-sign-in\" class=\"my-login\" style=\"line-height: 40px;color: #00d3ee;\">"+user.username+"</a>";
                        }else{
                            str += "<a id=\"my-sign-in\" class=\"my-login\" style=\"line-height: 40px;\">"+user.username+"</a>";
                        }
                        $("#my-sign-in").click(function () {
                            signOut();
                        })
                        $("#colorfulName").empty().append(str).trigger("create");

                        /*关模态框*/
                        $("#sign-in-dialog").modal("hide");
                        /*$(".mfp-bg").remove();
                        $(".mfp-wrap").remove();*/


                        alert(user.username + "登录成功"+user.vip);
                    } else {
                        alert("用户名或密码错误");
                    }
                }
            })
        }

        function signOut() {
            /*var signOutStr = "<a href=\"#0\" >\n" +
                             "    <a href=\"#sign-in-dialog\" id=\"sign-in\" class=\"login\" title=\"登录\">登录</a>\n" +
                             "</a>";*/
            if (confirm("确认退出登录？")){
                location.reload();
                sessionStorage.removeItem("user");
            }
        }

    </script>

</head>

<body>

<div id="page">

    <header class="header menu_fixed">
        <div id="preloader">
            <div data-loader="circle-side"></div>
        </div><!-- /Page Preload -->
        <div id="logo">
            <a href="index.html">
                <img src="img/logo.png" width="150" height="36" data-retina="true" alt="" class="logo_normal">
                <img src="img/logo_sticky.png" width="150" height="36" data-retina="true" alt="" class="logo_sticky">
            </a>
        </div>
        <ul id="top_menu">
            <li><a href="/OrderServlet?operate=1&pageNum=1" class="cart-menu-btn" title="Cart"><strong>4</strong></a>
            </li>
            <%--<li>

            </li>--%>
            <li><a href="/BackLogin/login.html" class="my-wishlist_bt_top" style="line-height: 40px">后台管理</a></li>
        </ul>
        <!-- /top_menu -->
        <a href="#menu" class="btn_mobile">
            <div class="hamburger hamburger--spin" id="hamburger">
                <div class="hamburger-box">
                    <div class="hamburger-inner"></div>
                </div>
            </div>
        </a>
        <nav id="menu" class="main-menu">
            <ul>
                <li><span><a href="#0">主页</a></span>
                    <ul>
                        <li><a href="/InitServlet">主页</a></li>
                        <%-- <li><a href="index-2.html">Home version 2</a></li>
                         <li><a href="index-3.html">Home version 3</a></li>
                         <li><a href="index-4.html">Home version 4</a></li>
                         <li><a href="index-5.html">Home version 5</a></li>
                         <li><a href="index-6.html">With Cookie bar (EU law)</a></li>
                         <li><a href="index-7.html">Home version 7</a></li>--%>
                    </ul>
                </li>
                <li><span><a href="#0">旅游</a></span>
                    <ul>
                        <li><a href="/ToursServlet">说走就走的旅行</a></li>
                        <%--<li><a href="tours-grid-sidebar.html">Tours grid sidebar</a></li>
                        <li><a href="tours-grid-sidebar-2.html">Tours grid sidebar 2</a></li>
                        <li><a href="tours-grid.html">Tours grid simple</a></li>
                        <li><a href="tours-list-isotope.html">Tours list isotope</a></li>
                        <li><a href="tours-list-sidebar.html">Tours list sidebar</a></li>
                        <li><a href="tours-list-sidebar-2.html">Tours list sidebar 2</a></li>
                        <li><a href="tours-list.html">Tours list simple</a></li>
                        <li><a href="tour-detail.html">Tour detail</a></li>--%>
                    </ul>
                </li>
                <li><span><a href="#0">酒店</a></span>
                    <ul>
                        <li><a href="/HotelsServlet">豪华酒店</a></li>
                        <%--<li><a href="hotels-grid-sidebar.html">Hotel grid sidebar</a></li>
                        <li><a href="hotels-grid-sidebar-2.html">Hotel grid sidebar 2</a></li>
                        <li><a href="hotels-grid.html">Hotel grid simple</a></li>
                        <li><a href="hotels-list-isotope.html">Hotel list isotope</a></li>
                        <li><a href="hotels-list-sidebar.html">Hotel list sidebar</a></li>
                        <li><a href="hotels-list-sidebar-2.html">Hotel list sidebar 2</a></li>
                        <li><a href="hotels-list.html">Hotel list simple</a></li>
                        <li><a href="hotel-detail.html">Hotel detail</a></li>--%>
                    </ul>
                </li>
                <li><span><a href="#0">美食 &amp; 饮品</a></span>
                    <ul>
                        <li><a href="/RestaurantsServlet">推荐美食</a></li>
                        <%-- <li><a href="restaurants-grid-sidebar.html">Restaurant grid sidebar</a></li>
                         <li><a href="restaurants-grid-sidebar-2.html">Restaurant grid sidebar 2</a></li>
                         <li><a href="restaurants-grid.html">Restaurant grid simple</a></li>
                         <li><a href="restaurants-list-isotope.html">Restaurant list isotope</a></li>
                         <li><a href="restaurants-list-sidebar.html">Restaurant list sidebar</a></li>
                         <li><a href="restaurants-list-sidebar-2.html">Restaurant list sidebar 2</a></li>
                         <li><a href="restaurants-list.html">Restaurant list simple</a></li>
                         <li><a href="restaurant-detail.html">Restaurant detail</a></li>--%>
                    </ul>
                </li>
                <li><span><a href="#0">帮助</a></span>
                    <ul>
                        <li><a href="login.jsp">登录</a></li>
                        <li><a href="register.jsp">注册</a></li>
                        <li><a href="about.html">关于</a></li>
                        <li><a href="media-gallery.html">唯美欣赏</a></li>
                        <li><a href="help.html">帮助</a></li>
                        <%--<li><a href="faq.html">Faq Section</a></li>--%>
                        <li><a href="wishlist.html">愿望清单</a></li>
                        <li><a href="contacts.html">建议</a></li>
                        <li><a href="blog.html">博客</a></li>
                    </ul>
                </li>
                <li><span><a href="#0">其他</a></span>
                    <ul>
                        <%--<li><a href="menu-options.html">Menu Position Options</a></li>--%>
                        <%--<li><a href="tour-detail-singlemonth-datepicker.html">Single month Datepicker</a></li>--%>
                        <li><a href="404.html">404错误页面</a></li>
                        <li><a href="cart-1.html">购物车1</a></li>
                        <li><a href="cart-2.html">购物车2</a></li>
                        <li><a href="cart-3.html">购物车3</a></li>
                        <%----%>

                        <li><a href="pricing-tables2.jsp">套餐查询</a></li>
                        <li><a href="pricing-tables.jsp">成为会员</a></li>
                        <%--<li><a href="coming_soon/index.html">Coming soon</a></li>--%>
                        <%--<li><a href="invoice.html">Invoice</a></li>--%>
                        <%--<li><a href="icon-pack-1.html">Icon pack 1</a></li>--%>
                        <%--<li><a href="icon-pack-2.html">Icon pack 2</a></li>--%>
                        <%--<li><a href="icon-pack-3.html">Icon pack 3</a></li>--%>
                        <%--<li><a href="icon-pack-4.html">Icon pack 4</a></li>--%>
                        <%--<li><a href="hamburgers.html">Animated Hamburgers</a></li>--%>
                        <%----%>
                    </ul>
                </li>
                <li><span><a href="#0">购物车</a></span></li>

                <li>
                    <span id="colorfulName">
                        <a href="#0" >
                            <a href="#sign-in-dialog" id="sign-in" class="login" title="登录">登录</a>
                        </a>
                    </span>
                    <ul>
                        <li><a href="javascript:signOut();">退出</a></li>

                    </ul>
                </li>
            </ul>
        </nav>

    </header>
    <!-- /header -->

    <main>
        <section class="hero_single version_2">
            <div class="wrapper">
                <div class="container">
                    <h3>预订独特的体验</h3>
                    <p>探寻世界上最受好评的旅行团，酒店和餐厅</p>
                    <form action="/SearchServlet" method="post">
                        <div class="row no-gutters custom-search-input-2">
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <input class="form-control" type="text" name="city" placeholder="城市...">
                                    <i class="icon_pin_alt"></i>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="form-group">
                                    <input class="form-control" type="text" name="dates" placeholder="什么时候..">
                                    <i class="icon_calendar"></i>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="panel-dropdown">
                                    <a href="#">来宾 <span class="qtyTotal">1</span></a>
                                    <div class="panel-dropdown-content">
                                        <!-- Quantity Buttons -->
                                        <div class="qtyButtons">
                                            <label>成人</label>
                                            <input type="text" name="qtyInput" value="1">
                                        </div>
                                        <div class="qtyButtons">
                                            <label>儿童</label>
                                            <input type="text" name="qtyInput" value="0">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <input type="submit" class="btn_search" value="Search">
                            </div>
                        </div>
                        <!-- /row -->
                    </form>
                </div>
            </div>
        </section>
        <!-- /hero_single -->


        <div class="container-fluid margin_80_0">
            <div class="main_title_2">
                <span><em></em></span>
                <h2>热门游览</h2>
                <p>暑假时光，精选安心游，低至5折</p>
            </div>

            <div id="reccomended" class="owl-carousel owl-theme">
                <%--ajax填充--%>
            </div>
            <!-- /carousel -->
            <div class="container">
                <p class="btn_home_align"><a href="/ToursServlet" class="btn_1 rounded">查看更多</a></p>
            </div>
            <!-- /container -->
            <hr class="large">
        </div>
        <!-- /container -->

        <div class="container-fluid margin_30_95 pl-lg-5 pr-lg-5">
            <section class="add_bottom_45">
                <div class="main_title_3">
                    <span><em></em></span>
                    <h2>受欢迎的酒店和住宿</h2>
                    <p>人间烟火味，最抚凡人心,品牌连锁酒店。</p>
                </div>
                <div class="row" id="hotelRow">

                </div>
                <!-- /row -->
                <a href="hotels-grid-isotope.html"><strong>View all (157) <i
                        class="arrow_carrot-right"></i></strong></a>
            </section>
            <!-- /section -->

            <section>
                <div class="main_title_3">
                    <span><em></em></span>
                    <h2>人气餐厅</h2>
                    <p>金陵子弟来相送,欲行不行各尽觞。食不尽天下美味。</p>
                </div>
                <div class="row" id="restaurantRow">


                </div>
                <!-- /row -->
                <a href="/RestaurantsServlet"><strong>展示跟多 <i class="arrow_carrot-right"></i></strong></a>
            </section>
            <!-- /section -->
        </div>
        <!-- /container -->

        <div class="bg_color_1">
            <div class="container margin_80_55">
                <div class="main_title_2">
                    <span><em></em></span>
                    <h3>名人名言</h3>
                    <p>再去回味时，得到的或许是快乐，或许是遗憾，也或许是平静。</p>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <a class="box_news" href="#0">
                            <figure><img src="img/news_home_1.jpg" alt="">
                                <figcaption><strong>28</strong>Dec</figcaption>
                            </figure>
                            <ul>
                                <li>某位不知名作家</li>
                                <li>7.11.2020</li>
                            </ul>
                            <h4>在我的憧憬中，有这样一个人</h4>
                            <p>陪你说走就走，才有了旅行最美的内涵。会让你有不被现实的烦恼、他人的不解羁绊的勇气，做一个真正心灵自由的人，一路前行，宛若心灵的朝圣。</p>
                        </a>
                    </div>
                    <!-- /box_news -->
                    <div class="col-lg-6">
                        <a class="box_news" href="#0">
                            <figure><img src="img/news_home_2.jpg" alt="">
                                <figcaption><strong>28</strong>Dec</figcaption>
                            </figure>
                            <ul>
                                <li>某位不知名作家</li>
                                <li>20.11.2020</li>
                            </ul>
                            <h4>如果，真有这样的一个人，或者是一群人</h4>
                            <p>愿意和你一起旅行，在我看来，便是去看一个人与一个人去看最美的结合，虽是不同的个体，却拥有彼此交融的灵魂，一起走，恍如一人独行。漂亮的符号</p>
                        </a>
                    </div>
                    <!-- /box_news -->
                    <div class="col-lg-6">
                        <a class="box_news" href="#0">
                            <figure><img src="img/news_home_3.jpg" alt="">
                                <figcaption><strong>28</strong>Dec</figcaption>
                            </figure>
                            <ul>
                                <li>某位不知名作家</li>
                                <li>7.11.2020</li>
                            </ul>
                            <h4>旅行去的地方不需要有动人的风景，不需要游人如织的证明</h4>
                            <p>哪怕是从小到大看过无数遍的东西，比如我住了十年出租屋的天台，也同样可以是旅行的地点，十年过去，仍旧喜欢头顶的燕子，远处的夕阳。游玩在外，旅行在心。</p>
                        </a>
                    </div>
                    <!-- /box_news -->
                    <div class="col-lg-6">
                        <a class="box_news" href="#0">
                            <figure><img src="img/news_home_4.jpg" alt="">
                                <figcaption><strong>28</strong>Dec</figcaption>
                            </figure>
                            <ul>
                                <li>某位不知名作家</li>
                                <li>7.11.2020</li>
                            </ul>
                            <h4>如果有人问，这不只有两种吗</h4>
                            <p>还有和朋友基友一起出去呢？我想说的是，旅行和游玩不一样，旅行是去走、去听、去看、去品味，游玩是去玩、去赏、去开心。</p>
                        </a>
                    </div>
                    <!-- /box_news -->
                </div>
                <!-- /row -->
                <p class="btn_home_align"><a href="blog.html" class="btn_1 rounded">View all news</a></p>
            </div>
            <!-- /container -->
        </div>
        <!-- /bg_color_1 -->

        <div class="call_section">
            <div class="container clearfix">
                <div class="col-lg-5 col-md-6 float-right wow" data-wow-offset="250">
                    <div class="block-reveal">
                        <div class="block-vertical"></div>
                        <div class="box_1">
                            <h3>做一个真正心灵自由的人，一路前行 </h3>
                            <p>
                                很多人说，要来一场说走就走的旅行，但是，旅行，哪有那么简单。从产生去一个地方的念头开始，到真正付诸行动，中间有太多的事、太多的细节需要去考虑，世界不是你想像的模样，没那么多激情、浪漫，更多的是日复一日的单调循环，当你想冲破这种规律，就要做好头破血流的心理预期，否则接踵而至、难以预估的麻烦足以抵消刹那间闪现的渴望。</p>
                            <a href="#0" class="btn_1 rounded">更多</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--/call_section-->
    </main>
    <!-- /main -->

    <footer>
        <div class="container margin_60_35">
            <div class="row">
                <div class="col-lg-5 col-md-12 p-r-5">
                    <p><img src="img/logo.png" width="150" height="36" data-retina="true" alt=""></p>
                    <p>
                        说走就走，还是只适合一个人去看。在闲暇之余，安排好一切，去看看想去的地方，去看看一路上的人、一路上的风景，会想一些事但更多的时候会什么都不想。双眼所见的一切已经占据了全部的脑海，要用很久的时间去回味，去挑选，将最触动人心的画面珍藏。</p>
                    <div class="follow_us">
                        <ul>
                            <li>跟着我们</li>
                            <%--<li><a href="#0"><i class="ti-facebook"></i></a></li>
                            <li><a href="#0"><i class="ti-twitter-alt"></i></a></li>
                            <li><a href="#0"><i class="ti-google"></i></a></li>
                            <li><a href="#0"><i class="ti-pinterest"></i></a></li>
                            <li><a href="#0"><i class="ti-instagram"></i></a></li>--%>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 ml-lg-auto">
                    <h5>有用的链接</h5>
                    <ul class="links">
                        <li><a href="about.html">关于</a></li>
                        <li><a href="login.jsp">登录</a></li>
                        <li><a href="register.jsp">注册</a></li>
                        <li><a href="blog.html">新闻 &amp; 事件</a></li>
                        <li><a href="contacts.html">联系人</a></li>
                    </ul>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h5>与我们联系</h5>
                    <ul class="contacts">
                        <li><a href="tel://61280932400"><i class="ti-mobile"></i> + 86 400823823</a></li>
                        <li><a href="mailto:info@Panagea.com"><i class="ti-email"></i> 400823823@qq.com</a></li>
                    </ul>
                    <div id="newsletter">
                        <h6>写信</h6>
                        <div id="message-newsletter"></div>
                        <form method="post" action="assets/newsletter.php" name="newsletter_form" id="newsletter_form">
                            <div class="form-group">
                                <input type="email" name="email_newsletter" id="email_newsletter" class="form-control"
                                       placeholder="你的邮箱">
                                <input type="submit" value="Submit" id="submit-newsletter">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!--/row-->
            <hr>
            <div class="row">
                <div class="col-lg-6">
                    <ul id="footer-selector">
                        <li>
                            <div class="styled-select" id="lang-selector">
                                <select>
                                    <option value="English" selected>英语</option>
                                    <option value="French">法语</option>
                                    <option value="Spanish">西班牙</option>
                                    <option value="Russian">俄语</option>
                                </select>
                            </div>
                        </li>

                        <li>
                            <div class="styled-select" id="currency-selector">
                                <select>
                                    <option value="US Dollars" selected>人民币</option>
                                    <option value="Euro">美元</option>
                                </select>
                            </div>
                        </li>
                        <%--<li><img src="img/cards_all.svg" alt=""></li>--%>
                    </ul>
                </div>
                <div class="col-lg-6">
                    <ul id="additional_links">
                        <li><a href="#0">条款和条件</a></li>
                        <li><a href="#0">隐私</a></li>
                        <li><span>© 2020 途遇旅行</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
    <!--/footer-->
</div>
<!-- page -->

<!-- Sign In Popup -->
<div id="sign-in-dialog" class="zoom-anim-dialog mfp-hide">
    <div class="small-dialog-header">
        <h3>登录</h3>
    </div>
    <form action="/LoginServlet" method="post" id="signInForm">
        <div class="sign-in-wrapper">
            <%--<a href="#0" class="social_bt facebook">Login with Facebook</a>
            <a href="#0" class="social_bt google">Login with Google</a>
            <div class="divider"><span>Or</span></div>--%>
            <div class="form-group">
                <label>邮箱/用户名</label>
                <input type="email" class="form-control" name="username" id="username">
                <i class="icon_mail_alt"></i>
            </div>
            <div class="form-group">
                <label>密码</label>
                <input type="password" class="form-control" name="password" id="password">
                <i class="icon_lock_alt"></i>
            </div>
            <div class="clearfix add_bottom_15">
                <div class="checkboxes float-left">
                    <label class="container_check">记住我
                        <input type="checkbox">
                        <span class="checkmark"></span>
                    </label>
                </div>
                <div class="float-right mt-1"><a id="forgot" href="javascript:void(0);">忘记密码</a></div>
            </div>
            <div class="text-center"><input type="button" value="登录" class="btn_1 full-width" id="signInBut"></div>
            <div class="text-center">
                还没有账号？ <a href="register.jsp">注册</a>
            </div>
        </div>
    </form>
    <!--form -->
</div>
<!-- /Sign In Popup -->

<div id="toTop"></div><!-- Back to top button -->

<!-- COMMON SCRIPTS -->
<script src="js/jquery-2.2.4.min.js"></script>
<script src="js/common_scripts.js"></script>
<script src="js/main.js"></script>
<script src="assets/validate.js"></script>

<!-- DATEPICKER  -->
<script>
    $(function () {
        'use strict';
        $('input[name="dates"]').daterangepicker({
            autoUpdateInput: false,
            locale: {
                cancelLabel: 'Clear'
            }
        });
        $('input[name="dates"]').on('apply.daterangepicker', function (ev, picker) {
            $(this).val(picker.startDate.format('MM-DD-YY') + ' > ' + picker.endDate.format('MM-DD-YY'));
        });
        $('input[name="dates"]').on('cancel.daterangepicker', function (ev, picker) {
            $(this).val('');
        });
    });
</script>

<!-- INPUT QUANTITY  -->
<script src="js/input_qty.js"></script>

</body>
</html>
