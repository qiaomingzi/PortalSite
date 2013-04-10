<%@ page pageEncoding="GBK" isErrorPage="false" contentType="text/html;charset=gbk" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <%-- <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9">--%>
    <title>API Document</title>
    <style>
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
    <link href="${pageContext.request.contextPath}/resource/themes/base/bootstrap.css" rel="stylesheet">
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
        <h1 class="logo">严格按照规范开发是标准化的第一步</h1>
        <div class="navigation">
            <ul>
                <li><a href="page-norm.html" target="_blank">页面规范</a></li>
                <li><a href="css-norm.html" target="_blank">样式例子</a></li>
                <li><a href="components.html" >组件</a></li>
                <li><a href="javascript.html" >javascript</a></li>
            </ul>
        </div>
    </div>
    <!--顶部导航 end-->
    <!--内容体 start-->
    <div id="mainContainer" class="container-fluid"></div>
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
<script src="${pageContext.request.contextPath}/resource/assets/bootstrap/bootstrap.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resource/assets/prettify/prettify.js" type="text/javascript"></script>
<!--google统计分析-->
<script src="http://www.google-analytics.com/ga.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resource/assets/pie/PIE.js" type="text/javascript"></script>

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
    $("a",$(".navigation")).on("click",function(){
        var url = $(this).attr("href")+"?t="+(new Date()).getTime();
        if(url != undefined || url != "") {
            mainContainer.load(url,function(){
                window.prettyPrint && prettyPrint();
                attachPie();
            });
        }
        //alert(url);
        return false;
    }).eq(2).click();

    //$.ajaxComplete(attachPie);
</script>
</body>
</html>