<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    HttpSession s = request.getSession();
%>
<!DOCTYPE HTML>
<html>
<head>
    <title>Stock</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Photo-Hub Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css'/>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!-- Custom Theme files -->
    <link href="css/style.css" rel='stylesheet' type='text/css'/>
    <!-- Custom Theme files -->
    <!--webfont-->
    <link href='http://fonts.useso.com/css?family=Quicksand:300,400,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.useso.com/css?family=Open+Sans:300,400,600,700,800' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" type="text/css" href="http://pstatic.lagou.com/www/static/dep/mCustomScrollbar/css/mCustomScrollbar_ac2fb8b.css" />
    <link rel="stylesheet" type="text/css" href="http://pstatic.lagou.com/www/static/pkg/layout_353bd29.css" />
    <link rel="stylesheet" type="text/css" href="http://pstatic.lagou.com/www/static/pkg/widgets_cd857e8.css" />
    <link rel="stylesheet" type="text/css" href="http://pstatic.lagou.com/www/static/pkg/search-result/page/index/main.html_aio_09ec574.css" />

    <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
    <script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#horizontalTab').easyResponsiveTabs({
                type: 'default', //Types: default, vertical, accordion
                width: 'auto', //auto or any width like 600px
                fit: true   // 100% fit in a container
            });
        });
    </script>
    <script src="js/menu_jquery.js"></script>
</head>
<body>
<div class="header">
    <div class="container">
        <div class="logo">
            <h1><a href="index.html">Job Searcher</a></h1>
        </div>
        <div class="top_right">
            <!--<ul>-->
                <!--<li><a href="register.html">Register</a></li>-->
                <!--|-->
                <!--<li class="login">-->
                    <!--<div id="loginContainer"><a href="#" id="loginButton"><span>Login</span></a>-->
                        <!--<div id="loginBox">-->
                            <!--<form id="loginForm">-->
                                <!--<fieldset id="body">-->
                                    <!--<fieldset>-->
                                        <!--<label for="email">Email Address</label>-->
                                        <!--<input type="text" name="email" id="email">-->
                                    <!--</fieldset>-->
                                    <!--<fieldset>-->
                                        <!--<label for="password">Password</label>-->
                                        <!--<input type="password" name="password" id="password">-->
                                    <!--</fieldset>-->
                                    <!--<input type="submit" id="login" value="Sign in">-->
                                    <!--<label for="checkbox"><input type="checkbox" id="checkbox"> <i>Remember-->
                                        <!--me</i></label>-->
                                <!--</fieldset>-->
                                <!--<span><a href="#">Forgot your password?</a></span>-->
                            <!--</form>-->
                        <!--</div>-->
                    <!--</div>-->
                <!--</li>-->
                <p>Find Your Job Here!</p>
            <!--</ul>-->
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<div class="stock_box">
    <div class="col-md-2 stock_left">
        <div class="w_sidebar">
            <section class="sky-form">
                <h4>学历</h4>
                <div class="col col-4">
                    <label class="checkbox"><input type="radio" name="education" checked=""><i></i>不限</label>
                </div>
                <div class="col col-4" >
                    <label class="checkbox"><input type="radio" name="education"
                                                   onclick="listfilter('education','初中')"><i></i>初中</label>
                    <label class="checkbox"><input type="radio" name="education" onclick="listfilter('中专')"><i></i>中专/中技</label>
                    <label class="checkbox"><input type="radio" name="education"
                                                   onclick="listfilter('education','高中')"><i></i>高中</label>
                    <label class="checkbox"><input type="radio" name="education"
                                                   onclick="listfilter('education','大专')"><i></i>大专</label>
                    <label class="checkbox"><input type="radio" name="education"
                                                   onclick="listfilter('education','本科')"><i></i>本科</label>
                    <label class="checkbox"><input type="radio" name="education"
                                                   onclick="listfilter('education','硕士')"><i></i>硕士</label>
                    <label class="checkbox"><input type="radio" name="education"
                                                   onclick="listfilter('education','博士')"><i></i>博士</label>
                </div>
            </section>
            <section class="sky-form">
                <h4>经验</h4>
                <div class="col col-4">
                    <label class="checkbox"><input type="radio" name="checkbox" checked=""><i></i>不限</label>
                    <label class="checkbox"><input type="radio" name="checkbox"
                                                   onclick="listfilter('experience','1年以下')"><i></i>1年以下</label>
                    <label class="checkbox"><input type="radio" name="checkbox"
                                                   onclick="listfilter('experience','1-3年')"><i></i>1-3年</label>
                    <label class="checkbox"><input type="radio" name="checkbox"
                                                   onclick="listfilter('experience','3-5年')"><i></i>3-5年</label>
                    <label class="checkbox"><input type="radio" name="checkbox"
                                                   onclick="listfilter('experience','5-10年')"><i></i>5-10年</label>
                    <label class="checkbox"><input type="radio" name="checkbox"
                                                   onclick="listfilter('experience','10年以上')"><i></i>10年以上</label>
                </div>
            </section>
            <!--<section class="sky-form">-->
                <!--<h4>colour</h4>-->
                <!--<ul class="w_nav2">-->
                    <!--<li><a class="color1" href="#"></a></li>-->
                    <!--<li><a class="color2" href="#"></a></li>-->
                    <!--<li><a class="color3" href="#"></a></li>-->
                    <!--<li><a class="color4" href="#"></a></li>-->
                    <!--<li><a class="color5" href="#"></a></li>-->
                    <!--<li><a class="color6" href="#"></a></li>-->
                    <!--<li><a class="color7" href="#"></a></li>-->
                    <!--<li><a class="color8" href="#"></a></li>-->
                    <!--<li><a class="color9" href="#"></a></li>-->
                    <!--<li><a class="color10" href="#"></a></li>-->
                    <!--<li><a class="color12" href="#"></a></li>-->
                    <!--<li><a class="color13" href="#"></a></li>-->
                    <!--<li><a class="color14" href="#"></a></li>-->
                    <!--<li><a class="color15" href="#"></a></li>-->
                    <!--<li><a class="color5" href="#"></a></li>-->
                    <!--<li><a class="color6" href="#"></a></li>-->
                    <!--<li><a class="color7" href="#"></a></li>-->
                    <!--<li><a class="color8" href="#"></a></li>-->
                    <!--<li><a class="color9" href="#"></a></li>-->
                    <!--<li><a class="color10" href="#"></a></li>-->
                <!--</ul>-->
            <!--</section>-->
            <!--<section class="sky-form">-->
                <!--<h4>discount</h4>-->
                <!--<div class="col col-4">-->
                    <!--<label class="radio"><input type="radio" name="radio" checked=""><i></i>60 % and above</label>-->
                    <!--<label class="radio"><input type="radio" name="radio"><i></i>50 % and above</label>-->
                    <!--<label class="radio"><input type="radio" name="radio"><i></i>40 % and above</label>-->
                <!--</div>-->
                <!--<div class="col col-4">-->
                    <!--<label class="radio"><input type="radio" name="radio"><i></i>30 % and above</label>-->
                    <!--<label class="radio"><input type="radio" name="radio"><i></i>20 % and above</label>-->
                    <!--<label class="radio"><input type="radio" name="radio"><i></i>10 % and above</label>-->
                <!--</div>-->
            <!--</section>-->
        </div>
    </div>
    <div class="col-md-10 sap_tabs">
        <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
            <ul class="resp-tabs-list" style="display: none;">
                <li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>What's Hot</span></li>
                <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>Designers</span></li>
                <li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>Featured</span></li>
                <li class="resp-tab-item" aria-controls="tab_item-3" role="tab"><span>Featured</span></li>
                <div class="clearfix"></div>
            </ul>
            <div class="resp-tabs-container" style="display:block;">
            <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
                <ul class="tab_img">
                    <%--<c:forEach items="${result}" var="job" varStatus="status">--%>
                    <%--<li><a href="${job.url}">--%>
                    <%--<div class="tab_desc">--%>
                    <%--<h3 style="overflow: hidden;white-space: nowrap;text-overflow: ellipsis;">${job.name}</h3>--%>
                    <%--<h4>人数：20人以下</h4>--%>
                    <%--<h4>工资：${job.salary}</h4>--%>
                    <%--<h4>${job.salary}</h4>--%>
                    <%--<h4>${job.officalName}</h4>--%>
                    <%--</div>--%>
                    <%--</a></li>--%>
                    <%--</c:forEach>--%>


                    <div class="clearfix"></div>
                </ul>
            </div>

        </div>
    </div>
    <ul class="pagination">
        <%--<li>--%>
        <%--<a href="#" aria-label="Previous">--%>
        <%--<span aria-hidden="true" onclick="showPage(currentPage-1)">«</span>--%>
        <%--</a>--%>
        <%--</li>--%>
        <%--<li id="page_0"><a href="#horizontalTab" onclick="showPage(0)">1</a></li>--%>
        <%--<li id="page_1"><a href="#horizontalTab" onclick="showPage(1)">2</a></li>--%>
        <%--<li id="page_2"><a href="#horizontalTab" onclick="showPage(2)">3</a></li>--%>
        <%--<li class="disabled"><a>……</a></li>--%>
        <%--<li id="page_3"><a href="#horizontalTab" onclick="showPage(3)">4</a></li>--%>
        <%--<li id="page_4"><a href="#horizontalTab" onclick="showPage(4)">5</a></li>--%>
        <%--<li id="page_5"><a href="#horizontalTab" onclick="showPage(4)">5</a></li>--%>
        <%--<li>--%>
        <%--<a href="#horizontalTab" aria-label="Next" onclick="showPage(currentPage+1)">--%>
        <%--<span aria-hidden="true">»</span>--%>
        <%--</a>--%>
        <%--</li>--%>
    </ul>
</div>
<div class="clearfix"></div>
</div>

<div class="grid_3">
    <div class="container">
        <!--<ul id="footer-links">-->
            <!--<li><a href="#">Terms of Use</a></li>-->
            <!--<li><a href="#">Royalty Free License</a></li>-->
            <!--<li><a href="#">Extended License</a></li>-->
            <!--<li><a href="#">Privacy</a></li>-->
            <!--<li><a href="support.html">Support</a></li>-->
            <!--<li><a href="about.html">About Us</a></li>-->
            <!--<li><a href="faq.html">FAQ</a></li>-->
            <!--<li><a href="#">Categories</a></li>-->
        <!--</ul>-->
        <p>Copyright &copy; 2015.Company name All rights reserved.<a target="_blank" href="http://www.777moban.com/">777模板</a>
        </p>
    </div>
</div>
<script>
    var query = "${query}";
    var size = 9;
    var currentPage = 0;
    var url = '/result?';
    var filter = {};
    $(function () {
//        var page = $(".pagination").val();
        listfunction(currentPage);
    });

    //分页
    function listfunction(page) {
//        $(".pagination").val(page);
        $.post(url + '&query=' + query + '&size=' + size + '&page=' + page, {data: JSON.stringify(filter)}, function (jsonObj) {
            var html = '';
            var jsonData = jsonObj.result;
            var hits = jsonObj.size;
            for (var key in jsonData) {
                html += '<li><a href="';
                html += jsonData[key].url + '" target="_blank">';
                html += '<div class="tab_desc">';
                html += '<h3 style="overflow: hidden;white-space: nowrap;text-overflow: ellipsis;">' + jsonData[key].name + '</h3>';
                html += '<h4>人数：XX</h4>';
                html += '<h4>工资：' + jsonData[key].salary + '</h4>';
                html += '<h4>' + jsonData[key].officalName + '</h4>';
                html += '</div></a></li>';
            }
            $(".tab_img").html(html);
            $("#page_" + currentPage).removeClass("active");
            currentPage = page;
            pager(page, Math.ceil(hits / size) - 1);
            $("#page_" + page).addClass("active");
//            if(parseInt(jsonObj.total) > rows)
//                $("#pager").css("display","block");
//            else
//                $("#pager").css("display","none");
//
//            var totalPage = jsonObj.total % rows == 0 ? jsonObj.total / rows : jsonObj.total / rows + 1 ;
//            //分页
//            laypage({
//                cont: 'pager', //容器。值支持id名
//                pages: totalPage, //通过后台拿到的总页数
//                groups: 7, //连续显示分页数
//                curr: page, //当前页
//                jump: function(obj, first){ //触发分页后的回调
//                    if(!first){ //点击跳页触发函数自身，并传递当前页：obj.curr
//                        listfunction(url,obj.curr);
//                    }
//                }
//            });
        });
    }

    //    function showPage(newpage){
    //
    //        alert("show :"+newPage);
    //        listfunction(newpage);
    //    }

    function pager(active, all) {
//        var html='';
//        html+='<li><a href="#" aria-label="Previous"><span aria-hidden="true" onclick="showPage(currentPage-1)">«</span></a></li>';
//
//        if(all<6){
//            for(var i=0;i<all;i++){
//                html+='<li id="page_'+i+'"><a href="#horizontalTab" onclick="showPage('+i+')">'+(i+1)+'</a></li>'
//            }
//        }else{
//            html+='<li id="page_'+(active-2)+'"><a href="#horizontalTab" onclick="showPage('+(active-2)+')">'+(active-1)+'</a></li>';
//            html+='<li id="page_'+(active-1)+'"><a href="#horizontalTab" onclick="showPage('+(active-1)+')">'+active+'</a></li>';
//        }
//        html+='<li><a href="#" aria-label="Next"><span aria-hidden="true" onclick="showPage(currentPage+1)">»</span></a></li>';
//        $(".pagination").html(html);
        if (active > 5) {
            var html = '<li><a href="#horizontalTab" aria-label="Previous" onclick="listfunction(currentPage-1)"><span aria-hidden="true">«</span></a></li>';
            for (var i = active - 2; i <= active + 3 && i <= all; i++) {
                html += '<li id="page_' + i + '"><a href="#horizontalTab" onclick="listfunction(' + i + ')">' + (i + 1) + '</a></li>'
            }
            html += '<li><a href="#horizontalTab" aria-label="Next"  onclick="listfunction(currentPage+1)"><span aria-hidden="true">»</span></a></li>';
            $(".pagination").html(html);
        } else {
            var html = '<li><a href="#horizontalTab" aria-label="Previous"  onclick="listfunction(currentPage-1)"><span aria-hidden="true">«</span></a></li>';
            for (var i = 0; i <= 5 && i <= all; i++) {
                html += '<li id="page_' + i + '"><a href="#horizontalTab" onclick="listfunction(' + i + ')">' + (i + 1) + '</a></li>'
            }
            html += '<li><a href="#horizontalTab" aria-label="Next" onclick="listfunction(currentPage+1)"><span aria-hidden="true">»</span></a></li>';
            $(".pagination").html(html);
        }
    }

    function listfilter(key, value) {
        filter[key] = value;
        //alert(jQuery('input[type="radio"][name="education"]:checked'));
        listfunction(0);
    }

</script>
</body>
</html>		