<%@ page import="cn.vote.pojo.Vote" %>
<%@ page import="cn.vote.pojo.VoteOption" %>
<%@ page import="java.util.List" %>
<%@ page import="cn.vote.pojo.User" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/10/7
  Time: 0:33
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
    <link rel="stylesheet" href="../../css/vote.css" media="screen" type="text/css"/>

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

            <!-- start of page content -->
            <div class="span8 page-content">

                <ul class="breadcrumb">

                </ul>

                <article class=" type-post format-standard hentry clearfix">

                    <h1 class="post-title"><a href="#">${vote1.voteTitle}</a></h1>

                    <div class="post-meta clearfix">
                        <span class="date">${vote1.voteDate}-----每人最多选择${vote1.voteOptionMax}项</span>
                        <span class="like-count">${fn:length(vote1.users)}人参与</span>
                    </div><!-- end of post meta -->
                    <p>${vote1.voteDescribe}</p>
                    <%
                        //计算总票数
                        Integer i = 0;
                        Vote vote = (Vote) request.getAttribute("vote1");
                        List<VoteOption> voteOptions = vote.getVoteOptions();
                        for (VoteOption option : voteOptions) {
                            i += option.getUsers().size();
                        }
                        pageContext.setAttribute("i", i);
                    %>
                    <c:forEach var="opt" items="${vote1.voteOptions}">
                        <div class="skillbar clearfix " flag="1" id="${opt.voteOptionId}"
                             data-percent="${fn:length(opt.users)/i*100}%">
                            <div class="skillbar-title" style="background: #d35400;"><span>${opt.voteOptionTitle}</span>
                            </div>
                            <div class="skillbar-bar" style="background: #e67e22;"></div>
                            <div class="skill-bar-percent">${fn:length(opt.users)}票</div>
                        </div>
                        <!-- End Skill Bar -->
                        <%--<input type="checkbox" value="${opt.voteOptionId}">--%>
                    </c:forEach>
                    <%--<div class="skillbar clearfix " data-percent="25.0%">--%>
                    <%--<div class="skillbar-title" style="background: #2980b9;"><span>CSS3</span></div>--%>
                    <%--<div class="skillbar-bar" style="background: #3498db;"></div>--%>
                    <%--<div class="skill-bar-percent">25%</div>--%>
                    <%--</div> <!-- End Skill Bar -->--%>

                    <%--<div class="skillbar clearfix " data-percent="50%">--%>
                    <%--<div class="skillbar-title" style="background: #2c3e50;"><span>jQuery</span></div>--%>
                    <%--<div class="skillbar-bar" style="background: #2c3e50;"></div>--%>
                    <%--<div class="skill-bar-percent">50%</div>--%>
                    <%--</div> <!-- End Skill Bar -->--%>

                    <%--<div class="skillbar clearfix " data-percent="40%">--%>
                    <%--<div class="skillbar-title" style="background: #46465e;"><span>PHP</span></div>--%>
                    <%--<div class="skillbar-bar" style="background: #5a68a5;"></div>--%>
                    <%--<div class="skill-bar-percent">40%</div>--%>
                    <%--</div> <!-- End Skill Bar -->--%>

                    <%--<div class="skillbar clearfix " data-percent="75%">--%>
                    <%--<div class="skillbar-title" style="background: #333333;"><span>Wordpress</span></div>--%>
                    <%--<div class="skillbar-bar" style="background: #525252;"></div>--%>
                    <%--<div class="skill-bar-percent">75%</div>--%>
                    <%--</div> <!-- End Skill Bar -->--%>

                    <%--<div class="skillbar clearfix " data-percent="100%">--%>
                    <%--<div class="skillbar-title" style="background: #27ae60;"><span>SEO</span></div>--%>
                    <%--<div class="skillbar-bar" style="background: #2ecc71;"></div>--%>
                    <%--<div class="skill-bar-percent">100%</div>--%>
                    <%--</div> <!-- End Skill Bar -->--%>

                    <%--<div class="skillbar clearfix " data-percent="70%">--%>
                    <%--<div class="skillbar-title" style="background: #124e8c;"><span>Photoshop</span></div>--%>
                    <%--<div class="skillbar-bar" style="background: #4288d0;"></div>--%>
                    <%--<div class="skill-bar-percent">70%</div>--%>
                    <%--</div> <!-- End Skill Bar -->--%>
                    <%
                        Integer flag = 0;
                        Vote votex = (Vote) request.getAttribute("vote1");
                        List<User> users = votex.getUsers();
                        User u1 = (User) session.getAttribute("u");
                        Integer u = 0;
                        if (u1!=null){
                            u=u1.getUserId();
                        }else {
                            flag=1;
                        }
                        for (User user : users) {
                            if (user.getUserId() == u) {
                                flag = 1;
                                break;
                            }
                        }
                        pageContext.setAttribute("flag", flag);
                    %>
                    <c:if test="${flag==0}">
                        <input onclick="tou(${vote1.voteId})" style="background-color: royalblue; width:100px;color: #fff;" type="button" value="投票"/>
                    </c:if>
                </article>
                <div class="like-btn">
                </div>

            </div>
            <!-- end of page content -->


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

<a href="#top" id="scroll-top"></a>

<!-- script -->
<script type='text/javascript' src='../../js/jquery-1.8.3.min.js'></script>
<script type='text/javascript' src='../../js/jquery.easing.1.3.js'></script>
<script type='text/javascript' src='../../js/prettyphoto/jquery.prettyPhoto.js'></script>
<script type='text/javascript' src='../../js/jflickrfeed.js'></script>
<script type='text/javascript' src='../../js/jquery.liveSearch.js'></script>
<script type='text/javascript' src='../../js/jquery.form.js'></script>
<script type='text/javascript' src='../../js/jquery.validate.min.js'></script>
<script type='text/javascript' src='../../js/custom.js'></script>
<script src="../../js/vote.js"></script>
<script>
    var count =${vote1.voteOptionMax};
    var flags =${flag};
    var newCount = 0;
    $(function () {
        if (flags == 0) {
            $(".skillbar").click(function () {
                var flag = $(this).attr('flag');
                if (flag == 1) {
                    if (newCount >= count) {
                        return;
                    }
                    newCount++;
                    $(this).attr('flag', 0);
                    $(this).css("border", "1px royalblue solid");
                } else {
                    newCount--;
                    $(this).attr('flag', 1);
                    $(this).css("border", "0px royalblue solid");
                }
            });
        }
    });
    function tou(voteid) {
        var str="";
        var x=0;
        $(".skillbar").each(function (i){
           if($(this).attr("flag")==0){
               x++;
               str+=$(this).attr("id")+",";
           }
        });
        if(x<=0){
            alert("请最少选择一项");
            return;
        }
        var url="/tou.do?voteId="+voteid;
        str=str.substring(0,str.lastIndexOf(','));
        var aColors = str.split(',');
        $.ajax({url:url,traditional:true,data:{"opts":aColors},success:function (date) {
            alert("投票成功");
            location.reload();
        }})
    }
</script>
</body>
</html>

