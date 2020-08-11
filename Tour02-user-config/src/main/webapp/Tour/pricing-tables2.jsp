<%@ page import="cn.kgc.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: YGY
  Date: 2020/7/16
  Time: 22:12
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
    <title>Panagea | Premium site template for travel agencies, hotels and restaurant listing.</title>

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

    <!-- SPECIFIC CSS -->
    <link href="css/tables.css" rel="stylesheet">

    <!-- YOUR CUSTOM CSS -->
    <link href="css/custom.css" rel="stylesheet">
</head>

<body>

<div id="page">

    <header class="header menu_fixed">
        <div id="preloader">
            <div data-loader="circle-side"></div>
        </div><!-- /Preload -->
        <div id="logo">
            <a href="index.html">
                <img src="img/logo.png" width="150" height="36" data-retina="true" alt="" class="logo_normal">
                <img src="img/logo_sticky.png" width="150" height="36" data-retina="true" alt="" class="logo_sticky">
            </a>
        </div>
        <ul id="top_menu">
            <li><a href="cart-1.html" class="cart-menu-btn" title="Cart"><strong>4</strong></a></li>
            <li><a href="#sign-in-dialog" <%--id="sign-in"--%> class="login" title="Sign In">Sign In</a></li>
            <li><a href="wishlist.html" class="wishlist_bt_top" title="Your wishlist">Your wishlist</a></li>
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
                        <%--<li><a href="pricing-tables.html">Responsive pricing tables</a></li>--%>
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
                    <span>
                        <a href="#0">
                            <%
                                String username = (String) session.getAttribute("email");
                                if (username == null) {
                            %>
                            <a href="#sign-in-dialog" id="sign-in" class="login" title="登录">登录</a>
                            <%
                            } else {
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
        <section class="hero_in general">
            <div class="wrapper">
                <div class="container">
                    <h1 class="fadeInUp"><span></span>会员套餐剩余展示</h1>
                </div>
            </div>
        </section>
        <!--/hero_in-->

        <div class="container margin_60_35">
            <div class="pricing-container cd-has-margins">
                <div class="pricing-switcher">
                    <p class="fieldset">
                        <input type="radio" name="duration-2" value="monthly" id="monthly-2" checked>
                        <label for="monthly-2">包月</label>
                        <input type="radio" name="duration-2" value="yearly" id="yearly-2">
                        <label for="yearly-2">包年</label>
                        <span class="switch"></span>
                    </p>
                </div>
                <!--/pricing-switcher -->
                <ul class="pricing-list bounce-invert">
                    <%--<li>
                        <ul class="pricing-wrapper">


                                <li data-type="monthly" class="is-visible">
                                    <header class="pricing-header">
                                        <h2>青铜会员</h2>

                                        <div class="price">
                                            <span class="currency">￥</span>
                                            <span class="price-value">30</span>
                                            <span class="price-duration">一个月</span>
                                        </div>
                                    </header>
                                    <!-- /pricing-header -->
                                    <div class="pricing-body">
                                        <ul class="pricing-features">
                                            <li><em>1次</em> 免费</li>
                                            <li><em>1</em> 人</li>
                                            <li><em>一生</em> 可用</li>
                                            <li><em>非</em> 精选</li>
                                            <li><em>30 天</em> 有效期</li>
                                            &lt;%&ndash;<li><em>24/7</em> Support</li>&ndash;%&gt;
                                        </ul>
                                    </div>
                                    <!-- /pricing-body -->
                                    <footer class="pricing-footer">
                                        <a class="select-plan" href="/ToPayIndex2?operate=1&uid=<%=session.getAttribute("uid")%>">选择</a>

                                    </footer>
                                </li>

                                <li data-type="yearly" class="is-hidden">
                                    <header class="pricing-header">
                                        <h2>青铜会员</h2>

                                        <div class="price">
                                            <span class="currency">￥</span>
                                            <span class="price-value">320</span>
                                            <span class="price-duration">一年</span>
                                        </div>
                                    </header>
                                    <!-- /pricing-header -->
                                    <div class="pricing-body">
                                        <ul class="pricing-features">
                                            <li><em>1次</em> 免费</li>
                                            <li><em>1</em> 人</li>
                                            <li><em>一生</em> 可用</li>
                                            <li><em>非</em> 精选</li>
                                            <li><em>365 天</em> 有效期</li>
                                        </ul>
                                    </div>
                                    <!-- /pricing-body -->
                                    <footer class="pricing-footer">
                                        <a class="select-plan" href="/ToPayIndex2?operate=2&uid=<%=session.getAttribute("uid")%>">选择</a>
                                    </footer>
                                </li>
                        </ul>
                        <!-- /pricing-wrapper -->
                    </li>--%>

                    <li class="popular">
                        <ul class="pricing-wrapper">
                            <li data-type="monthly" class="is-visible">
                                <header class="pricing-header">
                                    <%
                                        User user = (User) session.getAttribute("tempUser");
                                        if (user.getVip() == 0) {
                                    %>
                                    <h2>你还不是会员！</h2>

                                    <%

                                    } else {
                                        if (user.getVip() == 1 || user.getVip() == 2) {
                                    %>
                                    <h2>青铜会员</h2>
                                    <%
                                    } else if (user.getVip() == 3 || user.getVip() == 4) {
                                    %>
                                    <h2>黄金会员</h2>
                                    <%
                                    } else if (user.getVip() == 5 || user.getVip() == 6) {
                                    %>
                                    <h2>钻石会员</h2>
                                    <%
                                        }
                                    %>

                                    <%--<div class="price">
                                        <span class="currency">￥</span>
                                        <span class="price-value">60</span>
                                        <span class="price-duration">一个月</span>
                                    </div>--%>

                                </header>
                                <!-- /pricing-header -->
                                <div class="pricing-body">
                                    <ul class="pricing-features">
                                        <li><em><%=user.getVipFreeTimes()%>次</em> 免费</li>
                                        <li><em>1</em> 人</li>
                                        <li><em>一生</em> 可用</li>
                                        <li><em>非</em> 精选</li>
                                        <li><em>vip剩余<%=user.getVipDays()%></em> 天</li>
                                    </ul>
                                </div>
                                <!-- /pricing-body -->
                                <%--<footer class="pricing-footer">
                                    <a class="select-plan"
                                       href="/ToPayIndex2?operate=3&uid=<%=session.getAttribute("uid")%>">选择</a>
                                </footer>--%>

                                <%
                                    }
                                %>


                            </li>
                            <li data-type="yearly" class="is-hidden">
                                <header class="pricing-header">
                                    <h2>黄金会员</h2>

                                    <div class="price">
                                        <span class="currency">￥</span>
                                        <span class="price-value">630</span>
                                        <span class="price-duration">一年</span>
                                    </div>
                                </header>
                                <!-- /pricing-header -->
                                <div class="pricing-body">
                                    <ul class="pricing-features">
                                        <li><em>1次</em> 免费</li>
                                        <li><em>1</em> 人</li>
                                        <li><em>一生</em> 可用</li>
                                        <li><em>非</em> 精选</li>
                                        <li><em>30 天</em> 有效期</li>
                                    </ul>
                                </div>
                                <!-- /pricing-body -->
                                <footer class="pricing-footer">
                                    <a class="select-plan"
                                       href="/ToPayIndex2?operate=4&uid=<%=session.getAttribute("uid")%>">选择</a>
                                </footer>
                            </li>
                        </ul>
                        <!-- /cd-pricing-wrapper -->
                    </li>

                    <%--<li>
                        <ul class="pricing-wrapper">
                            <li data-type="monthly" class="is-visible">
                                <header class="pricing-header">
                                    <h2>钻石会员</h2>
                                    <div class="price">
                                        <span class="currency">￥</span>
                                        <span class="price-value">90</span>
                                        <span class="price-duration">一月</span>
                                    </div>
                                </header>
                                <!-- /pricing-header -->
                                <div class="pricing-body">
                                    <ul class="pricing-features">
                                        <li><em>1次</em> 免费</li>
                                        <li><em>1</em> 人</li>
                                        <li><em>一生</em> 可用</li>
                                        <li><em>非</em> 精选</li>
                                        <li><em>30 天</em> 有效期</li>
                                    </ul>
                                </div>
                                <!-- /pricing-body -->
                                <footer class="pricing-footer">
                                    <a class="select-plan" href="/ToPayIndex2?operate=5&uid=<%=session.getAttribute("uid")%>">选择</a>
                                </footer>
                            </li>
                            <li data-type="yearly" class="is-hidden">
                                <header class="pricing-header">
                                    <h2>钻石会员</h2>

                                    <div class="price">
                                        <span class="currency">￥</span>
                                        <span class="price-value">950</span>
                                        <span class="price-duration">一年</span>
                                    </div>
                                </header>
                                <!-- /pricing-header -->
                                <div class="pricing-body">
                                    <ul class="pricing-features">
                                        <li><em>1次</em> 免费</li>
                                        <li><em>1</em> 人</li>
                                        <li><em>一生</em> 可用</li>
                                        <li><em>非</em> 精选</li>
                                        <li><em>30 天</em> 有效期</li>
                                    </ul>
                                </div>
                                <!-- /pricing-body -->
                                <footer class="pricing-footer">
                                    <a class="select-plan" href="/ToPayIndex2?operate=6&uid=<%=session.getAttribute("uid")%>">选择</a>
                                </footer>
                            </li>
                        </ul>
                        <!-- /pricing-wrapper -->
                    </li>--%>
                </ul>
                <!-- /pricing-list -->
            </div>
            <!-- /pricing-container -->
        </div>
        <!-- /container -->
        <%--
                <div class="bg_color_1">
                    <div class="container margin_60_35">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="box_faq">
                                    <i class="icon_info_alt"></i>
                                    <h4>Porro soleat pri ex, at has lorem accusamus?</h4>
                                    <p>Ut unum diceret eos, mel cu velit principes, ut quo inani dolorem mediocritatem. Mea in justo posidonium necessitatibus. Augue honestatis vis no, ius quot mazim forensibus in, per sale virtute legimus ne. Mea dicta facilisis eu.</p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="box_faq">
                                    <i class="icon_info_alt"></i>
                                    <h4>Ut quo inani dolorem mediocritatem?</h4>
                                    <p>Ut unum diceret eos, mel cu velit principes, ut quo inani dolorem mediocritatem. Mea in justo posidonium necessitatibus. Augue honestatis vis no, ius quot mazim forensibus in, per sale virtute legimus ne. Mea dicta facilisis eu.</p>
                                </div>
                            </div>
                        </div>
                        <!-- /row  -->
                        <div class="row">
                            <div class="col-md-6">
                                <div class="box_faq">
                                    <i class="icon_info_alt"></i>
                                    <h4>Per sale virtute legimus ne?</h4>
                                    <p>Ut unum diceret eos, mel cu velit principes, ut quo inani dolorem mediocritatem. Mea in justo posidonium necessitatibus. Augue honestatis vis no, ius quot mazim forensibus in, per sale virtute legimus ne. Mea dicta facilisis eu.</p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="box_faq">
                                    <i class="icon_info_alt"></i>
                                    <h4>Mea in justo posidonium necessitatibus?</h4>
                                    <p>Ut unum diceret eos, mel cu velit principes, ut quo inani dolorem mediocritatem. Mea in justo posidonium necessitatibus. Augue honestatis vis no, ius quot mazim forensibus in, per sale virtute legimus ne. Mea dicta facilisis eu.</p>
                                </div>
                            </div>
                        </div>
                        <!-- /row  -->
                    </div>
                    <!--/container-->
                </div>
                <!--/bg_color_1-->--%>
    </main>
    <!--/main-->

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
        <h3>Sign In</h3>
    </div>
    <form>
        <div class="sign-in-wrapper">
            <a href="#0" class="social_bt facebook">Login with Facebook</a>
            <a href="#0" class="social_bt google">Login with Google</a>
            <div class="divider"><span>Or</span></div>
            <div class="form-group">
                <label>Email</label>
                <input type="email" class="form-control" name="email" id="email">
                <i class="icon_mail_alt"></i>
            </div>
            <div class="form-group">
                <label>Password</label>
                <input type="password" class="form-control" name="password" id="password" value="">
                <i class="icon_lock_alt"></i>
            </div>
            <div class="clearfix add_bottom_15">
                <div class="checkboxes float-left">
                    <label class="container_check">Remember me
                        <input type="checkbox">
                        <span class="checkmark"></span>
                    </label>
                </div>
                <div class="float-right mt-1"><a id="forgot" href="javascript:void(0);">Forgot Password?</a></div>
            </div>
            <div class="text-center"><input type="submit" value="Log In" class="btn_1 full-width"></div>
            <div class="text-center">
                Don’t have an account? <a href="register.html">Sign up</a>
            </div>
            <div id="forgot_pw">
                <div class="form-group">
                    <label>Please confirm login email below</label>
                    <input type="email" class="form-control" name="email_forgot" id="email_forgot">
                    <i class="icon_mail_alt"></i>
                </div>
                <p>You will receive an email containing a link allowing you to reset your password to a new preferred
                    one.</p>
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

<!-- SPECIFIC SCRIPTS -->
<script src="js/modernizr_tables.js"></script>
<script src="js/tables_func.js"></script>


</body>
</html>