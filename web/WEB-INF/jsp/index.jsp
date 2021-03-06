<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/10/7
  Time: 0:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!doctype html>
<!--[if lt IE 7]>
<html class="lt-ie9 lt-ie8 lt-ie7" lang="en-US"> <![endif]-->
<!--[if IE 7]>
<html class="lt-ie9 lt-ie8" lang="en-US"> <![endif]-->
<!--[if IE 8]>
<html class="lt-ie9" lang="en-US"> <![endif]-->
<!--[if gt IE 8]><!-->
<html lang="en-US"> <!--<![endif]-->
<head>
    <!-- META TAGS -->
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Knowledge Base Theme</title>

    <link rel="shortcut icon" href="../../images/favicon.png"/>


    <!-- Style Sheet-->
    <link rel="stylesheet" href="style.css"/>
    <link rel='stylesheet' id='bootstrap-css-css' href='../../css/bootstrap5152.css?ver=1.0' type='text/css'
          media='all'/>
    <link rel='stylesheet' id='responsive-css-css' href='../../css/responsive5152.css?ver=1.0' type='text/css'
          media='all'/>
    <link rel='stylesheet' id='pretty-photo-css-css' href='../../js/prettyphoto/prettyPhotoaeb9.css?ver=3.1.4'
          type='text/css'
          media='all'/>
    <link rel='stylesheet' id='main-css-css' href='../../css/main5152.css?ver=1.0' type='text/css' media='all'/>
    <link rel='stylesheet' id='custom-css-css' href='../../css/custom5152.html?ver=1.0' type='text/css' media='all'/>


    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="js/html5.js"></script></script>
    <![endif]-->

</head>

<body>

<!-- Start of Header -->
<div class="header-wrapper">
    <header>
        <div class="container">


            <div class="logo-container">
                <!-- Website Logo -->
                <a href="index.do" title="迷你投票系统">
                    <img src="../../images/logo.png" alt="Knowledge Base Theme">
                </a>
                <span class="tag-line"></span>
            </div>


            <!-- Start of Main Navigation -->
            <nav class="main-nav">
                <div class="menu-top-menu-container">
                    <ul id="menu-top-menu" class="clearfix">
                        <li class="current-menu-item"><a href="index-2.html">Home</a></li>
                        <li><a href="#">${u.userName}</a>
                            <ul class="sub-menu">
                                <li><a href="logout.do">退出</a></li>
                                <li><a href="logout.do">注销</a></li>
                            </ul>
                        </li>
                        <li><a href="contact.html">登录</a></li>
                    </ul>
                </div>
            </nav>
            <!-- End of Main Navigation -->

        </div>
    </header>
</div>
<!-- End of Header -->

<!-- Start of Search Wrapper -->
<div class="search-area-wrapper">
    <div class="search-area container">
        <h3 class="search-header" style="font-family: 微软雅黑">欢迎使用迷你投票系统!!!</h3>
        <!--<p class="search-tag-line" style="font-family: 微软雅黑"> 欢迎使用迷你投票系统!!!</p>-->

        <form id="search-form" class="search-form clearfix" method="get" action="#" autocomplete="off">
            <input class="search-term required" type="text" id="s" name="s" placeholder="Type your search terms here"
                   title="* Please enter a search term!"/>
            <input class="search-btn" type="submit" value="Search"/>
            <div id="search-error-container"></div>
        </form>
    </div>
</div>
<div class="page-container">
    <div class="container">
        <div class="row">
            <%
                if (session.getAttribute("u") == null) {%>
            <!-- start of page content -->
            <div class="span8 page-content">
                <article class="type-page hentry clearfix">
                    <h1 class="post-title">
                        <a href="###">请您登陆</a>
                    </h1>
                    <hr>
                    <p></p>
                </article>
                <form class="row" action="login.do" method="post">
                    <div class="span2">
                        <label for="name">Your Name <span>*</span> </label>
                    </div>
                    <div class="span6">
                        <input type="text" name="userName" id="name" class=" input-xlarge" value=""
                               title="* Please provide your name">
                    </div>
                    <span style="color: red">${ms}</span>
                    <div class="span2">
                        <label for="reason">password </label>
                    </div>
                    <div class="span6">
                        <input type="password" name="password" id="reason" class="input-xlarge" value="">
                    </div>
                    <div class="span6 offset2 bm30">
                        <input type="submit" name="submit" value="登陆" class="btn btn-inverse">
                        <img src="../../images/loading.gif" id="contact-loader" alt="Loading...">
                    </div>
                    <div class="span6 offset2 error-container"></div>
                    <div class="span8 offset2" id="message-sent"></div>
                </form>
            </div>
            <!-- end of page content -->
            <%
            } else {%>
            <div class="span8 page-content">
                <article class="type-page hentry clearfix">
                    <h1 class="post-title">
                        <a href="###">发起投票</a>
                    </h1>
                    <hr>
                    <p></p>
                </article>
                <form class="row" action="faqi.do" method="post">
                    <div class="span2">
                        <label for="name">投票标题<span>*</span> </label>
                    </div>
                    <div class="span6">
                        <input type="text" name="voteTitle"  class=" input-xlarge">
                    </div>
                    <div class="span2">
                        <label for="reason">投票描述</label>
                    </div>
                    <div class="span6">
                        <input type="text" name="voteDescribe"  class="input-xlarge" value="">
                    </div>
                    <div class="span2">
                        <label for="reason">最大选项</label>
                    </div>
                    <div class="span6">
                        <input type="text" name="voteOptionMax"  class="input-xlarge" value="">
                    </div>
                    <div class="span2">
                        <label for="name">投票选项<span>*</span> </label>
                    </div>
                    <div class="span6 jia" >
                        <input type="text" name="opts" class=" input-xlarge opts">
                        <input type="text" name="opts"  class=" input-xlarge">
                    </div>
                    <div class="span6">
                    <input type="button" onclick="jia(this)" value="添加更多">
                    </div>

                    <div class="span6 offset2 bm30">
                        <input type="submit" name="submit" value="发起" class="btn btn-inverse">
                    </div>
                    <div class="span6 offset2 error-container"></div>
                    <div class="span8 offset2"></div>
                </form>
            </div>
            <%
                }
            %>
            <!-- start of sidebar -->
            <aside class="span4 page-sidebar">
                <section class="widget">
                    <h3 class="title">参与投票</h3>
                    <ul class="articles">
                        <c:forEach items="${votes}" var="v">
                            <li class="article-entry video">
                                <h4><a href="single.do?voteId=${v.voteId}">${v.voteTitle}</a></h4>
                                <span class="article-meta">${v.voteDate}</span>
                                <span class="like-count">${fn:length(v.users)}</span>
                            </li>
                        </c:forEach>
                    </ul>
                </section>


            </aside>
            <!-- end of sidebar -->
        </div>
    </div>
</div>
<!-- End of Page Container -->

<!-- Start of Footer -->
<footer id="footer-wrapper">
    <div id="footer" class="container">
        <div class="row">
        </div>
    </div>
    <!-- end of #footer -->

    <!-- Footer Bottom -->
    <div id="footer-bottom-wrapper">

    </div>
    <!-- End of Footer Bottom -->

</footer>

<!-- End of Footer -->

<a href="#top" id="scroll-top"></a>

<!-- script -->
<script type='text/javascript' src='../../js/jquery-1.8.3.min.js'></script>
<script type='text/javascript' src='../../js/jquery.easing.1.34e44.js?ver=1.3'></script>
<script type='text/javascript' src='../../js/prettyphoto/jquery.prettyPhotoaeb9.js?ver=3.1.4'></script>
<script type='text/javascript' src='../../js/jquery.liveSearchd5f7.js?ver=2.0'></script>
<script type='text/javascript' src='../../js/jflickrfeed.js'></script>
<script type='text/javascript' src='../../js/jquery.formd471.js?ver=3.18'></script>
<script type='text/javascript' src='../../js/jquery.validate.minfc6b.js?ver=1.10.0'></script>
<script type='text/javascript' src='../../js/custom5152.js?ver=1.0'></script>
<script>
    $(function () {
        var ms='${ms}';
        if(ms!=null&&ms!=''){
            if(ms==1){
                alert("新增成功")
            }
        }
    });
    function jia(this_) {
        var opts=$(".opts:eq(0)").clone();
        opts.val("");
        var $jia = $(".jia");
        $jia.append($("<br/>"));
        $jia.append(opts);
    }
</script>
</body>
</html>


