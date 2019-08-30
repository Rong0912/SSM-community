<%@page import="ssm.pojo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>联系我们</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="Community Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
			Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/frontResource/css/index.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/frontResource/css/home.css">
    <link href="${pageContext.request.contextPath}/frontResource/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/frontResource/css/amazeui.min.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/frontResource/css/shouye.css" rel='stylesheet' type='text/css' />

    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js" charset="utf-8"></script>
    <script src="${pageContext.request.contextPath}/frontResource/JS/bootstrap.min.js"></script>
    <script src="https://cdn.bootcss.com/vue/2.2.2/vue.min.js"></script>
    <script src="${pageContext.request.contextPath}/frontResource/JS/other/amazeui.min.js" type="text/javascript" ></script>

    <script src="${pageContext.request.contextPath}/frontResource/JS/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/frontResource/JS/bootstrap.min.js"></script>

    <link href="${pageContext.request.contextPath}/frontResource/css/font-awesome.css" rel="stylesheet">
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <script>
        $(document).ready(function(){
            $(".dropdown").hover(
                function() {
                    $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
                    $(this).toggleClass('open');
                },
                function() {
                    $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
                    $(this).toggleClass('open');
                }
            );
        });
    </script>
    <!----font-Awesome----->

    <!----font-Awesome----->
    <!--light-box-files -->
    <script src="${pageContext.request.contextPath}/frontResource/JS/jquery.chocolat.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/frontResource/css/chocolat.css" type="text/css" media="screen" charset="utf-8" />
    <!--light-box-files -->
    <script type="text/javascript" charset="utf-8">
        $(function() {
            $('.gallery a').Chocolat();
        });

        $(function() {
            blinkeffect('#txtblnk');
        })
        function blinkeffect(selector) {
            $(selector).fadeOut('slow', function() {
                $(this).fadeIn('slow', function() {
                    blinkeffect(this);
                });
            });
        }

    </script>
</head>
<body>
<nav >
    <div class="container" style="margin-top:15px ">
        <div class="navbar-headr" style="margin-bottom: 5px">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">导航切换</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <h1>
                <a >
                    <span class="highlight">C</span>OMMUNITY

                </a>
            </h1>

        </div>


        <div id="navbar" style="font-size: 18px" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <!-- 此处地址为/projectName/index，不能index原因是可能进入下一层url而出错 -->
                <li><a href="${pageContext.request.contextPath}/">首页</a></li>
                <li><a href="${pageContext.request.contextPath}/topics">主题</a></li>
                <li><a href="${pageContext.request.contextPath}/makeQuestion">提问</a></li>
                <li><a href="${pageContext.request.contextPath}/makeEssay">写随笔</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">参与<span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <!-- <li><a href="${pageContext.request.contextPath}/makeQuestion">提问</a></li>
                            <li class="divider"></li> -->
                        <li><a href="${pageContext.request.contextPath}/listQuestion">回答</a></li>
                        <!--     <li><a href="/WEB-INF/html/userManage.jsp" id="listQuestion">回答</a></li>  -->
                        <li class="divider"></li>
                        <li><a href="${pageContext.request.contextPath}/listEssay">随笔</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">关于<span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="${pageContext.request.contextPath}/aboutUs">网站介绍</a></li>
                        <li class="divider"></li>
                        <li><a href="${pageContext.request.contextPath}/connectUs">联系我们</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <c:if test="${currentUser == null}">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <span class="glyphicon glyphicon-user">
                                    未登录
                                </span>
                            <span class="caret "></span>
                        </a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="${pageContext.request.contextPath}/login"><span class="glyphicon glyphicon-log-in"></span> 登录/注册</a></li>
                        </ul>
                    </c:if>

                    <c:if test="${currentUser != null}">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <span>
                                    <img src="/tomcat-userPho/${currentUser.smPho}"
                                         class="img-rounded" alt="头像" style="width: 25px ; height: 25px">
                                     ${currentUser.uName}
                                </span>
                        </a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="${pageContext.request.contextPath}/user/${currentUser.uId}">
                                <span class="glyphicon glyphicon-stats"></span> 个人主页</a>
                            </li>
                            <li><a href="${pageContext.request.contextPath}/userSetting/${currentUser.uId}">
                                <span class="glyphicon glyphicon-repeat"></span> 修改资料</a>
                            </li>
                            <li><a href="javascript:void(0);" id="userLogout">
                                <span class="glyphicon glyphicon-off"></span> 退出登录</a>
                            </li>
                        </ul>
                    </c:if>

                </li>
            </ul>
            <form class="navbar-form navbar-right" name="loginform" id="loginform" method="post"
                  action="${pageContext.request.contextPath}/searchKeywords">
                <input type="text" style="height: 30px" class="form-control" id="keywords" name="keywords" value="" placeholder="搜索">
            </form>
        </div>
    </div></nav>

<div class="about_top">
    <div class="container">
        <div class="col-md-3 column-1 column-13">
            <i class="fa fa-envelope-o envelop"></i>
            <address class="address">
                <p>9870 St Vincent Place, <br>Glasgow, DC 45 Fr 45.</p>
                <dl>
                    <dt></dt>
                    <dd>Freephone :&nbsp;<span> +1 800 254 2478</span></dd>
                    <dd>Telephone :&nbsp;<span> +1 800 547 5478</span></dd>
                    <dd>FAX :&nbsp;<span>+1 800 658 5784</span></dd>
                    <dd>E-mail :&nbsp;<a href="mailto:@example.com">info@community.com</a></dd>

                </dl>
            </address>

        </div>
        <div class="col-md-9 column-9">
            <h3>Feedback</h3>
            <p class="m_4">"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>
            <form class="contact">
                <input type="text" class="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}">
                <input type="text" class="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}">
                <input type="text" class="text" value="Subject" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Subject';}">
                <textarea value="Message" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}">Message</textarea>
                <div class="submit-wrap">
                    <input type="submit" value="Send">
                    <input type="reset" value="Clear">
                </div>
            </form>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>

<div class="footer_widget">
    <div class="container">
        <div class="col-md-4">
            <aside id="text-1" class="widget widget_text">
                <h3 class="widget-title"><span>COME VISIT US</span></h3>
                <div class="textwidget"><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. </p>
                    <p><em style="color: #fff;">standard chunk.,<br> Finibus Bonorum,<br> Ipsum generators, treatise</em></p>
                </div>
            </aside>
        </div>
        <div class="col-md-4">
            <aside id="text-2" class="widget widget_text">
                <h3 class="widget-title"><span>MORE ABOUT US</span></h3>
                <div class="textwidget">
                    <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum,.</p></div>
            </aside>
        </div>
        <div class="col-md-4">
            <aside>
                <h3 class="widget-title"><span>FLICKR FEED</span></h3>
                <ul class="gallery">
                    <li><a href="${pageContext.request.contextPath}/frontResource/images/pic5.jpg" class="img-responsive" title="Rose" rel="title1">
                        <img src="${pageContext.request.contextPath}/frontResource/images/pic5.jpg" class="img-responsive" alt="name">
                    </a>
                    </li>
                    <li><a href="${pageContext.request.contextPath}/frontResource/images/pic6.jpg" class="img-responsive" title="Rose" rel="title1">
                        <img src="${pageContext.request.contextPath}/frontResource/images/pic6.jpg" class="img-responsive" alt="name">
                    </a>
                    </li>
                    <li><a href="${pageContext.request.contextPath}/frontResource/images/pic11.jpg" class="img-responsive" title="Rose" rel="title1">
                        <img src="${pageContext.request.contextPath}/frontResource/images/pic11.jpg" class="img-responsive" alt="name">
                    </a>
                    </li>
                    <li class="last">
                        <a href="${pageContext.request.contextPath}/frontResource/images/pic12.jpg" class="img-responsive" title="Rose" rel="title1">
                            <img src="${pageContext.request.contextPath}/frontResource/images/pic12.jpg" class="img-responsive" alt="name">
                        </a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/frontResource/images/pic6.jpg" class="img-responsive" title="Rose" rel="title1">
                            <img src="${pageContext.request.contextPath}/frontResource/images/pic6.jpg" class="img-responsive" alt="name">
                        </a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/frontResource/images/pic5.jpg" class="img-responsive" title="Rose" rel="title1">
                            <img src="${pageContext.request.contextPath}/frontResource/images/pic5.jpg" class="img-responsive" alt="name">
                        </a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/frontResource/images/pic11.jpg" class="img-responsive" title="Rose" rel="title1">
                            <img src="${pageContext.request.contextPath}/frontResource/images/pic11.jpg" class="img-responsive" alt="name">
                        </a>
                    </li>
                    <li class="last">
                        <a href="${pageContext.request.contextPath}/frontResource/images/pic12.jpg" class="img-responsive" title="Rose" rel="title1">
                            <img src="${pageContext.request.contextPath}/frontResource/images/pic12.jpg" class="img-responsive" alt="name">
                        </a>
                    </li>
                    <div class="clearfix"> </div>
                </ul>
            </aside>
        </div>
    </div>
</div>
<div class="footer_middle">
    <div class="container">
        <div class="col-sm-7">
            <div class="footer-icons">
                <a href="#" class="social-icon"><i class="fa fa-twitter has-circle"></i></a>
                <a href="#" class="social-icon"><i class="fa fa-facebook has-circle"></i></a>
                <a href="#" class="social-icon"><i class="fa fa-google-plus has-circle"></i></a>
                <a href="#" class="social-icon"><i class="fa fa-linkedin has-circle"></i></a>
                <div class="clearfix"> </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="newsletter_signup">
                <form novalidate="" target="_blank" name="newsletter-subscribe-form" id="newsletter-subscribe-form" method="post" class="form-inline validate">
                    <input type="email" required="" placeholder="Subscribe to our newsletter" class="form-control" name="EMAIL" value="">
                    <input type="submit" id="newsletter-subscribe" name="subscribe" value="SUBSCRIBE">
                </form>
            </div>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<div class="footer_bottom">
    <div class="container">
        <div class="copy">
            <p>Copyright &copy; 2019.Company name All rights reserved</p>
    </div>
    </div>
    <a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;">Top </span></a>
    <script type="text/javascript" src="${pageContext.request.contextPath}/frontResource/JS/move-top.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/frontResource/JS/easing.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            /*
            var defaults = {
                  containerID: 'toTop', // fading element id
                containerHoverID: 'toTopHover', // fading element hover id
                scrollSpeed: 1200,
                easingType: 'linear' 
             };
            */

            $().UItoTop({ easingType: 'easeOutQuart' });

        });
    </script>
</div>
<!----language selector----->
<script type="text/javascript" src="${pageContext.request.contextPath}/frontResource/JS/jquery.leanModal.min.js"></script>
<link href="${pageContext.request.contextPath}/frontResource/css/jquery.uls.css" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/frontResource/css/jquery.uls.grid.css" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/frontResource/css/jquery.uls.lcd.css" rel="stylesheet"/>
<!-- Source -->
<script src="${pageContext.request.contextPath}/frontResource/JS/jquery.uls.data.js"></script>
<script src="${pageContext.request.contextPath}/frontResource/JS/jquery.uls.data.utils.js"></script>
<script src="${pageContext.request.contextPath}/frontResource/JS/jquery.uls.lcd.js"></script>
<script src="${pageContext.request.contextPath}/frontResource/JS/jquery.uls.languagefilter.js"></script>
<script src="${pageContext.request.contextPath}/frontResource/JS/jquery.uls.regionfilter.js"></script>
<script src="${pageContext.request.contextPath}/frontResource/JS/jquery.uls.core.js"></script>
<script>
    $( document ).ready( function() {
        $( '.uls-trigger' ).uls( {
            onSelect : function( language ) {
                var languageName = $.uls.data.getAutonym( language );
                $( '.uls-trigger' ).text( languageName );
            },
            quickList: ['en', 'hi', 'he', 'ml', 'ta', 'fr'] //FIXME
        } );
    } );
</script>


<script type="text/javascript" src="${pageContext.request.contextPath}/frontResource/JS/index.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/frontResource/JS/User/userAjax.js"></script>
</body>
</html>