<%@ page import="java.util.List" %>
<%@ page import="cn.kgc.entity.TourOrder" %>
<%@ page import="cn.kgc.entity.HotelOrder" %>
<%@ page import="cn.kgc.util.PageUtil" %><%--
  Created by IntelliJ IDEA.
  User: YGY
  Date: 2020/7/7
  Time: 18:23
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

<div id="page" class="theia-exception">

    <header class="header menu_fixed">
        <div id="preloader"><div data-loader="circle-side"></div></div><!-- /Preload -->
        <div id="logo">
            <a href="index.html">
                <img src="img/logo.png" width="150" height="36" data-retina="true" alt="" class="logo_normal">
                <img src="img/logo_sticky.png" width="150" height="36" data-retina="true" alt="" class="logo_sticky">
            </a>
        </div>
        <ul id="top_menu">
            <li><a href="cart-1.html" class="cart-menu-btn" title="Cart"><strong>4</strong></a></li>

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
        <div class="hero_in cart_section">
            <div class="wrapper">
                <div class="container">
                    <div class="bs-wizard clearfix">
                        <div class="bs-wizard-step active">
                            <div class="text-center bs-wizard-stepnum"><a href="/OrderServlet?operate=1&pageNum=1" style="color: white;">景点</a></div>
                            <div class="progress">
                                <div class="progress-bar"></div>
                            </div>
                            <a href="/OrderServlet?operate=1&pageNum=1" class="bs-wizard-dot"></a>
                        </div>

                        <div class="bs-wizard-step disabled">
                            <div class="text-center bs-wizard-stepnum"><a href="/OrderServlet?operate=2&pageNum=1" style="color: white;">旅店</a></div>
                            <div class="progress">
                                <div class="progress-bar"></div>
                            </div>
                            <a href="/OrderServlet?operate=2&pageNum=1" class="bs-wizard-dot"></a>
                        </div>

                        <div class="bs-wizard-step disabled">
                            <div class="text-center bs-wizard-stepnum"><a href="/OrderServlet?operate=3&pageNum=1" style="color: white;">美食</a></div>
                            <div class="progress">
                                <div class="progress-bar"></div>
                            </div>
                            <a href="#0" class="bs-wizard-dot"></a>
                        </div>
                    </div>
                    <!-- End bs-wizard -->
                </div>
            </div>
        </div>
        <!--/hero_in-->

        <div class="bg_color_1"<%-- style="border: 1px solid black;"--%>>
            <div class="container margin_60_35"<%-- style="border: 1px solid blue;"--%>>
                <div class="row"<%-- style="border: 1px solid pink;"--%>>
                    <%--<div class="col-lg-8" style="border: 1px solid green;width: 1200px">
                        <div class="box_cart" style="border: 1px solid yellow;">--%>
                            <table class="table table-striped cart-list"<%-- border="1px"--%>>
                                <thead>
                                <tr>
                                    <th>
                                        订单
                                    </th>
                                    <th>
                                        用户名
                                    </th>
                                    <th>
                                        人数
                                    </th>
                                    <th>
                                        价格
                                    </th>
                                    <th>
                                        出发
                                    </th>
                                    <th>
                                        返回
                                    </th>
                                    <th>
                                        删除
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <%
                                    PageUtil<TourOrder> tourOrderPageUtil = (PageUtil<TourOrder>)session.getAttribute("tourOrderPageUtil");
                                    List<TourOrder> list = tourOrderPageUtil.getData();
                                    for (TourOrder tourOrder:list){
                                %>
                                <tr>
                                    <td>
                                        <div class="thumb_cart">
                                            <img src="img/tour/<%=tourOrder.getPicPath()%>" alt="Image">
                                        </div>
                                        <span class="item_cart"><%=tourOrder.getName()%></span>
                                    </td>
                                    <td>
                                        <%=tourOrder.getUserName()%>
                                    </td>
                                    <td>
                                        成人：<%=tourOrder.getAdult()%><br>孩子：<%=tourOrder.getChild()%>
                                    </td>
                                    <td>
                                        <strong><%=tourOrder.getPrice()%></strong>
                                    </td>
                                    <td>
                                        <strong><%=tourOrder.getStarDate()%></strong>
                                    </td>
                                    <td>
                                        <strong><%=tourOrder.getEndDate() %></strong>
                                    </td>
                                    <td class="options" style="width:5%; text-align:center;">
                                        <a href="/OrderServlet?operate=10&id=<%=tourOrder.getId()%>"><i class="icon-trash"></i></a>
                                    </td>
                                </tr>
                                <%
                                    }
                                %>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td colspan="2">
                                        <a href="/OrderServlet?operate=1&pageNum=1">首页</a><%--<%=tourOrderPageUtil.getPageNum()%>--%>
                                        <%
                                            if(tourOrderPageUtil.getPageNum()!=1){
                                        %>
                                        <a href="/OrderServlet?operate=1&pageNum=<%=tourOrderPageUtil.getPageNum()-1%>">上一页</a>
                                        <%
                                            }
                                        %>


                                        <%
                                            for (int i = 1;i<=tourOrderPageUtil.getTotalPage();i++){
                                                if(i==tourOrderPageUtil.getPageNum()){
                                        %>

                                        <a href="/OrderServlet?operate=1&pageNum=<%=i %>">
                                            <span>[<%=i%>]</span>
                                        </a>

                                        <%
                                                }else{
                                        %>

                                        <a href="/OrderServlet?operate=1&pageNum=<%=i %>">
                                            <span><%=i%></span>
                                        </a>

                                        <%
                                                }
                                            }
                                        %>

                                        <%
                                            if(tourOrderPageUtil.getPageNum()!=tourOrderPageUtil.getTotalPage()){
                                        %>
                                        <a href="/OrderServlet?operate=1&pageNum=<%=tourOrderPageUtil.getPageNum()+1%>">下一页</a>
                                        <%
                                            }
                                        %>


                                        <a href="/OrderServlet?operate=1&pageNum=<%=tourOrderPageUtil.getTotalPage()%>">末页</a>
                                        <%--<%=tourOrderPageUtil.getTotalRecode()%>aaa
                                        <%=tourOrderPageUtil.getPageSize()%>--%>



                                    </td>


                                <%--*********************************************--%>
                                <%--<%
                                    List<HotelOrder> hotelOrderListList = (List<HotelOrder>)session.getAttribute("hotleOrders");
                                    for (HotelOrder hotelOrder:hotelOrderListList){
                                %>
                                <tr>
                                    <td>
                                        <div class="thumb_cart">
                                            <img src="img/<%=hotelOrder.getPicPath()%>" alt="Image">
                                        </div>
                                        <span class="item_cart"><%=hotelOrder.getName()%></span>
                                    </td>
                                    <td>
                                        <%=hotelOrder.getUserName()%>
                                    </td>
                                    <td>
                                        成人：<%=hotelOrder.getAdult()%><br>孩子：<%=hotelOrder.getChild()%>
                                    </td>
                                    <td>
                                        <strong><%=hotelOrder.getPrice()%></strong>
                                    </td>
                                    <td>
                                        <strong><%=hotelOrder.getStarDate()%></strong>
                                    </td>
                                    <td>
                                        <strong><%=hotelOrder.getEndDate() %></strong>
                                    </td>
                                    <td class="options" style="width:5%; text-align:center;">
                                        <a href="/OrderServlet?operate=11&id=<%=hotelOrder.getId()%>"><i class="icon-trash"></i></a>
                                    </td>
                                </tr>
                                <%
                                    }
                                %>

                                <tr>
                                    <td></td>
                                    <td colspan="6">
                                        首页

                                        上一页

                                        123

                                        下一页

                                        末页



                                    </td>

                                </tr>--%>
                                <%--<tr>
                                    <td>
                                        <div class="thumb_cart">
                                            <img src="http://via.placeholder.com/150x150/ccc/fff/thumb_cart_2.jpg" alt="Image">
                                        </div>
                                        <span class="item_cart">At deseruisse scriptorem</span>
                                    </td>
                                    <td>
                                        0%
                                    </td>
                                    <td>
                                        <strong>15,50$</strong>
                                    </td>
                                    <td class="options" style="width:5%; text-align:center;">
                                        <a href="#"><i class="icon-trash"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="thumb_cart">
                                            <img src="http://via.placeholder.com/150x150/ccc/fff/thumb_cart_3.jpg" alt="Image">
                                        </div>
                                        <span class="item_cart">Ea vel semper quaerendum</span>
                                    </td>
                                    <td>
                                        0%
                                    </td>
                                    <td>
                                        <strong>24,71$</strong>
                                    </td>
                                    <td class="options" style="width:5%; text-align:center;">
                                        <a href="#"><i class="icon-trash"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="thumb_cart">
                                            <img src="http://via.placeholder.com/150x150/ccc/fff/thumb_cart_4.jpg" alt="Image">
                                        </div>
                                        <span class="item_cart">Ei has exerci graecis</span>
                                    </td>
                                    <td>
                                        0%
                                    </td>
                                    <td>
                                        <strong>24,71$</strong>
                                    </td>
                                    <td class="options" style="width:5%; text-align:center;">
                                        <a href="#"><i class="icon-trash"></i></a>
                                    </td>
                                </tr>--%>

                                </tbody>
                            </table>
                            <div class="cart-options clearfix">
                                <div class="float-left">
                                    <%--<div class="apply-coupon">
                                        <div class="form-group">
                                            <input type="text" name="coupon-code" value="" placeholder="搜索关键字" class="form-control">
                                        </div>

                                        <div class="form-group">
                                            <button type="button" class="btn_1 outline">搜索</button>
                                        </div>

                                        <div class="form-group">
                                            <a href="/OrderServlet?operate=1&pageNum=1" class="btn_1 outline">景点</a>
                                        </div>

                                        <div class="form-group">
                                            <a href="/OrderServlet?operate=2&pageNum=1" class="btn_1 outline">美食</a>
                                        </div>

                                        &lt;%&ndash;<div class="form-group">
                                            <a class="btn_1 outline">景点</a>
                                        </div>&ndash;%&gt;
                                    </div>--%>
                                </div>
                                <%--<div class="float-right fix_mobile">
                                    <button type="button" class="btn_1 outline">刷新</button>
                                </div>--%>

                                <div>



                                </div>
                            </div>
                            <!-- /cart-options -->
                        <%--</div>
                    </div>--%>

                    <!-- /col -->

                    <%--<aside class="col-lg-4" id="sidebar">
                        <div class="box_detail">
                            <div id="total_cart">
                                Total <span class="float-right">69.00$</span>
                            </div>
                            <ul class="cart_details">
                                <li>From <span>02-11-18</span></li>
                                <li>To <span>04-11-18</span></li>
                                <li>Adults <span>2</span></li>
                                <li>Childs <span>1</span></li>
                            </ul>
                            <a href="cart-2.html" class="btn_1 full-width purchase">Checkout</a>
                            <div class="text-center"><small>No money charged in this step</small></div>
                        </div>
                    </aside>--%>
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




</body>
</html>
