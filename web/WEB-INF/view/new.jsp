<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf8"/>
    <meta http-equiv=X-UA-Compatible content="IE=edge,chrome=1">
    <meta name="baidu-site-verification" content="TeYYpvz7g7"/>
    <title>招聘信息垂直搜索引擎</title>
    <meta name="description" content="招聘信息垂直搜索引擎为你提供全网最新、最全、最靠谱的职位信息"/>

    <script type="text/javascript">
        var PAGE_DATA = {
            common: {
                query: '',
                listNum: '760',
                dispNum: '299988',
                loc: '武汉',
                pn: 0,
                tid: '' || '' || 'home',
                qid: '835164527',
                selected: []
            }
        };
    </script>

    <script type="text/javascript">
        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement("script");
            hm.src = "//hm.baidu.com/hm.js?6cbedfe16e204b60185852a9f6fa152f";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>
    <link rel="stylesheet" type="text/css" href="/css/search.css"/>
    <script type="text/javascript" src="/js/jquery-1.11.1.min.js"></script>
    <script src="/js/echarts.min.js"></script>
    <script src="/js/layer/layer.js"></script>
</head>
<body>
<header>

    <div class="header">
        <div class="head-inner">
            <div class="logo"><a href="/">招聘信息搜索</a></div>
            <div id="local-filter" class="local-filter">
                <dl>
                    <dt class="current-city" id="current-city"><span>[${city}]</span></dt>
                    <dd>
                        <div id="cities" class="cities">
                            <div class="tabs">
                                <div class="tabs-head">
                                    <ul>
                                        <li class="tabs-tag-item active">热门城市</li>
                                        <li class="tabs-tag-item">ABCDEG</li>
                                        <li class="tabs-tag-item">HJKLMN</li>
                                        <li class="tabs-tag-item">PQRST</li>
                                        <li class="tabs-tag-item">WXYZ</li>
                                    </ul>
                                </div>
                                <div class="tabs-body">
                                    <div class="tabs-ctn-item hot-cities active">
                                        <dl>
                    <dt>华北</dt>
                    <dd><a href="?query=&city=%E5%8C%97%E4%BA%AC">北京</a></dd>
                    <dd><a href="?query=&city=%E5%A4%A9%E6%B4%A5">天津</a></dd>
                    <dd><a href="?query=&city=%E5%A4%AA%E5%8E%9F">太原</a></dd>
                    <dd><a href="?query=&city=%E5%A4%A7%E5%90%8C">大同</a></dd>
                    <dd><a href="?query=&city=%E5%91%BC%E5%92%8C%E6%B5%A9%E7%89%B9">呼和浩特</a></dd>
                    <dd><a href="?query=&city=%E5%8C%85%E5%A4%B4">包头</a></dd>
                    <dd><a href="?query=&city=%E7%9F%B3%E5%AE%B6%E5%BA%84">石家庄</a></dd>
                    <dd><a href="?query=&city=%E5%BB%8A%E5%9D%8A">廊坊</a></dd>
                    <dd><a href="?query=&city=%E9%82%AF%E9%83%B8">邯郸</a></dd>
                </dl>

                <dl>
                    <dt>华东</dt>
                    <dd><a href="?query=&city=%E4%B8%8A%E6%B5%B7">上海</a></dd>
                    <dd><a href="?query=&city=%E6%9D%AD%E5%B7%9E">杭州</a></dd>
                    <dd><a href="?query=&city=%E5%AE%81%E6%B3%A2">宁波</a></dd>
                    <dd><a href="?query=&city=%E6%B8%A9%E5%B7%9E">温州</a></dd>
                    <dd><a href="?query=&city=%E5%8D%97%E4%BA%AC">南京</a></dd>
                    <dd><a href="?query=&city=%E6%B5%8E%E5%8D%97">济南</a></dd>
                    <dd><a href="?query=&city=%E9%9D%92%E5%B2%9B">青岛</a></dd>
                    <dd><a href="?query=&city=%E5%8F%B0%E5%B7%9E">台州</a></dd>
                    <dd><a href="?query=&city=%E5%98%89%E5%85%B4">嘉兴</a></dd>
                    <dd><a href="?query=&city=%E9%87%91%E5%8D%8E">金华</a></dd>
                    <dd><a href="?query=&city=%E7%BB%8D%E5%85%B4">绍兴</a></dd>
                    <dd><a href="?query=&city=%E8%8B%8F%E5%B7%9E">苏州</a></dd>
                    <dd><a href="?query=&city=%E6%97%A0%E9%94%A1">无锡</a></dd>
                    <dd><a href="?query=&city=%E5%B8%B8%E5%B7%9E">常州</a></dd>
                    <dd><a href="?query=&city=%E5%8D%97%E9%80%9A">南通</a></dd>
                    <dd><a href="?query=&city=%E6%89%AC%E5%B7%9E">扬州</a></dd>
                    <dd><a href="?query=&city=%E5%BE%90%E5%B7%9E">徐州</a></dd>
                    <dd><a href="?query=&city=%E8%BF%9E%E4%BA%91%E6%B8%AF">连云港</a></dd>
                    <dd><a href="?query=&city=%E7%A6%8F%E5%B7%9E">福州</a></dd>
                    <dd><a href="?query=&city=%E5%8E%A6%E9%97%A8">厦门</a></dd>
                    <dd><a href="?query=&city=%E6%B3%89%E5%B7%9E">泉州</a></dd>
                    <dd><a href="?query=&city=%E7%83%9F%E5%8F%B0">烟台</a></dd>
                    <dd><a href="?query=&city=%E6%BD%8D%E5%9D%8A">潍坊</a></dd>
                    <dd><a href="?query=&city=%E4%B8%B4%E6%B2%82">临沂</a></dd>
                    <dd><a href="?query=&city=%E6%B7%84%E5%8D%9A">淄博</a></dd>
                    <dd><a href="?query=&city=%E8%8F%8F%E6%B3%BD">菏泽</a></dd>
                    <dd><a href="?query=&city=%E5%A8%81%E6%B5%B7">威海</a></dd>
                    <dd><a href="?query=&city=%E5%90%88%E8%82%A5">合肥</a></dd>
                    <dd><a href="?query=&city=%E9%A9%AC%E9%9E%8D%E5%B1%B1">马鞍山</a></dd>
                    <dd><a href="?query=&city=%E8%8A%9C%E6%B9%96">芜湖</a></dd>
                </dl>

                <dl>
                    <dt>华南</dt>
                    <dd><a href="?query=&city=%E5%B9%BF%E5%B7%9E">广州</a></dd>
                    <dd><a href="?query=&city=%E6%B7%B1%E5%9C%B3">深圳</a></dd>
                    <dd><a href="?query=&city=%E6%B5%B7%E5%8F%A3">海口</a></dd>
                    <dd><a href="?query=&city=%E4%B8%89%E4%BA%9A">三亚</a></dd>
                    <dd><a href="?query=&city=%E5%8D%97%E5%AE%81">南宁</a></dd>
                    <dd><a href="?query=&city=%E6%A1%82%E6%9E%97">桂林</a></dd>
                    <dd><a href="?query=&city=%E7%8E%89%E6%9E%97">玉林</a></dd>
                    <dd><a href="?query=&city=%E7%99%BE%E8%89%B2">百色</a></dd>
                </dl>

                <dl>
                    <dt>华中</dt>
                    <dd><a href="?query=&city=%E6%AD%A6%E6%B1%89">武汉</a></dd>
                    <dd><a href="?query=&city=%E5%8D%97%E6%98%8C">南昌</a></dd>
                    <dd><a href="?query=&city=%E9%83%91%E5%B7%9E">郑州</a></dd>
                    <dd><a href="?query=&city=%E9%95%BF%E6%B2%99">长沙</a></dd>
                    <dd><a href="?query=&city=%E4%B9%9D%E6%B1%9F">九江</a></dd>
                    <dd><a href="?query=&city=%E8%B5%A3%E5%B7%9E">赣州</a></dd>
                    <dd><a href="?query=&city=%E6%A0%AA%E6%B4%B2">株洲</a></dd>
                    <dd><a href="?query=&city=%E5%B8%B8%E5%BE%B7">常德</a></dd>
                    <dd><a href="?query=&city=%E5%AE%9C%E6%98%8C">宜昌</a></dd>
                    <dd><a href="?query=&city=%E5%8D%81%E5%A0%B0">十堰</a></dd>
                    <dd><a href="?query=&city=%E8%8D%86%E5%B7%9E">荆州</a></dd>
                    <dd><a href="?query=&city=%E6%B4%9B%E9%98%B3">洛阳</a></dd>
                    <dd><a href="?query=&city=%E5%8D%97%E9%98%B3">南阳</a></dd>
                    <dd><a href="?query=&city=%E6%96%B0%E4%B9%A1">新乡</a></dd>
                    <dd><a href="?query=&city=%E5%AE%89%E9%98%B3">安阳</a></dd>
                </dl>

                <dl>
                    <dt>西南</dt>
                    <dd><a href="?query=&city=%E9%87%8D%E5%BA%86">重庆</a></dd>
                    <dd><a href="?query=&city=%E6%88%90%E9%83%BD">成都</a></dd>
                    <dd><a href="?query=&city=%E7%BB%B5%E9%98%B3">绵阳</a></dd>
                    <dd><a href="?query=&city=%E8%B4%B5%E9%98%B3">贵阳</a></dd>
                    <dd><a href="?query=&city=%E9%81%B5%E4%B9%89">遵义</a></dd>
                    <dd><a href="?query=&city=%E6%98%86%E6%98%8E">昆明</a></dd>
                    <dd><a href="?query=&city=%E5%A4%A7%E7%90%86">大理</a></dd>
                    <dd><a href="?query=&city=%E6%8B%89%E8%90%A8">拉萨</a></dd>
                </dl>

                <dl>
                    <dt>西北</dt>
                    <dd><a href="?query=&city=%E8%A5%BF%E5%AE%89">西安</a></dd>
                    <dd><a href="?query=&city=%E5%AE%9D%E9%B8%A1">宝鸡</a></dd>
                    <dd><a href="?query=&city=%E8%A5%BF%E5%AE%81">西宁</a></dd>
                    <dd><a href="?query=&city=%E9%93%B6%E5%B7%9D">银川</a></dd>
                    <dd><a href="?query=&city=%E5%85%B0%E5%B7%9E">兰州</a></dd>
                    <dd><a href="?query=&city=%E5%92%B8%E9%98%B3">咸阳</a></dd>
                    <dd><a href="?query=&city=%E5%A4%A9%E6%B0%B4">天水</a></dd>
                    <dd><a href="?query=&city=%E4%B9%8C%E9%B2%81%E6%9C%A8%E9%BD%90">乌鲁木齐</a></dd>
                    <dd><a href="?query=&city=%E6%98%8C%E5%90%89">昌吉</a></dd>
                    <dd><a href="?query=&city=%E5%9B%BA%E5%8E%9F">固原</a></dd>
                </dl>

                <dl>
                    <dt>东北</dt>
                    <dd><a href="?query=&city=%E6%B2%88%E9%98%B3">沈阳</a></dd>
                    <dd><a href="?query=&city=%E5%A4%A7%E8%BF%9E">大连</a></dd>
                    <dd><a href="?query=&city=%E5%93%88%E5%B0%94%E6%BB%A8">哈尔滨</a></dd>
                    <dd><a href="?query=&city=%E9%95%BF%E6%98%A5">长春</a></dd>
                    <dd><a href="?query=&city=%E5%90%89%E6%9E%97">吉林</a></dd>
                    <dd><a href="?query=&city=%E6%9C%9D%E9%98%B3">朝阳</a></dd>
                    <dd><a href="?query=&city=%E9%94%A6%E5%B7%9E">锦州</a></dd>
                    <dd><a href="?query=&city=%E5%9B%9B%E5%B9%B3">四平</a></dd>
                    <dd><a href="?query=&city=%E5%A4%A7%E5%BA%86">大庆</a></dd>
                    <dd><a href="?query=&city=%E7%89%A1%E4%B8%B9%E6%B1%9F">牡丹江</a></dd>
                </dl>

            </div>
            <div class="tabs-ctn-item hot-cities">
                <dl>
                    <dt>A</dt>
                    <dd><a href="?query=&city=%E9%98%BF%E6%8B%89%E5%96%84%E7%9B%9F">阿拉善盟</a></dd>
                    <dd><a href="?query=&city=%E5%AE%89%E5%BA%B7">安康</a></dd>
                    <dd><a href="?query=&city=%E5%AE%89%E5%BA%86">安庆</a></dd>
                    <dd><a href="?query=&city=%E5%AE%89%E9%A1%BA">安顺</a></dd>
                    <dd><a href="?query=&city=%E5%AE%89%E9%98%B3">安阳</a></dd>
                    <dd><a href="?query=&city=%E9%9E%8D%E5%B1%B1">鞍山</a></dd>
                </dl>

                <dl>
                    <dt>B</dt>
                    <dd><a href="?query=&city=%E5%8C%97%E4%BA%AC">北京</a></dd>
                    <dd><a href="?query=&city=%E5%B7%B4%E5%BD%A6%E6%B7%96%E5%B0%94">巴彦淖尔</a></dd>
                    <dd><a href="?query=&city=%E5%B7%B4%E4%B8%AD">巴中</a></dd>
                    <dd><a href="?query=&city=%E7%99%BD%E5%9F%8E">白城</a></dd>
                    <dd><a href="?query=&city=%E7%99%BD%E5%B1%B1">白山</a></dd>
                    <dd><a href="?query=&city=%E7%99%BD%E9%93%B6">白银</a></dd>
                    <dd><a href="?query=&city=%E7%99%BE%E8%89%B2">百色</a></dd>
                    <dd><a href="?query=&city=%E8%9A%8C%E5%9F%A0">蚌埠</a></dd>
                    <dd><a href="?query=&city=%E5%8C%85%E5%A4%B4">包头</a></dd>
                    <dd><a href="?query=&city=%E5%AE%9D%E9%B8%A1">宝鸡</a></dd>
                    <dd><a href="?query=&city=%E4%BF%9D%E5%AE%9A">保定</a></dd>
                    <dd><a href="?query=&city=%E4%BF%9D%E5%B1%B1">保山</a></dd>
                    <dd><a href="?query=&city=%E5%8C%97%E6%B5%B7">北海</a></dd>
                    <dd><a href="?query=&city=%E6%9C%AC%E6%BA%AA">本溪</a></dd>
                    <dd><a href="?query=&city=%E6%BB%A8%E5%B7%9E">滨州</a></dd>
                </dl>

                <dl>
                    <dt>C</dt>
                    <dd><a href="?query=&city=%E9%95%BF%E6%98%A5">长春</a></dd>
                    <dd><a href="?query=&city=%E9%95%BF%E6%B2%99">长沙</a></dd>
                    <dd><a href="?query=&city=%E9%87%8D%E5%BA%86">重庆</a></dd>
                    <dd><a href="?query=&city=%E6%88%90%E9%83%BD">成都</a></dd>
                    <dd><a href="?query=&city=%E6%B2%A7%E5%B7%9E">沧州</a></dd>
                    <dd><a href="?query=&city=%E6%98%8C%E5%90%89">昌吉</a></dd>
                    <dd><a href="?query=&city=%E5%B8%B8%E5%BE%B7">常德</a></dd>
                    <dd><a href="?query=&city=%E5%B8%B8%E5%B7%9E">常州</a></dd>
                    <dd><a href="?query=&city=%E6%9C%9D%E9%98%B3">朝阳</a></dd>
                    <dd><a href="?query=&city=%E6%BD%AE%E5%B7%9E">潮州</a></dd>
                    <dd><a href="?query=&city=%E9%83%B4%E5%B7%9E">郴州</a></dd>
                    <dd><a href="?query=&city=%E6%89%BF%E5%BE%B7">承德</a></dd>
                    <dd><a href="?query=&city=%E6%B1%A0%E5%B7%9E">池州</a></dd>
                    <dd><a href="?query=&city=%E8%B5%A4%E5%B3%B0">赤峰</a></dd>
                    <dd><a href="?query=&city=%E6%BB%81%E5%B7%9E">滁州</a></dd>
                    <dd><a href="?query=&city=%E6%A5%9A%E9%9B%84">楚雄</a></dd>
                </dl>

                <dl>
                    <dt>D</dt>
                    <dd><a href="?query=&city=%E5%A4%A7%E7%90%86">大理</a></dd>
                    <dd><a href="?query=&city=%E5%A4%A7%E8%BF%9E">大连</a></dd>
                    <dd><a href="?query=&city=%E5%A4%A7%E5%BA%86">大庆</a></dd>
                    <dd><a href="?query=&city=%E5%A4%A7%E5%90%8C">大同</a></dd>
                    <dd><a href="?query=&city=%E5%A4%A7%E5%85%B4%E5%AE%89%E5%B2%AD">大兴安岭</a></dd>
                    <dd><a href="?query=&city=%E8%BE%BE%E5%B7%9E">达州</a></dd>
                    <dd><a href="?query=&city=%E4%B8%B9%E4%B8%9C">丹东</a></dd>
                    <dd><a href="?query=&city=%E5%BE%B7%E5%AE%8F">德宏</a></dd>
                    <dd><a href="?query=&city=%E5%BE%B7%E9%98%B3">德阳</a></dd>
                    <dd><a href="?query=&city=%E5%BE%B7%E5%B7%9E">德州</a></dd>
                </dl>

                <dl>
                    <dt>E</dt>
                    <dd><a>鄂尔多斯</a></dd>
                    <dd><a>鄂州</a></dd>
                    <dd><a>恩施州</a></dd>
                </dl>

                <dl>
                    <dt>G</dt>
                    <dd><a href="?query=&city=%E5%B9%BF%E5%B7%9E">广州</a></dd>
                    <dd><a href="?query=&city=%E8%B4%B5%E9%98%B3">贵阳</a></dd>
                    <dd><a href="?query=&city=%E6%A1%82%E6%9E%97">桂林</a></dd>
                    <dd><a href="?query=&city=%E7%94%98%E5%AD%9C">甘孜</a></dd>
                    <dd><a href="?query=&city=%E8%B5%A3%E5%B7%9E">赣州</a></dd>
                    <dd><a href="?query=&city=%E5%9B%BA%E5%8E%9F">固原</a></dd>
                    <dd><a href="?query=&city=%E5%B9%BF%E5%AE%89">广安</a></dd>
                    <dd><a href="?query=&city=%E5%B9%BF%E5%85%83">广元</a></dd>
                    <dd><a href="?query=&city=%E8%B4%B5%E6%B8%AF">贵港</a></dd>
                </dl>


            </div>


            <div class="tabs-ctn-item hot-cities">
                <dl>
                    <dt>H</dt>
                    <dd><a href="?query=&city=%E6%9D%AD%E5%B7%9E">杭州</a></dd>
                    <dd><a href="?query=&city=%E5%93%88%E5%B0%94%E6%BB%A8">哈尔滨</a></dd>
                    <dd><a href="?query=&city=%E5%90%88%E8%82%A5">合肥</a></dd>
                    <dd><a href="?query=&city=%E5%93%88%E5%AF%86%E5%9C%B0%E5%8C%BA">哈密地区</a></dd>
                    <dd><a href="?query=&city=%E6%B5%B7%E5%8F%A3">海口</a></dd>
                    <dd><a href="?query=&city=%E9%82%AF%E9%83%B8">邯郸</a></dd>
                    <dd><a href="?query=&city=%E6%B1%89%E4%B8%AD">汉中</a></dd>
                    <dd><a href="?query=&city=%E5%92%8C%E7%94%B0%E5%9C%B0%E5%8C%BA">和田地区</a></dd>
                    <dd><a href="?query=&city=%E6%B2%B3%E6%B1%A0">河池</a></dd>
                    <dd><a href="?query=&city=%E6%B2%B3%E6%BA%90">河源</a></dd>
                    <dd><a href="?query=&city=%E8%8F%8F%E6%B3%BD">菏泽</a></dd>
                    <dd><a href="?query=&city=%E8%B4%BA%E5%B7%9E">贺州</a></dd>
                    <dd><a href="?query=&city=%E9%B9%A4%E5%A3%81">鹤壁</a></dd>
                    <dd><a href="?query=&city=%E9%B9%A4%E5%B2%97">鹤岗</a></dd>
                    <dd><a href="?query=&city=%E9%BB%91%E6%B2%B3">黑河</a></dd>
                    <dd><a href="?query=&city=%E8%A1%A1%E6%B0%B4">衡水</a></dd>
                    <dd><a href="?query=&city=%E8%A1%A1%E9%98%B3">衡阳</a></dd>
                    <dd><a href="?query=&city=%E7%BA%A2%E6%B2%B3">红河</a></dd>
                    <dd><a href="?query=&city=%E5%91%BC%E5%92%8C%E6%B5%A9%E7%89%B9">呼和浩特</a></dd>
                    <dd><a href="?query=&city=%E5%91%BC%E4%BC%A6%E8%B4%9D%E5%B0%94">呼伦贝尔</a></dd>
                    <dd><a href="?query=&city=%E8%91%AB%E8%8A%A6%E5%B2%9B">葫芦岛</a></dd>
                    <dd><a href="?query=&city=%E6%B9%96%E5%B7%9E">湖州</a></dd>
                    <dd><a href="?query=&city=%E6%80%80%E5%8C%96">怀化</a></dd>
                    <dd><a href="?query=&city=%E6%B7%AE%E5%AE%89">淮安</a></dd>
                    <dd><a href="?query=&city=%E6%B7%AE%E5%8C%97">淮北</a></dd>
                    <dd><a href="?query=&city=%E6%B7%AE%E5%8D%97">淮南</a></dd>
                    <dd><a href="?query=&city=%E9%BB%84%E5%86%88">黄冈</a></dd>
                    <dd><a href="?query=&city=%E9%BB%84%E5%B1%B1">黄山</a></dd>
                    <dd><a href="?query=&city=%E9%BB%84%E7%9F%B3">黄石</a></dd>
                    <dd><a href="?query=&city=%E6%83%A0%E5%B7%9E">惠州</a></dd>
                    <dd><a href="?query=&city=%E4%BA%B3%E5%B7%9E">亳州</a></dd>
                </dl>

                <dl>
                    <dt>J</dt>
                    <dd><a href="?query=&city=%E6%B5%8E%E5%AE%81">济宁</a></dd>
                    <dd><a href="?query=&city=%E5%90%89%E6%9E%97">吉林</a></dd>
                    <dd><a href="?query=&city=%E9%B8%A1%E8%A5%BF">鸡西</a></dd>
                    <dd><a href="?query=&city=%E5%90%89%E5%AE%89">吉安</a></dd>
                    <dd><a href="?query=&city=%E6%B5%8E%E5%8D%97">济南</a></dd>
                    <dd><a href="?query=&city=%E4%BD%B3%E6%9C%A8%E6%96%AF">佳木斯</a></dd>
                    <dd><a href="?query=&city=%E5%98%89%E5%85%B4">嘉兴</a></dd>
                    <dd><a href="?query=&city=%E5%98%89%E5%B3%AA%E5%85%B3">嘉峪关</a></dd>
                    <dd><a href="?query=&city=%E6%B1%9F%E9%97%A8">江门</a></dd>
                    <dd><a href="?query=&city=%E7%84%A6%E4%BD%9C">焦作</a></dd>
                    <dd><a href="?query=&city=%E6%8F%AD%E9%98%B3">揭阳</a></dd>
                    <dd><a href="?query=&city=%E9%87%91%E6%98%8C">金昌</a></dd>
                    <dd><a href="?query=&city=%E9%87%91%E5%8D%8E">金华</a></dd>
                    <dd><a href="?query=&city=%E9%94%A6%E5%B7%9E">锦州</a></dd>
                    <dd><a href="?query=&city=%E6%99%8B%E5%9F%8E">晋城</a></dd>
                    <dd><a href="?query=&city=%E6%99%8B%E4%B8%AD">晋中</a></dd>
                    <dd><a href="?query=&city=%E8%8D%86%E9%97%A8">荆门</a></dd>
                    <dd><a href="?query=&city=%E8%8D%86%E5%B7%9E">荆州</a></dd>
                    <dd><a href="?query=&city=%E6%99%AF%E5%BE%B7%E9%95%87">景德镇</a></dd>
                    <dd><a href="?query=&city=%E4%B9%9D%E6%B1%9F">九江</a></dd>
                    <dd><a href="?query=&city=%E9%85%92%E6%B3%89">酒泉</a></dd>
                </dl>

                <dl>
                    <dt>K</dt>
                    <dd><a href="?query=&city=%E6%98%86%E6%98%8E">昆明</a></dd>
                    <dd><a href="?query=&city=%E5%96%80%E4%BB%80">喀什</a></dd>
                    <dd><a href="?query=&city=%E5%BC%80%E5%B0%81">开封</a></dd>
                    <dd><a href="?query=&city=%E5%85%8B%E6%8B%89%E7%8E%9B%E4%BE%9D">克拉玛依</a></dd>
                </dl>

                <dl>
                    <dt>L</dt>
                    <dd><a href="?query=&city=%E6%8B%89%E8%90%A8">拉萨</a></dd>
                    <dd><a href="?query=&city=%E5%85%B0%E5%B7%9E">兰州</a></dd>
                    <dd><a href="?query=&city=%E6%B4%9B%E9%98%B3">洛阳</a></dd>
                    <dd><a href="?query=&city=%E6%9D%A5%E5%AE%BE">来宾</a></dd>
                    <dd><a href="?query=&city=%E8%8E%B1%E8%8A%9C">莱芜</a></dd>
                    <dd><a href="?query=&city=%E5%BB%8A%E5%9D%8A">廊坊</a></dd>
                    <dd><a href="?query=&city=%E4%B9%90%E5%B1%B1">乐山</a></dd>
                    <dd><a href="?query=&city=%E4%B8%BD%E6%B1%9F">丽江</a></dd>
                    <dd><a href="?query=&city=%E4%B8%BD%E6%B0%B4">丽水</a></dd>
                    <dd><a href="?query=&city=%E5%87%89%E5%B1%B1">凉山</a></dd>
                    <dd><a href="?query=&city=%E8%BE%BD%E9%98%B3">辽阳</a></dd>
                    <dd><a href="?query=&city=%E8%BE%BD%E6%BA%90">辽源</a></dd>
                    <dd><a href="?query=&city=%E8%81%8A%E5%9F%8E">聊城</a></dd>
                    <dd><a href="?query=&city=%E9%87%91%E5%8D%8E">金华</a></dd>
                    <dd><a href="?query=&city=%E4%B8%B4%E6%B2%A7">临沧</a></dd>
                    <dd><a href="?query=&city=%E4%B8%B4%E6%B1%BE">临汾</a></dd>
                    <dd><a href="?query=&city=%E4%B8%B4%E5%A4%8F">临夏</a></dd>
                    <dd><a href="?query=&city=%E4%B8%B4%E6%B2%82">临沂</a></dd>
                    <dd><a href="?query=&city=%E6%9F%B3%E5%B7%9E">柳州</a></dd>
                    <dd><a href="?query=&city=%E5%85%AD%E5%AE%89">六安</a></dd>
                    <dd><a href="?query=&city=%E5%85%AD%E7%9B%98%E6%B0%B4">六盘水</a></dd>
                    <dd><a href="?query=&city=%E9%BE%99%E5%B2%A9">龙岩</a></dd>
                    <dd><a href="?query=&city=%E9%99%87%E5%8D%97">陇南</a></dd>
                    <dd><a href="?query=&city=%E5%A8%84%E5%BA%95">娄底</a></dd>
                    <dd><a href="?query=&city=%E6%B3%B8%E5%B7%9E">泸州</a></dd>
                    <dd><a href="?query=&city=%E6%BC%AF%E6%B2%B3">漯河</a></dd>
                    <dd><a href="?query=&city=%E5%90%95%E6%A2%81">吕梁</a></dd>
                </dl>

                <dl>
                    <dt>M</dt>
                    <dd><a href="?query=&city=%E9%A9%AC%E9%9E%8D%E5%B1%B1">马鞍山</a></dd>
                    <dd><a href="?query=&city=%E8%8C%82%E5%90%8D">茂名</a></dd>
                    <dd><a href="?query=&city=%E7%9C%89%E5%B1%B1">眉山</a></dd>
                    <dd><a href="?query=&city=%E6%A2%85%E5%B7%9E">梅州</a></dd>
                    <dd><a href="?query=&city=%E7%BB%B5%E9%98%B3">绵阳</a></dd>
                    <dd><a href="?query=&city=%E7%89%A1%E4%B8%B9%E6%B1%9F">牡丹江</a></dd>
                </dl>

                <dl>
                    <dt>N</dt>
                    <dd><a href="?query=&city=%E5%8D%97%E4%BA%AC">南京</a></dd>
                    <dd><a href="?query=&city=%E5%8D%97%E6%98%8C">南昌</a></dd>
                    <dd><a href="?query=&city=%E5%8D%97%E5%85%85">南充</a></dd>
                    <dd><a href="?query=&city=%E5%8D%97%E5%AE%81">南宁</a></dd>
                    <dd><a href="?query=&city=%E5%8D%97%E5%B9%B3">南平</a></dd>
                    <dd><a href="?query=&city=%E5%8D%97%E9%80%9A">南通</a></dd>
                    <dd><a href="?query=&city=%E5%8D%97%E9%98%B3">南阳</a></dd>
                    <dd><a href="?query=&city=%E5%86%85%E6%B1%9F">内江</a></dd>
                    <dd><a href="?query=&city=%E5%AE%81%E6%B3%A2">宁波</a></dd>
                    <dd><a href="?query=&city=%E5%AE%81%E5%BE%B7">宁德</a></dd>
                    <dd><a href="?query=&city=%E6%80%92%E6%B1%9F">怒江</a></dd>
                </dl>

            </div>
            <div class="tabs-ctn-item hot-cities">
                <dl>
                    <dt>P</dt>
                    <dd><a href="?query=&city=%E6%94%80%E6%9E%9D%E8%8A%B1">攀枝花</a></dd>
                    <dd><a href="?query=&city=%E7%9B%98%E9%94%A6">盘锦</a></dd>
                    <dd><a href="?query=&city=%E5%B9%B3%E9%A1%B6%E5%B1%B1">平顶山</a></dd>
                    <dd><a href="?query=&city=%E5%B9%B3%E5%87%89">平凉</a></dd>
                    <dd><a href="?query=&city=%E8%90%8D%E4%B9%A1">萍乡</a></dd>
                    <dd><a href="?query=&city=%E8%8E%86%E7%94%B0">莆田</a></dd>
                    <dd><a href="?query=&city=%E6%BF%AE%E9%98%B3">濮阳</a></dd>
                    <dd><a href="?query=&city=%E6%99%AE%E6%B4%B1">普洱</a></dd>
                </dl>

                <dl>
                    <dt>Q</dt>
                    <dd><a href="?query=&city=%E9%9D%92%E5%B2%9B">青岛</a></dd>
                    <dd><a href="?query=&city=%E4%B8%83%E5%8F%B0%E6%B2%B3">七台河</a></dd>
                    <dd><a href="?query=&city=%E9%BD%90%E9%BD%90%E5%93%88%E5%B0%94">齐齐哈尔</a></dd>
                    <dd><a href="?query=&city=%E9%BB%94%E4%B8%9C%E5%8D%97">黔东南</a></dd>
                    <dd><a href="?query=&city=%E9%BB%94%E5%8D%97">黔南</a></dd>
                    <dd><a href="?query=&city=%E9%BB%94%E8%A5%BF%E5%8D%97">黔西南</a></dd>
                    <dd><a href="?query=&city=%E9%92%A6%E5%B7%9E">钦州</a></dd>
                    <dd><a href="?query=&city=%E7%A7%A6%E7%9A%87%E5%B2%9B">秦皇岛</a></dd>
                    <dd><a href="?query=&city=%E6%B8%85%E8%BF%9C">清远</a></dd>
                    <dd><a href="?query=&city=%E5%BA%86%E9%98%B3">庆阳</a></dd>
                    <dd><a href="?query=&city=%E8%A1%A2%E5%B7%9E">衢州</a></dd>
                    <dd><a href="?query=&city=%E6%9B%B2%E9%9D%96">曲靖</a></dd>
                    <dd><a href="?query=&city=%E6%B3%89%E5%B7%9E">泉州</a></dd>
                </dl>

                <dl>
                    <dt>R</dt>
                    <dd><a href="?query=&city=%E6%97%A5%E7%85%A7">日照</a></dd>
                </dl>

                <dl>
                    <dt>S</dt>
                    <dd><a href="?query=&city=%E6%B7%B1%E5%9C%B3">深圳</a></dd>
                    <dd><a href="?query=&city=%E4%B8%89%E4%BA%9A">三亚</a></dd>
                    <dd><a href="?query=&city=%E4%B8%89%E9%97%A8%E5%B3%A1">三门峡</a></dd>
                    <dd><a href="?query=&city=%E4%B8%89%E6%98%8E">三明</a></dd>
                    <dd><a href="?query=&city=%E6%B1%95%E5%A4%B4">汕头</a></dd>
                    <dd><a href="?query=&city=%E6%B1%95%E5%B0%BE">汕尾</a></dd>
                    <dd><a href="?query=&city=%E5%95%86%E6%B4%9B">商洛</a></dd>
                    <dd><a href="?query=&city=%E5%95%86%E4%B8%98">商丘</a></dd>
                    <dd><a href="?query=&city=%E4%B8%8A%E6%B5%B7">上海</a></dd>
                    <dd><a href="?query=&city=%E4%B8%8A%E9%A5%B6">上饶</a></dd>
                    <dd><a href="?query=&city=%E9%9F%B6%E5%85%B3">韶关</a></dd>
                    <dd><a href="?query=&city=%E9%82%B5%E9%98%B3">邵阳</a></dd>
                    <dd><a href="?query=&city=%E7%BB%8D%E5%85%B4">绍兴</a></dd>
                    <dd><a href="?query=&city=%E5%8D%81%E5%A0%B0">十堰</a></dd>
                    <dd><a href="?query=&city=%E7%9F%B3%E5%AE%B6%E5%BA%84">石家庄</a></dd>
                    <dd><a href="?query=&city=%E5%8F%8C%E9%B8%AD%E5%B1%B1">双鸭山</a></dd>
                    <dd><a href="?query=&city=%E6%9C%94%E5%B7%9E">朔州</a></dd>
                    <dd><a href="?query=&city=%E5%9B%9B%E5%B9%B3">四平</a></dd>
                    <dd><a href="?query=&city=%E6%9D%BE%E5%8E%9F">松原</a></dd>
                    <dd><a href="?query=&city=%E8%8B%8F%E5%B7%9E">苏州</a></dd>
                    <dd><a href="?query=&city=%E5%AE%BF%E8%BF%81">宿迁</a></dd>
                    <dd><a href="?query=&city=%E5%AE%BF%E5%B7%9E">宿州</a></dd>
                    <dd><a href="?query=&city=%E7%BB%A5%E5%8C%96">绥化</a></dd>
                    <dd><a href="?query=&city=%E9%9A%8F%E5%B7%9E">随州</a></dd>
                    <dd><a href="?query=&city=%E9%81%82%E5%AE%81">遂宁</a></dd>
                </dl>

                <dl>
                    <dt>T</dt>
                    <dd><a href="?query=&city=%E5%A4%A9%E6%B4%A5">天津</a></dd>
                    <dd><a href="?query=&city=%E5%8F%B0%E5%B7%9E">台州</a></dd>
                    <dd><a href="?query=&city=%E5%A4%AA%E5%8E%9F">太原</a></dd>
                    <dd><a href="?query=&city=%E6%B3%B0%E5%AE%89">泰安</a></dd>
                    <dd><a href="?query=&city=%E6%B3%B0%E5%B7%9E">泰州</a></dd>
                    <dd><a href="?query=&city=%E5%94%90%E5%B1%B1">唐山</a></dd>
                    <dd><a href="?query=&city=%E9%93%81%E5%B2%AD">铁岭</a></dd>
                    <dd><a href="?query=&city=%E9%80%9A%E5%8C%96">通化</a></dd>
                    <dd><a href="?query=&city=%E9%80%9A%E8%BE%BD">通辽</a></dd>
                    <dd><a href="?query=&city=%E9%93%9C%E5%B7%9D">铜川</a></dd>
                    <dd><a href="?query=&city=%E9%93%9C%E9%99%B5">铜陵</a></dd>
                    <dd><a href="?query=&city=%E5%90%90%E9%B2%81%E7%95%AA">吐鲁番</a></dd>
                </dl>

            </div>


            <div class="tabs-ctn-item hot-cities">
                <dl>
                    <dt>W</dt>
                    <dd><a href="?query=&city=%E6%AD%A6%E6%B1%89">武汉</a></dd>
                    <dd><a href="?query=&city=%E5%A8%81%E6%B5%B7">威海</a></dd>
                    <dd><a href="?query=&city=%E6%BD%8D%E5%9D%8A">潍坊</a></dd>
                    <dd><a href="?query=&city=%E6%B8%AD%E5%8D%97">渭南</a></dd>
                    <dd><a href="?query=&city=%E6%B8%A9%E5%B7%9E">温州</a></dd>
                    <dd><a href="?query=&city=%E6%96%87%E5%B1%B1">文山</a></dd>
                    <dd><a href="?query=&city=%E4%B9%8C%E6%B5%B7">乌海</a></dd>
                    <dd><a href="?query=&city=%E4%B9%8C%E9%B2%81%E6%9C%A8%E9%BD%90">乌鲁木齐</a></dd>
                    <dd><a href="?query=&city=%E6%97%A0%E9%94%A1">无锡</a></dd>
                    <dd><a href="?query=&city=%E8%8A%9C%E6%B9%96">芜湖</a></dd>
                    <dd><a href="?query=&city=%E6%A2%A7%E5%B7%9E">梧州</a></dd>
                    <dd><a href="?query=&city=%E6%AD%A6%E5%A8%81">武威</a></dd>
                </dl>


                <dl>
                    <dt>X</dt>
                    <dd><a href="?query=&city=%E5%8E%A6%E9%97%A8">厦门</a></dd>
                    <dd><a href="?query=&city=%E8%A5%BF%E5%AE%89">西安</a></dd>
                    <dd><a href="?query=&city=%E8%A5%BF%E5%AE%81">西宁</a></dd>
                    <dd><a href="?query=&city=%E9%94%A1%E6%9E%97%E9%83%AD%E5%8B%92">锡林郭勒</a></dd>
                    <dd><a href="?query=&city=%E5%92%B8%E5%AE%81">咸宁</a></dd>
                    <dd><a href="?query=&city=%E5%92%B8%E9%98%B3">咸阳</a></dd>
                    <dd><a href="?query=&city=%E6%B9%98%E6%BD%AD">湘潭</a></dd>
                    <dd><a href="?query=&city=%E5%AD%9D%E6%84%9F">孝感</a></dd>
                    <dd><a href="?query=&city=%E5%BF%BB%E5%B7%9E">忻州</a></dd>
                    <dd><a href="?query=&city=%E6%96%B0%E4%B9%A1">新乡</a></dd>
                    <dd><a href="?query=&city=%E6%96%B0%E4%BD%99">新余</a></dd>
                    <dd><a href="?query=&city=%E4%BF%A1%E9%98%B3">信阳</a></dd>
                    <dd><a href="?query=&city=%E9%82%A2%E5%8F%B0">邢台</a></dd>
                    <dd><a href="?query=&city=%E5%BE%90%E5%B7%9E">徐州</a></dd>
                    <dd><a href="?query=&city=%E8%AE%B8%E6%98%8C">许昌</a></dd>
                    <dd><a href="?query=&city=%E5%AE%A3%E5%9F%8E">宣城</a></dd>
                </dl>

                <dl>
                    <dt>Y</dt>
                    <dd><a href="?query=&city=%E9%93%B6%E5%B7%9D">银川</a></dd>
                    <dd><a href="?query=&city=%E9%9B%85%E5%AE%89">雅安</a></dd>
                    <dd><a href="?query=&city=%E7%83%9F%E5%8F%B0">烟台</a></dd>
                    <dd><a href="?query=&city=%E5%BB%B6%E5%AE%89">延安</a></dd>
                    <dd><a href="?query=&city=%E5%BB%B6%E8%BE%B9">延边</a></dd>
                    <dd><a href="?query=&city=%E7%9B%90%E5%9F%8E">盐城</a></dd>
                    <dd><a href="?query=&city=%E6%89%AC%E5%B7%9E">扬州</a></dd>
                    <dd><a href="?query=&city=%E9%98%B3%E6%B1%9F">阳江</a></dd>
                    <dd><a href="?query=&city=%E9%98%B3%E6%B3%89">阳泉</a></dd>
                    <dd><a href="?query=&city=%E4%BC%8A%E6%98%A5">伊春</a></dd>
                    <dd><a href="?query=&city=%E4%BC%8A%E7%8A%81">伊犁</a></dd>
                    <dd><a href="?query=&city=%E5%AE%9C%E5%AE%BE">宜宾</a></dd>
                    <dd><a href="?query=&city=%E5%AE%9C%E6%98%8C">宜昌</a></dd>
                    <dd><a href="?query=&city=%E5%AE%9C%E6%98%A5">宜春</a></dd>
                    <dd><a href="?query=&city=%E7%9B%8A%E9%98%B3">益阳</a></dd>
                    <dd><a href="?query=&city=%E9%B9%B0%E6%BD%AD">鹰潭</a></dd>
                    <dd><a href="?query=&city=%E8%90%A5%E5%8F%A3">营口</a></dd>
                    <dd><a href="?query=&city=%E6%B0%B8%E5%B7%9E">永州</a></dd>
                    <dd><a href="?query=&city=%E6%A6%86%E6%9E%97">榆林</a></dd>
                    <dd><a href="?query=&city=%E7%8E%89%E6%9E%97">玉林</a></dd>
                </dl>

                <dl>
                    <dt>Z</dt>
                    <dd><a href="?query=&city=%E9%83%91%E5%B7%9E">郑州</a></dd>
                    <dd><a href="?query=&city=%E7%8F%A0%E6%B5%B7">珠海</a></dd>
                    <dd><a href="?query=&city=%E6%9E%A3%E5%BA%84">枣庄</a></dd>
                    <dd><a href="?query=&city=%E6%B9%9B%E6%B1%9F">湛江</a></dd>
                    <dd><a href="?query=&city=%E5%BC%A0%E5%AE%B6%E7%95%8C">张家界</a></dd>
                    <dd><a href="?query=&city=%E5%BC%A0%E5%AE%B6%E5%8F%A3">张家口</a></dd>
                    <dd><a href="?query=&city=%E6%BC%B3%E5%B7%9E">漳州</a></dd>
                    <dd><a href="?query=&city=%E6%98%AD%E9%80%9A">昭通</a></dd>
                    <dd><a href="?query=&city=%E8%82%87%E5%BA%86">肇庆</a></dd>
                    <dd><a href="?query=&city=%E9%95%87%E6%B1%9F">镇江</a></dd>
                    <dd><a href="?query=&city=%E4%B8%AD%E5%B1%B1">中山</a></dd>
                    <dd><a href="?query=&city=%E8%88%9F%E5%B1%B1">舟山</a></dd>
                    <dd><a href="?query=&city=%E5%91%A8%E5%8F%A3">周口</a></dd>
                    <dd><a href="?query=&city=%E6%A0%AA%E6%B4%B2">株洲</a></dd>
                    <dd><a href="?query=&city=%E9%A9%BB%E9%A9%AC%E5%BA%97">驻马店</a></dd>
                    <dd><a href="?query=&city=%E8%B5%84%E9%98%B3">资阳</a></dd>
                    <dd><a href="?query=&city=%E6%B7%84%E5%8D%9A">淄博</a></dd>
                    <dd><a href="?query=&city=%E8%87%AA%E8%B4%A1">自贡</a></dd>
                    <dd><a href="?query=&city=%E9%81%B5%E4%B9%89">遵义</a></dd>
                </dl>
            </div>
        </div>
    </div>

    </div>
    </dd>
    </dl>
    </div>
    <div class="search-box">
        <form action="/" id="search-form">
            <span><input type="text" name="query" id="hd-kw" autocomplete="off" class="query" value="${query}"/></span>
            <span><input type="submit" id="hd-su" class="submit-btn" value="搜索"/>
            <input type="hidden" name="city" class="city" value="${city}">
        </form>
    </div>
    <!--div class="hot-words">
    <p>热搜：<a href="javascript:void(0)">司机</a><a href="javascript:void(0)">厨师</a></p>
    </div-->
    </div>
    </div>

</header>
<section>

    <div class="container">
        <div class="filter-box" id="filter-box">

            <div class="filter-salary">
                <dl>
                    <dt>月薪：</dt>
                    <dd><a href="javascript:void(0)" onclick="filterSalary(this)">不限</a></dd>
                    <dd><a href="javascript:void(0)" onclick="filterSalary(this)">面议</a></dd>
                    <%--<dd><a href="javascript:void(0)" onclick="filterSalary(this)">2000以下</a></dd>--%>
                    <dd><a href="javascript:void(0)" onclick="filterSalary(this)">2000-3000</a></dd>
                    <dd><a href="javascript:void(0)" onclick="filterSalary(this)">3000-5000</a></dd>
                    <dd><a href="javascript:void(0)" onclick="filterSalary(this)">5000-8000</a></dd>
                    <dd><a href="javascript:void(0)" onclick="filterSalary(this)">8000-12000</a></dd>
                    <dd><a href="javascript:void(0)" onclick="charts('salary')" style="color:#f7a20e">统计图表</a></dd>
                    <%--<dd>--%>
                    <%--<div id="salary-custom">--%>
                    <%--<p>自定义：<span class="custom-input-salary"><input type="text" maxlength="7" placeholder="￥"--%>
                    <%--value=""/></span>-<span--%>
                    <%--class="custom-input-salary"><input type="text" maxlength="7" value=""--%>
                    <%--placeholder="￥"/></span><span--%>
                    <%--class="custom-button-confirm"><button type="button" data="btn">确定</button></span>--%>
                    <%--</p>--%>
                    <%--</div>--%>
                    <%--</dd>--%>
                </dl>

            </div>
            <%--<div class="filter-welfare">--%>
            <%--<dl>--%>
            <%--<dt>福利：</dt>--%>
            <%--<dd data="0_0"><a href="javascript:void(0)" data="welfare:">不限</a></dd>--%>
            <%--<dd><label for="wxyj"><input type="checkbox" name="wxyj" id="wxyj" value="五险一金"--%>
            <%--data=""/>五险一金</label></dd>--%>
            <%--<dd><label for="ndly"><input type="checkbox" name="ndly" id="ndly" value="年度旅游"/>年度旅游</label></dd>--%>
            <%--<dd><label for="cb"><input type="checkbox" name="cb" id="cb" value="餐补"/>餐补</label></dd>--%>
            <%--<dd><label for="fb"><input type="checkbox" name="fb" id="fb" value="房补"/>房补</label></dd>--%>
            <%--<dd><label for="txbt"><input type="checkbox" name="txbt" id="txbt" value="通讯补贴"/>通讯补贴</label></dd>--%>
            <%--<dd><label for="jxjj"><input type="checkbox" name="jxjj" id="jxjj" value="绩效奖金"/>绩效奖金</label></dd>--%>
            <%--<dd><label for="ndsx"><input type="checkbox" name="ndsx" id="ndsx" value="年底双薪"/>年底双薪</label></dd>--%>
            <%--<dd><label for="nzfh"><input type="checkbox" name="nzfh" id="nzfh" value="年终分红"/>年终分红</label></dd>--%>
            <%--<dd><label for="jbbz"><input type="checkbox" name="jbbz" id="jbbz" value="加班补助"/>加班补助</label></dd>--%>
            <%--</dl>--%>
            <%--</div>--%>

            <div class="filter-district">
                <dl>
                    <dt>地区：</dt>
                    <dd><a href="javascript:void(0)" onclick="filterDistrict(this)">不限</a></dd>
                    <c:forEach items="${districts}" var="district">
                        <dd><a href="javascript:void(0)" onclick="filterDistrict(this)">${district}</a></dd>
                    </c:forEach>
                    <dd><a href="javascript:void(0)" onclick="charts('district')" style="color:#f7a20e">统计图表</a></dd>
                </dl>
            </div>
            <div class="filter-more">
                <dl>
                    <dt>更多：</dt>
                    <dd>
                        <div class="selector" id="s-education">
                            <dl>
                    <dt><span holder="学历"> 学历</span></dt>
                    <dd data="education:" onclick="filterEducation(this)">不限</dd>
                    <dd data="education:初中" onclick="filterEducation(this)">初中</dd>
                    <dd data="education:中专/中技" onclick="filterEducation(this)">中专/中技</dd>
                    <dd data="education:高中" onclick="filterEducation(this)">高中</dd>
                    <dd data="education:大专" onclick="filterEducation(this)">大专</dd>
                    <dd data="education:本科" onclick="filterEducation(this)">本科</dd>
                    <dd data="education:硕士" onclick="filterEducation(this)">硕士</dd>
                    <dd data="education:博士" onclick="filterEducation(this)">博士</dd>
                    <dd onclick="charts('education')" style="color:#f7a20e">统计图表</dd>
                    <%--<dd data="education:MBA/EMB">MBA/EMBA</dd>--%>
                </dl>

            </div>
            </dd>
            <dd>
                <div class="selector" id="s-experience">
                    <dl>
            <dt><span holder="经验"> 经验</span></dt>
            <dd data="experience:" onclick="filterExperience(this)">不限</dd>
            <dd data="experience:1年以下" onclick="filterExperience(this)">1年以下</dd>
            <dd data="experience:1-3年" onclick="filterExperience(this)">1-3年</dd>
            <dd data="experience:3-5年" onclick="filterExperience(this)">3-5年</dd>
            <dd data="experience:5-10年" onclick="filterExperience(this)">5-10年</dd>
            <dd data="experience:10年以上" onclick="filterExperience(this)">10年以上</dd>
            <dd onclick="charts('experience')" style="color:#f7a20e">统计图表</dd>
            </dl>

        </div>
        </dd>

        <dd>
            <div class="selector" id="s-employertype">
                <dl>
        <dt><span holder="公司性质">公司性质</span></dt>
        <dd data="employertype:" onclick="filterEmployertype(this)">不限</dd>
        <dd data="employertype:民营" onclick="filterEmployertype(this)">民营</dd>
        <dd data="employertype:国企" onclick="filterEmployertype(this)">国企</dd>
        <dd data="employertype:股份制" onclick="filterEmployertype(this)">股份制</dd>
        <dd data="employertype:外商独资/办事处" onclick="filterEmployertype(this)">外商独资/办事处</dd>
        <dd data="employertype:中外合资/合作" onclick="filterEmployertype(this)">中外合资/合作</dd>
        <dd data="employertype:上市公司" onclick="filterEmployertype(this)">上市公司</dd>
        <dd data="employertype:事业单位" onclick="filterEmployertype(this)">事业单位</dd>
        <dd data="employertype:政府机关" onclick="filterEmployertype(this)">政府机关</dd>
        <dd data="employertype:个人企业" onclick="filterEmployertype(this)">个人企业</dd>
        <dd data="employertype:其他" onclick="filterEmployertype(this)">其他</dd>
        <dd onclick="charts('employertype')" style="color:#f7a20e">统计图表</dd>
        </dl>
    </div>
    </dd>

    <dd>
        <div class="selector" id="s-size">
            <dl>
    <dt><span holder="公司性质">公司规模</span></dt>
    <dd onclick="filterSize(this)">不限</dd>
    <dd onclick="filterSize(this)">20人以下</dd>
    <dd onclick="filterSize(this)">20-99人</dd>
    <dd onclick="filterSize(this)">100-499人</dd>
    <dd onclick="filterSize(this)">1000-9999人</dd>
    <dd onclick="filterSize(this)">10000人以上</dd>
    <dd onclick="charts('size')" style="color:#f7a20e">统计图表</dd>
    </dl>
    </div>
    </dd>

    <%--<dd>--%>
    <%--<div class="selector" id="s-date">--%>
    <%--<dl>--%>
    <%--<dt><span holder="发布时间">发布时间</span></dt>--%>
    <%--<dd data="date:">不限</dd>--%>
    <%--<dd data="date:20160519_20160519">一天内</dd>--%>
    <%--<dd data="date:20160516_20160519">三天内</dd>--%>
    <%--<dd data="date:20160512_20160519">一周内</dd>--%>
    <%--<dd data="date:20160509_20160519">十天内</dd>--%>
    <%--</dl>--%>

    <%--</div></dd>--%>

    </dl>

    </div>
    <div id="selected-items">
        <dl>
            <dt>已选条件:</dt>
            <dd id="selecteditems">
                <span class="select-clear"><a class="clear" style="visibility:hidden;" href="javascript:void(0)"
                                              data="opt:clean">清空筛选</a></span>
            </dd>
            <dd class="state">无</dd>
            <dd class="result-num"></dd>
        </dl>
    </div>
    </div>

    <div id="job-list" class="job-list">
        <div id="job-list-tools" class="job-list-tools">
            <div class="sort-tabs" id="sort-tabs">
                <ul>
                    <li class="active" id="sort-"><a href="javascript:void(0)" onclick="listsort('')"><span>默认排序</span></a>
                    </li>
                    <li id="sort-startdate"><a href="javascript:void(0)"
                                               onclick="listsort('startdate')"><span>按发布时间排序</span></a>
                    </li>
                    <li id="sort-enddate"><a href="javascript:void(0)"
                                             onclick="listsort('enddate')"><span>按终止日期排序</span></a>
                    </li>
                </ul>
            </div>
            <div class="expand-tools">
                <!-- fb-pg -->
                <p class="mini-pagination"><span class="prev-btn" onclick="listfunction(currentPage-1)"></span><span><b
                        class="cur-pg"></b><b>/</b><b
                        class="total-pg"></b></span><span class="next-btn" onclick="listfunction(currentPage+1)"></span>
                </p>
            </div>
            <!--<div class="view-mode" id="view-mode">-->
            <!--<ul>-->
            <!--<li flag="detailmode"><a href="javascript:void(0)" class="detail-mode"-->
            <!--log="mod=joblist&pos=detailview&act=beha">详情</a></li>-->
            <!--<li flag="listmode" class="active"><a href="javascript:void(0)" class="list-mode"-->
            <!--log="mod=joblist&pos=listview&act=beha">列表</a></li>-->
            <!--</ul>-->
            <!--</div>-->


        </div>

        <div id="feeds" class="feeds">
            <div id="notice" style="display:none;">
                <p>抱歉，暂无匹配该筛选条件的职位<br/>请尝试修改您的筛选条件~</p>
            </div>
            <div id="feed-list" class="feeds">

            </div>

            <div id="pagination">
                <%--<p><span class="pagination-inner"><span id="pagination-nums">--%>
                <%--<a href="javascript:void(0)" class="active" id="pager_0">1</a><a--%>
                <%--href="javascript:listfunction(1)" id="pager_1">2</a><a href="javascript:listfunction(2)" id="pager_2">3</a><a--%>
                <%--href="javascript:listfunction(3)" id="pager_3">4</a><a href="javascript:listfunction(4)" id="pager_4">5</a><a--%>
                <%--href="javascript:listfunction(5)" id="pager_5">6</a><a href="javascript:listfunction(6)" id="pager_6">7</a><a--%>
                <%--href="javascript:listfunction(7)" id="pager_7">8</a><a href="javascript:listfunction(8)" id="pager_8">9</a></span><a--%>
                <%--href="javascript:listfunction(currentPage+1)" class="next-btn">下一页</a><a href="listfunction(0)" class="ep">尾页</a></span>--%>
                <%--</p>--%>
            </div>

        </div>
        <div id="data-loading" style="display:none"></div>
    </div>
    <div id="fixed-sidebar">
        <p id="backtop" style="display:none"><a href="javascript:void(0)">backtop</a></p>
        <p id="feedback" class="feedback"><a href="javascript:void(0)">feedback</a></p>
    </div>
    </div>

</section>
<footer>

    <%--<div id="footer">--%>
    <%--<p><a href="http://help.baidu.com/question" target="_blank">帮助</a><a--%>
    <%--href="http://www.baidu.com/search/jubao.html" target="_blank">举报</a><a href="javascript:void(0)"--%>
    <%--class="feedback">提建议</a></p>--%>
    <%--</div>--%>


</footer>
</body>

<script>
    var size = 10;
    var currentPage = 0;
    var url = '/result?query=${query}&city=${city}';
    var filter = {};
    var sort = "";

    $(function () {
//        var page = $(".pagination").val();
        listfunction(currentPage);
    });

    //弹出一个页面层
    $('#charts').on('click', function () {
        alert(this.className);
        layer.open({
            type: 1,
            area: ['600px', '360px'],
            shadeClose: true, //点击遮罩关闭
            content: '\<\div id="main" style="width:600px;height:300px">\<\/div>'
        });
        var myChart = echarts.init(document.getElementById('main'));
        var array = [];
        var names = [];
        $.post("/charts", {
            "city": "${city}"
        }, function (jsonObj) {
            for (var key in jsonObj) {
                array.push(new district(key, jsonObj[key]));
                names.push(key);
            }
            // 指定图表的配置项和数据
            option = {
                title: {
                    text: '${city}市工作分布情况',
                    subtext: '仅供参考',
                    x: 'center'
                },
                tooltip: {
                    trigger: 'item',
                    formatter: "{a} <br/>{b} : {c} ({d}%)"
                },
                legend: {
                    orient: 'vertical',
                    left: 'left',
                    data: names
                },
                series: [
                    {
                        name: '工作地点',
                        type: 'pie',
                        radius: '55%',
                        center: ['50%', '60%'],
                        data: array,
                        itemStyle: {
                            emphasis: {
                                shadowBlur: 10,
                                shadowOffsetX: 0,
                                shadowColor: 'rgba(0, 0, 0, 0.5)'
                            }
                        }
                    }
                ]
            };
            // 使用刚指定的配置项和数据显示图表。
            myChart.setOption(option);
        });
    });

    function charts(aggsName) {
        layer.open({
            type: 1,
            area: ['600px', '360px'],
            shadeClose: true, //点击遮罩关闭
            content: '\<\div id="main" style="width:600px;height:300px">\<\/div>'
        });
        //loading层
        var index = layer.load(1, {
            shade: [0.1, '#fff'] //0.1透明度的白色背景
        });
        var myChart = echarts.init(document.getElementById('main'));
        var array = [];
        var names = [];
        $.post("/charts", {
            "city": "${city}",
            "name": aggsName
        }, function (jsonObj) {
            for (var key in jsonObj) {
                array.push(new district(key, jsonObj[key]));
                names.push(key);
            }
            // 指定图表的配置项和数据
            option = {
                title: {
                    text: '${city}市工作分布情况',
                    subtext: '仅供参考',
                    x: 'center'
                },
                tooltip: {
                    trigger: 'item',
                    formatter: "{a} <br/>{b} : {c} ({d}%)"
                },
                legend: {
                    orient: 'vertical',
                    left: 'left',
                    data: names
                },
                series: [
                    {
                        name: aggsName,
                        type: 'pie',
                        radius: '55%',
                        center: ['50%', '60%'],
                        data: array,
                        itemStyle: {
                            emphasis: {
                                shadowBlur: 10,
                                shadowOffsetX: 0,
                                shadowColor: 'rgba(0, 0, 0, 0.5)'
                            }
                        }
                    }
                ]
            };
            // 使用刚指定的配置项和数据显示图表。
            myChart.setOption(option);
            layer.close(index);
        });
    }

    $("#local-filter").hover(function () {
        $("#local-filter").addClass("expand");
    }, function () {
        $("#local-filter").removeClass("expand");
    });

    $(".tabs-head ul li").hover(function () {
        $(".tabs-tag-item").removeClass("active");
        $(".tabs-body div").removeClass("active");
        $(this).addClass("active");
        var a = $(".tabs-head ul li").index(this);
        $(".tabs-body div:eq(" + a + ")").addClass("active");
    }, function () {
    });

    $(".selector").hover(function () {
        $(this).addClass("expand");
    }, function () {
        $(this).removeClass("expand");
    });

    $(".selector dl dd").hover(function () {
        $(this).addClass("hover");
    }, function () {
        $(this).removeClass("hover");
    })
    //分页
    function listfunction(page) {
        $.post(url + '&size=' + size + '&page=' + page, {
            "filter": JSON.stringify(filter),
            "sort": sort
        }, function (jsonObj) {
            var html = '';
            var jsonData = jsonObj.result;
            var hits = jsonObj.size;
            if (hits == 0) {
                $("#notice").css("display", "block");
                $("#pagination").css("display", "none");
                $(".cur-pg").html(1);
                $(".total-pg").html(1);
                $("#feed-list").css("display", "none");
            } else {
                for (var key in jsonData) {
                    html += '<div class="jobs-item odd jobs-item-expand"><dl><dt><a href="';
                    html += jsonData[key].url + '"target="_blank">' + jsonData[key].name + '</a>';
                    html += '<span class="jobs-company">' + jsonData[key].officialName + '</span></dt>';
                    html += '<dd class="jobs-place">' + jsonData[key].district + '</dd>';
                    html += '<dd class="jobs-deal whitout-welfare"><p class="feed-item-salary feed-item-salary-num">' + jsonData[key].salary + '</p>';
                    html += '</dd><dd class="jobs-source"><a href="' + jsonData[key].sourceLink + '" target="_blank">' + jsonData[key].source + '</a></dd><dd class="jobs-time">' + jsonData[key].startDate + '</dd><dd class="jobs-btn"><a href="javascript:void(0)" log="mod=joblist&act=beha&index=29" class="item-expand-btn">x</a></dd><dd class="jobs-discription">';
                    html += '<div class="detail"><p class="detail-item">';
                    if (jsonData[key].number != "") {
                        html += '<span><b>招聘人数：</b>' + jsonData[key].number + '</span>';
                    } else {
                        html += '<span><b>招聘人数：</b>若干人</span>';
                    }
                    html += '<span><b>经验：</b>' + jsonData[key].experience + '</span><span><b>学历：</b>' + jsonData[key].education + '</span></p><p class="detail-item"><span class="discription-item"><b>职位描述：</b></span>' + jsonData[key].description + '</p>';
                    html += '<p class="jobs-detail"><a href="' + jsonData[key].url + '" target="_blank" title="查看详情">查看详情</a></p></div></dd></dl></div>';
                }
                $("#feed-list").html(html);
                $("#feed-list").css("display", "block");
                $("#notice").css("display", "none");
                $("#pagination").css("display", "block");
                $("#pager_" + currentPage).removeClass("active");
                currentPage = page;
                pager(page, Math.ceil(hits / size) - 1);
                $(".cur-pg").html(currentPage + 1);
                $(".total-pg").html(Math.ceil(hits / size));
                $("#pager_" + page).addClass("active");
                $("html, body").animate({
                    scrollTop: $("#job-list").offset().top + "px"
                }, {
                    duration: 300,
                    easing: "swing"
                });
            }
            $(".result-num").html('共<b>' + hits + '</b>条招聘结果');
        });
    }

    function pager(active, all) {
        var html = '<p><span class="pagination-inner"><span id="pagination-nums">';
        if (active >= 5) {
            html += '<a href="javascript:listfunction(0)" class="fp">首页</a>'
        }
        if (active != 0) {
            html += '<a href="javascript:listfunction(currentPage-1)" class="prev-btn">上一页</a>';
        }

        if (active >= 5) {
            for (var i = active - 4; i < active + 5 && i <= all; i++) {
                html += '<a href="javascript:listfunction(' + i + ')" id="pager_' + i + '">' + (i + 1) + '</a>';
            }
        } else {
            for (var i = 0; i < 9 && i <= all; i++) {
                html += '<a href="javascript:listfunction(' + i + ')" id="pager_' + i + '">' + (i + 1) + '</a>';
            }
        }
        html += '</span>';
        if (active != all) {
            html += '<a href="javascript:listfunction(currentPage+1)" class="next-btn">下一页</a>';
        }
        html += '<a href="javascript:listfunction(' + all + ')" class="ep">尾页</a></span></p>';
        $("#pagination").html(html);
    }

    function listfilter(key, value) {
        if (value == "不限") {
            delete filter[key];
        } else {
            filter[key] = value;
        }
        //alert(jQuery('input[type="radio"][name="education"]:checked'));
        listfunction(0);
        if (Object.getOwnPropertyNames(filter).length > 0) {
            var html = '';
            for (var i in filter) {
                if (i == "education") {
                    html += '<span class="selected" cur="education"><a href="javascript:void(0)">' + filter[i] + '</a><span class="del" style="text-indent:-9999px" onclick="filterEducation(this)">不限</span></span>';
                } else if (i == "district") {
                    html += '<span class="selected" cur="district"><a href="javascript:void(0)">' + filter[i] + '</a><span class="del" style="text-indent:-9999px" onclick="filterDistrict(this)">不限</span></span>';
                } else if (i == "ori_salary") {
                    html += '<span class="selected" cur="salary"><a href="javascript:void(0)">' + filter[i] + '</a><span class="del" style="text-indent:-9999px" onclick="filterSalary(this)">不限</span></span>';
                } else if (i == "experience") {
                    html += '<span class="selected" cur="experience"><a href="javascript:void(0)">' + filter[i] + '</a><span class="del" style="text-indent:-9999px" onclick="filterExperience(this)">不限</span></span>';
                } else if (i == "employertype") {
                    html += '<span class="selected" cur="employertype"><a href="javascript:void(0)">' + filter[i] + '</a><span class="del" style="text-indent:-9999px" onclick="filterEmployertype(this)">不限</span></span>';
                } else if (i == "size") {
                    html += '<span class="selected" cur="size"><a href="javascript:void(0)">' + filter[i] + '</a><span class="del" style="text-indent:-9999px" onclick="filterSize(this)">不限</span></span>';
                }

            }
            html += '<span class="select-clear"><a class="clear" href="javascript:location.reload()" data="opt:clean">清空筛选</a></span>';
            $("#selecteditems").html(html);
            $(".state").css("display", "none");
        } else {
            $("#selecteditems").html('<dd id="selecteditems"><span class="select-clear"><a class="clear" style="visibility:hidden;" href="javascript:void(0)" data="opt:clean">清空筛选</a></span></dd>');
            $(".state").css("display", "block");
        }
    }

    function filterSalary(obj) {
        $('.filter-salary dl dd').removeClass('active');
        listfilter("ori_salary", obj.innerText);
        $(obj).parent().addClass('active');
    }

    function filterDistrict(obj) {
        $('.filter-district dl dd').removeClass('active');
        listfilter("district", obj.innerText);
        $(obj).parent().addClass('active');
    }

    function filterEducation(obj) {
        listfilter("education", obj.innerText);
        $("#s-education dl dt span").html(obj.innerText);
    }

    function filterExperience(obj) {
        listfilter("experience", obj.innerText);
        $("#s-experience dl dt span").html(obj.innerText);
    }

    function filterEmployertype(obj) {
        listfilter("employertype", obj.innerText);
        $("#s-employertype dl dt span").html(obj.innerText);
    }

    function filterSize(obj) {
        listfilter("size", obj.innerText);
        $("#s-size dl dt span").html(obj.innerText);
    }

    function listsort(str) {
        sort = str;
        $("#sort-tabs ul li").removeClass("active");
        listfunction(0);
        $("#sort-" + str).addClass("active");
    }

    function district(name, value) {
        this.name = name;
        this.value = value;
    }

</script>
</html>