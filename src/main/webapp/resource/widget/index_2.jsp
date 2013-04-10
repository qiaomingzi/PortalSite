<%@ page pageEncoding="GBK" isErrorPage="false" contentType="text/html;charset=gbk" %>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="no-js ie ie6 lte7 lte8 lte9" lang="en"><![endif]-->
<!--[if IE 7 ]><html class="no-js ie ie7 lte7 lte8 lte9" lang="en"><![endif]-->
<!--[if IE 8 ]><html class="no-js ie ie8 lte8 lte9" lang="en"><![endif]-->
<!--[if IE 9 ]><html class="no-js ie ie9 lte9" lang="en"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--><html class="no-js" lang="en"><![endif]-->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <title>API Document</title>
    <style>
        a {
            color: #0088cc;
            text-decoration: none;
        }

        a:hover,
        a:focus {
            color: #005580;
            text-decoration: underline;
        }

        #header{margin:0 10px;border-bottom: 1px solid #a4d3f2;}
        #footer{margin-top:10px;padding:10px 10px 30px 10px;text-align:center;color:#666;border-top:1px solid #ddd;}
        .go-top{position:fixed;width:24px;height:24px;bottom:0;right:10px;line-height:24px;text-align:center;color:#fff;font-size:12px;font-weight:bold;background:#06f;
            -moz-border-radius: 2px;
            -khtml-border-radius: 2px;
            -webkit-border-radius: 2px;
            border-radius: 2px;
        }
        a.go-top:hover,
        a.go-top:active{text-decoration:none;}

        .navigation ul,.navigation ol{ list-style: none; }
        .navigation {float:right;margin-top:30px;}
        .navigation li {float:left;margin:0 5px; }
         #header { overflow:hidden;zoom:1;}
        .logo {float:left;}
    </style>
    <link href="${pageContext.request.contextPath}/resource/themes/base/jquery-ui.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resource/widget/index.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resource/assets/prettify/prettify.css" rel="stylesheet">
    <!-- Let HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath}/resource/assets/html5shiv/html5shiv.js"></script>
    <![endif]-->
</head>
<body>
<div id="page">
    <!--顶部导航 start-->
    <div id="header">
      <%--  <h1 class="logo">严格按照规范开发是标准化的第一步</h1>--%>
        <div class="navigation">
            <ul>
                <li><a href="#" target="_blank">jquery-ui例子</a></li>
            </ul>
        </div>
    </div>
    <!--顶部导航 end-->
    <!--内容体 start-->
    <div id="mainContainer" class="container-fluid">
        <div class="row-fluid">
            <div class="span3 bs-docs-sidebar">
                <ul class="nav nav-list bs-docs-sidenav">
                    <li><a href="http://jqueryui.com/accordion/" >Accordion</a></li>
                    <li><a href="http://jqueryui.com/autocomplete/" >Autocomplete</a></li>
                    <li><a href="http://jqueryui.com/button/" >Button</a></li>
                    <li><a href="http://jqueryui.com/datepicker/" >Datepicker</a></li>
                    <li><a href="http://jqueryui.com/dialog/" >Dialog</a></li>
                    <li><a href="http://jqueryui.com/menu/" >Menu</a></li>
                    <li><a href="http://jqueryui.com/progressbar/" >Progressbar</a></li>
                    <li><a href="http://jqueryui.com/slider/" >Slider</a></li>
                    <li><a href="http://jqueryui.com/spinner/" >Spinner</a></li>
                    <li><a href="http://jqueryui.com/tabs/" >Tabs</a></li>
                    <li><a href="http://jqueryui.com/tooltip/" >Tooltip</a></li>
                </ul>
            </div>
            <div class="span9">
                <iframe width="80%" height="100%"  src="#" name="iframId"></iframe>
            </div>
       </div>
    </div>
    <!--内容体 end-->

    <!--底部 start-->
    <div id="footer">
        <div>
            Copyright 2013 , <a href="mailto:qiaomingzi100@gmail.com" target="_blank">limingzi</a>
        </div>
        <a class="go-top" href="#page">Top</a>
    </div>
    <!--底部 end-->
</div>
<!---let javascriipt in here-->
<script src="${pageContext.request.contextPath}/resource/assets/jquery/1.9/jquery.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resource/assets/jquery-ui/1.10/jquery-ui.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resource/assets/prettify/prettify.js" type="text/javascript"></script>

<script type="text/javascript">
    window.prettyPrint && prettyPrint();
    var mainContainer = $("#mainContainer");
    var rightContainer = $("#rightContainer");
    function attachPie() {
        if(/msie/.test(navigator.userAgent.toLowerCase())) {
            $("input").each(function(){
                PIE.attach($(this).get(0));
            });
        }
    }
    $("a",$(".nav-list")).on("click",function(){
        var url = $(this).attr("href");
            jQuery.ajax({
                url: url,
                type: "GET",
                dataType:"xml",
                success: function(text){
                    alert(text);
                    //$("iframe").content();
                }
            });
           /* mainContainer.load(url,function(){
                window.prettyPrint && prettyPrint();
                attachPie();
            });*/
        return false;
    });
</script>
<script>
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-1076265-1']);
    _gaq.push(['_setDomainName', 'jqueryui.com']);
    _gaq.push(['_setAllowLinker', true]);
    _gaq.push(['_trackPageview']);

    (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();
</script>
</body>
</html>