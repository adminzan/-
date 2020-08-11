<%@ page import="cn.kgc.entity.Tour" %>
<%@ page import="java.util.List" %>
<%@ page import="cn.kgc.entity.Journey" %>
<%@ page import="cn.kgc.entity.Comment" %><%--
  Created by IntelliJ IDEA.
  User: YGY
  Date: 2020/7/5
  Time: 1:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<%

    int uid = (int)(session.getAttribute("uid"));

    Tour tour = (Tour)session.getAttribute("tour");
    List<Journey> journeyList = (List<Journey>)session.getAttribute("journeyList");
    List<Comment> commentList = (List<Comment>)session.getAttribute("commentList");
%>
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
            <li><a href="/OrderServlet?operate=0" class="cart-menu-btn" title="Cart"><strong>4</strong></a></li>

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
        <section class="hero_in tours_detail">
            <div class="wrapper">
                <div class="container">
                    <h1 class="fadeInUp"><span></span><%=tour.getName()%></h1>
                </div>
                <span class="magnific-gallery">
                    <%
                    String[] photos = tour.getPicPath2().split("\\*");

                    %>
					<a href="img/tour/<%=tour.getPicPath()%>" class="btn_photos" title="Photo title" data-effect="mfp-zoom-in">照片秀</a>
					<%
                    for (String pic:photos){

                    %>
                    <a href="img/tour/<%=pic%>" title="Photo title" data-effect="mfp-zoom-in"></a>
					<%--<a href="img/gallery/tour_list_3.jpg" title="Photo title" data-effect="mfp-zoom-in"></a>--%>
                    <%
                        }
                    %>
                </span>
            </div>
        </section>
        <!--/hero_in-->

        <%

            String[] describe = tour.getTourDescribe().split("\\*");
        %>

        <div class="bg_color_1">
            <nav class="secondary_nav sticky_horizontal">
                <div class="container">
                    <ul class="clearfix">
                        <li><a href="#description" class="active">Description</a></li>
                        <li><a href="#reviews">Reviews</a></li>
                        <li><a href="#sidebar">Booking</a></li>
                    </ul>
                </div>
            </nav>
            <div class="container margin_60_35">
                <div class="row">
                    <div class="col-lg-8">
                        <section id="description">
                            <h2>特色描述：</h2>
                            <p><%=describe[0]%></p>
                            <p><%=describe[1]%></p>
                            <h3>欣赏</h3>
                            <div id="instagram-feed" class="clearfix">
                                <%
                                String[] pictures = tour.getPicPath2().split("\\*");
                                for (String picture:pictures){
                                %>

                                <img src="img/<%=picture%>" style="width: 100%;margin: 10px 0 0 0" alt="">

                                <%
                                    }
                                %>
                            </div>
                            <hr>

                            <%--<h3>Program <small>(60 minutes)</small></h3>
                            <p>
                                Iudico omnesque vis at, ius an laboramus adversarium. An eirmod doctus admodum est, vero numquam et mel, an duo modo error. No affert timeam mea, legimus ceteros his in. Aperiri honestatis sit at. Eos aeque fuisset ei, case denique eam ne. Augue invidunt has ad, ullum debitis mea ei, ne aliquip dignissim nec.
                            </p>--%>
                            <ul class="cbp_tmtimeline">
                                <%

                                for (Journey journey:journeyList){

                                %>

                                <li>
                                    <time class="cbp_tmtime" datetime="09:30"><span>60 分钟.</span><span>09:00开始</span>
                                    </time>
                                    <div class="cbp_tmicon">
                                        <%=journey.getTimes()%>
                                    </div>
                                    <div class="cbp_tmlabel">
                                        <div class="hidden-xs">
                                            <img src="img/<%=journey.getPicPath()%>" alt="" class="rounded-circle thumb_visit">
                                        </div>
                                        <h4><%=journey.getName()%></h4>
                                        <p>
                                            <%=journey.getContent()%>
                                        </p>
                                    </div>
                                </li>
                                <%
                                    }
                                %>

                                <%--<li>
                                    <time class="cbp_tmtime" datetime="11:30"><span>2 hours</span><span>11:30</span>
                                    </time>
                                    <div class="cbp_tmicon">
                                        2
                                    </div>
                                    <div class="cbp_tmlabel">
                                        <div class="hidden-xs">
                                            <img src="img/tour_plan_2.jpg" alt="" class="rounded-circle thumb_visit">
                                        </div>
                                        <h4>Statue of Saint Reparata</h4>
                                        <p>
                                            Vero consequat cotidieque ad eam. Ea duis errem qui, impedit blandit sed eu. Ius diam vivendo ne.
                                        </p>
                                    </div>
                                </li>
                                <li>
                                    <time class="cbp_tmtime" datetime="13:30"><span>1 hour</span><span>13:30</span>
                                    </time>
                                    <div class="cbp_tmicon">
                                        3
                                    </div>
                                    <div class="cbp_tmlabel">
                                        <div class="hidden-xs">
                                            <img src="img/tour_plan_3.jpg" alt="" class="rounded-circle thumb_visit">
                                        </div>
                                        <h4>Huge clock decorated</h4>
                                        <p>
                                            Vero consequat cotidieque ad eam. Ea duis errem qui, impedit blandit sed eu. Ius diam vivendo ne.
                                        </p>
                                    </div>
                                </li>
                                <li>
                                    <time class="cbp_tmtime" datetime="14:30"><span>2 hours</span><span>14:30</span>
                                    </time>
                                    <div class="cbp_tmicon">
                                        4
                                    </div>
                                    <div class="cbp_tmlabel">
                                        <div class="hidden-xs">
                                            <img src="img/tour_plan_4.jpg" alt="" class="rounded-circle thumb_visit">
                                        </div>
                                        <h4>Vasari's fresco</h4>
                                        <p>
                                            Vero consequat cotidieque ad eam. Ea duis errem qui, impedit blandit sed eu. Ius diam vivendo ne.
                                        </p>
                                    </div>
                                </li>--%>
                            </ul>
                            <hr>
                            <%--<p>Mea appareat omittantur eloquentiam ad, nam ei quas <strong>oportere democritum</strong>. Prima causae admodum id est, ei timeam inimicus sed. Sit an meis aliquam, cetero inermis vel ut. An sit illum euismod facilisis, tamquam vulputate pertinacia eum at.</p>
                            <div class="row">
                                <div class="col-lg-6">
                                    <ul class="bullets">
                                        <li>Dolorem mediocritatem</li>
                                        <li>Mea appareat</li>
                                        <li>Prima causae</li>
                                        <li>Singulis indoctum</li>
                                    </ul>
                                </div>
                                <div class="col-lg-6">
                                    <ul class="bullets">
                                        <li>Timeam inimicus</li>
                                        <li>Oportere democritum</li>
                                        <li>Cetero inermis</li>
                                        <li>Pertinacia eum</li>
                                    </ul>
                                </div>
                            </div>--%>
                            <!-- /row -->

                            <hr>
                            <h3>Location</h3>
                            <div id="map" class="map map_single add_bottom_30"></div>
                            <!-- End Map -->
                        </section>
                        <!-- /section -->

                        <section id="reviews">
                            <h2>Reviews</h2>
                            <div class="reviews-container">
                                <div class="row">
                                    <div class="col-lg-3">
                                        <div id="review_summary">
                                            <strong>8.5</strong>
                                            <em>Superb</em>
                                            <small>Based on 4 reviews</small>
                                        </div>
                                    </div>
                                    <div class="col-lg-9">
                                        <div class="row">
                                            <div class="col-lg-10 col-9">
                                                <div class="progress">
                                                    <div class="progress-bar" role="progressbar" style="width: 90%" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                            </div>
                                            <div class="col-lg-2 col-3"><small><strong>5 stars</strong></small></div>
                                        </div>
                                        <!-- /row -->
                                        <div class="row">
                                            <div class="col-lg-10 col-9">
                                                <div class="progress">
                                                    <div class="progress-bar" role="progressbar" style="width: 95%" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                            </div>
                                            <div class="col-lg-2 col-3"><small><strong>4 stars</strong></small></div>
                                        </div>
                                        <!-- /row -->
                                        <div class="row">
                                            <div class="col-lg-10 col-9">
                                                <div class="progress">
                                                    <div class="progress-bar" role="progressbar" style="width: 60%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                            </div>
                                            <div class="col-lg-2 col-3"><small><strong>3 stars</strong></small></div>
                                        </div>
                                        <!-- /row -->
                                        <div class="row">
                                            <div class="col-lg-10 col-9">
                                                <div class="progress">
                                                    <div class="progress-bar" role="progressbar" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                            </div>
                                            <div class="col-lg-2 col-3"><small><strong>2 stars</strong></small></div>
                                        </div>
                                        <!-- /row -->
                                        <div class="row">
                                            <div class="col-lg-10 col-9">
                                                <div class="progress">
                                                    <div class="progress-bar" role="progressbar" style="width: 0" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                            </div>
                                            <div class="col-lg-2 col-3"><small><strong>1 stars</strong></small></div>
                                        </div>
                                        <!-- /row -->
                                    </div>
                                </div>
                                <!-- /row -->
                            </div>

                            <hr>

                            <div class="reviews-container">

                                <%
                                for (Comment comment:commentList){
                                %>

                                <div class="review-box clearfix">
                                    <figure class="rev-thumb"><img src="img/user/<%=comment.getPicPath()%>" alt="">
                                    </figure>
                                    <div class="rev-content">
                                        <div class="rating">
                                            <i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star"></i>
                                        </div>
                                        <div class="rev-info">
                                            <%=comment.getuName()%> – <%=comment.getDate()%>:
                                        </div>
                                        <div class="rev-text">
                                            <p>
                                                <%=comment.getContent()%>
                                            </p>
                                        </div>
                                    </div>
                                </div>

                                <%
                                    }
                                %>

                               <%-- <!-- /review-box -->
                                <div class="review-box clearfix">
                                    <figure class="rev-thumb"><img src="img/avatar2.jpg" alt="">
                                    </figure>
                                    <div class="rev-content">
                                        <div class="rating">
                                            <i class="icon-star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star"></i>
                                        </div>
                                        <div class="rev-info">
                                            Ahsan – April 01, 2016:
                                        </div>
                                        <div class="rev-text">
                                            <p>
                                                Sed eget turpis a pede tempor malesuada. Vivamus quis mi at leo pulvinar hendrerit. Cum sociis natoque penatibus et magnis dis
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <!-- /review-box -->
                                <div class="review-box clearfix">
                                    <figure class="rev-thumb"><img src="img/avatar3.jpg" alt="">
                                    </figure>
                                    <div class="rev-content">
                                        <div class="rating">
                                            <i class="icon-star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star"></i>
                                        </div>
                                        <div class="rev-info">
                                            Sara – March 31, 2016:
                                        </div>
                                        <div class="rev-text">
                                            <p>
                                                Sed eget turpis a pede tempor malesuada. Vivamus quis mi at leo pulvinar hendrerit. Cum sociis natoque penatibus et magnis dis
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <!-- /review-box -->--%>
                            </div>
                            <!-- /review-container -->
                        </section>
                        <!-- /section -->
                        <hr>

                        <div class="add-review">
                            <h5>留下评论</h5>
                            <form action="/CommentServlet?id=<%=tour.getId()%>&operate=1&uid=<%=uid%>" method="post">
                                <div class="row">
                                    <div class="form-group col-md-6">
                                        <label>昵称</label>
                                        <input type="text" name="name_review" id="name_review" placeholder="" class="form-control">
                                    </div>
                                    <%--<div class="form-group col-md-6">
                                        <label>邮箱</label>
                                        <input type="email" name="email_review" id="email_review" class="form-control">
                                    </div>--%>
                                    <div class="form-group col-md-6">
                                        <label>评价 </label>
                                        <div class="custom-select-form">
                                            <select name="rating_review" id="rating_review" class="wide">
                                                <option value="1">1 (lowest)</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5" selected>5 (medium)</option>
                                                <option value="6">6</option>
                                                <option value="7">7</option>
                                                <option value="8">8</option>
                                                <option value="9">9</option>
                                                <option value="10">10 (highest)</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label>点评</label>
                                        <textarea name="review_text" id="review_text" class="form-control" style="height:130px;"></textarea>
                                    </div>
                                    <div class="form-group col-md-12 add_top_20">
                                        <input type="submit" value="提交" class="btn_1" id="submit-review">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- /col -->

                    <aside class="col-lg-4" id="sidebar">

                        <div class="box_detail booking">
                            <div class="price">
                                <span>45$ <small>每人</small></span>
                                <div class="score"><span>评分<em>350 回复</em></span><strong>7.0</strong></div>
                            </div>

                            <%--<%=tour.getId()%>--%>
                            <%--<form action="/TourOrderServlet?id=<%=tour.getId()%>" method="post">--%>



                            <form action="/ToPayIndex?operate=0&price=<%=tour.getPrice()%>&id=<%=tour.getId()%>&userName=<%=username%>&uid=<%=uid%>" method="post">
                                <div class="form-group">
                                    <input class="form-control" type="text" name="dates" placeholder="什么时候.." required>
                                    <i class="icon_calendar"></i>
                                </div>
                                <div class="panel-dropdown">
                                    <a href="#">来宾 <span class="qtyTotal">1</span></a>
                                <div class="panel-dropdown-content right">
                                    <div class="qtyButtons">
                                        <label>成人</label>
                                        <input type="text" name="qtyInput" value="1">
                                    </div>
                                    <div class="qtyButtons">
                                        <label>儿童</label>
                                        <input type="text" name="qtyInput2" value="0">
                                    </div>
                                </div>
                            </div>
                                <button class="btn_1 full-width purchase" value="购买">购买</button>
                                <%--<a href="cart-1.html" class="btn_1 full-width purchase">购买</a>--%>
                                <a href="wishlist.html" class="btn_1 full-width outline wishlist"><i class="icon_heart"></i> 添加到愿望清单</a>
                                <div class="text-center"><small>此步骤不收取任何费用</small></div>
                            </form>
                        </div>
                        <%--<ul class="share-buttons">
                            <li><a class="fb-share" href="#0"><i class="social_facebook"></i> Share</a></li>
                            <li><a class="twitter-share" href="#0"><i class="social_twitter"></i> Tweet</a></li>
                            <li><a class="gplus-share" href="#0"><i class="social_googleplus"></i> Share</a></li>
                        </ul>--%>
                    </aside>
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

<!-- Map -->
<%--<script src="http://maps.googleapis.com/maps/api/js"></script>--%>
<script src="js/map_single_tour.js"></script>
<script src="js/infobox.js"></script>

<!-- DATEPICKER  -->
<script>
    $(function() {
        $('input[name="dates"]').daterangepicker({
            autoUpdateInput: false,
            opens: 'left',
            locale: {
                cancelLabel: 'Clear'
            }
        });
        $('input[name="dates"]').on('apply.daterangepicker', function(ev, picker) {
            $(this).val(picker.startDate.format('MM-DD-YY') + ' > ' + picker.endDate.format('MM-DD-YY'));
        });
        $('input[name="dates"]').on('cancel.daterangepicker', function(ev, picker) {
            $(this).val('');
        });
    });
</script>

<!-- INPUT QUANTITY  -->
<script src="js/input_qty.js"></script>

<!-- INSTAGRAM FEED  -->
<script>
    $(window).on('load', function() {
        "use strict";
        $.instagramFeed({
            'username': 'thelouvremuseum',
            'container': "#instagram-feed",
            'display_profile': false,
            'display_biography': false,
            'display_gallery': true,
            'get_raw_json': false,
            'callback': null,
            'styling': true,
            'items': 12,
            'items_per_row': 6,
            'margin': 1
        });
    });
</script>



</body>
</html>