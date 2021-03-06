<%@ page import="java.util.List" %>
<%@ page import="cn.kgc.entity.Tour" %><%--
  Created by IntelliJ IDEA.
  User: YGY
  Date: 2020/7/5
  Time: 0:51
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

<body>

<div id="page">

    <header class="header menu_fixed">
        <div id="preloader"><div data-loader="circle-side"></div></div><!-- /Page Preload -->
        <div id="logo">
            <a href="/InitServlet">
                <img src="img/logo.png" width="150" height="36" data-retina="true" alt="" class="logo_normal">
                <img src="img/logo.png" width="150" height="36" data-retina="true" alt="" class="logo_sticky">
            </a>
        </div>
        <ul id="top_menu">
            <li><a href="/OrderServlet?operate=0" class="cart-menu-btn" title="Cart"><strong>4</strong></a></li>

            <li><a href="/BackLogin/login.html" class="my-wishlist_bt_top"  style="line-height: 40px">后台管理</a></li>
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
                    </ul>
                </li>
                <li><span><a href="#0">旅游</a></span>
                    <ul>
                        <li><a href="/ToursServlet">说走就走的旅行</a></li>
                    </ul>
                </li>
                <li><span><a href="#0">酒店</a></span>
                    <ul>
                        <li><a href="/HotelsServlet">豪华酒店</a></li>
                    </ul>
                </li>
                <li><span><a href="#0">美食 &amp; 饮品</a></span>
                    <ul>
                        <li><a href="/RestaurantsServlet">推荐美食</a></li>
                    </ul>
                </li>
                <li><span><a href="#0">帮助</a></span>
                    <ul>
                        <li><a href="login.jsp">登录</a></li>
                        <li><a href="register.html">注册</a></li>
                        <li><a href="about.html">关于</a></li>
                        <li><a href="media-gallery.html">唯美欣赏</a></li>
                        <li><a href="help.html">帮助</a></li>
                        <li><a href="wishlist.html">愿望清单</a></li>
                        <li><a href="contacts.html">建议</a></li>
                        <li><a href="blog.html">博客</a></li>
                    </ul>
                </li>
                <li><span><a href="#0">其他</a></span>
                    <ul>
                        <li><a href="404.html">404错误界面</a></li>
                        <li><a href="cart-1.html">购物车1</a></li>
                        <li><a href="cart-2.html">购物车2</a></li>
                        <li><a href="cart-3.html">购物车3</a></li>
                        <li><a href="pricing-tables.html">成为会员</a></li>
                    </ul>
                </li>
                <li><span><a href="#0">购物车</a></span></li>
                <li>
                    <span>
                        <a href="#0">
                            <%
                                String username = (String)session.getAttribute("email");
                                if(username==null){
                            %>
                            <a href="#sign-in-dialog" id="sign-in" class="login" title="Sign In">登录</a>
                            <%
                            }else{
                            %>
                            <a id="my-sign-in" class="my-login" style="line-height: 40px"><%=username%></a>
                            <%
                                }
                            %>
                        </a>
                    </span>
                    <ul>
                        <li><a href="/OutServlet">退出</a></li>

                    </ul>
                </li>
            </ul>
        </nav>

    </header>
    <!-- /header -->

    <main>

        <section class="hero_in tours">
            <div class="wrapper">
                <div class="container">
                    <h1 class="fadeInUp"><span></span>途遇风景</h1>
                </div>
            </div>
        </section>
        <!--/hero_in-->

        <div class="filters_listing sticky_horizontal">
            <div class="container">
                <ul class="clearfix">
                    <li>
                        <div class="switch-field">
                            <input type="radio" id="all" name="listing_filter" value="all" checked data-filter="*" class="selected">
                            <label for="all">全部</label>
                            <input type="radio" id="popular" name="listing_filter" value="popular" data-filter=".popular">
                            <label for="popular">热门</label>
                            <input type="radio" id="latest" name="listing_filter" value="latest" data-filter=".latest">
                            <label for="latest">冷门</label>
                        </div>
                    </li>
                    <li>
                        <div class="layout_view">
                            <a href="#0" class="active"><i class="icon-th"></i></a>
                            <a href="tours-list-isotope.html"><i class="icon-th-list"></i></a>
                        </div>
                    </li>
                    <li>
                        <a class="btn_map" data-toggle="collapse" href="#collapseMap" aria-expanded="false" aria-controls="collapseMap" data-text-swap="Hide map" data-text-original="View on map">View on map</a>
                    </li>
                </ul>
            </div>
            <!-- /container -->
        </div>
        <!-- /filters -->

        <div class="collapse" id="collapseMap">
            <div id="map" class="map"></div>
        </div>
        <!-- End Map -->

        <div class="container margin_60_35">
            <div class="col-lg-12">
                <div class="row no-gutters custom-search-input-2 inner">
                    <div class="col-lg-4">
                        <div class="form-group">
                            <input class="form-control" type="text" placeholder="What are you looking for...">
                            <i class="icon_search"></i>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="form-group">
                            <input class="form-control" type="text" placeholder="Where">
                            <i class="icon_pin_alt"></i>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <select class="wide">
                            <option>All Categories</option>
                            <option>Churches</option>
                            <option>Historic</option>
                            <option>Museums</option>
                            <option>Walking tours</option>
                        </select>
                    </div>
                    <div class="col-lg-2">
                        <input type="submit" class="btn_search" value="Search">
                    </div>
                </div>
                <!-- /row -->
            </div>
            <!-- /custom-search-input-2 -->


            <div class="isotope-wrapper">
                <div class="row">
                    <%
                    List<Tour> list = (List<Tour>)session.getAttribute("tourList");
                    for(Tour tour:list){
                        String[] describe = tour.getTourDescribe().split("\\*");

                    %>

                    <div class="col-xl-4 col-lg-6 col-md-6 isotope-item popular">
                        <div class="box_grid">
                            <figure>
                                <a href="#0" class="wish_bt"></a>
                                <a href="/TourDetailServlet?id=<%=tour.getId()%>"><img src="img/tour/<%=tour.getPicPath()%>" class="img-fluid" alt="" width="800" height="533"><div class="read_more"><span>Read more</span></div></a>
                                <small><%=tour.getCity()%></small>
                            </figure>
                            <div class="wrapper">
                                <h3><a href="tour-detail.html"><%=tour.getName()%></a></h3>
                                <p>
                                    <%
                                        String str = null;
                                        if(describe[0].length()>40){
                                            str = describe[0].substring(0,40)+"……";
                                        }else{
                                            str = describe[0];
                                        }
                                    %>

                                    <%=str%>

                                </p>
                                <span class="price">价格 <strong><%=tour.getPrice()%></strong> /人</span>
                            </div>
                            <ul>
                                <li><i class="icon_clock_alt"></i> 1h 30min</li>
                                <li><div class="score"><span>评分<em><%=tour.getReviews()%> 评论</em></span><strong><%=tour.getMark()%></strong></div></li>
                            </ul>
                        </div>
                    </div>

                    <%
                        }
                    %>

                    <%--
                    <!-- /box_grid -->
                    <div class="col-xl-4 col-lg-6 col-md-6 isotope-item latest">
                        <div class="box_grid">
                            <figure>
                                <a href="#0" class="wish_bt"></a>
                                <a href="tour-detail.html"><img src="img/tour_2.jpg" class="img-fluid" alt="" width="800" height="533"><div class="read_more"><span>Read more</span></div></a>
                                <small>Churches</small>
                            </figure>
                            <div class="wrapper">
                                <h3><a href="tour-detail.html">Notredam</a></h3>
                                <p>Id placerat tacimates definitionem sea, prima quidam vim no. Duo nobis persecuti cu.</p>
                                <span class="price">From <strong>$124</strong> /per person</span>
                            </div>
                            <ul>
                                <li><i class="icon_clock_alt"></i> 1h 30min</li>
                                <li><div class="score"><span>Good<em>350 Reviews</em></span><strong>7.0</strong></div></li>
                            </ul>
                        </div>
                    </div>
                    <!-- /box_grid -->
                    <div class="col-xl-4 col-lg-6 col-md-6 isotope-item popular">
                        <div class="box_grid">
                            <figure>
                                <a href="#0" class="wish_bt"></a>
                                <a href="tour-detail.html"><img src="img/tour_3.jpg" class="img-fluid" alt="" width="800" height="533"><div class="read_more"><span>Read more</span></div></a>
                                <small>Historic</small>
                            </figure>
                            <div class="wrapper">
                                <h3><a href="tour-detail.html">Versailles</a></h3>
                                <p>Id placerat tacimates definitionem sea, prima quidam vim no. Duo nobis persecuti cu.</p>
                                <span class="price">From <strong>$25</strong> /per person</span>
                            </div>
                            <ul>
                                <li><i class="icon_clock_alt"></i> 1h 30min</li>
                                <li><div class="score"><span>Good<em>350 Reviews</em></span><strong>7.0</strong></div></li>
                            </ul>
                        </div>
                    </div>
                    <!-- /box_grid -->
                    <div class="col-xl-4 col-lg-6 col-md-6 isotope-item latest">
                        <div class="box_grid">
                            <figure>
                                <a href="#0" class="wish_bt"></a>
                                <a href="tour-detail.html"><img src="img/tour_4.jpg" class="img-fluid" alt="" width="800" height="533"><div class="read_more"><span>Read more</span></div></a>
                                <small>Museum</small>
                            </figure>
                            <div class="wrapper">
                                <h3><a href="tour-detail.html">Pompidue Museum</a></h3>
                                <p>Id placerat tacimates definitionem sea, prima quidam vim no. Duo nobis persecuti cu.</p>
                                <span class="price">From <strong>$45</strong> /per person</span>
                            </div>
                            <ul>
                                <li><i class="icon_clock_alt"></i> 2h 30min</li>
                                <li><div class="score"><span>Superb<em>350 Reviews</em></span><strong>9.0</strong></div></li>
                            </ul>
                        </div>
                    </div>
                    <!-- /box_grid -->
                    <div class="col-xl-4 col-lg-6 col-md-6 isotope-item popular">
                        <div class="box_grid">
                            <figure>
                                <a href="#0" class="wish_bt"></a>
                                <a href="tour-detail.html"><img src="img/tour_5.jpg" class="img-fluid" alt="" width="800" height="533"><div class="read_more"><span>Read more</span></div></a>
                                <small>Walking</small>
                            </figure>
                            <div class="wrapper">
                                <h3><a href="tour-detail.html">Tour Eiffel</a></h3>
                                <p>Id placerat tacimates definitionem sea, prima quidam vim no. Duo nobis persecuti cu.</p>
                                <span class="price">From <strong>$65</strong> /per person</span>
                            </div>
                            <ul>
                                <li><i class="icon_clock_alt"></i> 1h 30min</li>
                                <li><div class="score"><span>Good<em>350 Reviews</em></span><strong>7.5</strong></div></li>
                            </ul>
                        </div>
                    </div>
                    <!-- /box_grid -->
                    <div class="col-xl-4 col-lg-6 col-md-6 isotope-item latest">
                        <div class="box_grid">
                            <figure>
                                <a href="#0" class="wish_bt"></a>
                                <a href="tour-detail.html"><img src="img/tour_6.jpg" class="img-fluid" alt="" width="800" height="533"><div class="read_more"><span>Read more</span></div></a>
                                <small>Museum</small>
                            </figure>
                            <div class="wrapper">
                                <h3><a href="tour-detail.html">Louvre Museum</a></h3>
                                <p>Id placerat tacimates definitionem sea, prima quidam vim no. Duo nobis persecuti cu.</p>
                                <span class="price">From <strong>$95</strong> /per person</span>
                            </div>
                            <ul>
                                <li><i class="icon_clock_alt"></i> 1h 30min</li>
                                <li><div class="score"><span>Good<em>350 Reviews</em></span><strong>7.8</strong></div></li>
                            </ul>
                        </div>
                    </div>
                    <!-- /box_grid -->
                    --%>

                </div>
                <!-- /row -->
            </div>
            <!-- /isotope-wrapper -->

            <p class="text-center"><a href="#0" class="btn_1 rounded add_top_30">Load more</a></p>

        </div>
        <!-- /container -->

        <div class="bg_color_1">
            <div class="container margin_60_35">
                <div class="row">
                    <div class="col-md-4">
                        <a href="#0" class="boxed_list">
                            <i class="pe-7s-help2"></i>
                            <h4>Need Help? Contact us</h4>
                            <p>Cum appareat maiestatis interpretaris et, et sit.</p>
                        </a>
                    </div>
                    <div class="col-md-4">
                        <a href="#0" class="boxed_list">
                            <i class="pe-7s-wallet"></i>
                            <h4>Payments</h4>
                            <p>Qui ea nemore eruditi, magna prima possit eu mei.</p>
                        </a>
                    </div>
                    <div class="col-md-4">
                        <a href="#0" class="boxed_list">
                            <i class="pe-7s-note2"></i>
                            <h4>Cancel Policy</h4>
                            <p>Hinc vituperata sed ut, pro laudem nonumes ex.</p>
                        </a>
                    </div>
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /bg_color_1 -->

    </main>
    <!--/main-->

    <footer>
        <div class="container margin_60_35">
            <div class="row">
                <div class="col-lg-5 col-md-12 p-r-5">
                    <p><img src="img/logo.png" width="150" height="36" data-retina="true" alt=""></p>
                    <p>说走就走，还是只适合一个人去看。在闲暇之余，安排好一切，去看看想去的地方，去看看一路上的人、一路上的风景，会想一些事但更多的时候会什么都不想。双眼所见的一切已经占据了全部的脑海，要用很久的时间去回味，去挑选，将最触动人心的画面珍藏。</p>
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
                                <input type="email" name="email_newsletter" id="email_newsletter" class="form-control" placeholder="你的邮箱">
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
        <h3>Sign In</h3>
    </div>
    <form action="/LoginServlet" method="get">
        <div class="sign-in-wrapper">
            <%--<a href="#0" class="social_bt facebook">Login with Facebook</a>
            <a href="#0" class="social_bt google">Login with Google</a>
            <div class="divider"><span>Or</span></div>--%>
            <div class="form-group">
                <label>邮箱/用户名</label>
                <input type="email" class="form-control" name="email" id="email">
                <i class="icon_mail_alt"></i>
            </div>
            <div class="form-group">
                <label>密码</label>
                <input type="password" class="form-control" name="password" id="password" value="">
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
            <div class="text-center"><input type="submit" value="登录" class="btn_1 full-width"></div>
            <div class="text-center">
                还没有账号？ <a href="register.jsp">注册</a>
            </div>
            <div id="forgot_pw">
                <div class="form-group">
                    <label>Please confirm login email below</label>
                    <input type="email" class="form-control" name="email_forgot" id="email_forgot">
                    <i class="icon_mail_alt"></i>
                </div>
                <p>You will receive an email containing a link allowing you to reset your password to a new preferred one.</p>
                <div class="text-center"><input type="submit" value="Reset Password" class="btn_1"></div>
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

<!-- Map -->
<%--<script src="http://maps.googleapis.com/maps/api/js"></script>--%>
<script src="js/markerclusterer.js"></script>
<script src="js/map_tours.js"></script>
<script src="js/infobox.js"></script>

<!-- Masonry Filtering -->
<script src="js/isotope.min.js"></script>
<script>
    $(window).load(function(){
        var $container = $('.isotope-wrapper');
        $container.isotope({ itemSelector: '.isotope-item', layoutMode: 'masonry' });
    });

    $('.filters_listing').on( 'click', 'input', 'change', function(){
        var selector = $(this).attr('data-filter');
        $('.isotope-wrapper').isotope({ filter: selector });
    });
</script>



</body>
</html>
