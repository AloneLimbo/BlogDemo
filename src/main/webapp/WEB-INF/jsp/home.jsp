<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--引入jstl-->
<%@include file="../common/tag.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <!-- Basic Page Needs
  ================================================== -->
    <meta charset="utf-8">
    <title>zSarah</title>
    <meta name="description" content="Free Responsive Html5 Css3 Templates | zerotheme.com">
    <meta name="author" content="www.zerotheme.com">

    <!-- Mobile Specific Metas
  ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- CSS
  ================================================== -->
    <link rel="stylesheet" href="/resources/css/zerogrid.css">
    <link rel="stylesheet" href="/resources/css/style.css">
    <link rel="stylesheet" href="/resources/css/component.css">
    <link rel="stylesheet" href="/resources/css/responsive.css">

    <!--[if lt IE 8]>
    <div style=' clear: both; text-align:center; position: relative;'>
        <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
            <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
        </a>
    </div>
    <![endif]-->
    <!--[if lt IE 9]>
    <script src="/resources/html5.js"></script>
    <script src="/resources/js/css3-mediaqueries.js"></script>
    <![endif]-->

    <link href='/resources/images/favicon.ico' rel='icon' type='image/x-icon'/>

</head>
<div class="wrap-body">
    <!--------------Header--------------->
    <header>
        <div class="top-header">
            <div class="wrap-top zerogrid">
                <div class="row">
                    <div class="top-social">
                        <a href="#"><img src="/resources/images/facebook.png" title="facebook"/></a>
                        <a href="#"><img src="/resources/images/twitter.png" title="twitter"/></a>
                        <a href="#"><img src="/resources/images/google.png" title="google"/></a>
                        <a href="#"><img src="/resources/images/pinterest.png" title="pinterest"/></a>
                        <a href="#"><img src="/resources/images/instagram.png" title="instagram"/></a>
                    </div>
                    <div class="top-search"><form method="get" action="/search" id="search">
                        <input name="q" type="text" size="40" placeholder="Search..." />
                    </form></div>
                </div>
            </div>
        </div>
        <div class="wrap-header zerogrid">
            <div class="row">
                <div class="col-1-3">
                    <div id="logo"><a href="#"><img src="/resources/images/logo.png"/></a></div>
                </div>
                <div class="col-2-3">
                    <nav>
                        <a class="toggleMenu" href="#">Menu</a>
                        <ul class="menu">
                            <li><a href="index.html">Home</a></li>
                            <li>
                                <a href="#" class="parent">Categories</a>
                                <ul>
                                    <li>
                                        <a href="#" class="parent">Menu 0001</a>
                                        <ul>
                                            <li><a href="#">Menu 1001</a></li>
                                            <li><a href="#">Menu 1002</a></li>
                                            <li><a href="#">Menu 1003</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#" class="parent">Menu 0002</a>
                                        <ul>
                                            <li><a href="#">Menu 1002</a></li>
                                            <li><a href="#">Menu 1002</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="single.html">About</a></li>
                            <li><a href="contact.html">Contact Us</a></li>
                        </ul>
                    </nav>
                </div>

            </div>
        </div>
    </header>


    <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>

    <!--------------Content--------------->
    <section class="container page-home">
        <div id="main-content" class="wrap-container zerogrid">

            <c:forEach var="bg" items="${list}" varStatus="status">
                <article>

                    <div class="col-1-2   <c:if test="${status.index%2!=0}">right</c:if>">
                        <img src="/resources/images/${bg.img}" />
                    </div>
                    <div class="col-1-2 left">
                        <a class="art-category <c:if test="${status.index%2!=0}">left</c:if><c:if test="${status.index%2==0}"> right</c:if>" href="#">Design</a>
                        <div class="clear"></div>
                        <div class="art-content">
                            <h2>${bg.title}</h2>
                            <div class="info">${bg.createTime} <a href="#"></a></div>
                            <div class="line"></div>
                            <p>${bg.brief}</p>
                            <a href="http://localhost:8080/blog/${bg.blogId}/single" class="more">Read More</a>
                        </div>
                    </div>
                </article>
            </c:forEach>
        </div>

        <div id="pagination" class="clearfix">
            <ul>
                <c:forEach var="sk" begin="1" end="${page}">
                    <li><a <c:if test="${pageState==sk}">class="current"</c:if> href="http://localhost:8080/blog/home/${sk}">${sk}</a></li>
                </c:forEach>


                <li><a href="#">next</a></li>
            </ul>
        </div>

    </section>
    <!--------------Footer--------------->
    <footer>
        <div class="wrap-footer zerogrid">
            <div class="row">
                <div class="col-full">
                    <div class="wrap-col">
                        <h1>zSarah</h1>
                        <p>Free Html5 Templates - Zerotheme.com</p>
                        <div class="menu-bottom">
                            <ul>
                                <li><a href="http://115.29.50.65:8080/blog/home">Home</a></li>
                                <li><a href="#">Blog</a></li>
                                <li><a href="#">About</a></li>
                                <li><a href="#">Contact</a></li>

                            </ul>
                            <div class="clear"></div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="copyright">
            <p>Copyright © 2015 - More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
        </div>
    </footer>

</div>
<script type="text/javascript" src="/resources/js/jquery.min.js"></script>
<script type="text/javascript" src="/resources/js/navigation.js"></script>
</body>
</html>
