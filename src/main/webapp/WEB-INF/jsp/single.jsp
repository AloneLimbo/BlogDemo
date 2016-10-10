<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--引入jstl-->
<%@include file="../common/tag.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
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
    <script src="/resources/js/html5.js"></script>
    <script src="/resources/js/css3-mediaqueries.js"></script>
    <![endif]-->

    <link href='/resources//images/favicon.ico' rel='icon' type='image/x-icon'/>

</head>
<body>
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
                    <div id="logo"><a href="#"><img src="/resources//images/logo.png"/></a></div>
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



    <!--------------Content--------------->
    <section class="container page-single">
        <div class="wrap-container zerogrid">
            <div class="col-2-3">
                <div id="main-content" class="wrap-col">
                    <article>
                        <img src="/resources/images/${blog.img}" />
                        <div class="art-header">
                            <h2>${blog.title}</h2>
                            <div class="info">${blog.createTime} whith<a href="#">01 Commnets</a></div>
                            <div class="line"></div>
                        </div>
                        <div class="art-content">
                            <p>${blog.content}</p>
                        </div>
                        <div class="tag">
                            <span>Tag : </span>
                            <ul>
                                <li><a href="#">Design</a></li>
                                <li><a href="#">Photoshop</a></li>
                                <li><a href="#">Illustrator</a></li>
                            </ul>
                        </div>
                    </article>
                    <div class="art-related">
                        <span>Related Posts</span>
                        <div class="row">
                            <div class="col-1-3"><div class="wrap-col">
                                <a href="#"><img src="/resources/images/img02.jpg"></a>
                                <a href="#"><h4>The title on the article</h4></a>
                            </div></div>
                            <div class="col-1-3"><div class="wrap-col"></a>
                                <a href="#"><img src="/resources/images/img03.jpg">
                                    <a href="#"><h4>The title on the article</h4></a>
                            </div></div>
                            <div class="col-1-3"><div class="wrap-col"></a>
                                <a href="#"><img src="/resources/images/img04.jpg">
                                    <a href="#"><h4>The title on the article</h4></a>
                            </div></div>
                        </div>
                    </div>

                </div>
            </div>
            <div class="col-1-3">
                <div id="sidebar" class="wrap-col">
                    <div class="widget">
                        <div class="wid-header"><h4>About us</h4></div>
                        <div class="wid-content">
                            <a href="http://www.zerotheme.com" target="_blank"><h1>ZEROTHEME</h1></a>
                            <p>Free Html5 Templates created by <a href="http://www.zerotheme.com" target="_blank">Zerotheme</a>. You can use and modify the template for both personal and commercial use. You must keep all copyright information and credit links in the template and associated files.</p>
                        </div>
                    </div>
                    <div class="widget wid-menu">
                        <div class="wid-header"><h4>Categories</h4></div>
                        <div class="wid-content">
                            <ul>
                                <li><a href="http://www.zerotheme.com">Free Html5 Templates</a></li>
                                <li><a href="http://www.zerotheme.com">Free Responsive Themes</a></li>
                                <li><a href="http://www.zerotheme.com">Free Html5 and Css3 Themes</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="widget wid-posts">
                        <div class="wid-header"><h4>Popular Post</h4></div>
                        <div class="wid-content">
                            <div class="post">
                                <a href="#"><img src="/resources/images/img02.jpg"/></a>
                                <h6><a href="#">Lorem ipsum dolor sit amet</a></h6>
                                <p>November 11 ,2015</p>
                            </div>
                            <div class="post">
                                <a href="#"><img src="/resources/images/img03.jpg"/></a>
                                <h6><a href="#">Lorem ipsum dolor sit amet</a></h6>
                                <p>November 11 ,2015</p>
                            </div>
                            <div class="post">
                                <a href="#"><img src="/resources/images/img04.jpg"/></a>
                                <h6><a href="#">Lorem ipsum dolor sit amet</a></h6>
                                <p>November 11 ,2015</p>
                            </div>
                        </div>
                    </div>
                    <div class="widget wid-label">
                        <div class="wid-header"><h4>Labels</h4></div>
                        <div class="wid-content">
                            <a href="#">Design</a> <a href="#">Technology</a> <a href="#">Animal</a> <a href="#">People</a> <a href="#">House</a> <a href="#">Natural</a> <a href="#">Photoshop</a>
                        </div>
                    </div>
                </div>
            </div>
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
                                <li><a href="#">Home</a></li>
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
</body></html>