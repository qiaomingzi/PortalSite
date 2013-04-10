<%@ page pageEncoding="GBK" isErrorPage="false" contentType="text/html;charset=gbk" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9">
    <title>API Document</title>
    <style>
         /** �����ı���ʽԪ�� **/
        a {color:#03c;text-decoration: none; }
        a:hover { text-decoration: underline; }
        /* reset for jsDoc */
        body{color:#444;}
        a{color: #06f;}
        h1,h2,h3{margin-bottom:10px;padding:8px 0;font:18px tahoma, "Microsoft YaHei", sans-serif;;}
        h1{font-size:28px;}
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
<div>
    <!--�������� start-->
    <div id="header">
        <h1 class="logo">�ϸ��չ淶�����Ǳ�׼���ĵ�һ��</h1>
        <div class="navigation">
            <ul>
                <li><a href="page-norm.html" target="_blank">ҳ��淶</a></li>
                <li><a href="css-norm.html" target="_blank">��ʽ����</a></li>
                <li><a href="demo/components.html" >�������</a></li>
            </ul>
        </div>
    </div>
    <!--�������� end-->
    <!--������ start-->
    <div id="mainContainer" class="container-fluid"></div>
    <!--������ end-->

    <!--�ײ� start-->
    <div id="footer">
        <div>
            Copyright 2013 , <a href="mailto:qiaomingzi100@gmail.com" target="_blank">limingzi</a>
        </div>
    </div>
    <a class="go-top" href="#page">Top</a>

    <div class="span4">
        <form class="form-search">
            <input type="text" class="input-medium search-query">
            <button type="submit" class="btn">Search</button>
        </form>
    </div>
    <!--�ײ� end-->
</div>
<!---let javascriipt in here-->
<script src="${pageContext.request.contextPath}/resource/assets/jquery/1.9.1/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resource/assets/prettify/prettify.js" type="text/javascript"></script>
<!--googleͳ�Ʒ���-->
<script src="http://www.google-analytics.com/ga.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resource/assets/pie/PIE.js" type="text/javascript"></script>

<script type="text/javascript">
    window.prettyPrint && prettyPrint();
    var mainContainer = $("#mainContainer");
    var rightContainer = $("#rightContainer");
    function attachPie() {
        $("input").each(function(){
            PIE.attach($(this));
        });
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
    }).eq(0).click();
</script>
</body>
</html>