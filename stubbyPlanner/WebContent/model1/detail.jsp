<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/include.jspf" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
<link rel="image_src" href="http://maps.googleapis.com/maps/api/staticmap?size=500x500&mobile=true&visible=39,17&path=color:0x|weight:1|51.5,-0.126|40.417,-3.702|39.857,-4.024|40.417,-3.702|41.388,2.17|41.895,12.482|43.769,11.257|45.434,12.339|48.14,11.579|47.8,13.044|47.557,13.648|48.209,16.373|47.498,19.041|50.088,14.424|50.112,8.684|48.861,2.342&&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight3%2Epng|51.5,-0.126&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight2%2Epng|40.417,-3.702&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight0%2Epng|39.857,-4.024&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|40.417,-3.702&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight3%2Epng|41.388,2.17&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight3%2Epng|41.895,12.482&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|43.769,11.257&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|45.434,12.339&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|48.14,11.579&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|47.8,13.044&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|47.557,13.648&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight2%2Epng|48.209,16.373&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|47.498,19.041&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight3%2Epng|50.088,14.424&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|50.112,8.684&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight4%2Epng|48.861,2.342&key=AIzaSyAlG3b7IeRzDZW46KIpOFPtiIxXt9MU46I&format=png&maptype=roadmap&style=element:geometry%7Ccolor:0xffffff%7Cvisibility:on&style=element:labels%7Cvisibility:simplified&style=element:labels.icon%7Cvisibility:off&style=element:labels.text%7Ccolor:0xcfcfcf%7Cvisibility:simplified&style=feature:administrative.country%7Celement:geometry.stroke%7Ccolor:0xd6d6d6%7Cvisibility:on%7Cweight:0.5&style=feature:poi%7Cvisibility:off&style=feature:water%7Celement:geometry%7Ccolor:0xd2f4f4%7Cvisibility:on&style=feature:water%7Celement:labels%7Cvisibility:off&scale=2" />
<meta property="og:type" content="website">
<meta property="og:locale" content="ko_KR">
<meta property="fb:app_id" content="218650814915663">
<meta property="og:title" content="30일간 여행 (2019년 6월 8일 출발) - 스투비플래너" />
<meta property="og:type" content="website" />
<meta property="og:url" content="http://www.stubbyplanner.com/planner/detail.asp?trip_id=10000001" />
<meta property="og:image" content="http://maps.googleapis.com/maps/api/staticmap?size=500x500&mobile=true&visible=39,17&path=color:0x|weight:1|51.5,-0.126|40.417,-3.702|39.857,-4.024|40.417,-3.702|41.388,2.17|41.895,12.482|43.769,11.257|45.434,12.339|48.14,11.579|47.8,13.044|47.557,13.648|48.209,16.373|47.498,19.041|50.088,14.424|50.112,8.684|48.861,2.342&&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight3%2Epng|51.5,-0.126&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight2%2Epng|40.417,-3.702&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight0%2Epng|39.857,-4.024&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|40.417,-3.702&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight3%2Epng|41.388,2.17&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight3%2Epng|41.895,12.482&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|43.769,11.257&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|45.434,12.339&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|48.14,11.579&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|47.8,13.044&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|47.557,13.648&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight2%2Epng|48.209,16.373&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|47.498,19.041&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight3%2Epng|50.088,14.424&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|50.112,8.684&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight4%2Epng|48.861,2.342&key=AIzaSyAlG3b7IeRzDZW46KIpOFPtiIxXt9MU46I&format=png&maptype=roadmap&style=element:geometry%7Ccolor:0xffffff%7Cvisibility:on&style=element:labels%7Cvisibility:simplified&style=element:labels.icon%7Cvisibility:off&style=element:labels.text%7Ccolor:0xcfcfcf%7Cvisibility:simplified&style=feature:administrative.country%7Celement:geometry.stroke%7Ccolor:0xd6d6d6%7Cvisibility:on%7Cweight:0.5&style=feature:poi%7Cvisibility:off&style=feature:water%7Celement:geometry%7Ccolor:0xd2f4f4%7Cvisibility:on&style=feature:water%7Celement:labels%7Cvisibility:off&scale=2" />
<meta property="og:site_name" content="상상속 여행을 현실로, 스투비플래너" />
<meta property="og:description" content="스투비플래너로 만든 나만의  여행" />
<title>30일간 여행 (2019년 6월 8일 출발) - 스투비플래너</title>

<!-- Meta -->
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,user-scalable=no">
    <meta name="description" content="스투비플래너로 만든 나만의  여행">
    <meta name="author" content="스투비플래너">


    <meta property="og:type" content="website"><meta property="og:locale" content="ko_KR"><meta property="og:image" content="http://www.stubbyplanner.com/img_v9/stubby_intro2.png"><meta property="og:site_name" content="stubbyplanner"><meta property="og:description" content="스투비플래너를 이용해 나만의 상상속 여행을 현실로 만들어 보세요."><meta property="og:title" content="상상속 여행을 현실로, 스투비플래너"><meta property="fb:app_id" content="218650814915663">
    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="icon" href="favicon.png"> 

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

	<!-- CSS Header and Footer -->
	<link rel="stylesheet" href="/superguide/assets/css/headers/header-v4.css">

	<!-- CSS Implementing Plugins -->
	<link rel="stylesheet" href="/stubbyPlanner/externalData/superguide/assets/plugins/animate.css">
	<link rel="stylesheet" href="/stubbyPlanner/externalData/superguide/assets/plugins/line-icons/line-icons.css">
	<link rel="stylesheet" href="/stubbyPlanner/externalData/superguide/assets/plugins/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://unpkg.com/flickity@2.0/dist/flickity.css" media="screen">

	<link rel="stylesheet" href="//www.stubbyplanner.com/css/ui-lightness/jquery-ui-1.8.16.custom.css">

    <link rel="stylesheet" type="text/css" href="<%= contextPath %>/market/css/swiper.min.css">
    <link rel="stylesheet" type="text/css" href="<%= contextPath %>/css2/common.css">
    <link rel="stylesheet" type="text/css" href="/market/css/tourHome.css">
    <link rel="stylesheet" type="text/css" href="/mb/css/BnB_home.css">
<link rel="stylesheet" type="text/css" href="/css2/header_footer.css">



     <link href='/css/fullcalendar.css' rel='stylesheet' />
	<!-- CSS Customization -->
	<link rel="stylesheet" href="/stubbyPlanner/externalData/superguide/assets/css/style.css">
	<link rel="stylesheet" href="/stubbyPlanner/externalData/superguide/assets/css/custom.css">

<script src="//www.google.com/jsapi"></script>
 <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>


<script>
 (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
 (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
 m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
 })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
 ga('create', 'UA-913663-1', 'auto');
 ga('send', 'pageview');
 ga('send','event','home','pageview','');
</script>
<script>
 google.load( "webfont", "1" );
 google.setOnLoadCallback(function() {
  WebFont.load({ custom: {
   families: [ "NanumGothic" ],
	urls: ['//fonts.googleapis.com/earlyaccess/nanumgothic.css']
  }});
 });
</script>
<style>

/* 이벤트 배너 */
.stu_event_banner { padding:0px 0; } .stu_event_banner .stu_inner_wrap { padding:0 12px; } .stu_event_banner .event_banner { padding:0 0 30px; } .stu_event_banner li { height:100px; background:#f3f3f3; text-align:left; overflow:hidden; } .stu_event_banner li a { position:relative; height:100%;display:block} .stu_event_banner .txtWrap { position:absolute; top:20px; left:20px; color:#333; white-space:nowrap; z-index:1; } .stu_event_banner .txtWrap p { display:block; font-size:18px; font-weight:400; color:#333; } .stu_event_banner .txtWrap b { font-size:22px; font-weight:bolder; } .stu_event_banner .txtWrap b span { margin-right:6px; color:#ee685a; } .stu_event_banner .imgWrap { float:right; position:relative; width:140px; height:84px; margin:8px 10px 0 0; background-position:50% 50%; background-size:cover; text-align:center; } .stu_event_banner .imgWrap b { position:absolute; top:50%; left:0; right:0; -webkit-transform:translateY(-50%); transform:translateY(-50%); font-size:20.5px; font-weight:bolder; color:#333; } .stu_event_banner .imgWrap b span { display:block; font-size:12px; color:#72bbff; } .stu_event_banner .swiper-container-horizontal > .swiper-pagination-bullets { bottom:0; } .stu_event_banner .swiper-pagination-bullet-active { background:gray; } .stu_event_banner .swiper-button-prev, .stu_event_banner .swiper-button-next { display:none; } @media (min-width:620px){ .stu_event_banner .stu_inner_wrap { padding:0 20px; } .stu_event_banner li { height:110px; } .stu_event_banner .txtWrap { top:50%; left:50%; -webkit-transform:translate(-100%, -50%); transform:translateX(-100%, -50%); margin-left:-5%; } .stu_event_banner .txtWrap p { margin:0 0 4px; font-size:22px; font-weight:300; } .stu_event_banner .txtWrap b { font-size:28px; } .stu_event_banner .imgWrap { float:left; width:216px; height:129.6px; margin:10px 0 0 55%; } .stu_event_banner .imgWrap b { margin:-4px 0 0; font-size:28px; } .stu_event_banner .imgWrap b span { margin:0 0 -2px; font-size:13px; } .stu_event_banner .swiper-button-prev, .stu_event_banner .swiper-button-next { display:block; width:46.5px; height:62px; margin:-44px 0 0; background-image:url(/images/common/stu_icon.png); background-repeat:no-repeat; background-size:496px; vertical-align:middle; } .stu_event_banner .swiper-button-prev { background-position:0 -124px; } .stu_event_banner .swiper-button-next { background-position:-46.5px -124px; }} @media (min-width:1025px){ .stu_event_banner { margin:0; padding:30px 0; } .stu_event_banner .stu_inner_wrap { padding:0; } .stu_event_banner li { height:120px; } .stu_event_banner .txtWrap { left:60%; } .stu_event_banner .txtWrap p { display:inline-block; margin:0 8px 0 0; font-size:28px; } .stu_event_banner .txtWrap b {  } .stu_event_banner .txtWrap b span { font-size:34px; } .stu_event_banner .imgWrap { width:245px; height:147px; margin:10px 0 0 64%; } .stu_event_banner .imgWrap b { font-size:34px; } .stu_event_banner .imgWrap b span { font-size:14px; }}

#cal_div_tour_list, #cal_div_slp_list
{background:#fff}
.pass_tour_deleted
{
	text-decoration: line-through;
}
.price_options_selected
{
	color:#fff;
	padding:8px 5px;
	inline-block;90px;
	border:1px solid #efefef;
	background:#3ad195;
}
.price_options
{
	color:#696969;
	padding:8px 5px;
	inline-block;90px;
	border:1px solid #efefef;
}

.pass_city_bold
{
	padding-bottom:10px;
	text-align:left;
	font-weight:700;
	font-size:15pt;
	line-height:30px;
}

.tour_item
{
	font-size:12pt;
	line-height:20px;
}
.tour_item i
{
	font-size:13pt;

}
.stu_list_item 
{
	border-left:1px solid #efefef;
	border-right:1px solid #efefef;
	border-top:1px solid #efefef;
	margin-left:10px;
	margin-right:10px;
	text-align:left;
	padding-top:4px;
	padding-left:9px;
	padding-right:9px;
	padding-bottom:4px;



	font-size:12pt;
	line-height:32px;

	color:#696969;
}
.stu_list_item.bottom
{
	border-bottom:1px solid #efefef;
}

.stu_list_item a
{

	font-size:12pt;
	line-height:32px;

	color:#696969;
}
.stu_list_item a span
{
	float:right;
	font-size:9pt;
	font-weight:300;
}
.stu_list_item span
{
	float:right;
	font-size:9pt;
	font-weight:300;
}
.off
{
	display:none;
}
.fxd
{	
	width:100%;
	padding-top:5px;
	padding-bottom:5px;
	border-bottom:2px solid #efefef;
	background:#fff;
	z-index:99;
	
}
.bk_bg_selected
{
	background:rgba(255,255,255,0.8);
	width:100%;
	height:190px;
}
.bk_bg
{
	background:linear-gradient(to bottom, rgba(0,0,0,0), rgba(0,0,0,5));
	width:100%;
	height:30px;
}
.bk_selected
{
	position:absolute;
	color:#ee685a;

	height:190px;
	font-size:80pt;
	top:5px;
	right:28px;
}
.bk
{
	position:absolute;
	color:#fff;

	height:30px;
	font-size:30pt;
	top:0px;
	right:10px;
}


.menu_title_selected
{
	text-align:center;
	border-bottom:3px solid #696969;
	margin-left:5px;

	margin-right:20px;

	color:#555;
	font-weight: 900;
	letter-spacing: 0;
	margin-bottom:0px;
	padding-bottom:5px;
}
.menu_title
{
	
	text-align:center;
	margin-left:5px;

	margin-right:20px;

	color:#696969;
	font-weight: 400;
	letter-spacing: 0;
	margin-bottom:3px;
	padding-bottom:5px;

}

.btn_filter
{
	display:inline-block;
	background:#c0c0c0;
	color:#fff;
	padding-left:5px;padding-right:5px;
	padding-top:5px;padding-bottom:5px;
	line-height:120%;
	font-size:9pt;
	margin-bottom:7px;
	margin-top:1px;
	margin-left:3px;
	border-radius:11px;
	
}
.btn_filter .selected
{
	background:#696969;
}
.schd_time
{
	display:inline-block;
	background:#efefef;
	padding-top:1px;padding-bottom:1px;
	padding-left:5px;padding-right:5px;
	line-height:120%;
	font-size:8pt;
	margin-bottom:1px;
	margin-top:1px;
	margin-left:3px;
	border-radius:8px;
}
.schd_time i
{
	color:#c0c0c0;
}
.itinerary li, .itinerary li a{
color:#696969;
font-size:10pt;
line-height:200%;
}
.h2_subtitle
{
    white-space: pre-line;
    font-size: 20px;
    margin-top: 5px;
    letter-spacing: -1px;
    /* text-align: center; */
    line-height: 30px;
    color: #222;
    font-weight: 400;
}
.fc-state-default.fc-corner-right
{
	border-top-right-radius: 14px;
	border-bottom-right-radius: 14px;
}
.fc-state-default.fc-corner-left
{
	border-top-left-radius: 14px;
	border-bottom-left-radius: 14px;
}
.fc-state-default
{
	background:#fff;
	background-image:none;
}
.sround{
width:80%;border-radius:3px;
}
.sbold
{font-weight:600;padding-top:5px;}
.mbold
{font-size:10pt;font-weight:600;padding-top:5px;}
.ht_date
{margin-bottom:0px;font-size:9pt;}

.round
{border-radius:100px;}

ul.nolist
{
	list-style:none;
    -webkit-margin-before: 0em;
    -webkit-margin-after: 0em;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
    -webkit-padding-start: 0px;
}
ul.nolist li
{
	display: inline-block;

	width:214px;

	overflow:hidden;
	text-align: center;
}
ul.nolist li a
{
	font-size: 12px;font-weight: 300;line-height: 16px;color: #666;
}

ul.nolist4
{list-style:none;}
ul.nolist4 li
{
	display: inline-block;
	width:25%;
	overflow:hidden;
	text-align: center;

}
ul.nolist4 li a
{
	font-size: 15px;font-weight: 300;line-height: 18px;color: #666;
}



/* topBanner 영역 */
.planner_topBanner { position:relative; width:100%; height:470px; margin-top:0; }
.planner_topBanner .swiper-container { width:100%; max-width:620px; height:100%; }
.planner_topBanner .swiper-slide { width:100%; }
.planner_topBanner .swiper-slide .viewport { width:100%; height:370px; }
.planner_topBanner .swiper-slide .viewport .textArea { position:absolute; width:94%; height:170px; padding:14px 6% 0 4%; text-align:left; box-sizing:border-box; bottom:0; background:#fff; z-index:1; }
.planner_topBanner .swiper-slide .vewport .textArea p { margin:0; }
.planner_topBanner .swiper-slide .viewport .type1 a { font-size:22px; font-weight:600; color:#222; }
.planner_topBanner .swiper-slide .viewport .type1 span { display:block; font-size:14px; font-weight:300; color:#0071b5; }
.planner_topBanner .swiper-slide .viewport .type2 { margin-top:4px; font-size:14px; font-weight:300; line-height:20px; color:#666; }
.planner_topBanner .swiper-slide .viewport .type2 span { display:none; }
.planner_topBanner .swiper-slide .viewport .type3 { margin-top:6px; font-size:26px; font-weight:300; line-height:30px; color:#222; }
.planner_topBanner .swiper-slide .viewport .photoArea { position:relative; width:100%; height:100%; overflow:hidden; }
.planner_topBanner .swiper-slide .viewport .photoArea img { position:absolute; width:auto; height:100%; top:-100%; right:-100%; bottom:-100%; left:-100%; margin:auto; }
.planner_topBanner .swiper-button-prev, .planner_topBanner .swiper-button-next { display:none; }
.planner_topBanner .swiper-pagination { text-align:center; bottom:5px; }

a {display:inline}
.search_tag
{
	display:inline-block;
	margin-right:5px;
	padding-top:4px;
	padding-bottom:4px;
	padding-left:8px;
	padding-right:8px;
	background:#007aff;
	color:#fff;
	font-size:16px;
	border-radius:20px;
	margin-bottom:5px;
}
.resv_box
{
	cursor:pointer;
	text-align:center;
	line-height:110%;
	display:inline-block;
	border:1px solid #e1e1e1;
	padding-top:10px;
	padding-bottom:5px;
	padding-left:10px;
	padding-right:10px;
	color:#c0c0c0;
}
.resv_box_on
{
	cursor:pointer;

	text-align:center;
	line-height:110%;
	display:inline-block;
	border:1px solid #e1e1e1;
	padding-top:10px;
	padding-bottom:5px;
	padding-left:10px;
	padding-right:10px;

	color:#000;
}
.hotellink
{
	font-weight:300;
	font-size:9pt;
	border-radius:3px;
	margin-top:3px;
	margin-bottom:3px;
	margin-left:3px;
	margin-right:3px;
	border:1px solid #efefef;
	line-height:30px;

	padding-left:20px;
	padding-right:20px;


	text-align:left;
}
.hotellink span
{
	float:right;
}
input[type="text"]::-webkit-input-placeholder  
{
    padding-top:0px;
}



.calendar_header_title
{
	text-align:center;
	font-size:11pt;
	color:#fff;
}
.calendar_day_nothing
{
	text-align:center;
	font-size:11pt;
	float:left;
	width:14%;
	color:#fff;
	padding-top:5px;
	padding-bottom:5px;
}
.calendar_header
{
	text-align:center;
	float:left;
	width:14%;
	color:#fff;
}
.calendar_day
{
	margin-top:5px;
	margin-left:5px;
	margin-right:5px;
	margin-bottom:5px;
	text-align:center;
	font-size:11pt;
	color:#fff;
	border:1px solid #fff;
	border-radius:20px;
	padding-top:5px;
	padding-bottom:5px;
	cursor:pointer;
}
.calendar_day a{color:#fff}
.calendar_day_selected
{
	margin-top:5px;
	margin-left:5px;
	margin-right:5px;
	margin-bottom:5px;
	text-align:center;
	font-size:11pt;
	color:#000;
	background:#fff;
	border-radius:20px;
	padding-top:5px;
	padding-bottom:5px;
	cursor:pointer;
}
.calendar_day_selected a{color:#000}
.round_num {
    display:inline-block;

    margin-top: 5px;
    margin-bottom: 5px;
    text-align: center;
    font-size: 11pt;
    color: #fff;
    border: 1px solid #fff;
    background:#c0c0c0;
    border-radius: 20px;
    padding-top: 5px;
    padding-bottom: 5px;
    cursor: pointer;
}
.round_num_selected {
    display:inline-block;
    margin-top: 5px;

    margin-bottom: 5px;
    text-align: center;
    font-size: 11pt;
    color: #fff;
    border: 1px solid #fff;
    background:#696969;
    border-radius: 20px;
    padding-top: 5px;
    padding-bottom: 5px;
    cursor: pointer;
}
.round_num_empty {
    display:inline-block;
    margin-top: 5px;
    margin-bottom: 5px;
    text-align: center;
    font-size: 11pt;
    color: #fff;
    border: 1px dotted #696969;
    color:#696969;
    border-radius: 20px;
    padding-top: 5px;
    padding-bottom: 5px;
    cursor: pointer;
}

.btn_ctype
{
	cursor:pointer;
	border:1px solid #fff;
	width:30px;
	height:30px;
	border-radius:25px;
	display:inline-block;
	color:#696969;
	padding-top:5px;
}
.selected
{
	background:#fff;
}
.btn_arr_nextday
{


	text-align:center;
	width:50%;
	float:left;
	padding-top:7px;
	padding-bottom:7px;
	border:3px solid #fff;
	color:#fff;

}
.btn_arr_nextday_selected
{
	text-align:center;
	width:50%;
	float:left;
	padding-top:7px;
	padding-bottom:7px;
	border:3px solid #fff;
	background:#fff;
	color:#696969;
	font-weight:700;
}

</style>
<link href="https://fonts.googleapis.com/css?family=Monoton" rel="stylesheet">


<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAlG3b7IeRzDZW46KIpOFPtiIxXt9MU46I&callback=initMap" async defer></script>
<script>
var map;
var geocoder;
var overlay;
var marker=[];
var routelines=[];
      function initMap() {
           geocoder = new google.maps.Geocoder();
         map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: 45.674, lng: 30},
          zoom: 5,
	disableDefaultUI: true,
	scrollwheel: false,
	disableDoubleClickZoom: false,
          styles:[
  {
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#ffffff"
      }
    ]
  },
  {
    "elementType": "labels.icon",
    "stylers": [
      {
        "color": "#e5e5e5"
      },
      {
        "visibility": "off"
      }
    ]
  },
  {
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#c3c3c3"
      }
    ]
  },
  {
    "featureType": "administrative",
    "elementType": "geometry",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "administrative.land_parcel",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "administrative.locality",
    "stylers": [
      {
        "visibility": "simplified"
      }
    ]
  },
  {
    "featureType": "administrative.neighborhood",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "poi",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "road",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "transit",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#c8f3f9"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "labels.text",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  }
]

        });





	var leftTopControlDiv = document.createElement('div');
	thtml='<div style="margin-bottom:5px;margin-left:10px;font-size:10pt;color:#696969;border:1px solid #efefef;border-radius:10px;padding-top:5px;padding-bottom:5px;padding-left:10px;padding-right:10px;background:#fff;font-weight:600;cursor:pointer" onclick="openStartDateModal()">2019년 6월 8일 출발 </div>';
	leftTopControlDiv.innerHTML = thtml;
	leftTopControlDiv.index = 1;
	map.controls[google.maps.ControlPosition.LEFT_BOTTOM].push(leftTopControlDiv);




	var leftBottomControlDiv = document.createElement('div');
	thtml='<div style="margin-top:10px;height:70px;overflow:hidden">';	

	thtml=thtml+'<div onclick="toggleSelectTripWith();"  style="cursor:pointer;margin-left:10px;background:#fff;border:1px solid #efefef;text-align:center;width:60px;padding-top:5px;padding-bottom:5px"><div ><img id="tripwith_img" src="//www.stubbyplanner.com/img_v14/tripwith/TW_0_0.png" height="43px"></div><div style="font-size:8pt;"><span id="tripwith_txt"></span></div></div>';


	thtml=thtml+'</div>';
	leftBottomControlDiv.innerHTML = thtml;
	leftBottomControlDiv.index = 1;
	map.controls[google.maps.ControlPosition.LEFT_TOP].push(leftBottomControlDiv);
	overlay = new google.maps.OverlayView();
	overlay.draw = function() {};
	overlay.setMap(map);

	iniMapItems();
	

      }


var tripwith_isopen=false;
var tripwith_txt=[];
tripwith_txt[1]="여자혼자";
tripwith_txt[2]="남자혼자";
tripwith_txt[3]="커플/신혼";
tripwith_txt[4]="여자끼리";
tripwith_txt[5]="남자끼리";
tripwith_txt[6]="남녀함께";
tripwith_txt[7]="아이들과";
tripwith_txt[8]="부모님과";
tripwith_txt[9]="부모님끼리";

function toggleSelectTripWith()
{
	if(tripwith_isopen)
	{
		$("#div_tripwith_selector").hide();
		tripwith_isopen=false;
	}
	else
	{
		thtml='<div style="text-align:center;padding-top:20px;"><font style="color:#fff;font-size:13pt;font-weight:700;">누구와 함께하는 여행인가요?</font></div>';
		thtml+='<div style="padding-bottom:15px;">';

		for(i=0;i<9;i++)
		{
			x=parseInt(i/3)+1;
			y=i%3+1;
			thtml+='<div style="float:left;width:33%">';
			thtml+='<div><a href="javascript:selectTripwith('+x+','+y+')"><img src="/img_v14/tripwith/TW_'+x+'_'+y+'_w.png" width="100%"></a></div>';
			thtml+='<div style="margin-top:-15px;text-align:center;"><font style="color:#fff;font-size:8pt">'+tripwith_txt[i+1]+'</font></div>';
			thtml+='</div>';
		}
		thtml+='<div style="clear:both"></div></div>';
		$("#div_tripwith_selector").html(thtml);
		$("#div_tripwith_selector").show();
		tripwith_isopen=true;
	}
}

function selectTripwith(x,y)
{
	thei=(x-1)*3+y*1;
	
	$("#tripwith_img").attr('src','/img_v14/tripwith/TW_'+x+'_'+y+'.png');
	$("#tripwith_txt").html(tripwith_txt[thei]);
	tripwith=thei;
	
	saveTripgene();
	toggleSelectTripWith();
}
function iniMapItems()
{

        var image0 = {
          url: '//www.stubbyplanner.com/img_v13/marker/mycity_night0.png',
	scaledSize: new google.maps.Size(8, 8),
          anchor: new google.maps.Point(4, 4)
        };
        var image1 = {
          url: '//www.stubbyplanner.com/img_v13/marker/mycity_night1.png',
	scaledSize: new google.maps.Size(14, 14),
          anchor: new google.maps.Point(7,7)
        };
        var image2 = {
          url: '//www.stubbyplanner.com/img_v13/marker/mycity_night2.png',
	scaledSize: new google.maps.Size(16, 16),
          anchor: new google.maps.Point(8, 8)
        };
        var image3 = {
          url: '//www.stubbyplanner.com/img_v13/marker/mycity_night3.png',
	scaledSize: new google.maps.Size(18, 18),
          anchor: new google.maps.Point(9, 9)
        };
        var image4 = {
          url: '//www.stubbyplanner.com/img_v13/marker/mycity_night4.png',
	scaledSize: new google.maps.Size(20, 20),
          anchor: new google.maps.Point(10, 10)
        };
        var image5 = {
          url: '//www.stubbyplanner.com/img_v13/marker/mycity_night5.png',
	scaledSize: new google.maps.Size(22, 22),
          anchor: new google.maps.Point(11, 11)
        };
        var image6 = {
          url: '//www.stubbyplanner.com/img_v13/marker/mycity_night6.png',
	scaledSize: new google.maps.Size(22, 22),
          anchor: new google.maps.Point(11, 11)
        };
        var image7 = {
          url: '//www.stubbyplanner.com/img_v13/marker/mycity_night7.png',
	scaledSize: new google.maps.Size(22, 22),
          anchor: new google.maps.Point(11, 11)
        };
        var image8 = {
          url: '//www.stubbyplanner.com/img_v13/marker/mycity_night8.png',
	scaledSize: new google.maps.Size(22, 22),
          anchor: new google.maps.Point(11, 11)
        };
        var image9 = {
          url: '//www.stubbyplanner.com/img_v13/marker/mycity_night9.png',
	scaledSize: new google.maps.Size(22, 22),
          anchor: new google.maps.Point(11, 11)
        };
        var shape = {
          coords: [1, 1, 1, 12, 12, 12, 12, 1],
          type: 'poly'
        };

txt=" 2h 10";
var lineSymbol_TRAIN_RL = {

    path: google.maps.SymbolPath.FORWARD_OPEN_ARROW,
    fillColor: '#696969',
    fillOpacity: 1,
    strokeWeight: 1,
    scale: 1
}
var lineSymbol_TRAIN_LR = {

    path: google.maps.SymbolPath.FORWARD_OPEN_ARROW,
    fillColor: '#696969',
    fillOpacity: 1,
    strokeWeight: 1,
    scale: 1,
	rotation: 0,
	anchor: new google.maps.Point(0,0)
}


        marker[0] = new google.maps.Marker({
          map: map,
          position: {lat:51.5000874980771, lng: -0.126256942749023},
            icon: image3,
            shape: shape,
            title: "런던",
            zIndex: 10000
        });


	marker[0].addListener('click', function() {
	mapIntoCity('111031001');
  });






        marker[1] = new google.maps.Marker({
          map: map,
          position: {lat:40.4166327886885, lng: -3.70290756225586},
            icon: image2,
            shape: shape,
            title: "마드리드",
            zIndex: 5000
        });


	marker[1].addListener('click', function() {
	mapIntoCity('121011003');
  });






	lineSymbol=lineSymbol_TRAIN_RL;
	
        var path = [marker[0].getPosition(), marker[1].getPosition()];
        routelines[0] = new google.maps.Polyline({
        strokeColor: '#696969',
          strokeOpacity: 1.0,
          strokeWeight:1,
          geodesic: false,
          icons: [{
            icon: lineSymbol,
            offset: '95%'
          }],
          map: map
        });
       routelines[0].setPath(path);

        marker[2] = new google.maps.Marker({
          map: map,
          position: {lat:39.8567664003905, lng: -4.02451515197754},
            icon: image0,
            shape: shape,
            title: "톨레도",
            zIndex: 3333
        });


	marker[2].addListener('click', function() {
	mapIntoCity('121011004');
  });






	lineSymbol=lineSymbol_TRAIN_RL;
	
        var path = [marker[1].getPosition(), marker[2].getPosition()];
        routelines[1] = new google.maps.Polyline({
        strokeColor: '#696969',
          strokeOpacity: 1.0,
          strokeWeight:1,
          geodesic: false,
          icons: [{
            icon: lineSymbol,
            offset: '95%'
          }],
          map: map
        });
       routelines[1].setPath(path);

        marker[3] = new google.maps.Marker({
          map: map,
          position: {lat:40.4166327886885, lng: -3.70290756225586},
            icon: image1,
            shape: shape,
            title: "마드리드",
            zIndex: 2500
        });


	marker[3].addListener('click', function() {
	mapIntoCity('121011003');
  });






	lineSymbol=lineSymbol_TRAIN_LR;
	
        var path = [marker[2].getPosition(), marker[3].getPosition()];
        routelines[2] = new google.maps.Polyline({
        strokeColor: '#696969',
          strokeOpacity: 1.0,
          strokeWeight:1,
          geodesic: false,
          icons: [{
            icon: lineSymbol,
            offset: '95%'
          }],
          map: map
        });
       routelines[2].setPath(path);

        marker[4] = new google.maps.Marker({
          map: map,
          position: {lat:41.3878531743444, lng: 2.17001438140869},
            icon: image3,
            shape: shape,
            title: "바르셀로나",
            zIndex: 2000
        });


	marker[4].addListener('click', function() {
	mapIntoCity('121011002');
  });






	lineSymbol=lineSymbol_TRAIN_LR;
	
        var path = [marker[3].getPosition(), marker[4].getPosition()];
        routelines[3] = new google.maps.Polyline({
        strokeColor: '#696969',
          strokeOpacity: 1.0,
          strokeWeight:1,
          geodesic: false,
          icons: [{
            icon: lineSymbol,
            offset: '95%'
          }],
          map: map
        });
       routelines[3].setPath(path);

        marker[5] = new google.maps.Marker({
          map: map,
          position: {lat:41.8954731928572, lng: 12.4822282791137},
            icon: image3,
            shape: shape,
            title: "로마",
            zIndex: 1667
        });


	marker[5].addListener('click', function() {
	mapIntoCity('111041004');
  });






	lineSymbol=lineSymbol_TRAIN_LR;
	
        var path = [marker[4].getPosition(), marker[5].getPosition()];
        routelines[4] = new google.maps.Polyline({
        strokeColor: '#ee685a',
          strokeOpacity: 1.0,
          strokeWeight:1,
          geodesic: false,
          icons: [{
            icon: lineSymbol,
            offset: '95%'
          }],
          map: map
        });
       routelines[4].setPath(path);

        marker[6] = new google.maps.Marker({
          map: map,
          position: {lat:43.7686455915888, lng: 11.2566947937011},
            icon: image1,
            shape: shape,
            title: "피렌체",
            zIndex: 1429
        });


	marker[6].addListener('click', function() {
	mapIntoCity('111041003');
  });






	lineSymbol=lineSymbol_TRAIN_LR;
	
        var path = [marker[5].getPosition(), marker[6].getPosition()];
        routelines[5] = new google.maps.Polyline({
        strokeColor: '#696969',
          strokeOpacity: 1.0,
          strokeWeight:1,
          geodesic: false,
          icons: [{
            icon: lineSymbol,
            offset: '95%'
          }],
          map: map
        });
       routelines[5].setPath(path);

        marker[7] = new google.maps.Marker({
          map: map,
          position: {lat:45.4344485919156, lng: 12.338547706604},
            icon: image1,
            shape: shape,
            title: "베니스",
            zIndex: 1250
        });


	marker[7].addListener('click', function() {
	mapIntoCity('111041006');
  });






	lineSymbol=lineSymbol_TRAIN_LR;
	
        var path = [marker[6].getPosition(), marker[7].getPosition()];
        routelines[6] = new google.maps.Polyline({
        strokeColor: '#696969',
          strokeOpacity: 1.0,
          strokeWeight:1,
          geodesic: false,
          icons: [{
            icon: lineSymbol,
            offset: '95%'
          }],
          map: map
        });
       routelines[6].setPath(path);

        marker[8] = new google.maps.Marker({
          map: map,
          position: {lat:48.1399742326904, lng: 11.579246520996},
            icon: image1,
            shape: shape,
            title: "뮌헨",
            zIndex: 1111
        });


	marker[8].addListener('click', function() {
	mapIntoCity('111061005');
  });






	lineSymbol=lineSymbol_TRAIN_LR;
	
        var path = [marker[7].getPosition(), marker[8].getPosition()];
        routelines[7] = new google.maps.Polyline({
        strokeColor: '#696969',
          strokeOpacity: 1.0,
          strokeWeight:1,
          geodesic: false,
          icons: [{
            icon: lineSymbol,
            offset: '95%'
          }],
          map: map
        });
       routelines[7].setPath(path);

        marker[9] = new google.maps.Marker({
          map: map,
          position: {lat:47.8004434213455, lng: 13.0444622039795},
            icon: image1,
            shape: shape,
            title: "잘츠부르크",
            zIndex: 1000
        });


	marker[9].addListener('click', function() {
	mapIntoCity('131041002');
  });






	lineSymbol=lineSymbol_TRAIN_RL;
	
        var path = [marker[8].getPosition(), marker[9].getPosition()];
        routelines[8] = new google.maps.Polyline({
        strokeColor: '#696969',
          strokeOpacity: 1.0,
          strokeWeight:1,
          geodesic: false,
          icons: [{
            icon: lineSymbol,
            offset: '95%'
          }],
          map: map
        });
       routelines[8].setPath(path);

        marker[10] = new google.maps.Marker({
          map: map,
          position: {lat:47.55654578175438, lng: 13.64750862121582},
            icon: image1,
            shape: shape,
            title: "할슈타트",
            zIndex: 909
        });


	marker[10].addListener('click', function() {
	mapIntoCity('131041032');
  });






	lineSymbol=lineSymbol_TRAIN_RL;
	
        var path = [marker[9].getPosition(), marker[10].getPosition()];
        routelines[9] = new google.maps.Polyline({
        strokeColor: '#696969',
          strokeOpacity: 1.0,
          strokeWeight:1,
          geodesic: false,
          icons: [{
            icon: lineSymbol,
            offset: '95%'
          }],
          map: map
        });
       routelines[9].setPath(path);

        marker[11] = new google.maps.Marker({
          map: map,
          position: {lat:48.2091455497485, lng: 16.3728475570679},
            icon: image2,
            shape: shape,
            title: "비엔나(빈)",
            zIndex: 833
        });


	marker[11].addListener('click', function() {
	mapIntoCity('131041001');
  });






	lineSymbol=lineSymbol_TRAIN_LR;
	
        var path = [marker[10].getPosition(), marker[11].getPosition()];
        routelines[10] = new google.maps.Polyline({
        strokeColor: '#696969',
          strokeOpacity: 1.0,
          strokeWeight:1,
          geodesic: false,
          icons: [{
            icon: lineSymbol,
            offset: '95%'
          }],
          map: map
        });
       routelines[10].setPath(path);

        marker[12] = new google.maps.Marker({
          map: map,
          position: {lat:47.4983579195743, lng: 19.0407657623291},
            icon: image1,
            shape: shape,
            title: "부다페스트",
            zIndex: 769
        });


	marker[12].addListener('click', function() {
	mapIntoCity('131021001');
  });






	lineSymbol=lineSymbol_TRAIN_RL;
	
        var path = [marker[11].getPosition(), marker[12].getPosition()];
        routelines[11] = new google.maps.Polyline({
        strokeColor: '#696969',
          strokeOpacity: 1.0,
          strokeWeight:1,
          geodesic: false,
          icons: [{
            icon: lineSymbol,
            offset: '95%'
          }],
          map: map
        });
       routelines[11].setPath(path);

        marker[13] = new google.maps.Marker({
          map: map,
          position: {lat:50.0876023334355, lng: 14.4240188598633},
            icon: image3,
            shape: shape,
            title: "프라하",
            zIndex: 714
        });


	marker[13].addListener('click', function() {
	mapIntoCity('131011001');
  });






	lineSymbol=lineSymbol_TRAIN_LR;
	
        var path = [marker[12].getPosition(), marker[13].getPosition()];
        routelines[12] = new google.maps.Polyline({
        strokeColor: '#696969',
          strokeOpacity: 1.0,
          strokeWeight:1,
          geodesic: false,
          icons: [{
            icon: lineSymbol,
            offset: '95%'
          }],
          map: map
        });
       routelines[12].setPath(path);

        marker[14] = new google.maps.Marker({
          map: map,
          position: {lat:50.1122124406658, lng: 8.68409156799316},
            icon: image1,
            shape: shape,
            title: "프랑크푸르트",
            zIndex: 667
        });


	marker[14].addListener('click', function() {
	mapIntoCity('111061006');
  });






	lineSymbol=lineSymbol_TRAIN_LR;
	
        var path = [marker[13].getPosition(), marker[14].getPosition()];
        routelines[13] = new google.maps.Polyline({
        strokeColor: '#696969',
          strokeOpacity: 1.0,
          strokeWeight:1,
          geodesic: false,
          icons: [{
            icon: lineSymbol,
            offset: '95%'
          }],
          map: map
        });
       routelines[13].setPath(path);

        marker[15] = new google.maps.Marker({
          map: map,
          position: {lat:48.86110101269274, lng: 2.3421478271484375},
            icon: image4,
            shape: shape,
            title: "파리",
            zIndex: 625
        });


	marker[15].addListener('click', function() {
	mapIntoCity('111011004');
  });






	lineSymbol=lineSymbol_TRAIN_RL;
	
        var path = [marker[14].getPosition(), marker[15].getPosition()];
        routelines[14] = new google.maps.Polyline({
        strokeColor: '#696969',
          strokeOpacity: 1.0,
          strokeWeight:1,
          geodesic: false,
          icons: [{
            icon: lineSymbol,
            offset: '95%'
          }],
          map: map
        });
       routelines[14].setPath(path);



	var rightTopControlDiv = document.createElement('div');
	thtml='<div style="margin-top:10px;margin-right:10px;font-size:18pt;font-weight:500;color:#696969;background:#fff;border:1px solid #efefef;border-radius:30px;width:60px;height:60px;padding-top:11px;text-align:center">30<font style="font-size:9pt">일</font></div>';
	rightTopControlDiv.innerHTML = thtml;
	rightTopControlDiv.index = 1;
	map.controls[google.maps.ControlPosition.RIGHT_TOP].push(rightTopControlDiv);




	var bounds = new google.maps.LatLngBounds();
	
		bounds.extend(marker[0].getPosition());
	
		bounds.extend(marker[1].getPosition());
	
		bounds.extend(marker[2].getPosition());
	
		bounds.extend(marker[3].getPosition());
	
		bounds.extend(marker[4].getPosition());
	
		bounds.extend(marker[5].getPosition());
	
		bounds.extend(marker[6].getPosition());
	
		bounds.extend(marker[7].getPosition());
	
		bounds.extend(marker[8].getPosition());
	
		bounds.extend(marker[9].getPosition());
	
		bounds.extend(marker[10].getPosition());
	
		bounds.extend(marker[11].getPosition());
	
		bounds.extend(marker[12].getPosition());
	
		bounds.extend(marker[13].getPosition());
	
		bounds.extend(marker[14].getPosition());
	
		bounds.extend(marker[15].getPosition());
	

	map.fitBounds(bounds);

}




</script>
<script>


function addBucket(cityserial,bucketserial,t_title,imgurl)
{
	
	startIdx=tripgene.indexOf(cityserial);
	endIdx=tripgene.indexOf(",",startIdx);

	if(endIdx!=-1)
		t_cityblock=tripgene.substring(startIdx,endIdx);
	else
		t_cityblock=tripgene.substring(startIdx);

	tripgene=tripgene.replace(t_cityblock,t_cityblock+"|"+bucketserial+":X:X:X");


//	saveTripgene();
	
	if(bucketserial.substring(0,1)=="B")
		tbucketserial=bucketserial.substring(1);
	else
		tbucketserial=bucketserial;
	t_linkurl="bucket_detail.asp?expserial="+tbucketserial;

		t_linkurl="javascript:showLinkInModal('"+t_linkurl+"')";
	
	c=$("#span_bcnt_"+cityserial).html();
	$("#span_bcnt_"+cityserial).html(eval(c)+1);
}
function removeBucket(cityserial,bucketserial)
{
	tripgene=tripgene.replace("|"+bucketserial+":X:X:X","");
//	saveTripgene();

	c=$("#span_bcnt_"+cityserial).html();
	$("#span_bcnt_"+cityserial).html(eval(c)-1);

}

function showBucketList(cityname,city_id,hascityplanner,r_id)
{
		cur_r_id=r_id;
		cur_region_id=city_id;
	
		newMapWidth=eval($(window).width());
		newMapHeight=eval($(window).height()-3);
		$("#div_bucketlist").css("width",newMapWidth);
		$("#div_bucketlist").css("height",newMapHeight);

		bucketlist_inside_h=eval(newMapHeight-100);



if(hascityplanner==0)
{

		thtml='<div style="background:#3ad195"><div style="float:left;width:85%;font-size:11pt;color:#fff;padding-top:5px;"><b>'+cityname+'</b> 여행정보</div><div style="float:left;width:15%;cursor:pointer;text-align:right;padding-right:4px;" onclick="closeBucketlist()"><font style="font-size:23pt;color:#fff"><i class="fa fa-times-circle"></i></font></div><div style="clear:both"></div></div>';
		thtml+='<iframe frameborder="0" width="100%" height="'+(newMapHeight-50)+'px" src="bucket_detail.asp?fromplanner=1&cityserial='+city_id+'"></iframe>';
		$("#div_bucketlist").html(thtml);
		$("#div_bucketlist").show();

}
else
{

		$("#div_bucketlist").html('<div style="padding-top:50px;text-align:center;">'+cityname+' 경험 로딩중...</div>');
		$("#div_bucketlist").show();

	             $.ajax({
	             	url: '/api/planning/bucket_list.asp?trip_id=10259869&region_id='+city_id,
	               	dataType: 'json',
	               	success: function(data){
					if(data!="")
					{
						thtml='<div style="background:#3ad195"><div style="float:left;width:85%;font-size:11pt;color:#fff;padding-top:5px;"><b>'+cityname+'</b>에서 경험하고 싶은 것들을 선택해 보세요.</div><div style="float:left;width:15%;cursor:pointer;text-align:right;padding-right:4px;" onclick="closeBucketlist()"><font style="font-size:23pt;color:#fff"><i class="fa fa-times-circle"></i></font></div><div style="clear:both"></div></div>';
						thtml+='<div style="height:'+bucketlist_inside_h+'px;padding-left:15px;padding-top:10px;padding-right:15px;overflow-y:auto;">';
						for(i=0;i<data.bucket_group.length;i++)
						{
							thtml+='<div style="clear:both"></div><div style="margin-top:20px;padding-bottom:7px;font-size:12pt;color:#696969">'+data.bucket_group[i].title+'</div>';
							thtml+='<div class="main-carousel">';
							for(j=0;j<data.bucket_group[i].bucket_list.length;j++)
							{


t_linkurl="index_exp.asp?expserial="+data.bucket_group[i].bucket_list[j].bucket_id;
t_select='bucket_select(\''+data.bucket_group[i].bucket_list[j].bucket_id+'\')';

thtml+='<div style="float:left;margin-bottom:17px;margin-top:0px;width:175px;cursor:pointer;" class="carousel-cell">';
thtml+='<div style="margin-left:5px;margin-right:5px;">';
thtml+='<div style="height:220px;overflow:hidden">';

thtml+='<div style="position:relative;">';
thtml+='<a href="javascript:'+t_select+'"><img src="'+data.bucket_group[i].bucket_list[j].img_url+'" id="bucket_img_'+data.bucket_group[i].bucket_list[j].bucket_id+'" style="border-radius:5px;width:165px;height:165px" onerror="this.src=\'/img_v12/img_er.gif\'"></a>';


	if(data.bucket_group[i].bucket_list[j].is_selected)
	{
		thtml+='<div id="bucket_bg_'+data.bucket_group[i].bucket_list[j].bucket_id+'"  class="bk_bg_selected" style="border-radius:5px;position:absolute;bottom:0px;right:0px;">&nbsp;</div>';
		thtml+='<div  id="bucket_check_'+data.bucket_group[i].bucket_list[j].bucket_id+'" class="bk_selected selected_flag" onclick="'+t_select+'"><font style="color:#3ad195"><i class="fa fa-check-circle"></i></font></a></div>';
	}
	else
	{
		thtml+='<div id="bucket_bg_'+data.bucket_group[i].bucket_list[j].bucket_id+'"  class="bk_bg" style="border-radius:5px;position:absolute;bottom:0px;right:0px;;">&nbsp;</div>';
		thtml+='<div  id="bucket_check_'+data.bucket_group[i].bucket_list[j].bucket_id+'" class="bk" onclick="'+t_select+'"><i class="fa fa-check-circle"></i></a></div>';
	}
	thtml+='<div style="position:absolute;bottom:3px;right:10px;"><font style="color:#fff;font-size:8pt;"><i class="fa fa-star" aria-hidden="true"></i> '+data.bucket_group[i].bucket_list[j].planner_cnt+'</font></div>';

thtml+='</div>';
	schd_flag="";
	if(data.bucket_group[i].bucket_list[j].schd_flag)
		schd_flag='<font style="color:#ee685a"><i class="fa fa-calendar"></i></font>';
thtml+='<div style="position:relative;">';
thtml+='<div style="width:80%;float:left;padding-top:5px;padding-bottom:5px;">';
thtml+='<h5 style="padding-left:3px;line-height:100%;padding-bottom:0px;margin-bottom:0px;text-align:left;color:#fff;font-size:9pt;" >'+schd_flag+'<a href="'+t_linkurl+'" style="color:#696969" id="bucket_title_'+data.bucket_group[i].bucket_list[j].bucket_id+'">'+data.bucket_group[i].bucket_list[j].title+'</a></h5>';
thtml+='<p style="padding-left:3px;margin-top:2px;font-size:8pt;text-align:left"><a href="'+t_linkurl+'" style="color:#a9a9a9">'+data.bucket_group[i].bucket_list[j].description+'</a></p>';
thtml+='</div>';
thtml+='<div style="width:20%;float:left;padding-left:0px;margin-top:0px;padding-top:5px;">';
thtml+='<div onclick="openBucketDetail(\''+data.bucket_group[i].bucket_list[j].bucket_id+'\',\''+data.bucket_group[i].bucket_list[j].title+'\')" style="text-align:center;margin-top:0px;padding-top:10px;line-height:100%">';
thtml+='<font style="font-size:17pt;color:#696969"><i class="fa fa-info-circle"></i></font>';
thtml+='</div>';


thtml+='</div>';
thtml+='<div style="clear:both"></div>';
thtml+='</div>';

thtml+='</div></div></div>';


							}

						thtml+='</div>';

						}
thtml+='</div>';
						$("#div_bucketlist").html(thtml);
						$("#div_bucketlist").show();



$('.main-carousel').flickity({
	  // options
	  cellAlign: 'left',
	contain: true,
	imagesLoaded: true,
	pageDots: false,
	dragThreshold: 20
	});




					}
				}
			});

	}


}



function showLinkInModal(tlink)
{	


		document.getElementById("if_info").src=tlink;
		$('#modal-info').modal({
			keyboard: true,
			backdrop: 'static',
			show:true
		});


}

var cur_r_id="";
var cur_region_id="";

function toggleSchd(bucket_id,region_id,img,title)
{
             $.ajax({
             	url: '//www.stubbyplanner.com/api/v5/planner/toggle_bucket.asp?trip_id=10259869&region_id='+region_id+'&bucket_id='+bucket_id,
               	dataType: 'json',
               	success: function(data){
			if(data!="")
			{
				if(data.data.is_selected)
					addBucket(region_id,bucket_id,title,img);
				else
					removeBucket(region_id,bucket_id);

			}
		}
	});
}
function bucket_select(id)
{

	img=$("#bucket_img_"+id).attr("src");
	title=$("#bucket_title_"+id).html();
	if($("#bucket_check_"+id).hasClass("selected_flag"))
	{
		$("#bucket_bg_"+id).removeClass("bk_bg");
		$("#bucket_bg_"+id).addClass("bk_bg_selected");

		$("#bucket_check_"+id).removeClass("bk");
		$("#bucket_check_"+id).addClass("bk_selected");
		$("#bucket_check_"+id).removeClass("selected_flag")


		$("#bucket_check_"+id).html('<i class="fa fa-check-circle"></i>');

//		setTimeout(function(){

			$("#bucket_bg_"+id).removeClass("bk_bg_selected");
			$("#bucket_bg_"+id).addClass("bk_bg");

			$("#bucket_check_"+id).addClass("bk");
			$("#bucket_check_"+id).removeClass("bk_selected");
//		}, 1000);

		if(cur_region_id!="")
			toggleSchd("B"+id,cur_region_id,img,title) ;
	}
	else
	{
		$("#bucket_bg_"+id).removeClass("bk_bg");
		$("#bucket_bg_"+id).addClass("bk_bg_selected");


		$("#bucket_check_"+id).removeClass("bk");
		$("#bucket_check_"+id).addClass("bk_selected");
		$("#bucket_check_"+id).addClass("selected_flag")


		$("#bucket_check_"+id).html('<font style="color:#3ad195"><i class="fa fa-check-circle"></i></font>');


		if(cur_region_id!="")
			toggleSchd("B"+id,cur_region_id,img,title) ;

	}

}

function closeBucketlist()
{
	window.location='city_buckets.asp?city_id='+cur_region_id+'&trip_id=10259869';

	$("#div_bucketlist").hide();
	$("#cp_"+cur_r_id).css("background","#fff");
	$("#cp_"+cur_r_id).css("color","#696969");
	$("#cp_heart_"+cur_r_id).css("color","#3ad195");
	cur_r_id="";
	//reloadDaySchd();
}



function openBucketDetail(s,t)
{
	
	$("#title-Guide").html(t);
		document.getElementById("if_guidebook").src="bucket_detail.asp?fromplanner=1&cityserial="+s;
	$('#modal-Guide').modal();
	
}
function showSchdDetail(id,t)
{


	if(id.substring(0,1)=="B")
	{

	
		showLinkInModal('bucket_detail.asp?expserial='+id.substring(1));

	
	}
	else
	{
		$.ajax({
			  url: "/api/v5/planner/schd_detail.asp",
			 type: "GET",
			 dataType: 'json',
			 data: {
				schd_id:id,
				trip_id:10259869
			  },
			success: function( data ) {

				thtml="";
				thtml+="<p>"+data.data.schd_desc+"</p>"; 

				if(data.data.location)
				{
					thtml+='<div><a href="https://www.google.com/maps/@'+data.data.location.lat+','+data.data.location.lng+',16z" target="_blank"><img width="100%" src="//maps.googleapis.com/maps/api/staticmap?zoom=15&size=640x250&mobile=true&markers=color:red|'+data.data.location.lat+','+data.data.location.lng+'&key=AIzaSyCKLReQhuQjYV2EwJb8cwElimBV9wcl8NY&scale=2"></a></div>';
				}		

				xtitle="";
				if(data.data.schd_stime)
					xtitle+="["+data.data.schd_stime+"]"; 
				xtitle+=data.data.schd_title;

				$("#title-Guide2").html(xtitle);
				$("#desc-Guide2").html(thtml);

				$('#modal-Guide2').modal();
			}
		});
	}
}
</script>
<!-- Core CSS file -->
<link rel="stylesheet" href="/css/photoswipe.css"> 
<link rel="stylesheet" href="https://photoswipe.com/dist/default-skin/default-skin.css?v=4.1.1-1.0.4"> 
<!-- Core JS file -->
<script src="/js/photoswipe.min.js"></script> 
<!-- UI JS file -->
<script src="/js/photoswipe-ui-default.min.js"></script> 

</head>
<body id="body" onload="initMap()">

<!-- Root element of PhotoSwipe. Must have class pswp. -->
<div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">

    <!-- Background of PhotoSwipe. 
         It's a separate element as animating opacity is faster than rgba(). -->
    <div class="pswp__bg"></div>

    <!-- Slides wrapper with overflow:hidden. -->
    <div class="pswp__scroll-wrap">

        <!-- Container that holds slides. 
            PhotoSwipe keeps only 3 of them in the DOM to save memory.
            Don't modify these 3 pswp__item elements, data is added later on. -->
        <div class="pswp__container">
            <div class="pswp__item"></div>
            <div class="pswp__item"></div>
            <div class="pswp__item"></div>
        </div>

        <!-- Default (PhotoSwipeUI_Default) interface on top of sliding area. Can be changed. -->
        <div class="pswp__ui pswp__ui--hidden">

            <div class="pswp__top-bar">

                <!--  Controls are self-explanatory. Order can be changed. -->

                <div class="pswp__counter"></div>

                <button class="pswp__button pswp__button--close" title="Close (Esc)"></button>

                <button class="pswp__button pswp__button--share" title="Share"></button>

                <button class="pswp__button pswp__button--fs" title="Toggle fullscreen"></button>

                <button class="pswp__button pswp__button--zoom" title="Zoom in/out"></button>

                <!-- Preloader demo http://codepen.io/dimsemenov/pen/yyBWoR -->
                <!-- element will get class pswp__preloader--active when preloader is running -->
                <div class="pswp__preloader">
                    <div class="pswp__preloader__icn">
                      <div class="pswp__preloader__cut">
                        <div class="pswp__preloader__donut"></div>
                      </div>
                    </div>
                </div>
            </div>

            <div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
                <div class="pswp__share-tooltip"></div> 
            </div>

            <button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)">
            </button>

            <button class="pswp__button pswp__button--arrow--right" title="Next (arrow right)">
            </button>

            <div class="pswp__caption">
                <div class="pswp__caption__center"  style="text-align:center;padding-bottom:20px"></div>
            </div>

        </div>
    </div>
</div>

    <div class="stu_wrap">
        <!-- 기존 헤더 영역(삭제하세요.) -->


      


    <header>


        <div class="header_banner">
            <div class="stu_inner_wrap">
                <a href="/market/index.asp?from=top1">
                    <div class="header_banner_wrap">
                        <p class="txtWrap">투어 두개이상 구매하면 결합할인!
                            <span>예약후 결제도 한번에!</span>
                        </p>
                        <p class="btnWrap">할인상품 찾아보기</p>
                    </div>
                </a>
                <i class="ico_close"></i>
            </div>
        </div>

        <div class="stu_header">
            <div class="stu_inner_wrap">
                <nav class="gnb_container">
                    <div class="aside_button on-mobile">
                        <a href="#" class="gnb_menu">
                            <i class="ico_menu"></i>
                        </a>
                    </div>
                    <h1 class="stu_logo">
                        <a href="/">
                            <img class="fh" src="/images2/stu_logo_mobile.png" alt="logo"/>
                        </a>
                    </h1>
                    <div class="gnb_banner on-pc">
                        <div class="swiper-container swiper-gnb_banner">
                            <ul class="swiper-wrapper">

<!--
                              <li class="swiper-slide">
                                    <a href="http://www.stubbyplanner.com/coupon/iceland_coupon.asp">
                                        <img class="fw" src="/images2/sample/GB02.jpg" alt=""/>
                                        <div class="txtWrap">
                                            <p>아이슬란드 특급 할인!</p>
                                            <b><span>130,000원</span> 할인쿠폰</b>
                                        </div>
                                    </a>
                                </li>

-->
                                <li class="swiper-slide">
                                   <a href="/consulting/index.asp?from=top2">
                                        <img class="fw" src="/images2/sample/GB03.jpg" alt=""/>
                                        <div class="txtWrap">
                                            <p>유럽 초보자를 위한</p>
                                            <b>전문가 유럽 맞춤계획 의뢰<span> </span></b>
                                        </div>
                                    </a>
                                </li>
<!--

                                <li class="swiper-slide">
                                    <a href="http://www.stubbyplanner.com/event_1/event_1plus1.asp">
                                        <img class="fw" src="http://d3b39vpyptsv01.cloudfront.net/0/0/1547623875104u6XHHWT7nu.jpg" alt=""/>
                                        <div class="txtWrap">
                                            <p>하나만 사도 핵이득!</p>
                                            <b><span>1+1 할인상품</span> 총집합</b>
                                        </div>
                                    </a>
                                </li>
                                <li class="swiper-slide">
                                    <a href="http://www.stubbyplanner.com/coupon/winter_coupon.asp">
                                        <img class="fw" src="/images2/sample/GB01.jpg" alt=""/>
                                        <div class="txtWrap">
                                            <p>유럽 현지투어 / 액티비티</p>
                                            <b><span>100,000원</span> 할인쿠폰</b>
                                        </div>
                                    </a>
                                </li>
  -->
                            </ul>
                            <div class="swiper-pagination gnb_banner-pagination"></div>
                            <div class="swiper-button-prev gnb_banner-button-prev"></div>
                            <div class="swiper-button-next gnb_banner-button-next"></div>
                        </div>
                    </div>
                    <ul class="gnb_wrap on-pc">
                        <li class="gnb_item">
                            <a href="/guide/reservation.asp">예약내역</a>
                        </li>
                        <li class="gnb_item">
                            <a href="/coupon/index.asp">쿠폰함</a>
                        </li>

                        <li class="gnb_item gnb_profile sign_in">
                            <a href="#" class="profile_photo">
                                <img class="fh" src="/img_v9/img_pfnull.jpg" alt="프로필 사진"/>
                            </a>


                            <div class="prfPopup">
                                <ul class="prfPopup_section">
                                    <li class="prfPopup_item prfPopup_profile">
                                        <a href="#" class="profile_photo">
                                            <img class="fh" src="/img_v9/img_pfnull.jpg" alt="프로필 사진"/>
                                        </a>
                                        <div class="profile_name">
                                            <p>apricot</p>
                                            <a href="/apricot" class="mng_account">마이페이지</a>
                                        </div>
                                    </li>
                                </ul>
                                <ul class="prfPopup_section">
<!--
                                    <li class="prfPopup_item prfPopup_coupon">
                                        <a href="/coupon/index.asp"><i></i>쿠폰함</a>
                                    </li>
                                    <li class="prfPopup_item prfPopup_square">
                                        <a href="/square/"><i></i>광장</a>
                                    </li>
-->
                                    <li class="prfPopup_item prfPopup_premium">
                                        <a href="/selfguide/"><i></i>프리미엄</a>
                                    </li>
                                </ul>

                                <ul class="prfPopup_section">
                                    <li class="prfPopup_item">
                                        <a href="/qa/">1:1문의</a>
                                    </li>
                                    <li class="prfPopup_item">
                                        <a href="/common/memberinfo.asp">회원정보변경</a>
                                    </li>
                                    <li class="prfPopup_item">
                                        <a href="/common/logout.asp">로그아웃</a>
                                    </li>
                                </ul>

                            </div>
                        </li>



                    </ul>
                </nav>
                <nav class="lnb_container">
                    <ul class="lnb_wrap">
                        <li class="lnb_item ">
                            <a href="/">홈</a>
                        </li>
                        <li class="lnb_item active">
                            <a href="/planner/index.asp">계획짜기</a>
                        </li>
                        <li class="lnb_item  ">
                            <a href="/market/index.asp">투어예약</a>
                        </li>
                        <li class="lnb_item  ">
                            <a href="/mb/index.asp">숙소예약</a>
                        </li>

                        <li class="lnb_item ">
                            <a href="/exp/list.asp">여행지</a>
                        </li>
                    </ul>
                    <div class="gnb_search_wrap">
                        <a href="#" class="gnb_search">
                            <i class="ico_search"></i>
                        </a>
                    </div>
                </nav>
                <div class="side_background"></div>
                <aside class="side_container on-mobile">
                    <ul class="side_section">
                        <li class="side_item side_logo sign_out">
                            <a href="http://stubbyplanner.com/">
                                <img class="fh" src="/images2/stu_logo_mobile.png" alt="logo"/>
                            </a>
                        </li>

                        <li class="side_item sign_in">
                            <div class="side_profile">
                                <a href="#" class="profile_photo">
                                    <i>
                                        <img class="fh" src="/img_v9/img_pfnull.jpg" alt="프로필 사진"/>
                                    </i>
                                </a>
                                <div class="profile_name">
                                    <p>apricot</p>
                                    <a href="/apricot" class="mng_account">마이페이지</a>
                                </div>
                            </div>
                        </li>

                    </ul>
                    <ul class="side_section">

                        <li class="side_item side_resv">
                            <a href="/guide/reservation.asp">
                                <i></i>예약내역
                            </a>
                        </li>
<!--
                        <li class="side_item side_coupon">
                            <a href="/coupon/index.asp"><i></i>쿠폰함</a>
                        </li>
                        <li class="side_item side_square">
                            <a href="/square/index.asp"><i></i>광장</a>
                        </li>
-->
                        <li class="side_item side_premium">
                            <a href="/selfguide/index.asp"><i></i>프리미엄</a>
                        </li>
                    </ul>


                    <ul class="side_section sign_in">
                        <li class="side_item">
                            <a href="/qa/index.asp">1:1문의</a>
                        </li>
                        <li class="side_item">
                            <a href="/common/memberinfo.asp">회원정보변경</a>
                        </li>
                        <li class="side_item">
                            <a href="/common/logout.asp">로그아웃</a>
                        </li>
                    </ul>


                </aside>
            </div>
        </div>
        <a href="#" class="stu_scroll_top"><span>맨 위로 가기</span><i></i></a>
    </header>











<main style="margin-top:0px">


	

<section style="margin-top:0px">
      <div class="stu_inner_wrap" >


		<h3 style="padding-left:10px;padding-top:25px;font-weight:600;font-size:18pt">30일간 여행 <div class="btn-group" style="margin-top:0px;padding-top:0px;">
		             <button type="button" class="btn-u btn-u-dark" style="border-radius:25px;" data-toggle="dropdown" aria-expanded="false">
                            		<span class="fa fa-cog"></span> 관리
                          		  <span class="fa fa-angle-down"></span>
                        		</button>
                        		<ul class="dropdown-menu" role="menu">
			  <li><a href="javascript:openStartDateModal()">출발일변경</a></li>
                        		    <li><a href="javascript:mngPlannerInfo()">정보 수정</a></li>
                        		    <li><a href="/planner/planner_rt.asp?trip_id=10259869">루트 수정</a></li>
                        		    <li><a href="/planner/planner_schd.asp?trip_id=10259869">일정표 관리</a></li>
                        		    <li><a href="/planner/planner_resv.asp?trip_id=10259869">예약정보 관리</a></li>
                        		    <li><a  href="#" id="kakao-link-btn" >카톡 작업공유</a></li>
	
                        		    <li><a href="javascript:delPlan();">플래너 삭제</a></li>
	
                        		</ul>

                    		</div>
		</h3>
		<div style="clear:both"></div>
	

	<div style="padding-top:0px;padding-bottom:10px;">
		<div id="map" style="border:1px solid #e5e5e5;margin-bottom:0px;height:480px;float:left;width:60%"></div>
	<div id="div_tripwith_selector" style="border-radius:5px;z-index:999;display:none;position:absolute;top:73px;width:270px;left:13px;background:#696969"></div>

		<div id="TOP_RIGHT" style="padding-top:5px;padding-left:5px;float:left;width:40%">

			<div id="div_calendar" style="margin-left:10px;"></div>


			<div style="padding-left:5px;padding-bottom:5px;margin-bottom:15px;vertical-align:text-bottom">

		<div style="margin-top:15px;font-size:13pt;padding-top:10px;padding-bottom:10px;padding-left:20px;padding-right:20px;text-align:left;margin-left:30px;margin-right:3px;border:1px solid #efefef;font-weight:500;background:#efefef;color:#fff;border-radius:5px;cursor:pointer" onclick="window.location='detail_schd.asp?trip_id=10259869'"><div style="display:inline-block;line-height:110%;color:#fff;"><i class="fa fa-calendar" aria-hidden="true"></i> 일정표  </div>  <span style="float:right"><font style="font-size:9pt;color:#fff;">5개</font>&nbsp;&nbsp;&nbsp;<i class="fa fa-chevron-right" aria-hidden="true"></i></span></div>

			</div>

		</div>	
		<div style="clear:both"></div>	
	</div>



     </div>
</section>





<script>
function mngPlannerInfo()
{
	$('#modal-Modify').modal();

}
function delPlan()
{


	if(confirm("정말 삭제하시겠습니까?"))
	{
		deleteReal();
	}

}
function getDeleteConfirm()
{
	


		$('#modal-delete-page').modal({
			keyboard: true,
			backdrop: 'static',
			show:true
		});


}
function deleteReal()
{

		$.ajax({
			url: "/api/v5/planner/del_trip.asp",
			type: "GET",
			dataType: 'json',
			data: {
				trip_id:10259869
			},
             	  	success: function(data)
			{
				if(data.result=="ERR")
				{	
					window.history.go(0);					
				}
				else
				{
					
					window.location="/planner/index.asp";
					
				}
			}
		});
}


</script>





           <section style="margin-top:0px;padding-top:0px;padding-bottom:0px;">
	<div class="stu_inner_wrap">
		<div style="border-top:0px solid #efefef;padding-top:0px;width:100%;padding-bottom:5px;padding-top:20px;">


	<div style="float:left;width:25%;">
	<a href="planner_resv_air.asp?trip_id=10259869" style="color:#696969">
	<div style="position:relative;font-size:25pt;padding:5px 10px;border:1px solid #efefef;background:#fff;margin:0px 5px;">
		<i class="fa fa-plane"></i>
		<div style="position:absolute;top:15px;left:60px;font-size:12pt;color:#696969f;font-weight:600">항공권</div>
		<div style="position:absolute;top:10px;left:60px;"><font style="font-size:9pt;color:#c0c0c0;font-weight:500">0만원</font></div>	
	</div>
	</a>
	</div>


	<div style="float:left;width:25%;">
	<a href="planner_resv_trs.asp?trip_id=10259869&ridx=1" style="color:#696969">
	<div style="position:relative;font-size:25pt;padding:5px 10px;border:1px solid #efefef;background:#fff;margin:0px 5px;">
		<i class="fa fa-arrow-right"></i>
		<div style="position:absolute;top:15px;left:60px;font-size:12pt;color:#696969f;font-weight:600">도시이동</div>
		<div style="position:absolute;top:10px;left:60px;"><font style="font-size:9pt;color:#c0c0c0;font-weight:500">0만원</font></div>	
	</div>
	</a>
	</div>


	<div style="float:left;width:25%;">
	<a href="planner_resv_slp.asp?trip_id=10259869&ridx=0" style="color:#696969">
	<div style="position:relative;font-size:25pt;padding:5px 10px;border:1px solid #efefef;background:#fff;margin:0px 5px;">
		<i class="fa fa-bed"></i>
		<div style="position:absolute;top:15px;left:60px;font-size:12pt;color:#696969f;font-weight:600">숙소</div>
		<div style="position:absolute;top:10px;left:60px;"><font style="font-size:9pt;color:#c0c0c0;font-weight:500">0만원</font></div>	
	</div>
	</a>
	</div>


	<div style="float:left;width:25%;">
	<a href="planner_resv_tour.asp?trip_id=10259869&ridx=0" style="color:#696969">
	<div style="position:relative;font-size:25pt;padding:5px 10px;border:1px solid #efefef;background:#fff;margin:0px 5px;">
		<i class="fa fa-flag"></i>
		<div style="position:absolute;top:15px;left:60px;font-size:12pt;color:#696969f;font-weight:600">투어/티켓</div>
		<div style="position:absolute;top:10px;left:60px;"><font style="font-size:9pt;color:#c0c0c0;font-weight:500">0만원</font></div>	
	</div>
	</a>
	</div>

	<div style="clear:both"></div>


		</div>
		<div style="clear:both"></div>

	</div>
	</section>	


            <section style="margin-top:20px;padding-top:0px;padding-bottom:20px;background:#f5f5f5">
	<div class="stu_inner_wrap">
		<div style="border-top:0px solid #efefef;padding-top:20px;width:100%;padding-bottom:5px;padding-top:20px;">
			<div style="float:left;width:25%;" >
				<font style="font-size:18pt;font-weight:700;color:#696969">버킷리스트</font> <font style="font-size:12pt;color:#c0c0c0;"></font><br>

				<br><font style="font-size:10pt;color:#c0c0c0">꼭 경험하고 싶은 것들을 찜해두세요. </font>
			</div>


			<div style="float:left;width:75%">

				<div  class="swiper-container swiper">
				<ul class="nolist swiper-wrapper">




			<li class="swiper-slide" style="background:transparent;width:170px"><a href="explist.asp?region=111031001&trip_id=10259869">

						<div style="position:relative;margin-bottom:5px;">
							<div class="round" style="margin:0px 10px;padding-top:12px;padding-left:20px;padding-right:20px;padding-bottom:28px;position:relative;border:1px solid #efefef;background:#fff">								
								<img src="//www.stubbyplanner.com/img_v14/ico_111031001_2.png" style="width:100%">
							</div>
							<div class="sbold" style="font-size:13px;position:absolute;bottom:15px;width:100%;test-align:center">런던</div>

						</div>
						
						<div><font style="font-size:12pt;color:#696969f;font-weight:700"><i class="fa fa-star"></i><span id="span_bcnt_111031001">0</span></font></div>

				</a></li>



			<li class="swiper-slide" style="background:transparent;width:170px"><a href="explist.asp?region=121011003&trip_id=10259869">

						<div style="position:relative;margin-bottom:5px;">
							<div class="round" style="margin:0px 10px;padding-top:12px;padding-left:20px;padding-right:20px;padding-bottom:28px;position:relative;border:1px solid #efefef;background:#fff">								
								<img src="//www.stubbyplanner.com/img_v14/ico_121011003_2.png" style="width:100%">
							</div>
							<div class="sbold" style="font-size:13px;position:absolute;bottom:15px;width:100%;test-align:center">마드리드</div>

						</div>
						
						<div><font style="font-size:12pt;color:#696969f;font-weight:700"><i class="fa fa-star"></i><span id="span_bcnt_121011003">0</span></font></div>

				</a></li>



			<li class="swiper-slide" style="background:transparent;width:170px"><a href="explist.asp?region=121011002&trip_id=10259869">

						<div style="position:relative;margin-bottom:5px;">
							<div class="round" style="margin:0px 10px;padding-top:12px;padding-left:20px;padding-right:20px;padding-bottom:28px;position:relative;border:1px solid #efefef;background:#fff">								
								<img src="//www.stubbyplanner.com/img_v14/ico_121011002_2.png" style="width:100%">
							</div>
							<div class="sbold" style="font-size:13px;position:absolute;bottom:15px;width:100%;test-align:center">바르셀로나</div>

						</div>
						
						<div><font style="font-size:12pt;color:#696969f;font-weight:700"><i class="fa fa-star"></i><span id="span_bcnt_121011002">5</span></font></div>

				</a></li>



			<li class="swiper-slide" style="background:transparent;width:170px"><a href="explist.asp?region=111041004&trip_id=10259869">

						<div style="position:relative;margin-bottom:5px;">
							<div class="round" style="margin:0px 10px;padding-top:12px;padding-left:20px;padding-right:20px;padding-bottom:28px;position:relative;border:1px solid #efefef;background:#fff">								
								<img src="//www.stubbyplanner.com/img_v14/ico_111041004_2.png" style="width:100%">
							</div>
							<div class="sbold" style="font-size:13px;position:absolute;bottom:15px;width:100%;test-align:center">로마</div>

						</div>
						
						<div><font style="font-size:12pt;color:#696969f;font-weight:700"><i class="fa fa-star"></i><span id="span_bcnt_111041004">0</span></font></div>

				</a></li>



			<li class="swiper-slide" style="background:transparent;width:170px"><a href="explist.asp?region=111041003&trip_id=10259869">

						<div style="position:relative;margin-bottom:5px;">
							<div class="round" style="margin:0px 10px;padding-top:12px;padding-left:20px;padding-right:20px;padding-bottom:28px;position:relative;border:1px solid #efefef;background:#fff">								
								<img src="//www.stubbyplanner.com/img_v14/ico_111041003_2.png" style="width:100%">
							</div>
							<div class="sbold" style="font-size:13px;position:absolute;bottom:15px;width:100%;test-align:center">피렌체</div>

						</div>
						
						<div><font style="font-size:12pt;color:#696969f;font-weight:700"><i class="fa fa-star"></i><span id="span_bcnt_111041003">0</span></font></div>

				</a></li>



			<li class="swiper-slide" style="background:transparent;width:170px"><a href="explist.asp?region=111041006&trip_id=10259869">

						<div style="position:relative;margin-bottom:5px;">
							<div class="round" style="margin:0px 10px;padding-top:12px;padding-left:20px;padding-right:20px;padding-bottom:28px;position:relative;border:1px solid #efefef;background:#fff">								
								<img src="//www.stubbyplanner.com/img_v14/ico_111041006_2.png" style="width:100%">
							</div>
							<div class="sbold" style="font-size:13px;position:absolute;bottom:15px;width:100%;test-align:center">베니스</div>

						</div>
						
						<div><font style="font-size:12pt;color:#696969f;font-weight:700"><i class="fa fa-star"></i><span id="span_bcnt_111041006">0</span></font></div>

				</a></li>



			<li class="swiper-slide" style="background:transparent;width:170px"><a href="explist.asp?region=111061005&trip_id=10259869">

						<div style="position:relative;margin-bottom:5px;">
							<div class="round" style="margin:0px 10px;padding-top:12px;padding-left:20px;padding-right:20px;padding-bottom:28px;position:relative;border:1px solid #efefef;background:#fff">								
								<img src="//www.stubbyplanner.com/img_v14/ico_111061005_2.png" style="width:100%">
							</div>
							<div class="sbold" style="font-size:13px;position:absolute;bottom:15px;width:100%;test-align:center">뮌헨</div>

						</div>
						
						<div><font style="font-size:12pt;color:#696969f;font-weight:700"><i class="fa fa-star"></i><span id="span_bcnt_111061005">0</span></font></div>

				</a></li>



			<li class="swiper-slide" style="background:transparent;width:170px"><a href="explist.asp?region=131041001&trip_id=10259869">

						<div style="position:relative;margin-bottom:5px;">
							<div class="round" style="margin:0px 10px;padding-top:12px;padding-left:20px;padding-right:20px;padding-bottom:28px;position:relative;border:1px solid #efefef;background:#fff">								
								<img src="//www.stubbyplanner.com/img_v14/ico_131041001_2.png" style="width:100%">
							</div>
							<div class="sbold" style="font-size:13px;position:absolute;bottom:15px;width:100%;test-align:center">비엔나(빈)</div>

						</div>
						
						<div><font style="font-size:12pt;color:#696969f;font-weight:700"><i class="fa fa-star"></i><span id="span_bcnt_131041001">0</span></font></div>

				</a></li>



			<li class="swiper-slide" style="background:transparent;width:170px"><a href="explist.asp?region=131021001&trip_id=10259869">

						<div style="position:relative;margin-bottom:5px;">
							<div class="round" style="margin:0px 10px;padding-top:12px;padding-left:20px;padding-right:20px;padding-bottom:28px;position:relative;border:1px solid #efefef;background:#fff">								
								<img src="//www.stubbyplanner.com/img_v14/ico_131021001_2.png" style="width:100%">
							</div>
							<div class="sbold" style="font-size:13px;position:absolute;bottom:15px;width:100%;test-align:center">부다페스트</div>

						</div>
						
						<div><font style="font-size:12pt;color:#696969f;font-weight:700"><i class="fa fa-star"></i><span id="span_bcnt_131021001">0</span></font></div>

				</a></li>



			<li class="swiper-slide" style="background:transparent;width:170px"><a href="explist.asp?region=131011001&trip_id=10259869">

						<div style="position:relative;margin-bottom:5px;">
							<div class="round" style="margin:0px 10px;padding-top:12px;padding-left:20px;padding-right:20px;padding-bottom:28px;position:relative;border:1px solid #efefef;background:#fff">								
								<img src="//www.stubbyplanner.com/img_v14/ico_131011001_2.png" style="width:100%">
							</div>
							<div class="sbold" style="font-size:13px;position:absolute;bottom:15px;width:100%;test-align:center">프라하</div>

						</div>
						
						<div><font style="font-size:12pt;color:#696969f;font-weight:700"><i class="fa fa-star"></i><span id="span_bcnt_131011001">0</span></font></div>

				</a></li>



			<li class="swiper-slide" style="background:transparent;width:170px"><a href="explist.asp?region=111061006&trip_id=10259869">

						<div style="position:relative;margin-bottom:5px;">
							<div class="round" style="margin:0px 10px;padding-top:12px;padding-left:20px;padding-right:20px;padding-bottom:28px;position:relative;border:1px solid #efefef;background:#fff">								
								<img src="//www.stubbyplanner.com/img_v14/ico_111061006_2.png" style="width:100%">
							</div>
							<div class="sbold" style="font-size:13px;position:absolute;bottom:15px;width:100%;test-align:center">프랑크푸르트</div>

						</div>
						
						<div><font style="font-size:12pt;color:#696969f;font-weight:700"><i class="fa fa-star"></i><span id="span_bcnt_111061006">0</span></font></div>

				</a></li>



			<li class="swiper-slide" style="background:transparent;width:170px"><a href="explist.asp?region=111011004&trip_id=10259869">

						<div style="position:relative;margin-bottom:5px;">
							<div class="round" style="margin:0px 10px;padding-top:12px;padding-left:20px;padding-right:20px;padding-bottom:28px;position:relative;border:1px solid #efefef;background:#fff">								
								<img src="//www.stubbyplanner.com/img_v14/ico_111011004_2.png" style="width:100%">
							</div>
							<div class="sbold" style="font-size:13px;position:absolute;bottom:15px;width:100%;test-align:center">파리</div>

						</div>
						
						<div><font style="font-size:12pt;color:#696969f;font-weight:700"><i class="fa fa-star"></i><span id="span_bcnt_111011004">0</span></font></div>

				</a></li>


				</ul>
				</div>
			</div>
			<div style="clear:both"></div>

		</div>
		<div style="clear:both"></div>

	</div>
	</section>	


            <section style="margin-top:20px;padding-top:20px;padding-bottom:0px;">
	<div class="stu_inner_wrap" style="">
<div style="width:66%;float:left">
<font style="font-size:18pt;font-weight:700;color:#696969"> ⚡️ 맞춤 할인투어 추천 <a href="javascript:func_alert('스투비플래너는 유럽 지역의 투어 서비스를 지난 6년간 운영해온 유럽투어 전문 중개업체입니다. 현재 유럽 현지 384개 대표업체 1,700여개 상품을 직거래로 계약해 얼리버드 할인가격을 제공하고 있습니다.  미리 여행을 준비하는 플래너분들을 위한 특별한 가격할인 혜택인 얼리버드를 놓치지 마세요.');"><span style="display:inline-block;padding-left:5px;padding-right:5px;padding-top:3px;padding-bottom:3px;background:#3ad195;font-size:9pt;color:#fff">유럽1,700개 할인상품</span></a></font>
<div style="padding-bottom:5px;"><font style="font-size:13pt;font-weight:400;color:#c0c0c0">미리 사면 <span style="color:#3ad195;font-weight:600"> 얼리버드SALE </span>, 여러개 사면 <span style="color:#3ad195;font-weight:600">결합 SALE </span></font></div>
</div><div style="width:33%;float:left">

<div style="margin-bottom:10px;padding-left:0px;padding-right:10px;text-align:center;">


	<div style="background:#f5f5f5;border:0px solid #c0c0c0;border-radius:8px;padding-top:10px;padding-bottom:10px;padding-left:20px;padding-right:20px;color:#696969;">
		<div style="position:relative;text-align:left;padding-bottom:5px;padding-left:10px;padding-right:10px;"><font style="font-size:13pt;font-weight:700">내 예약내역</font>
				<a  href="/guide/reservation.asp" target="_blank"><div style="position:absolute;right:10px;top:10px;font-size:11pt;color:#696969;"><u>자세히 ></u></div></a>
		</div>


	</div>



</div>
</div><div style="clear:both"></div>

<div >
	<div  class="swiper-container swiper">
	<ul class="nolist swiper-wrapper">



<li class="swiper-slide" style="margin-bottom:0px;margin-top:0px;position:relative;width:29%;float:left;cursor:pointer;margin-bottom:10px;">
<div style="margin-left:5px;margin-right:5px;">


<div style="height:190px;overflow:hidden;position:relative;border-radius:5px;">
<a href="javascript:moveToCityPlanner('111031001')"><img src="http://d3b39vpyptsv01.cloudfront.net/photo/1/2/e0c6526ddbece5b5df458b3edf6eb60d_l.jpg"  style="border-radius:5px;width:100%" onerror="this.src=\'/img_v12/img_er.gif\'"></a>'; 

<div style="position:absolute;top:40px;left:50%;margin-left:-90px;"><a href="javascript:moveToCityPlanner('111031001')"><img width="180px" src="/img_v12/exp_label_111031001.png"></a></div>

<div style="border-radius:5px;position:absolute;bottom:0px;right:0px;width:100%;height:70px;background:linear-gradient(to bottom, rgba(0,0,0,0), rgba(0,0,0,5));">&nbsp;</div>
<div style="position:absolute;top:10px;right:20px;">
	<font style="color:#fff;font-size:18pt;"><i class="fa fa-heart"></i> 0</font>
</div>
<div style="position:absolute;bottom:10px;left:10px;right:10px;">
	<h5 style="padding-left:3px;line-height:100%;padding-bottom:0px;margin-bottom:0px;text-align:center;color:#fff;" >

	<a href="javascript:moveToCityPlanner('111031001')" style="color:#fff;font-size:11pt;font-weight:300" title="">
		
		<i class="fa fa-clock-o" aria-hidden="true"></i> 런던  ⚡️얼리버드 SALE 
		
	</a>
	
	</h5>

</div>
</div>


</div>

</li>



<li class="swiper-slide" style="margin-bottom:0px;margin-top:0px;position:relative;width:29%;float:left;cursor:pointer;margin-bottom:10px;">
<div style="margin-left:5px;margin-right:5px;">


<div style="height:190px;overflow:hidden;position:relative;border-radius:5px;">
<a href="javascript:moveToCityPlanner('121011003')"><img src="http://d3b39vpyptsv01.cloudfront.net/photo/1/2/4bf8e4bfb33794d6ad9a1f4562874a2a_l.jpg"  style="border-radius:5px;width:100%" onerror="this.src=\'/img_v12/img_er.gif\'"></a>'; 

<div style="position:absolute;top:40px;left:50%;margin-left:-90px;"><a href="javascript:moveToCityPlanner('121011003')"><img width="180px" src="/img_v12/exp_label_121011003.png"></a></div>

<div style="border-radius:5px;position:absolute;bottom:0px;right:0px;width:100%;height:70px;background:linear-gradient(to bottom, rgba(0,0,0,0), rgba(0,0,0,5));">&nbsp;</div>
<div style="position:absolute;top:10px;right:20px;">
	<font style="color:#fff;font-size:18pt;"><i class="fa fa-heart"></i> 0</font>
</div>
<div style="position:absolute;bottom:10px;left:10px;right:10px;">
	<h5 style="padding-left:3px;line-height:100%;padding-bottom:0px;margin-bottom:0px;text-align:center;color:#fff;" >

	<a href="javascript:moveToCityPlanner('121011003')" style="color:#fff;font-size:11pt;font-weight:300" title="">
		
		<i class="fa fa-clock-o" aria-hidden="true"></i> 마드리드  ⚡️얼리버드 SALE 
		
	</a>
	
	</h5>

</div>
</div>


</div>

</li>



<li class="swiper-slide" style="margin-bottom:0px;margin-top:0px;position:relative;width:29%;float:left;cursor:pointer;margin-bottom:10px;">
<div style="margin-left:5px;margin-right:5px;">


<div style="height:190px;overflow:hidden;position:relative;border-radius:5px;">
<a href="javascript:moveToCityPlanner('121011002')"><img src="http://d3b39vpyptsv01.cloudfront.net/photo/1/2/611319a269281196f1b23bb4707815e9_l.jpg"  style="border-radius:5px;width:100%" onerror="this.src=\'/img_v12/img_er.gif\'"></a>'; 

<div style="position:absolute;top:40px;left:50%;margin-left:-90px;"><a href="javascript:moveToCityPlanner('121011002')"><img width="180px" src="/img_v12/exp_label_121011002.png"></a></div>

<div style="border-radius:5px;position:absolute;bottom:0px;right:0px;width:100%;height:70px;background:linear-gradient(to bottom, rgba(0,0,0,0), rgba(0,0,0,5));">&nbsp;</div>
<div style="position:absolute;top:10px;right:20px;">
	<font style="color:#fff;font-size:18pt;"><i class="fa fa-heart"></i> 0</font>
</div>
<div style="position:absolute;bottom:10px;left:10px;right:10px;">
	<h5 style="padding-left:3px;line-height:100%;padding-bottom:0px;margin-bottom:0px;text-align:center;color:#fff;" >

	<a href="javascript:moveToCityPlanner('121011002')" style="color:#fff;font-size:11pt;font-weight:300" title="">
		
		<i class="fa fa-clock-o" aria-hidden="true"></i> 바르셀로나  ⚡️얼리버드 SALE 
		
	</a>
	
	</h5>

</div>
</div>


</div>

</li>



<li class="swiper-slide" style="margin-bottom:0px;margin-top:0px;position:relative;width:29%;float:left;cursor:pointer;margin-bottom:10px;">
<div style="margin-left:5px;margin-right:5px;">


<div style="height:190px;overflow:hidden;position:relative;border-radius:5px;">
<a href="javascript:moveToCityPlanner('111041004')"><img src="http://d3b39vpyptsv01.cloudfront.net/photo/1/2/09049d95b76b6e3c32e9f1c1de218db6_l.jpg"  style="border-radius:5px;width:100%" onerror="this.src=\'/img_v12/img_er.gif\'"></a>'; 

<div style="position:absolute;top:40px;left:50%;margin-left:-90px;"><a href="javascript:moveToCityPlanner('111041004')"><img width="180px" src="/img_v12/exp_label_111041004.png"></a></div>

<div style="border-radius:5px;position:absolute;bottom:0px;right:0px;width:100%;height:70px;background:linear-gradient(to bottom, rgba(0,0,0,0), rgba(0,0,0,5));">&nbsp;</div>
<div style="position:absolute;top:10px;right:20px;">
	<font style="color:#fff;font-size:18pt;"><i class="fa fa-heart"></i> 0</font>
</div>
<div style="position:absolute;bottom:10px;left:10px;right:10px;">
	<h5 style="padding-left:3px;line-height:100%;padding-bottom:0px;margin-bottom:0px;text-align:center;color:#fff;" >

	<a href="javascript:moveToCityPlanner('111041004')" style="color:#fff;font-size:11pt;font-weight:300" title="">
		
		<i class="fa fa-clock-o" aria-hidden="true"></i> 로마  ⚡️얼리버드 SALE 
		
	</a>
	
	</h5>

</div>
</div>


</div>

</li>



<li class="swiper-slide" style="margin-bottom:0px;margin-top:0px;position:relative;width:29%;float:left;cursor:pointer;margin-bottom:10px;">
<div style="margin-left:5px;margin-right:5px;">


<div style="height:190px;overflow:hidden;position:relative;border-radius:5px;">
<a href="javascript:moveToCityPlanner('111041003')"><img src="http://d3b39vpyptsv01.cloudfront.net/photo/1/2/4d6a32cb00d88ef3e96657ef69645dbc_l.jpg"  style="border-radius:5px;width:100%" onerror="this.src=\'/img_v12/img_er.gif\'"></a>'; 

<div style="position:absolute;top:40px;left:50%;margin-left:-90px;"><a href="javascript:moveToCityPlanner('111041003')"><img width="180px" src="/img_v12/exp_label_111041003.png"></a></div>

<div style="border-radius:5px;position:absolute;bottom:0px;right:0px;width:100%;height:70px;background:linear-gradient(to bottom, rgba(0,0,0,0), rgba(0,0,0,5));">&nbsp;</div>
<div style="position:absolute;top:10px;right:20px;">
	<font style="color:#fff;font-size:18pt;"><i class="fa fa-heart"></i> 0</font>
</div>
<div style="position:absolute;bottom:10px;left:10px;right:10px;">
	<h5 style="padding-left:3px;line-height:100%;padding-bottom:0px;margin-bottom:0px;text-align:center;color:#fff;" >

	<a href="javascript:moveToCityPlanner('111041003')" style="color:#fff;font-size:11pt;font-weight:300" title="">
		
		<i class="fa fa-clock-o" aria-hidden="true"></i> 피렌체  ⚡️얼리버드 SALE 
		
	</a>
	
	</h5>

</div>
</div>


</div>

</li>



<li class="swiper-slide" style="margin-bottom:0px;margin-top:0px;position:relative;width:29%;float:left;cursor:pointer;margin-bottom:10px;">
<div style="margin-left:5px;margin-right:5px;">


<div style="height:190px;overflow:hidden;position:relative;border-radius:5px;">
<a href="javascript:moveToCityPlanner('111041006')"><img src="http://d3b39vpyptsv01.cloudfront.net/photo/1/2/e96de2bbbaa6efa080ce695b5947d65b_l.jpg"  style="border-radius:5px;width:100%" onerror="this.src=\'/img_v12/img_er.gif\'"></a>'; 

<div style="position:absolute;top:40px;left:50%;margin-left:-90px;"><a href="javascript:moveToCityPlanner('111041006')"><img width="180px" src="/img_v12/exp_label_111041006.png"></a></div>

<div style="border-radius:5px;position:absolute;bottom:0px;right:0px;width:100%;height:70px;background:linear-gradient(to bottom, rgba(0,0,0,0), rgba(0,0,0,5));">&nbsp;</div>
<div style="position:absolute;top:10px;right:20px;">
	<font style="color:#fff;font-size:18pt;"><i class="fa fa-heart"></i> 0</font>
</div>
<div style="position:absolute;bottom:10px;left:10px;right:10px;">
	<h5 style="padding-left:3px;line-height:100%;padding-bottom:0px;margin-bottom:0px;text-align:center;color:#fff;" >

	<a href="javascript:moveToCityPlanner('111041006')" style="color:#fff;font-size:11pt;font-weight:300" title="">
		
		<i class="fa fa-clock-o" aria-hidden="true"></i> 베니스  ⚡️얼리버드 SALE 
		
	</a>
	
	</h5>

</div>
</div>


</div>

</li>



<li class="swiper-slide" style="margin-bottom:0px;margin-top:0px;position:relative;width:29%;float:left;cursor:pointer;margin-bottom:10px;">
<div style="margin-left:5px;margin-right:5px;">


<div style="height:190px;overflow:hidden;position:relative;border-radius:5px;">
<a href="javascript:moveToCityPlanner('111061005')"><img src="http://d3b39vpyptsv01.cloudfront.net/photo/1/2/86c9a566d17bda4856df9f1968e4e785_l.jpg"  style="border-radius:5px;width:100%" onerror="this.src=\'/img_v12/img_er.gif\'"></a>'; 

<div style="position:absolute;top:40px;left:50%;margin-left:-90px;"><a href="javascript:moveToCityPlanner('111061005')"><img width="180px" src="/img_v12/exp_label_111061005.png"></a></div>

<div style="border-radius:5px;position:absolute;bottom:0px;right:0px;width:100%;height:70px;background:linear-gradient(to bottom, rgba(0,0,0,0), rgba(0,0,0,5));">&nbsp;</div>
<div style="position:absolute;top:10px;right:20px;">
	<font style="color:#fff;font-size:18pt;"><i class="fa fa-heart"></i> 0</font>
</div>
<div style="position:absolute;bottom:10px;left:10px;right:10px;">
	<h5 style="padding-left:3px;line-height:100%;padding-bottom:0px;margin-bottom:0px;text-align:center;color:#fff;" >

	<a href="javascript:moveToCityPlanner('111061005')" style="color:#fff;font-size:11pt;font-weight:300" title="">
		
		<i class="fa fa-clock-o" aria-hidden="true"></i> 뮌헨  ⚡️얼리버드 SALE 
		
	</a>
	
	</h5>

</div>
</div>


</div>

</li>



<li class="swiper-slide" style="margin-bottom:0px;margin-top:0px;position:relative;width:29%;float:left;cursor:pointer;margin-bottom:10px;">
<div style="margin-left:5px;margin-right:5px;">


<div style="height:190px;overflow:hidden;position:relative;border-radius:5px;">
<a href="javascript:moveToCityPlanner('131041001')"><img src="http://d3b39vpyptsv01.cloudfront.net/photo/1/2/fcc6e80ef56cf742c1f73b39aca09f7e_l.jpg"  style="border-radius:5px;width:100%" onerror="this.src=\'/img_v12/img_er.gif\'"></a>'; 

<div style="position:absolute;top:40px;left:50%;margin-left:-90px;"><a href="javascript:moveToCityPlanner('131041001')"><img width="180px" src="/img_v12/exp_label_131041001.png"></a></div>

<div style="border-radius:5px;position:absolute;bottom:0px;right:0px;width:100%;height:70px;background:linear-gradient(to bottom, rgba(0,0,0,0), rgba(0,0,0,5));">&nbsp;</div>
<div style="position:absolute;top:10px;right:20px;">
	<font style="color:#fff;font-size:18pt;"><i class="fa fa-heart"></i> 0</font>
</div>
<div style="position:absolute;bottom:10px;left:10px;right:10px;">
	<h5 style="padding-left:3px;line-height:100%;padding-bottom:0px;margin-bottom:0px;text-align:center;color:#fff;" >

	<a href="javascript:moveToCityPlanner('131041001')" style="color:#fff;font-size:11pt;font-weight:300" title="">
		
		<i class="fa fa-clock-o" aria-hidden="true"></i> 비엔나(빈)  ⚡️얼리버드 SALE 
		
	</a>
	
	</h5>

</div>
</div>


</div>

</li>



<li class="swiper-slide" style="margin-bottom:0px;margin-top:0px;position:relative;width:29%;float:left;cursor:pointer;margin-bottom:10px;">
<div style="margin-left:5px;margin-right:5px;">


<div style="height:190px;overflow:hidden;position:relative;border-radius:5px;">
<a href="javascript:moveToCityPlanner('131021001')"><img src="http://d3b39vpyptsv01.cloudfront.net/photo/1/2/073ebc3b817d5087ab6277e327d99d95_l.jpg"  style="border-radius:5px;width:100%" onerror="this.src=\'/img_v12/img_er.gif\'"></a>'; 

<div style="position:absolute;top:40px;left:50%;margin-left:-90px;"><a href="javascript:moveToCityPlanner('131021001')"><img width="180px" src="/img_v12/exp_label_131021001.png"></a></div>

<div style="border-radius:5px;position:absolute;bottom:0px;right:0px;width:100%;height:70px;background:linear-gradient(to bottom, rgba(0,0,0,0), rgba(0,0,0,5));">&nbsp;</div>
<div style="position:absolute;top:10px;right:20px;">
	<font style="color:#fff;font-size:18pt;"><i class="fa fa-heart"></i> 0</font>
</div>
<div style="position:absolute;bottom:10px;left:10px;right:10px;">
	<h5 style="padding-left:3px;line-height:100%;padding-bottom:0px;margin-bottom:0px;text-align:center;color:#fff;" >

	<a href="javascript:moveToCityPlanner('131021001')" style="color:#fff;font-size:11pt;font-weight:300" title="">
		
		<i class="fa fa-clock-o" aria-hidden="true"></i> 부다페스트  ⚡️얼리버드 SALE 
		
	</a>
	
	</h5>

</div>
</div>


</div>

</li>



<li class="swiper-slide" style="margin-bottom:0px;margin-top:0px;position:relative;width:29%;float:left;cursor:pointer;margin-bottom:10px;">
<div style="margin-left:5px;margin-right:5px;">


<div style="height:190px;overflow:hidden;position:relative;border-radius:5px;">
<a href="javascript:moveToCityPlanner('131011001')"><img src="http://d3b39vpyptsv01.cloudfront.net/photo/1/2/5ea58343cd66ca8e9ed5e0730fd5dcfa_l.jpg"  style="border-radius:5px;width:100%" onerror="this.src=\'/img_v12/img_er.gif\'"></a>'; 

<div style="position:absolute;top:40px;left:50%;margin-left:-90px;"><a href="javascript:moveToCityPlanner('131011001')"><img width="180px" src="/img_v12/exp_label_131011001.png"></a></div>

<div style="border-radius:5px;position:absolute;bottom:0px;right:0px;width:100%;height:70px;background:linear-gradient(to bottom, rgba(0,0,0,0), rgba(0,0,0,5));">&nbsp;</div>
<div style="position:absolute;top:10px;right:20px;">
	<font style="color:#fff;font-size:18pt;"><i class="fa fa-heart"></i> 0</font>
</div>
<div style="position:absolute;bottom:10px;left:10px;right:10px;">
	<h5 style="padding-left:3px;line-height:100%;padding-bottom:0px;margin-bottom:0px;text-align:center;color:#fff;" >

	<a href="javascript:moveToCityPlanner('131011001')" style="color:#fff;font-size:11pt;font-weight:300" title="">
		
		<i class="fa fa-clock-o" aria-hidden="true"></i> 프라하  ⚡️얼리버드 SALE 
		
	</a>
	
	</h5>

</div>
</div>


</div>

</li>



<li class="swiper-slide" style="margin-bottom:0px;margin-top:0px;position:relative;width:29%;float:left;cursor:pointer;margin-bottom:10px;">
<div style="margin-left:5px;margin-right:5px;">


<div style="height:190px;overflow:hidden;position:relative;border-radius:5px;">
<a href="javascript:moveToCityPlanner('111061006')"><img src="http://d3b39vpyptsv01.cloudfront.net/photo/1/2/5411ecff8482ab8ff76d58487a549703_l.jpg"  style="border-radius:5px;width:100%" onerror="this.src=\'/img_v12/img_er.gif\'"></a>'; 

<div style="position:absolute;top:40px;left:50%;margin-left:-90px;"><a href="javascript:moveToCityPlanner('111061006')"><img width="180px" src="/img_v12/exp_label_111061006.png"></a></div>

<div style="border-radius:5px;position:absolute;bottom:0px;right:0px;width:100%;height:70px;background:linear-gradient(to bottom, rgba(0,0,0,0), rgba(0,0,0,5));">&nbsp;</div>
<div style="position:absolute;top:10px;right:20px;">
	<font style="color:#fff;font-size:18pt;"><i class="fa fa-heart"></i> 0</font>
</div>
<div style="position:absolute;bottom:10px;left:10px;right:10px;">
	<h5 style="padding-left:3px;line-height:100%;padding-bottom:0px;margin-bottom:0px;text-align:center;color:#fff;" >

	<a href="javascript:moveToCityPlanner('111061006')" style="color:#fff;font-size:11pt;font-weight:300" title="">
		
		<i class="fa fa-clock-o" aria-hidden="true"></i> 프랑크푸르트  ⚡️얼리버드 SALE 
		
	</a>
	
	</h5>

</div>
</div>


</div>

</li>



<li class="swiper-slide" style="margin-bottom:0px;margin-top:0px;position:relative;width:29%;float:left;cursor:pointer;margin-bottom:10px;">
<div style="margin-left:5px;margin-right:5px;">


<div style="height:190px;overflow:hidden;position:relative;border-radius:5px;">
<a href="javascript:moveToCityPlanner('111011004')"><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/8dd49e94be2f1f20057849442b8f5dbf_l.jpg"  style="border-radius:5px;width:100%" onerror="this.src=\'/img_v12/img_er.gif\'"></a>'; 

<div style="position:absolute;top:40px;left:50%;margin-left:-90px;"><a href="javascript:moveToCityPlanner('111011004')"><img width="180px" src="/img_v12/exp_label_111011004.png"></a></div>

<div style="border-radius:5px;position:absolute;bottom:0px;right:0px;width:100%;height:70px;background:linear-gradient(to bottom, rgba(0,0,0,0), rgba(0,0,0,5));">&nbsp;</div>
<div style="position:absolute;top:10px;right:20px;">
	<font style="color:#fff;font-size:18pt;"><i class="fa fa-heart"></i> 1</font>
</div>
<div style="position:absolute;bottom:10px;left:10px;right:10px;">
	<h5 style="padding-left:3px;line-height:100%;padding-bottom:0px;margin-bottom:0px;text-align:center;color:#fff;" >

	<a href="javascript:moveToCityPlanner('111011004')" style="color:#fff;font-size:11pt;font-weight:300" title="">
		
		<i class="fa fa-clock-o" aria-hidden="true"></i> 파리  ⚡️얼리버드 SALE 
		
	</a>
	
	</h5>

</div>
</div>


</div>

</li>



<li class="swiper-slide" style="margin-bottom:0px;margin-top:0px;position:relative;width:29%;float:left;cursor:pointer;margin-bottom:10px;">
<div style="margin-left:5px;margin-right:5px;">


<div style="height:190px;overflow:hidden;position:relative;border-radius:5px;">
<a href="javascript:moveToCityPlanner('121011004')"><img src="http://d3b39vpyptsv01.cloudfront.net/photo/1/2/0dd63996d73781cef668165e6f783ec8_l.jpg"  style="border-radius:5px;width:100%" onerror="this.src=\'/img_v12/img_er.gif\'"></a>'; 

<div style="position:absolute;top:40px;left:50%;margin-left:-90px;"><a href="javascript:moveToCityPlanner('121011004')"><div style="width:180px;padding-top:30px;text-align:center;color:#fff;font-size:25pt;text-align:center;font-weight:400;font-family: 'Monoton', cursive;">Toledo</div></a></div>

<div style="border-radius:5px;position:absolute;bottom:0px;right:0px;width:100%;height:70px;background:linear-gradient(to bottom, rgba(0,0,0,0), rgba(0,0,0,5));">&nbsp;</div>
<div style="position:absolute;top:10px;right:20px;">
	<font style="color:#fff;font-size:18pt;"><i class="fa fa-heart"></i> 0</font>
</div>
<div style="position:absolute;bottom:10px;left:10px;right:10px;">
	<h5 style="padding-left:3px;line-height:100%;padding-bottom:0px;margin-bottom:0px;text-align:center;color:#fff;" >

	<a href="javascript:moveToCityPlanner('121011004')" style="color:#fff;font-size:11pt;font-weight:300" title="">
		
		<i class="fa fa-clock-o" aria-hidden="true"></i> 톨레도  ⚡️얼리버드 SALE 
		
	</a>
	
	</h5>

</div>
</div>


</div>

</li>



<li class="swiper-slide" style="margin-bottom:0px;margin-top:0px;position:relative;width:29%;float:left;cursor:pointer;margin-bottom:10px;">
<div style="margin-left:5px;margin-right:5px;">


<div style="height:190px;overflow:hidden;position:relative;border-radius:5px;">
<a href="javascript:moveToCityPlanner('131041002')"><img src="http://d3b39vpyptsv01.cloudfront.net/photo/1/2/f74c87589b6a7f107f02c76659ba4399_l.jpg"  style="border-radius:5px;width:100%" onerror="this.src=\'/img_v12/img_er.gif\'"></a>'; 

<div style="position:absolute;top:40px;left:50%;margin-left:-90px;"><a href="javascript:moveToCityPlanner('131041002')"><div style="width:180px;padding-top:30px;text-align:center;color:#fff;font-size:25pt;text-align:center;font-weight:400;font-family: 'Monoton', cursive;">Salzburg</div></a></div>

<div style="border-radius:5px;position:absolute;bottom:0px;right:0px;width:100%;height:70px;background:linear-gradient(to bottom, rgba(0,0,0,0), rgba(0,0,0,5));">&nbsp;</div>
<div style="position:absolute;top:10px;right:20px;">
	<font style="color:#fff;font-size:18pt;"><i class="fa fa-heart"></i> 0</font>
</div>
<div style="position:absolute;bottom:10px;left:10px;right:10px;">
	<h5 style="padding-left:3px;line-height:100%;padding-bottom:0px;margin-bottom:0px;text-align:center;color:#fff;" >

	<a href="javascript:moveToCityPlanner('131041002')" style="color:#fff;font-size:11pt;font-weight:300" title="">
		
		<i class="fa fa-clock-o" aria-hidden="true"></i> 잘츠부르크  ⚡️얼리버드 SALE 
		
	</a>
	
	</h5>

</div>
</div>


</div>

</li>



<li class="swiper-slide" style="margin-bottom:0px;margin-top:0px;position:relative;width:29%;float:left;cursor:pointer;margin-bottom:10px;">
<div style="margin-left:5px;margin-right:5px;">


<div style="height:190px;overflow:hidden;position:relative;border-radius:5px;">
<a href="javascript:moveToCityPlanner('131041032')"><img src="http://d3b39vpyptsv01.cloudfront.net/photo/1/2/632a9faaf9f1dfc6d46008ca61383a94_l.jpg"  style="border-radius:5px;width:100%" onerror="this.src=\'/img_v12/img_er.gif\'"></a>'; 

<div style="position:absolute;top:40px;left:50%;margin-left:-90px;"><a href="javascript:moveToCityPlanner('131041032')"><div style="width:180px;padding-top:30px;text-align:center;color:#fff;font-size:25pt;text-align:center;font-weight:400;font-family: 'Monoton', cursive;">Hallstatt</div></a></div>

<div style="border-radius:5px;position:absolute;bottom:0px;right:0px;width:100%;height:70px;background:linear-gradient(to bottom, rgba(0,0,0,0), rgba(0,0,0,5));">&nbsp;</div>
<div style="position:absolute;top:10px;right:20px;">
	<font style="color:#fff;font-size:18pt;"><i class="fa fa-heart"></i> 0</font>
</div>
<div style="position:absolute;bottom:10px;left:10px;right:10px;">
	<h5 style="padding-left:3px;line-height:100%;padding-bottom:0px;margin-bottom:0px;text-align:center;color:#fff;" >

	<a href="javascript:moveToCityPlanner('131041032')" style="color:#fff;font-size:11pt;font-weight:300" title="">
		
		<i class="fa fa-clock-o" aria-hidden="true"></i> 할슈타트  ⚡️얼리버드 SALE 
		
	</a>
	
	</h5>

</div>
</div>


</div>

</li>


</ul>
</div></div>


	</div>
	</section>	


<script>

function moveToCityPlanner2(cityid,rid,tdate,timeoption)
{
	
	showLinkInModal('/planner/planner_city_schd2.asp?selecteddate='+tdate+'&stype=tour&TimeOption='+timeoption+'&trip_id=10259869&l=planner10259869&region='+cityid+'&rid='+rid+'&bucket_ids=1855,1856,492,1858,549&tripwith='+tripwith);
	
}

function moveToCityPlanner(rid,tdate)
{
	
	showLinkInModal('/planner/planner_city_schd2.asp?trip_id=10259869&needlogin=&access_key=&l=planner10259869&region='+rid+'&bucket_ids=1855,1856,492,1858,549&tripwith='+tripwith);
	
}
</script>

            <section >
	<div class="stu_inner_wrap">
		<div style="width:100%;border-radius:3px;border:0px solid #efefef;padding-top:5px;padding-bottom:5px;padding-top:10px;">
			<div style="float:left;width:25%;" >
				<font style="font-size:18pt;font-weight:700;color:#696969">맞춤 숙소 추천</font><br>
				<a href="javascript:func_alert('내가 이용할 역, 공항 그리고 내가 방문할 주요 관광지와 해당도시의 거의 모든 숙소(2,833만개 숙소를 보유하고 있는 BOOKING.com의 모든 숙소)와의 거리를 자동 계산해 동선상 유리한 숙소순으로 정리해 보여드립니다.')"><font style="font-size:14pt;font-weight:400;color:#c0c0c0">내가 선택한 일정에서<br>최적 동선의 숙소 추천</font><font style="font-size:12pt;color:#3ad195"><i class="fa fa-question-circle" aria-hidden="true"></i></font></a>
			</div>


			<div style="float:left;width:75%">
	


				<div  class="swiper-container swiper">






				<ul class="nolist swiper-wrapper">



			<li class="swiper-slide">
				<div class="mbold">런던&nbsp;3박</div>
				<div class="ht_date">6월 8일~6월 11일</div>
			




				<a href="javascript:showLinkInModal('/planner/if_favorite_slp.asp?city_id=111031001&from=planner&trip_id=10259869&checkin=2019-06-08&checkout=2019-06-11')"><div class="hotellink"><font style="color:#c0c0c0"><i class="fa fa-heart"></i></font> 찜한 숙소 <span>0개</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=111031001&trip_id=10259869&checkin=2019-06-08&checkout=2019-06-11&stype=ht')"><div class="hotellink">#호텔 <span>22.7%</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=111031001&trip_id=10259869&checkin=2019-06-08&checkout=2019-06-11&stype=hst')"><div class="hotellink">#호스텔 <span>41.8%</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=111031001&trip_id=10259869&checkin=2019-06-08&checkout=2019-06-11&stype=apt')"><div class="hotellink">#아파트 <span>9.4%</span></div></a>


				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=111031001&trip_id=10259869&checkin=2019-06-08&checkout=2019-06-11&stype=slp')"><div class="hotellink">#한인민박 <span>26.1%</span></div></a>


			</li>




			<li class="swiper-slide">
				<div class="mbold">마드리드&nbsp;2박</div>
				<div class="ht_date">6월 11일~6월 13일</div>
			




				<a href="javascript:showLinkInModal('/planner/if_favorite_slp.asp?city_id=121011003&from=planner&trip_id=10259869&checkin=2019-06-11&checkout=2019-06-13')"><div class="hotellink"><font style="color:#c0c0c0"><i class="fa fa-heart"></i></font> 찜한 숙소 <span>0개</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=121011003&trip_id=10259869&checkin=2019-06-11&checkout=2019-06-13&stype=ht')"><div class="hotellink">#호텔 <span>29.2%</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=121011003&trip_id=10259869&checkin=2019-06-11&checkout=2019-06-13&stype=hst')"><div class="hotellink">#호스텔 <span>47.2%</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=121011003&trip_id=10259869&checkin=2019-06-11&checkout=2019-06-13&stype=apt')"><div class="hotellink">#아파트 <span>9.3%</span></div></a>


				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=121011003&trip_id=10259869&checkin=2019-06-11&checkout=2019-06-13&stype=slp')"><div class="hotellink">#한인민박 <span>14.3%</span></div></a>


			</li>




			<li class="swiper-slide">
				<div class="mbold">마드리드&nbsp;1박</div>
				<div class="ht_date">6월 13일~6월 14일</div>
			




				<a href="javascript:showLinkInModal('/planner/if_favorite_slp.asp?city_id=121011003&from=planner&trip_id=10259869&checkin=2019-06-13&checkout=2019-06-14')"><div class="hotellink"><font style="color:#c0c0c0"><i class="fa fa-heart"></i></font> 찜한 숙소 <span>0개</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=121011003&trip_id=10259869&checkin=2019-06-13&checkout=2019-06-14&stype=ht')"><div class="hotellink">#호텔 <span>29.2%</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=121011003&trip_id=10259869&checkin=2019-06-13&checkout=2019-06-14&stype=hst')"><div class="hotellink">#호스텔 <span>47.2%</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=121011003&trip_id=10259869&checkin=2019-06-13&checkout=2019-06-14&stype=apt')"><div class="hotellink">#아파트 <span>9.3%</span></div></a>


				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=121011003&trip_id=10259869&checkin=2019-06-13&checkout=2019-06-14&stype=slp')"><div class="hotellink">#한인민박 <span>14.3%</span></div></a>


			</li>




			<li class="swiper-slide">
				<div class="mbold">바르셀로나&nbsp;3박</div>
				<div class="ht_date">6월 14일~6월 17일</div>
			




				<a href="javascript:showLinkInModal('/planner/if_favorite_slp.asp?city_id=121011002&from=planner&trip_id=10259869&checkin=2019-06-14&checkout=2019-06-17')"><div class="hotellink"><font style="color:#c0c0c0"><i class="fa fa-heart"></i></font> 찜한 숙소 <span>0개</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=121011002&trip_id=10259869&checkin=2019-06-14&checkout=2019-06-17&stype=ht')"><div class="hotellink">#호텔 <span>29.6%</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=121011002&trip_id=10259869&checkin=2019-06-14&checkout=2019-06-17&stype=hst')"><div class="hotellink">#호스텔 <span>35.5%</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=121011002&trip_id=10259869&checkin=2019-06-14&checkout=2019-06-17&stype=apt')"><div class="hotellink">#아파트 <span>12.6%</span></div></a>


				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=121011002&trip_id=10259869&checkin=2019-06-14&checkout=2019-06-17&stype=slp')"><div class="hotellink">#한인민박 <span>22.3%</span></div></a>


			</li>




			<li class="swiper-slide">
				<div class="mbold">로마&nbsp;3박</div>
				<div class="ht_date">6월 18일~6월 21일</div>
			




				<a href="javascript:showLinkInModal('/planner/if_favorite_slp.asp?city_id=111041004&from=planner&trip_id=10259869&checkin=2019-06-18&checkout=2019-06-21')"><div class="hotellink"><font style="color:#c0c0c0"><i class="fa fa-heart"></i></font> 찜한 숙소 <span>0개</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=111041004&trip_id=10259869&checkin=2019-06-18&checkout=2019-06-21&stype=ht')"><div class="hotellink">#호텔 <span>42.7%</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=111041004&trip_id=10259869&checkin=2019-06-18&checkout=2019-06-21&stype=hst')"><div class="hotellink">#호스텔 <span>20.9%</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=111041004&trip_id=10259869&checkin=2019-06-18&checkout=2019-06-21&stype=apt')"><div class="hotellink">#아파트 <span>10.2%</span></div></a>


				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=111041004&trip_id=10259869&checkin=2019-06-18&checkout=2019-06-21&stype=slp')"><div class="hotellink">#한인민박 <span>26.2%</span></div></a>


			</li>




			<li class="swiper-slide">
				<div class="mbold">피렌체&nbsp;1박</div>
				<div class="ht_date">6월 21일~6월 22일</div>
			




				<a href="javascript:showLinkInModal('/planner/if_favorite_slp.asp?city_id=111041003&from=planner&trip_id=10259869&checkin=2019-06-21&checkout=2019-06-22')"><div class="hotellink"><font style="color:#c0c0c0"><i class="fa fa-heart"></i></font> 찜한 숙소 <span>0개</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=111041003&trip_id=10259869&checkin=2019-06-21&checkout=2019-06-22&stype=ht')"><div class="hotellink">#호텔 <span>41.1%</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=111041003&trip_id=10259869&checkin=2019-06-21&checkout=2019-06-22&stype=hst')"><div class="hotellink">#호스텔 <span>25.4%</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=111041003&trip_id=10259869&checkin=2019-06-21&checkout=2019-06-22&stype=apt')"><div class="hotellink">#아파트 <span>12.4%</span></div></a>


				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=111041003&trip_id=10259869&checkin=2019-06-21&checkout=2019-06-22&stype=slp')"><div class="hotellink">#한인민박 <span>21.1%</span></div></a>


			</li>




			<li class="swiper-slide">
				<div class="mbold">베니스&nbsp;1박</div>
				<div class="ht_date">6월 22일~6월 23일</div>
			




				<a href="javascript:showLinkInModal('/planner/if_favorite_slp.asp?city_id=111041006&from=planner&trip_id=10259869&checkin=2019-06-22&checkout=2019-06-23')"><div class="hotellink"><font style="color:#c0c0c0"><i class="fa fa-heart"></i></font> 찜한 숙소 <span>0개</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=111041006&trip_id=10259869&checkin=2019-06-22&checkout=2019-06-23&stype=ht')"><div class="hotellink">#호텔 <span>45.2%</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=111041006&trip_id=10259869&checkin=2019-06-22&checkout=2019-06-23&stype=hst')"><div class="hotellink">#호스텔 <span>20.8%</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=111041006&trip_id=10259869&checkin=2019-06-22&checkout=2019-06-23&stype=apt')"><div class="hotellink">#아파트 <span>9.9%</span></div></a>


				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=111041006&trip_id=10259869&checkin=2019-06-22&checkout=2019-06-23&stype=slp')"><div class="hotellink">#한인민박 <span>24.1%</span></div></a>


			</li>




			<li class="swiper-slide">
				<div class="mbold">뮌헨&nbsp;1박</div>
				<div class="ht_date">6월 23일~6월 24일</div>
			




				<a href="javascript:showLinkInModal('/planner/if_favorite_slp.asp?city_id=111061005&from=planner&trip_id=10259869&checkin=2019-06-23&checkout=2019-06-24')"><div class="hotellink"><font style="color:#c0c0c0"><i class="fa fa-heart"></i></font> 찜한 숙소 <span>0개</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=111061005&trip_id=10259869&checkin=2019-06-23&checkout=2019-06-24&stype=ht')"><div class="hotellink">#호텔 <span>50.4%</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=111061005&trip_id=10259869&checkin=2019-06-23&checkout=2019-06-24&stype=hst')"><div class="hotellink">#호스텔 <span>38.3%</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=111061005&trip_id=10259869&checkin=2019-06-23&checkout=2019-06-24&stype=apt')"><div class="hotellink">#아파트 <span>5.2%</span></div></a>


				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=111061005&trip_id=10259869&checkin=2019-06-23&checkout=2019-06-24&stype=slp')"><div class="hotellink">#한인민박 <span>6%</span></div></a>


			</li>




			<li class="swiper-slide">
				<div class="mbold">잘츠부르크&nbsp;1박</div>
				<div class="ht_date">6월 24일~6월 25일</div>
			




				<a href="javascript:showLinkInModal('/planner/if_favorite_slp.asp?city_id=131041002&from=planner&trip_id=10259869&checkin=2019-06-24&checkout=2019-06-25')"><div class="hotellink"><font style="color:#c0c0c0"><i class="fa fa-heart"></i></font> 찜한 숙소 <span>0개</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=131041002&trip_id=10259869&checkin=2019-06-24&checkout=2019-06-25&stype=ht')"><div class="hotellink">#호텔 <span>45.1%</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=131041002&trip_id=10259869&checkin=2019-06-24&checkout=2019-06-25&stype=hst')"><div class="hotellink">#호스텔 <span>40.6%</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=131041002&trip_id=10259869&checkin=2019-06-24&checkout=2019-06-25&stype=apt')"><div class="hotellink">#아파트 <span>6.3%</span></div></a>



			</li>




			<li class="swiper-slide">
				<div class="mbold">할슈타트&nbsp;1박</div>
				<div class="ht_date">6월 25일~6월 26일</div>
			




				<a href="javascript:showLinkInModal('/planner/if_favorite_slp.asp?city_id=131041032&from=planner&trip_id=10259869&checkin=2019-06-25&checkout=2019-06-26')"><div class="hotellink"><font style="color:#c0c0c0"><i class="fa fa-heart"></i></font> 찜한 숙소 <span>0개</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=131041032&trip_id=10259869&checkin=2019-06-25&checkout=2019-06-26&stype=ht')"><div class="hotellink">#호텔 </div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=131041032&trip_id=10259869&checkin=2019-06-25&checkout=2019-06-26&stype=hst')"><div class="hotellink">#호스텔 </div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=131041032&trip_id=10259869&checkin=2019-06-25&checkout=2019-06-26&stype=apt')"><div class="hotellink">#아파트 </div></a>



			</li>




			<li class="swiper-slide">
				<div class="mbold">비엔나(빈)&nbsp;2박</div>
				<div class="ht_date">6월 26일~6월 28일</div>
			




				<a href="javascript:showLinkInModal('/planner/if_favorite_slp.asp?city_id=131041001&from=planner&trip_id=10259869&checkin=2019-06-26&checkout=2019-06-28')"><div class="hotellink"><font style="color:#c0c0c0"><i class="fa fa-heart"></i></font> 찜한 숙소 <span>0개</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=131041001&trip_id=10259869&checkin=2019-06-26&checkout=2019-06-28&stype=ht')"><div class="hotellink">#호텔 <span>46.8%</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=131041001&trip_id=10259869&checkin=2019-06-26&checkout=2019-06-28&stype=hst')"><div class="hotellink">#호스텔 <span>24.3%</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=131041001&trip_id=10259869&checkin=2019-06-26&checkout=2019-06-28&stype=apt')"><div class="hotellink">#아파트 <span>15.9%</span></div></a>


				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=131041001&trip_id=10259869&checkin=2019-06-26&checkout=2019-06-28&stype=slp')"><div class="hotellink">#한인민박 <span>13%</span></div></a>


			</li>




			<li class="swiper-slide">
				<div class="mbold">부다페스트&nbsp;1박</div>
				<div class="ht_date">6월 28일~6월 29일</div>
			




				<a href="javascript:showLinkInModal('/planner/if_favorite_slp.asp?city_id=131021001&from=planner&trip_id=10259869&checkin=2019-06-28&checkout=2019-06-29')"><div class="hotellink"><font style="color:#c0c0c0"><i class="fa fa-heart"></i></font> 찜한 숙소 <span>0개</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=131021001&trip_id=10259869&checkin=2019-06-28&checkout=2019-06-29&stype=ht')"><div class="hotellink">#호텔 <span>35.6%</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=131021001&trip_id=10259869&checkin=2019-06-28&checkout=2019-06-29&stype=hst')"><div class="hotellink">#호스텔 <span>24.1%</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=131021001&trip_id=10259869&checkin=2019-06-28&checkout=2019-06-29&stype=apt')"><div class="hotellink">#아파트 <span>27.8%</span></div></a>


				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=131021001&trip_id=10259869&checkin=2019-06-28&checkout=2019-06-29&stype=slp')"><div class="hotellink">#한인민박 <span>12.5%</span></div></a>


			</li>




			<li class="swiper-slide">
				<div class="mbold">프라하&nbsp;3박</div>
				<div class="ht_date">6월 29일~7월 2일</div>
			




				<a href="javascript:showLinkInModal('/planner/if_favorite_slp.asp?city_id=131011001&from=planner&trip_id=10259869&checkin=2019-06-29&checkout=2019-07-02')"><div class="hotellink"><font style="color:#c0c0c0"><i class="fa fa-heart"></i></font> 찜한 숙소 <span>0개</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=131011001&trip_id=10259869&checkin=2019-06-29&checkout=2019-07-02&stype=ht')"><div class="hotellink">#호텔 <span>35.8%</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=131011001&trip_id=10259869&checkin=2019-06-29&checkout=2019-07-02&stype=hst')"><div class="hotellink">#호스텔 <span>20.4%</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=131011001&trip_id=10259869&checkin=2019-06-29&checkout=2019-07-02&stype=apt')"><div class="hotellink">#아파트 <span>20.4%</span></div></a>


				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=131011001&trip_id=10259869&checkin=2019-06-29&checkout=2019-07-02&stype=slp')"><div class="hotellink">#한인민박 <span>23.3%</span></div></a>


			</li>




			<li class="swiper-slide">
				<div class="mbold">프랑크푸르트&nbsp;1박</div>
				<div class="ht_date">7월 2일~7월 3일</div>
			




				<a href="javascript:showLinkInModal('/planner/if_favorite_slp.asp?city_id=111061006&from=planner&trip_id=10259869&checkin=2019-07-02&checkout=2019-07-03')"><div class="hotellink"><font style="color:#c0c0c0"><i class="fa fa-heart"></i></font> 찜한 숙소 <span>0개</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=111061006&trip_id=10259869&checkin=2019-07-02&checkout=2019-07-03&stype=ht')"><div class="hotellink">#호텔 </div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=111061006&trip_id=10259869&checkin=2019-07-02&checkout=2019-07-03&stype=hst')"><div class="hotellink">#호스텔 </div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=111061006&trip_id=10259869&checkin=2019-07-02&checkout=2019-07-03&stype=apt')"><div class="hotellink">#아파트 </div></a>


				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=111061006&trip_id=10259869&checkin=2019-07-02&checkout=2019-07-03&stype=slp')"><div class="hotellink">#한인민박 </div></a>


			</li>




			<li class="swiper-slide">
				<div class="mbold">파리&nbsp;4박</div>
				<div class="ht_date">7월 3일~7월 7일</div>
			




				<a href="javascript:showLinkInModal('/planner/if_favorite_slp.asp?city_id=111011004&from=planner&trip_id=10259869&checkin=2019-07-03&checkout=2019-07-07')"><div class="hotellink"><font style="color:#c0c0c0"><i class="fa fa-heart"></i></font> 찜한 숙소 <span>0개</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=111011004&trip_id=10259869&checkin=2019-07-03&checkout=2019-07-07&stype=ht')"><div class="hotellink">#호텔 <span>33.6%</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=111011004&trip_id=10259869&checkin=2019-07-03&checkout=2019-07-07&stype=hst')"><div class="hotellink">#호스텔 <span>15.2%</span></div></a>

				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=111011004&trip_id=10259869&checkin=2019-07-03&checkout=2019-07-07&stype=apt')"><div class="hotellink">#아파트 <span>16.5%</span></div></a>


				<a href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=111011004&trip_id=10259869&checkin=2019-07-03&checkout=2019-07-07&stype=slp')"><div class="hotellink">#한인민박 <span>34.8%</span></div></a>


			</li>




				</ul>
				</div>


	<div style="margin-bottom:10px;padding-left:10px;"><a href="javascript:func_alert('추천받은 인기 숙소는 가격이 점차 상승하거나 예약이 불가능해지므로 미리 예약할수록 유리합니다.')"><font style="font-size:10pt;color:#c0c0c0">내 일정에 맞는 숙소를 빠르게 찾고 미리 예약해 17%의 비용을 절감하세요. </font><font style="font-size:12pt;color:#3ad195"><i class="fa fa-question-circle" aria-hidden="true"></i></font> </a></div>



			</div>
			<div style="clear:both"></div>

		</div>
		<div style="clear:both"></div>

	</div>
	</section>	

<script>
function openSLP(turl)
{
	
	window.open(turl+'&tripwith='+tripwith+'&bucket_ids=1855,1856,492,1858,549');
	
	
}
</script>



            <section style="margin-top:40px">
	<div class="stu_inner_wrap">
		<div style="width:100%;border-radius:3px;border:0px solid #efefef;padding-top:5px;padding-bottom:5px;border-top:1px solid #efefef;padding-top:30px;">
			<div style="margin-bottom:15px" >
				<font style="font-size:18pt;font-weight:700;color:#696969"> 일정표 </font>
				<div><font style="font-size:14pt;font-weight:400;color:#c0c0c0">빈칸을 더블클릭해서 일정을 추가해보세요.</font></div>
			</div>
			<div style="overflow-x:auto">
				<div  class="swiper-container swiper">
				<ul class="nolist swiper-wrapper">

				<li class="swiper-slide" style="border-right:1px solid #efefef;">
						<div class="sbold" style="text-align:left;padding-left:5px;font-size:12pt;color:#696969;">6/8  <span style="font-size:10pt;color:#c0c0c0"> 토, D1</span></div>
						<div style="height:68px;font-size:10pt;text-align:left;padding-left:5px;color:#696969;padding-bottom:5px;">


<div style="line-height:110%;height:32px;">런던(입국일)</div>



<input type="hidden" id="dayExtInfo_cid_1" value="111031001">
<input type="hidden" id="dayExtInfo_mm_1" value="M1">


<div style="margin-top:3px;padding-left:5px;padding-right:5px;"><a class="btn-u  btn-u-default" href="javascript:showLinkInModal('daymap.asp?trip_id=10259869&theday=1&citylist=111031001')" style="width:95%;text-align:center;margin-right:5px;margin-left:5px;background:#3ad195;color:#fff;border-radius:15px"><i class="fa fa-map"></i> DAY MAP</a></div>

						</div>
						<div style="position:relative">
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(1,8,'6월 8일 (1일차)  0~9시의 일정 <br>런던입국일','111031001');">0~9 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_1_8"></div></div>

						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(1,9,'6월 8일 (1일차) 9시경의 일정 <br>런던입국일','111031001');">9<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_1_9"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(1,10,'6월 8일 (1일차) 10시경의 일정 <br>런던입국일','111031001');">10<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_1_10"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(1,11,'6월 8일 (1일차) 11시경의 일정 <br>런던입국일','111031001');">11<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_1_11"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(1,12,'6월 8일 (1일차) 12시경의 일정 <br>런던입국일','111031001');">12<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_1_12"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(1,13,'6월 8일 (1일차) 13시경의 일정 <br>런던입국일','111031001');">13<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_1_13"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(1,14,'6월 8일 (1일차) 14시경의 일정 <br>런던입국일','111031001');">14<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_1_14"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(1,15,'6월 8일 (1일차) 15시경의 일정 <br>런던입국일','111031001');">15<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_1_15"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(1,16,'6월 8일 (1일차) 16시경의 일정 <br>런던입국일','111031001');">16<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_1_16"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(1,17,'6월 8일 (1일차) 17시경의 일정 <br>런던입국일','111031001');">17<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_1_17"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(1,18,'6월 8일 (1일차) 18시경의 일정 <br>런던입국일','111031001');">18<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_1_18"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(1,19,'6월 8일 (1일차) 19시경의 일정 <br>런던입국일','111031001');">19<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_1_19"></div></div>						
						

							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(1,20,'6월 8일 (1일차)  20~24시의 일정 <br>런던입국일','111031001');">20~24 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_1_20"></div></div>



							<a href="/planner/planner_resv_air_m.asp?trip_id=10259869"><div style="cursor:pointer;position:absolute;left:25%;top:-2px;z-index:999;background:#f3f3f3;height:34px;width:70%;border:1px solid #c0c0c0;font-size:8pt;color:#c0c0c0"><b>입국</b> </div></a>


						</div>
						
						
						<div style="border-top:1px solid #efefef;height:75px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;">숙소</div>


				</li>

				<li class="swiper-slide" style="border-right:1px solid #efefef;">
						<div class="sbold" style="text-align:left;padding-left:5px;font-size:12pt;color:#696969;">6/9  <span style="font-size:10pt;color:#c0c0c0"> 일, D2</span></div>
						<div style="height:68px;font-size:10pt;text-align:left;padding-left:5px;color:#696969;padding-bottom:5px;">


<div style="line-height:110%;height:32px;">런던(둘째날)</div>


<input type="hidden" id="dayExtInfo_cid_2" value="">


<div style="margin-top:3px;padding-left:5px;padding-right:5px;"><a class="btn-u  btn-u-default" href="javascript:showLinkInModal('daymap.asp?trip_id=10259869&theday=2&citylist=111031001')" style="width:95%;text-align:center;margin-right:5px;margin-left:5px;background:#3ad195;color:#fff;border-radius:15px"><i class="fa fa-map"></i> DAY MAP</a></div>

						</div>
						<div style="position:relative">
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(2,8,'6월 9일 (2일차)  0~9시의 일정 <br>런던둘째날','111031001');">0~9 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_2_8"></div></div>

						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(2,9,'6월 9일 (2일차) 9시경의 일정 <br>런던둘째날','111031001');">9<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_2_9"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(2,10,'6월 9일 (2일차) 10시경의 일정 <br>런던둘째날','111031001');">10<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_2_10"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(2,11,'6월 9일 (2일차) 11시경의 일정 <br>런던둘째날','111031001');">11<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_2_11"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(2,12,'6월 9일 (2일차) 12시경의 일정 <br>런던둘째날','111031001');">12<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_2_12"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(2,13,'6월 9일 (2일차) 13시경의 일정 <br>런던둘째날','111031001');">13<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_2_13"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(2,14,'6월 9일 (2일차) 14시경의 일정 <br>런던둘째날','111031001');">14<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_2_14"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(2,15,'6월 9일 (2일차) 15시경의 일정 <br>런던둘째날','111031001');">15<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_2_15"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(2,16,'6월 9일 (2일차) 16시경의 일정 <br>런던둘째날','111031001');">16<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_2_16"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(2,17,'6월 9일 (2일차) 17시경의 일정 <br>런던둘째날','111031001');">17<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_2_17"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(2,18,'6월 9일 (2일차) 18시경의 일정 <br>런던둘째날','111031001');">18<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_2_18"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(2,19,'6월 9일 (2일차) 19시경의 일정 <br>런던둘째날','111031001');">19<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_2_19"></div></div>						
						

							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(2,20,'6월 9일 (2일차)  20~24시의 일정 <br>런던둘째날','111031001');">20~24 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_2_20"></div></div>



							<a class="helper_day_2" href="javascript:moveToCityPlanner2('111031001','','2019-06-09',1)"><div style="position:absolute;left:55%;top:35px;z-index:999;cursor:pointer;height:80px;width:40%;border-right:5px solid #c0c0c0;font-size:8pt;color:#c0c0c0;text-align:right;padding-right:8px;font-weight:400">2일차<br>오전투어<br>추천&nbsp;<font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></div></a>
<!--							<a class="helper_day_2" href="javascript:moveToCityPlanner2('111031001','','2019-06-09',0)"><div style="position:absolute;left:55%;top:120px;z-index:999;background:#c0c0c0;cursor:pointer;height:30px;width:40%;border:1px solid #c0c0c0;font-size:8pt;color:#fff">점심</div></a>-->
							<a class="helper_day_2" href="javascript:moveToCityPlanner2('111031001','','2019-06-09',2)"><div style="position:absolute;left:55%;top:155px;z-index:999;cursor:pointer;height:140px;width:40%;border-right:5px solid #c0c0c0;font-size:8pt;color:#c0c0c0;text-align:right;padding-right:8px;font-weight:400">2일차<br>오후투어<br>추천&nbsp;<font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></div></a>
<!--							<a class="helper_day_2" href="/market/index_city.asp?l=planner10259869&stype=guidebook_4&region=111031001&rid=&trip_id=10259869" target="_blank"><div style="position:absolute;left:55%;top:300px;z-index:999;background:#c0c0c0;cursor:pointer;height:30px;width:40%;border:1px solid #c0c0c0;font-size:8pt;color:#fff">저녁식사</div></a>-->
							<a class="helper_day_2" href="javascript:moveToCityPlanner2('111031001','','2019-06-09',3)"><div style="position:absolute;left:55%;top:335px;z-index:999;cursor:pointer;height:55px;width:40%;border-right:5px solid #c0c0c0;font-size:8pt;color:#c0c0c0;text-align:right;padding-right:8px;font-weight:400">2일차<br>저녁투어<br>추천&nbsp;<font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></div></a>



						</div>
						
						
						<div style="border-top:1px solid #efefef;height:75px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;">숙소</div>


				</li>

				<li class="swiper-slide" style="border-right:1px solid #efefef;">
						<div class="sbold" style="text-align:left;padding-left:5px;font-size:12pt;color:#696969;">6/10  <span style="font-size:10pt;color:#c0c0c0"> 월, D3</span></div>
						<div style="height:68px;font-size:10pt;text-align:left;padding-left:5px;color:#696969;padding-bottom:5px;">


<div style="line-height:110%;height:32px;">런던(셋째날)</div>


<input type="hidden" id="dayExtInfo_cid_3" value="">


<div style="margin-top:3px;padding-left:5px;padding-right:5px;"><a class="btn-u  btn-u-default" href="javascript:showLinkInModal('daymap.asp?trip_id=10259869&theday=3&citylist=111031001')" style="width:95%;text-align:center;margin-right:5px;margin-left:5px;background:#3ad195;color:#fff;border-radius:15px"><i class="fa fa-map"></i> DAY MAP</a></div>

						</div>
						<div style="position:relative">
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(3,8,'6월 10일 (3일차)  0~9시의 일정 <br>런던셋째날','111031001');">0~9 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_3_8"></div></div>

						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(3,9,'6월 10일 (3일차) 9시경의 일정 <br>런던셋째날','111031001');">9<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_3_9"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(3,10,'6월 10일 (3일차) 10시경의 일정 <br>런던셋째날','111031001');">10<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_3_10"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(3,11,'6월 10일 (3일차) 11시경의 일정 <br>런던셋째날','111031001');">11<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_3_11"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(3,12,'6월 10일 (3일차) 12시경의 일정 <br>런던셋째날','111031001');">12<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_3_12"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(3,13,'6월 10일 (3일차) 13시경의 일정 <br>런던셋째날','111031001');">13<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_3_13"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(3,14,'6월 10일 (3일차) 14시경의 일정 <br>런던셋째날','111031001');">14<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_3_14"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(3,15,'6월 10일 (3일차) 15시경의 일정 <br>런던셋째날','111031001');">15<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_3_15"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(3,16,'6월 10일 (3일차) 16시경의 일정 <br>런던셋째날','111031001');">16<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_3_16"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(3,17,'6월 10일 (3일차) 17시경의 일정 <br>런던셋째날','111031001');">17<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_3_17"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(3,18,'6월 10일 (3일차) 18시경의 일정 <br>런던셋째날','111031001');">18<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_3_18"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(3,19,'6월 10일 (3일차) 19시경의 일정 <br>런던셋째날','111031001');">19<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_3_19"></div></div>						
						

							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(3,20,'6월 10일 (3일차)  20~24시의 일정 <br>런던셋째날','111031001');">20~24 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_3_20"></div></div>



							<a class="helper_day_3" href="javascript:moveToCityPlanner2('111031001','','2019-06-10',4)"><div style="position:absolute;left:55%;top:35px;z-index:999;cursor:pointer;height:320px;width:40%;border-right:5px solid #c0c0c0;font-size:8pt;color:#c0c0c0;text-align:right;padding-right:8px;font-weight:400">3일차<br>DAY투어<br>근교투어<br>추천&nbsp;<font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></div></a>


						</div>
						
						
						<div style="border-top:1px solid #efefef;height:75px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;">숙소</div>


				</li>

				<li class="swiper-slide" style="border-right:1px solid #efefef;">
						<div class="sbold" style="text-align:left;padding-left:5px;font-size:12pt;color:#696969;">6/11  <span style="font-size:10pt;color:#c0c0c0"> 화, D4</span></div>
						<div style="height:68px;font-size:10pt;text-align:left;padding-left:5px;color:#696969;padding-bottom:5px;">


<div style="line-height:110%;height:32px;">런던,마드리드(도착일)</div>



<input type="hidden" id="dayExtInfo_cid_4" value="121011003">
<input type="hidden" id="dayExtInfo_mm_4" value="M1">


<div style="margin-top:3px;padding-left:5px;padding-right:5px;"><a class="btn-u  btn-u-default" href="javascript:showLinkInModal('daymap.asp?trip_id=10259869&theday=4&citylist=111031001,121011003')" style="width:95%;text-align:center;margin-right:5px;margin-left:5px;background:#3ad195;color:#fff;border-radius:15px"><i class="fa fa-map"></i> DAY MAP</a></div>

						</div>
						<div style="position:relative">
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(4,8,'6월 11일 (4일차)  0~9시의 일정 <br>런던,마드리드도착일','111031001,121011003');">0~9 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_4_8"></div></div>

						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(4,9,'6월 11일 (4일차) 9시경의 일정 <br>런던,마드리드도착일','111031001,121011003');">9<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_4_9"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(4,10,'6월 11일 (4일차) 10시경의 일정 <br>런던,마드리드도착일','111031001,121011003');">10<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_4_10"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(4,11,'6월 11일 (4일차) 11시경의 일정 <br>런던,마드리드도착일','111031001,121011003');">11<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_4_11"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(4,12,'6월 11일 (4일차) 12시경의 일정 <br>런던,마드리드도착일','111031001,121011003');">12<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_4_12"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(4,13,'6월 11일 (4일차) 13시경의 일정 <br>런던,마드리드도착일','111031001,121011003');">13<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_4_13"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(4,14,'6월 11일 (4일차) 14시경의 일정 <br>런던,마드리드도착일','111031001,121011003');">14<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_4_14"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(4,15,'6월 11일 (4일차) 15시경의 일정 <br>런던,마드리드도착일','111031001,121011003');">15<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_4_15"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(4,16,'6월 11일 (4일차) 16시경의 일정 <br>런던,마드리드도착일','111031001,121011003');">16<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_4_16"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(4,17,'6월 11일 (4일차) 17시경의 일정 <br>런던,마드리드도착일','111031001,121011003');">17<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_4_17"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(4,18,'6월 11일 (4일차) 18시경의 일정 <br>런던,마드리드도착일','111031001,121011003');">18<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_4_18"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(4,19,'6월 11일 (4일차) 19시경의 일정 <br>런던,마드리드도착일','111031001,121011003');">19<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_4_19"></div></div>						
						

							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(4,20,'6월 11일 (4일차)  20~24시의 일정 <br>런던,마드리드도착일','111031001,121011003');">20~24 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_4_20"></div></div>



<!---
							<div style="position:absolute;left:25%;top:135px;z-index:999;background:#f3f3f3;height:180px;width:70%;border:1px solid #c0c0c0;font-size:8pt;color:#c0c0c0">도시이동</div>
--->


						</div>
						
						
						<div style="border-top:1px solid #efefef;height:75px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;">숙소</div>


				</li>

				<li class="swiper-slide" style="border-right:1px solid #efefef;">
						<div class="sbold" style="text-align:left;padding-left:5px;font-size:12pt;color:#696969;">6/12  <span style="font-size:10pt;color:#c0c0c0"> 수, D5</span></div>
						<div style="height:68px;font-size:10pt;text-align:left;padding-left:5px;color:#696969;padding-bottom:5px;">


<div style="line-height:110%;height:32px;">마드리드(둘째날)</div>


<input type="hidden" id="dayExtInfo_cid_5" value="">


<div style="margin-top:3px;padding-left:5px;padding-right:5px;"><a class="btn-u  btn-u-default" href="javascript:showLinkInModal('daymap.asp?trip_id=10259869&theday=5&citylist=121011003')" style="width:95%;text-align:center;margin-right:5px;margin-left:5px;background:#3ad195;color:#fff;border-radius:15px"><i class="fa fa-map"></i> DAY MAP</a></div>

						</div>
						<div style="position:relative">
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(5,8,'6월 12일 (5일차)  0~9시의 일정 <br>마드리드둘째날','121011003');">0~9 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_5_8"></div></div>

						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(5,9,'6월 12일 (5일차) 9시경의 일정 <br>마드리드둘째날','121011003');">9<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_5_9"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(5,10,'6월 12일 (5일차) 10시경의 일정 <br>마드리드둘째날','121011003');">10<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_5_10"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(5,11,'6월 12일 (5일차) 11시경의 일정 <br>마드리드둘째날','121011003');">11<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_5_11"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(5,12,'6월 12일 (5일차) 12시경의 일정 <br>마드리드둘째날','121011003');">12<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_5_12"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(5,13,'6월 12일 (5일차) 13시경의 일정 <br>마드리드둘째날','121011003');">13<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_5_13"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(5,14,'6월 12일 (5일차) 14시경의 일정 <br>마드리드둘째날','121011003');">14<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_5_14"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(5,15,'6월 12일 (5일차) 15시경의 일정 <br>마드리드둘째날','121011003');">15<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_5_15"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(5,16,'6월 12일 (5일차) 16시경의 일정 <br>마드리드둘째날','121011003');">16<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_5_16"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(5,17,'6월 12일 (5일차) 17시경의 일정 <br>마드리드둘째날','121011003');">17<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_5_17"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(5,18,'6월 12일 (5일차) 18시경의 일정 <br>마드리드둘째날','121011003');">18<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_5_18"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(5,19,'6월 12일 (5일차) 19시경의 일정 <br>마드리드둘째날','121011003');">19<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_5_19"></div></div>						
						

							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(5,20,'6월 12일 (5일차)  20~24시의 일정 <br>마드리드둘째날','121011003');">20~24 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_5_20"></div></div>



							<a class="helper_day_5" href="javascript:moveToCityPlanner2('121011003','','2019-06-12',1)"><div style="position:absolute;left:55%;top:35px;z-index:999;cursor:pointer;height:80px;width:40%;border-right:5px solid #c0c0c0;font-size:8pt;color:#c0c0c0;text-align:right;padding-right:8px;font-weight:400">2일차<br>오전투어<br>추천&nbsp;<font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></div></a>
<!--							<a class="helper_day_5" href="javascript:moveToCityPlanner2('121011003','','2019-06-12',0)"><div style="position:absolute;left:55%;top:120px;z-index:999;background:#c0c0c0;cursor:pointer;height:30px;width:40%;border:1px solid #c0c0c0;font-size:8pt;color:#fff">점심</div></a>-->
							<a class="helper_day_5" href="javascript:moveToCityPlanner2('121011003','','2019-06-12',2)"><div style="position:absolute;left:55%;top:155px;z-index:999;cursor:pointer;height:140px;width:40%;border-right:5px solid #c0c0c0;font-size:8pt;color:#c0c0c0;text-align:right;padding-right:8px;font-weight:400">2일차<br>오후투어<br>추천&nbsp;<font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></div></a>
<!--							<a class="helper_day_5" href="/market/index_city.asp?l=planner10259869&stype=guidebook_4&region=121011003&rid=&trip_id=10259869" target="_blank"><div style="position:absolute;left:55%;top:300px;z-index:999;background:#c0c0c0;cursor:pointer;height:30px;width:40%;border:1px solid #c0c0c0;font-size:8pt;color:#fff">저녁식사</div></a>-->
							<a class="helper_day_5" href="javascript:moveToCityPlanner2('121011003','','2019-06-12',3)"><div style="position:absolute;left:55%;top:335px;z-index:999;cursor:pointer;height:55px;width:40%;border-right:5px solid #c0c0c0;font-size:8pt;color:#c0c0c0;text-align:right;padding-right:8px;font-weight:400">2일차<br>저녁투어<br>추천&nbsp;<font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></div></a>



						</div>
						
						
						<div style="border-top:1px solid #efefef;height:75px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;">숙소</div>


				</li>

				<li class="swiper-slide" style="border-right:1px solid #efefef;">
						<div class="sbold" style="text-align:left;padding-left:5px;font-size:12pt;color:#696969;">6/13  <span style="font-size:10pt;color:#c0c0c0"> 목, D6</span></div>
						<div style="height:68px;font-size:10pt;text-align:left;padding-left:5px;color:#696969;padding-bottom:5px;">


<div style="line-height:110%;height:32px;">마드리드,톨레도,마드리드(도착일)</div>



<input type="hidden" id="dayExtInfo_cid_6" value="121011003">
<input type="hidden" id="dayExtInfo_mm_6" value="M1">


<div style="margin-top:3px;padding-left:5px;padding-right:5px;"><a class="btn-u  btn-u-default" href="javascript:showLinkInModal('daymap.asp?trip_id=10259869&theday=6&citylist=121011003,121011004,121011003')" style="width:95%;text-align:center;margin-right:5px;margin-left:5px;background:#3ad195;color:#fff;border-radius:15px"><i class="fa fa-map"></i> DAY MAP</a></div>

						</div>
						<div style="position:relative">
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(6,8,'6월 13일 (6일차)  0~9시의 일정 <br>마드리드,톨레도,마드리드도착일','121011003,121011004,121011003');">0~9 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_6_8"></div></div>

						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(6,9,'6월 13일 (6일차) 9시경의 일정 <br>마드리드,톨레도,마드리드도착일','121011003,121011004,121011003');">9<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_6_9"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(6,10,'6월 13일 (6일차) 10시경의 일정 <br>마드리드,톨레도,마드리드도착일','121011003,121011004,121011003');">10<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_6_10"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(6,11,'6월 13일 (6일차) 11시경의 일정 <br>마드리드,톨레도,마드리드도착일','121011003,121011004,121011003');">11<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_6_11"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(6,12,'6월 13일 (6일차) 12시경의 일정 <br>마드리드,톨레도,마드리드도착일','121011003,121011004,121011003');">12<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_6_12"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(6,13,'6월 13일 (6일차) 13시경의 일정 <br>마드리드,톨레도,마드리드도착일','121011003,121011004,121011003');">13<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_6_13"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(6,14,'6월 13일 (6일차) 14시경의 일정 <br>마드리드,톨레도,마드리드도착일','121011003,121011004,121011003');">14<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_6_14"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(6,15,'6월 13일 (6일차) 15시경의 일정 <br>마드리드,톨레도,마드리드도착일','121011003,121011004,121011003');">15<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_6_15"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(6,16,'6월 13일 (6일차) 16시경의 일정 <br>마드리드,톨레도,마드리드도착일','121011003,121011004,121011003');">16<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_6_16"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(6,17,'6월 13일 (6일차) 17시경의 일정 <br>마드리드,톨레도,마드리드도착일','121011003,121011004,121011003');">17<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_6_17"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(6,18,'6월 13일 (6일차) 18시경의 일정 <br>마드리드,톨레도,마드리드도착일','121011003,121011004,121011003');">18<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_6_18"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(6,19,'6월 13일 (6일차) 19시경의 일정 <br>마드리드,톨레도,마드리드도착일','121011003,121011004,121011003');">19<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_6_19"></div></div>						
						

							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(6,20,'6월 13일 (6일차)  20~24시의 일정 <br>마드리드,톨레도,마드리드도착일','121011003,121011004,121011003');">20~24 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_6_20"></div></div>



<!---
							<div style="position:absolute;left:25%;top:135px;z-index:999;background:#f3f3f3;height:180px;width:70%;border:1px solid #c0c0c0;font-size:8pt;color:#c0c0c0">도시이동</div>
--->


						</div>
						
						
						<div style="border-top:1px solid #efefef;height:75px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;">숙소</div>


				</li>

				<li class="swiper-slide" style="border-right:1px solid #efefef;">
						<div class="sbold" style="text-align:left;padding-left:5px;font-size:12pt;color:#696969;">6/14  <span style="font-size:10pt;color:#c0c0c0"> 금, D7</span></div>
						<div style="height:68px;font-size:10pt;text-align:left;padding-left:5px;color:#696969;padding-bottom:5px;">


<div style="line-height:110%;height:32px;">마드리드,바르셀로나(도착일)</div>



<input type="hidden" id="dayExtInfo_cid_7" value="121011002">
<input type="hidden" id="dayExtInfo_mm_7" value="M1">


<div style="margin-top:3px;padding-left:5px;padding-right:5px;"><a class="btn-u  btn-u-default" href="javascript:showLinkInModal('daymap.asp?trip_id=10259869&theday=7&citylist=121011003,121011002')" style="width:95%;text-align:center;margin-right:5px;margin-left:5px;background:#3ad195;color:#fff;border-radius:15px"><i class="fa fa-map"></i> DAY MAP</a></div>

						</div>
						<div style="position:relative">
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(7,8,'6월 14일 (7일차)  0~9시의 일정 <br>마드리드,바르셀로나도착일','121011003,121011002');">0~9 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_7_8"></div></div>

						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(7,9,'6월 14일 (7일차) 9시경의 일정 <br>마드리드,바르셀로나도착일','121011003,121011002');">9<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_7_9"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(7,10,'6월 14일 (7일차) 10시경의 일정 <br>마드리드,바르셀로나도착일','121011003,121011002');">10<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_7_10"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(7,11,'6월 14일 (7일차) 11시경의 일정 <br>마드리드,바르셀로나도착일','121011003,121011002');">11<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_7_11"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(7,12,'6월 14일 (7일차) 12시경의 일정 <br>마드리드,바르셀로나도착일','121011003,121011002');">12<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_7_12"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(7,13,'6월 14일 (7일차) 13시경의 일정 <br>마드리드,바르셀로나도착일','121011003,121011002');">13<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_7_13"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(7,14,'6월 14일 (7일차) 14시경의 일정 <br>마드리드,바르셀로나도착일','121011003,121011002');">14<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_7_14"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(7,15,'6월 14일 (7일차) 15시경의 일정 <br>마드리드,바르셀로나도착일','121011003,121011002');">15<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_7_15"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(7,16,'6월 14일 (7일차) 16시경의 일정 <br>마드리드,바르셀로나도착일','121011003,121011002');">16<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_7_16"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(7,17,'6월 14일 (7일차) 17시경의 일정 <br>마드리드,바르셀로나도착일','121011003,121011002');">17<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_7_17"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(7,18,'6월 14일 (7일차) 18시경의 일정 <br>마드리드,바르셀로나도착일','121011003,121011002');">18<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_7_18"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(7,19,'6월 14일 (7일차) 19시경의 일정 <br>마드리드,바르셀로나도착일','121011003,121011002');">19<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_7_19"></div></div>						
						

							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(7,20,'6월 14일 (7일차)  20~24시의 일정 <br>마드리드,바르셀로나도착일','121011003,121011002');">20~24 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_7_20"></div></div>



<!---
							<div style="position:absolute;left:25%;top:135px;z-index:999;background:#f3f3f3;height:180px;width:70%;border:1px solid #c0c0c0;font-size:8pt;color:#c0c0c0">도시이동</div>
--->


						</div>
						
						
						<div style="border-top:1px solid #efefef;height:75px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;">숙소</div>


				</li>

				<li class="swiper-slide" style="border-right:1px solid #efefef;">
						<div class="sbold" style="text-align:left;padding-left:5px;font-size:12pt;color:#696969;">6/15  <span style="font-size:10pt;color:#c0c0c0"> 토, D8</span></div>
						<div style="height:68px;font-size:10pt;text-align:left;padding-left:5px;color:#696969;padding-bottom:5px;">


<div style="line-height:110%;height:32px;">바르셀로나(둘째날)</div>


<input type="hidden" id="dayExtInfo_cid_8" value="">


<div style="margin-top:3px;padding-left:5px;padding-right:5px;"><a class="btn-u  btn-u-default" href="javascript:showLinkInModal('daymap.asp?trip_id=10259869&theday=8&citylist=121011002')" style="width:95%;text-align:center;margin-right:5px;margin-left:5px;background:#3ad195;color:#fff;border-radius:15px"><i class="fa fa-map"></i> DAY MAP</a></div>

						</div>
						<div style="position:relative">
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(8,8,'6월 15일 (8일차)  0~9시의 일정 <br>바르셀로나둘째날','121011002');">0~9 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_8_8"></div></div>

						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(8,9,'6월 15일 (8일차) 9시경의 일정 <br>바르셀로나둘째날','121011002');">9<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_8_9"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(8,10,'6월 15일 (8일차) 10시경의 일정 <br>바르셀로나둘째날','121011002');">10<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_8_10"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(8,11,'6월 15일 (8일차) 11시경의 일정 <br>바르셀로나둘째날','121011002');">11<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_8_11"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(8,12,'6월 15일 (8일차) 12시경의 일정 <br>바르셀로나둘째날','121011002');">12<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_8_12"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(8,13,'6월 15일 (8일차) 13시경의 일정 <br>바르셀로나둘째날','121011002');">13<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_8_13"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(8,14,'6월 15일 (8일차) 14시경의 일정 <br>바르셀로나둘째날','121011002');">14<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_8_14"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(8,15,'6월 15일 (8일차) 15시경의 일정 <br>바르셀로나둘째날','121011002');">15<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_8_15"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(8,16,'6월 15일 (8일차) 16시경의 일정 <br>바르셀로나둘째날','121011002');">16<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_8_16"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(8,17,'6월 15일 (8일차) 17시경의 일정 <br>바르셀로나둘째날','121011002');">17<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_8_17"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(8,18,'6월 15일 (8일차) 18시경의 일정 <br>바르셀로나둘째날','121011002');">18<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_8_18"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(8,19,'6월 15일 (8일차) 19시경의 일정 <br>바르셀로나둘째날','121011002');">19<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_8_19"></div></div>						
						

							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(8,20,'6월 15일 (8일차)  20~24시의 일정 <br>바르셀로나둘째날','121011002');">20~24 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_8_20"></div></div>



							<a class="helper_day_8" href="javascript:moveToCityPlanner2('121011002','','2019-06-15',1)"><div style="position:absolute;left:55%;top:35px;z-index:999;cursor:pointer;height:80px;width:40%;border-right:5px solid #c0c0c0;font-size:8pt;color:#c0c0c0;text-align:right;padding-right:8px;font-weight:400">2일차<br>오전투어<br>추천&nbsp;<font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></div></a>
<!--							<a class="helper_day_8" href="javascript:moveToCityPlanner2('121011002','','2019-06-15',0)"><div style="position:absolute;left:55%;top:120px;z-index:999;background:#c0c0c0;cursor:pointer;height:30px;width:40%;border:1px solid #c0c0c0;font-size:8pt;color:#fff">점심</div></a>-->
							<a class="helper_day_8" href="javascript:moveToCityPlanner2('121011002','','2019-06-15',2)"><div style="position:absolute;left:55%;top:155px;z-index:999;cursor:pointer;height:140px;width:40%;border-right:5px solid #c0c0c0;font-size:8pt;color:#c0c0c0;text-align:right;padding-right:8px;font-weight:400">2일차<br>오후투어<br>추천&nbsp;<font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></div></a>
<!--							<a class="helper_day_8" href="/market/index_city.asp?l=planner10259869&stype=guidebook_4&region=121011002&rid=&trip_id=10259869" target="_blank"><div style="position:absolute;left:55%;top:300px;z-index:999;background:#c0c0c0;cursor:pointer;height:30px;width:40%;border:1px solid #c0c0c0;font-size:8pt;color:#fff">저녁식사</div></a>-->
							<a class="helper_day_8" href="javascript:moveToCityPlanner2('121011002','','2019-06-15',3)"><div style="position:absolute;left:55%;top:335px;z-index:999;cursor:pointer;height:55px;width:40%;border-right:5px solid #c0c0c0;font-size:8pt;color:#c0c0c0;text-align:right;padding-right:8px;font-weight:400">2일차<br>저녁투어<br>추천&nbsp;<font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></div></a>



						</div>
						
						
						<div style="border-top:1px solid #efefef;height:75px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;">숙소</div>


				</li>

				<li class="swiper-slide" style="border-right:1px solid #efefef;">
						<div class="sbold" style="text-align:left;padding-left:5px;font-size:12pt;color:#696969;">6/16  <span style="font-size:10pt;color:#c0c0c0"> 일, D9</span></div>
						<div style="height:68px;font-size:10pt;text-align:left;padding-left:5px;color:#696969;padding-bottom:5px;">


<div style="line-height:110%;height:32px;">바르셀로나(셋째날)</div>


<input type="hidden" id="dayExtInfo_cid_9" value="">


<div style="margin-top:3px;padding-left:5px;padding-right:5px;"><a class="btn-u  btn-u-default" href="javascript:showLinkInModal('daymap.asp?trip_id=10259869&theday=9&citylist=121011002')" style="width:95%;text-align:center;margin-right:5px;margin-left:5px;background:#3ad195;color:#fff;border-radius:15px"><i class="fa fa-map"></i> DAY MAP</a></div>

						</div>
						<div style="position:relative">
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(9,8,'6월 16일 (9일차)  0~9시의 일정 <br>바르셀로나셋째날','121011002');">0~9 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_9_8"></div></div>

						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(9,9,'6월 16일 (9일차) 9시경의 일정 <br>바르셀로나셋째날','121011002');">9<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_9_9"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(9,10,'6월 16일 (9일차) 10시경의 일정 <br>바르셀로나셋째날','121011002');">10<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_9_10"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(9,11,'6월 16일 (9일차) 11시경의 일정 <br>바르셀로나셋째날','121011002');">11<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_9_11"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(9,12,'6월 16일 (9일차) 12시경의 일정 <br>바르셀로나셋째날','121011002');">12<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_9_12"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(9,13,'6월 16일 (9일차) 13시경의 일정 <br>바르셀로나셋째날','121011002');">13<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_9_13"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(9,14,'6월 16일 (9일차) 14시경의 일정 <br>바르셀로나셋째날','121011002');">14<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_9_14"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(9,15,'6월 16일 (9일차) 15시경의 일정 <br>바르셀로나셋째날','121011002');">15<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_9_15"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(9,16,'6월 16일 (9일차) 16시경의 일정 <br>바르셀로나셋째날','121011002');">16<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_9_16"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(9,17,'6월 16일 (9일차) 17시경의 일정 <br>바르셀로나셋째날','121011002');">17<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_9_17"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(9,18,'6월 16일 (9일차) 18시경의 일정 <br>바르셀로나셋째날','121011002');">18<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_9_18"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(9,19,'6월 16일 (9일차) 19시경의 일정 <br>바르셀로나셋째날','121011002');">19<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_9_19"></div></div>						
						

							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(9,20,'6월 16일 (9일차)  20~24시의 일정 <br>바르셀로나셋째날','121011002');">20~24 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_9_20"></div></div>



							<a class="helper_day_9" href="javascript:moveToCityPlanner2('121011002','','2019-06-16',4)"><div style="position:absolute;left:55%;top:35px;z-index:999;cursor:pointer;height:320px;width:40%;border-right:5px solid #c0c0c0;font-size:8pt;color:#c0c0c0;text-align:right;padding-right:8px;font-weight:400">3일차<br>DAY투어<br>근교투어<br>추천&nbsp;<font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></div></a>


						</div>
						
						
						<div style="border-top:1px solid #efefef;height:75px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;">숙소</div>


				</li>

				<li class="swiper-slide" style="border-right:1px solid #efefef;">
						<div class="sbold" style="text-align:left;padding-left:5px;font-size:12pt;color:#696969;">6/17  <span style="font-size:10pt;color:#c0c0c0"> 월, D10</span></div>
						<div style="height:68px;font-size:10pt;text-align:left;padding-left:5px;color:#696969;padding-bottom:5px;">


<div style="line-height:110%;height:32px;">바르셀로나(넷째날)</div>


<input type="hidden" id="dayExtInfo_cid_10" value="">


<div style="margin-top:3px;padding-left:5px;padding-right:5px;"><a class="btn-u  btn-u-default" href="javascript:showLinkInModal('daymap.asp?trip_id=10259869&theday=10&citylist=121011002')" style="width:95%;text-align:center;margin-right:5px;margin-left:5px;background:#3ad195;color:#fff;border-radius:15px"><i class="fa fa-map"></i> DAY MAP</a></div>

						</div>
						<div style="position:relative">
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(10,8,'6월 17일 (10일차)  0~9시의 일정 <br>바르셀로나넷째날','121011002');">0~9 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_10_8"></div></div>

						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(10,9,'6월 17일 (10일차) 9시경의 일정 <br>바르셀로나넷째날','121011002');">9<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_10_9"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(10,10,'6월 17일 (10일차) 10시경의 일정 <br>바르셀로나넷째날','121011002');">10<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_10_10"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(10,11,'6월 17일 (10일차) 11시경의 일정 <br>바르셀로나넷째날','121011002');">11<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_10_11"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(10,12,'6월 17일 (10일차) 12시경의 일정 <br>바르셀로나넷째날','121011002');">12<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_10_12"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(10,13,'6월 17일 (10일차) 13시경의 일정 <br>바르셀로나넷째날','121011002');">13<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_10_13"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(10,14,'6월 17일 (10일차) 14시경의 일정 <br>바르셀로나넷째날','121011002');">14<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_10_14"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(10,15,'6월 17일 (10일차) 15시경의 일정 <br>바르셀로나넷째날','121011002');">15<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_10_15"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(10,16,'6월 17일 (10일차) 16시경의 일정 <br>바르셀로나넷째날','121011002');">16<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_10_16"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(10,17,'6월 17일 (10일차) 17시경의 일정 <br>바르셀로나넷째날','121011002');">17<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_10_17"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(10,18,'6월 17일 (10일차) 18시경의 일정 <br>바르셀로나넷째날','121011002');">18<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_10_18"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(10,19,'6월 17일 (10일차) 19시경의 일정 <br>바르셀로나넷째날','121011002');">19<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_10_19"></div></div>						
						

							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(10,20,'6월 17일 (10일차)  20~24시의 일정 <br>바르셀로나넷째날','121011002');">20~24 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_10_20"></div></div>



							<a class="helper_day_10" href="javascript:moveToCityPlanner2('121011002','','2019-06-17',1)"><div style="position:absolute;left:55%;top:35px;z-index:999;cursor:pointer;height:80px;width:40%;border-right:5px solid #c0c0c0;font-size:8pt;color:#c0c0c0;text-align:right;padding-right:8px;font-weight:400">4일차<br>오전투어<br>추천&nbsp;<font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></div></a>
<!--							<a class="helper_day_10" href="javascript:moveToCityPlanner2('121011002','','2019-06-17',0)"><div style="position:absolute;left:55%;top:120px;z-index:999;background:#c0c0c0;cursor:pointer;height:30px;width:40%;border:1px solid #c0c0c0;font-size:8pt;color:#fff">점심</div></a>-->
							<a class="helper_day_10" href="javascript:moveToCityPlanner2('121011002','','2019-06-17',2)"><div style="position:absolute;left:55%;top:155px;z-index:999;cursor:pointer;height:140px;width:40%;border-right:5px solid #c0c0c0;font-size:8pt;color:#c0c0c0;text-align:right;padding-right:8px;font-weight:400">4일차<br>오후투어<br>추천&nbsp;<font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></div></a>
<!--							<a class="helper_day_10" href="/market/index_city.asp?l=planner10259869&stype=guidebook_4&region=121011002&rid=&trip_id=10259869" target="_blank"><div style="position:absolute;left:55%;top:300px;z-index:999;background:#c0c0c0;cursor:pointer;height:30px;width:40%;border:1px solid #c0c0c0;font-size:8pt;color:#fff">저녁식사</div></a>-->
							<a class="helper_day_10" href="javascript:moveToCityPlanner2('121011002','','2019-06-17',3)"><div style="position:absolute;left:55%;top:335px;z-index:999;cursor:pointer;height:55px;width:40%;border-right:5px solid #c0c0c0;font-size:8pt;color:#c0c0c0;text-align:right;padding-right:8px;font-weight:400">4일차<br>저녁투어<br>추천&nbsp;<font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></div></a>



						</div>
						
						
						<div style="border-top:1px solid #efefef;height:75px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;">숙소</div>


				</li>

				<li class="swiper-slide" style="border-right:1px solid #efefef;">
						<div class="sbold" style="text-align:left;padding-left:5px;font-size:12pt;color:#696969;">6/18  <span style="font-size:10pt;color:#c0c0c0"> 화, D11</span></div>
						<div style="height:68px;font-size:10pt;text-align:left;padding-left:5px;color:#696969;padding-bottom:5px;">


<div style="line-height:110%;height:32px;">로마(둘째날)</div>


<input type="hidden" id="dayExtInfo_cid_11" value="">


<div style="margin-top:3px;padding-left:5px;padding-right:5px;"><a class="btn-u  btn-u-default" href="javascript:showLinkInModal('daymap.asp?trip_id=10259869&theday=11&citylist=111041004')" style="width:95%;text-align:center;margin-right:5px;margin-left:5px;background:#3ad195;color:#fff;border-radius:15px"><i class="fa fa-map"></i> DAY MAP</a></div>

						</div>
						<div style="position:relative">
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(11,8,'6월 18일 (11일차)  0~9시의 일정 <br>로마둘째날','111041004');">0~9 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_11_8"></div></div>

						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(11,9,'6월 18일 (11일차) 9시경의 일정 <br>로마둘째날','111041004');">9<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_11_9"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(11,10,'6월 18일 (11일차) 10시경의 일정 <br>로마둘째날','111041004');">10<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_11_10"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(11,11,'6월 18일 (11일차) 11시경의 일정 <br>로마둘째날','111041004');">11<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_11_11"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(11,12,'6월 18일 (11일차) 12시경의 일정 <br>로마둘째날','111041004');">12<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_11_12"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(11,13,'6월 18일 (11일차) 13시경의 일정 <br>로마둘째날','111041004');">13<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_11_13"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(11,14,'6월 18일 (11일차) 14시경의 일정 <br>로마둘째날','111041004');">14<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_11_14"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(11,15,'6월 18일 (11일차) 15시경의 일정 <br>로마둘째날','111041004');">15<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_11_15"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(11,16,'6월 18일 (11일차) 16시경의 일정 <br>로마둘째날','111041004');">16<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_11_16"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(11,17,'6월 18일 (11일차) 17시경의 일정 <br>로마둘째날','111041004');">17<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_11_17"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(11,18,'6월 18일 (11일차) 18시경의 일정 <br>로마둘째날','111041004');">18<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_11_18"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(11,19,'6월 18일 (11일차) 19시경의 일정 <br>로마둘째날','111041004');">19<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_11_19"></div></div>						
						

							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(11,20,'6월 18일 (11일차)  20~24시의 일정 <br>로마둘째날','111041004');">20~24 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_11_20"></div></div>



							<a class="helper_day_11" href="javascript:moveToCityPlanner2('111041004','','2019-06-18',1)"><div style="position:absolute;left:55%;top:35px;z-index:999;cursor:pointer;height:80px;width:40%;border-right:5px solid #c0c0c0;font-size:8pt;color:#c0c0c0;text-align:right;padding-right:8px;font-weight:400">2일차<br>오전투어<br>추천&nbsp;<font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></div></a>
<!--							<a class="helper_day_11" href="javascript:moveToCityPlanner2('111041004','','2019-06-18',0)"><div style="position:absolute;left:55%;top:120px;z-index:999;background:#c0c0c0;cursor:pointer;height:30px;width:40%;border:1px solid #c0c0c0;font-size:8pt;color:#fff">점심</div></a>-->
							<a class="helper_day_11" href="javascript:moveToCityPlanner2('111041004','','2019-06-18',2)"><div style="position:absolute;left:55%;top:155px;z-index:999;cursor:pointer;height:140px;width:40%;border-right:5px solid #c0c0c0;font-size:8pt;color:#c0c0c0;text-align:right;padding-right:8px;font-weight:400">2일차<br>오후투어<br>추천&nbsp;<font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></div></a>
<!--							<a class="helper_day_11" href="/market/index_city.asp?l=planner10259869&stype=guidebook_4&region=111041004&rid=&trip_id=10259869" target="_blank"><div style="position:absolute;left:55%;top:300px;z-index:999;background:#c0c0c0;cursor:pointer;height:30px;width:40%;border:1px solid #c0c0c0;font-size:8pt;color:#fff">저녁식사</div></a>-->
							<a class="helper_day_11" href="javascript:moveToCityPlanner2('111041004','','2019-06-18',3)"><div style="position:absolute;left:55%;top:335px;z-index:999;cursor:pointer;height:55px;width:40%;border-right:5px solid #c0c0c0;font-size:8pt;color:#c0c0c0;text-align:right;padding-right:8px;font-weight:400">2일차<br>저녁투어<br>추천&nbsp;<font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></div></a>



						</div>
						
						
						<div style="border-top:1px solid #efefef;height:75px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;">숙소</div>


				</li>

				<li class="swiper-slide" style="border-right:1px solid #efefef;">
						<div class="sbold" style="text-align:left;padding-left:5px;font-size:12pt;color:#696969;">6/19  <span style="font-size:10pt;color:#c0c0c0"> 수, D12</span></div>
						<div style="height:68px;font-size:10pt;text-align:left;padding-left:5px;color:#696969;padding-bottom:5px;">


<div style="line-height:110%;height:32px;">로마(셋째날)</div>


<input type="hidden" id="dayExtInfo_cid_12" value="">


<div style="margin-top:3px;padding-left:5px;padding-right:5px;"><a class="btn-u  btn-u-default" href="javascript:showLinkInModal('daymap.asp?trip_id=10259869&theday=12&citylist=111041004')" style="width:95%;text-align:center;margin-right:5px;margin-left:5px;background:#3ad195;color:#fff;border-radius:15px"><i class="fa fa-map"></i> DAY MAP</a></div>

						</div>
						<div style="position:relative">
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(12,8,'6월 19일 (12일차)  0~9시의 일정 <br>로마셋째날','111041004');">0~9 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_12_8"></div></div>

						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(12,9,'6월 19일 (12일차) 9시경의 일정 <br>로마셋째날','111041004');">9<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_12_9"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(12,10,'6월 19일 (12일차) 10시경의 일정 <br>로마셋째날','111041004');">10<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_12_10"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(12,11,'6월 19일 (12일차) 11시경의 일정 <br>로마셋째날','111041004');">11<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_12_11"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(12,12,'6월 19일 (12일차) 12시경의 일정 <br>로마셋째날','111041004');">12<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_12_12"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(12,13,'6월 19일 (12일차) 13시경의 일정 <br>로마셋째날','111041004');">13<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_12_13"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(12,14,'6월 19일 (12일차) 14시경의 일정 <br>로마셋째날','111041004');">14<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_12_14"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(12,15,'6월 19일 (12일차) 15시경의 일정 <br>로마셋째날','111041004');">15<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_12_15"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(12,16,'6월 19일 (12일차) 16시경의 일정 <br>로마셋째날','111041004');">16<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_12_16"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(12,17,'6월 19일 (12일차) 17시경의 일정 <br>로마셋째날','111041004');">17<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_12_17"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(12,18,'6월 19일 (12일차) 18시경의 일정 <br>로마셋째날','111041004');">18<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_12_18"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(12,19,'6월 19일 (12일차) 19시경의 일정 <br>로마셋째날','111041004');">19<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_12_19"></div></div>						
						

							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(12,20,'6월 19일 (12일차)  20~24시의 일정 <br>로마셋째날','111041004');">20~24 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_12_20"></div></div>



							<a class="helper_day_12" href="javascript:moveToCityPlanner2('111041004','','2019-06-19',4)"><div style="position:absolute;left:55%;top:35px;z-index:999;cursor:pointer;height:320px;width:40%;border-right:5px solid #c0c0c0;font-size:8pt;color:#c0c0c0;text-align:right;padding-right:8px;font-weight:400">3일차<br>DAY투어<br>근교투어<br>추천&nbsp;<font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></div></a>


						</div>
						
						
						<div style="border-top:1px solid #efefef;height:75px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;">숙소</div>


				</li>

				<li class="swiper-slide" style="border-right:1px solid #efefef;">
						<div class="sbold" style="text-align:left;padding-left:5px;font-size:12pt;color:#696969;">6/20  <span style="font-size:10pt;color:#c0c0c0"> 목, D13</span></div>
						<div style="height:68px;font-size:10pt;text-align:left;padding-left:5px;color:#696969;padding-bottom:5px;">


<div style="line-height:110%;height:32px;">로마(넷째날)</div>


<input type="hidden" id="dayExtInfo_cid_13" value="">


<div style="margin-top:3px;padding-left:5px;padding-right:5px;"><a class="btn-u  btn-u-default" href="javascript:showLinkInModal('daymap.asp?trip_id=10259869&theday=13&citylist=111041004')" style="width:95%;text-align:center;margin-right:5px;margin-left:5px;background:#3ad195;color:#fff;border-radius:15px"><i class="fa fa-map"></i> DAY MAP</a></div>

						</div>
						<div style="position:relative">
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(13,8,'6월 20일 (13일차)  0~9시의 일정 <br>로마넷째날','111041004');">0~9 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_13_8"></div></div>

						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(13,9,'6월 20일 (13일차) 9시경의 일정 <br>로마넷째날','111041004');">9<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_13_9"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(13,10,'6월 20일 (13일차) 10시경의 일정 <br>로마넷째날','111041004');">10<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_13_10"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(13,11,'6월 20일 (13일차) 11시경의 일정 <br>로마넷째날','111041004');">11<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_13_11"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(13,12,'6월 20일 (13일차) 12시경의 일정 <br>로마넷째날','111041004');">12<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_13_12"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(13,13,'6월 20일 (13일차) 13시경의 일정 <br>로마넷째날','111041004');">13<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_13_13"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(13,14,'6월 20일 (13일차) 14시경의 일정 <br>로마넷째날','111041004');">14<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_13_14"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(13,15,'6월 20일 (13일차) 15시경의 일정 <br>로마넷째날','111041004');">15<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_13_15"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(13,16,'6월 20일 (13일차) 16시경의 일정 <br>로마넷째날','111041004');">16<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_13_16"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(13,17,'6월 20일 (13일차) 17시경의 일정 <br>로마넷째날','111041004');">17<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_13_17"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(13,18,'6월 20일 (13일차) 18시경의 일정 <br>로마넷째날','111041004');">18<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_13_18"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(13,19,'6월 20일 (13일차) 19시경의 일정 <br>로마넷째날','111041004');">19<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_13_19"></div></div>						
						

							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(13,20,'6월 20일 (13일차)  20~24시의 일정 <br>로마넷째날','111041004');">20~24 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_13_20"></div></div>



							<a class="helper_day_13" href="javascript:moveToCityPlanner2('111041004','','2019-06-20',1)"><div style="position:absolute;left:55%;top:35px;z-index:999;cursor:pointer;height:80px;width:40%;border-right:5px solid #c0c0c0;font-size:8pt;color:#c0c0c0;text-align:right;padding-right:8px;font-weight:400">4일차<br>오전투어<br>추천&nbsp;<font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></div></a>
<!--							<a class="helper_day_13" href="javascript:moveToCityPlanner2('111041004','','2019-06-20',0)"><div style="position:absolute;left:55%;top:120px;z-index:999;background:#c0c0c0;cursor:pointer;height:30px;width:40%;border:1px solid #c0c0c0;font-size:8pt;color:#fff">점심</div></a>-->
							<a class="helper_day_13" href="javascript:moveToCityPlanner2('111041004','','2019-06-20',2)"><div style="position:absolute;left:55%;top:155px;z-index:999;cursor:pointer;height:140px;width:40%;border-right:5px solid #c0c0c0;font-size:8pt;color:#c0c0c0;text-align:right;padding-right:8px;font-weight:400">4일차<br>오후투어<br>추천&nbsp;<font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></div></a>
<!--							<a class="helper_day_13" href="/market/index_city.asp?l=planner10259869&stype=guidebook_4&region=111041004&rid=&trip_id=10259869" target="_blank"><div style="position:absolute;left:55%;top:300px;z-index:999;background:#c0c0c0;cursor:pointer;height:30px;width:40%;border:1px solid #c0c0c0;font-size:8pt;color:#fff">저녁식사</div></a>-->
							<a class="helper_day_13" href="javascript:moveToCityPlanner2('111041004','','2019-06-20',3)"><div style="position:absolute;left:55%;top:335px;z-index:999;cursor:pointer;height:55px;width:40%;border-right:5px solid #c0c0c0;font-size:8pt;color:#c0c0c0;text-align:right;padding-right:8px;font-weight:400">4일차<br>저녁투어<br>추천&nbsp;<font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></div></a>



						</div>
						
						
						<div style="border-top:1px solid #efefef;height:75px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;">숙소</div>


				</li>

				<li class="swiper-slide" style="border-right:1px solid #efefef;">
						<div class="sbold" style="text-align:left;padding-left:5px;font-size:12pt;color:#696969;">6/21  <span style="font-size:10pt;color:#c0c0c0"> 금, D14</span></div>
						<div style="height:68px;font-size:10pt;text-align:left;padding-left:5px;color:#696969;padding-bottom:5px;">


<div style="line-height:110%;height:32px;">로마,피렌체(도착일)</div>



<input type="hidden" id="dayExtInfo_cid_14" value="111041003">
<input type="hidden" id="dayExtInfo_mm_14" value="M1">


<div style="margin-top:3px;padding-left:5px;padding-right:5px;"><a class="btn-u  btn-u-default" href="javascript:showLinkInModal('daymap.asp?trip_id=10259869&theday=14&citylist=111041004,111041003')" style="width:95%;text-align:center;margin-right:5px;margin-left:5px;background:#3ad195;color:#fff;border-radius:15px"><i class="fa fa-map"></i> DAY MAP</a></div>

						</div>
						<div style="position:relative">
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(14,8,'6월 21일 (14일차)  0~9시의 일정 <br>로마,피렌체도착일','111041004,111041003');">0~9 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_14_8"></div></div>

						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(14,9,'6월 21일 (14일차) 9시경의 일정 <br>로마,피렌체도착일','111041004,111041003');">9<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_14_9"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(14,10,'6월 21일 (14일차) 10시경의 일정 <br>로마,피렌체도착일','111041004,111041003');">10<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_14_10"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(14,11,'6월 21일 (14일차) 11시경의 일정 <br>로마,피렌체도착일','111041004,111041003');">11<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_14_11"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(14,12,'6월 21일 (14일차) 12시경의 일정 <br>로마,피렌체도착일','111041004,111041003');">12<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_14_12"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(14,13,'6월 21일 (14일차) 13시경의 일정 <br>로마,피렌체도착일','111041004,111041003');">13<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_14_13"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(14,14,'6월 21일 (14일차) 14시경의 일정 <br>로마,피렌체도착일','111041004,111041003');">14<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_14_14"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(14,15,'6월 21일 (14일차) 15시경의 일정 <br>로마,피렌체도착일','111041004,111041003');">15<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_14_15"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(14,16,'6월 21일 (14일차) 16시경의 일정 <br>로마,피렌체도착일','111041004,111041003');">16<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_14_16"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(14,17,'6월 21일 (14일차) 17시경의 일정 <br>로마,피렌체도착일','111041004,111041003');">17<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_14_17"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(14,18,'6월 21일 (14일차) 18시경의 일정 <br>로마,피렌체도착일','111041004,111041003');">18<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_14_18"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(14,19,'6월 21일 (14일차) 19시경의 일정 <br>로마,피렌체도착일','111041004,111041003');">19<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_14_19"></div></div>						
						

							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(14,20,'6월 21일 (14일차)  20~24시의 일정 <br>로마,피렌체도착일','111041004,111041003');">20~24 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_14_20"></div></div>



<!---
							<div style="position:absolute;left:25%;top:135px;z-index:999;background:#f3f3f3;height:180px;width:70%;border:1px solid #c0c0c0;font-size:8pt;color:#c0c0c0">도시이동</div>
--->


						</div>
						
						
						<div style="border-top:1px solid #efefef;height:75px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;">숙소</div>


				</li>

				<li class="swiper-slide" style="border-right:1px solid #efefef;">
						<div class="sbold" style="text-align:left;padding-left:5px;font-size:12pt;color:#696969;">6/22  <span style="font-size:10pt;color:#c0c0c0"> 토, D15</span></div>
						<div style="height:68px;font-size:10pt;text-align:left;padding-left:5px;color:#696969;padding-bottom:5px;">


<div style="line-height:110%;height:32px;">피렌체,베니스(도착일)</div>



<input type="hidden" id="dayExtInfo_cid_15" value="111041006">
<input type="hidden" id="dayExtInfo_mm_15" value="M1">


<div style="margin-top:3px;padding-left:5px;padding-right:5px;"><a class="btn-u  btn-u-default" href="javascript:showLinkInModal('daymap.asp?trip_id=10259869&theday=15&citylist=111041003,111041006')" style="width:95%;text-align:center;margin-right:5px;margin-left:5px;background:#3ad195;color:#fff;border-radius:15px"><i class="fa fa-map"></i> DAY MAP</a></div>

						</div>
						<div style="position:relative">
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(15,8,'6월 22일 (15일차)  0~9시의 일정 <br>피렌체,베니스도착일','111041003,111041006');">0~9 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_15_8"></div></div>

						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(15,9,'6월 22일 (15일차) 9시경의 일정 <br>피렌체,베니스도착일','111041003,111041006');">9<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_15_9"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(15,10,'6월 22일 (15일차) 10시경의 일정 <br>피렌체,베니스도착일','111041003,111041006');">10<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_15_10"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(15,11,'6월 22일 (15일차) 11시경의 일정 <br>피렌체,베니스도착일','111041003,111041006');">11<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_15_11"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(15,12,'6월 22일 (15일차) 12시경의 일정 <br>피렌체,베니스도착일','111041003,111041006');">12<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_15_12"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(15,13,'6월 22일 (15일차) 13시경의 일정 <br>피렌체,베니스도착일','111041003,111041006');">13<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_15_13"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(15,14,'6월 22일 (15일차) 14시경의 일정 <br>피렌체,베니스도착일','111041003,111041006');">14<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_15_14"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(15,15,'6월 22일 (15일차) 15시경의 일정 <br>피렌체,베니스도착일','111041003,111041006');">15<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_15_15"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(15,16,'6월 22일 (15일차) 16시경의 일정 <br>피렌체,베니스도착일','111041003,111041006');">16<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_15_16"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(15,17,'6월 22일 (15일차) 17시경의 일정 <br>피렌체,베니스도착일','111041003,111041006');">17<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_15_17"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(15,18,'6월 22일 (15일차) 18시경의 일정 <br>피렌체,베니스도착일','111041003,111041006');">18<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_15_18"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(15,19,'6월 22일 (15일차) 19시경의 일정 <br>피렌체,베니스도착일','111041003,111041006');">19<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_15_19"></div></div>						
						

							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(15,20,'6월 22일 (15일차)  20~24시의 일정 <br>피렌체,베니스도착일','111041003,111041006');">20~24 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_15_20"></div></div>



<!---
							<div style="position:absolute;left:25%;top:135px;z-index:999;background:#f3f3f3;height:180px;width:70%;border:1px solid #c0c0c0;font-size:8pt;color:#c0c0c0">도시이동</div>
--->


						</div>
						
						
						<div style="border-top:1px solid #efefef;height:75px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;">숙소</div>


				</li>

				<li class="swiper-slide" style="border-right:1px solid #efefef;">
						<div class="sbold" style="text-align:left;padding-left:5px;font-size:12pt;color:#696969;">6/23  <span style="font-size:10pt;color:#c0c0c0"> 일, D16</span></div>
						<div style="height:68px;font-size:10pt;text-align:left;padding-left:5px;color:#696969;padding-bottom:5px;">


<div style="line-height:110%;height:32px;">베니스,뮌헨(도착일)</div>



<input type="hidden" id="dayExtInfo_cid_16" value="111061005">
<input type="hidden" id="dayExtInfo_mm_16" value="M1">


<div style="margin-top:3px;padding-left:5px;padding-right:5px;"><a class="btn-u  btn-u-default" href="javascript:showLinkInModal('daymap.asp?trip_id=10259869&theday=16&citylist=111041006,111061005')" style="width:95%;text-align:center;margin-right:5px;margin-left:5px;background:#3ad195;color:#fff;border-radius:15px"><i class="fa fa-map"></i> DAY MAP</a></div>

						</div>
						<div style="position:relative">
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(16,8,'6월 23일 (16일차)  0~9시의 일정 <br>베니스,뮌헨도착일','111041006,111061005');">0~9 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_16_8"></div></div>

						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(16,9,'6월 23일 (16일차) 9시경의 일정 <br>베니스,뮌헨도착일','111041006,111061005');">9<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_16_9"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(16,10,'6월 23일 (16일차) 10시경의 일정 <br>베니스,뮌헨도착일','111041006,111061005');">10<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_16_10"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(16,11,'6월 23일 (16일차) 11시경의 일정 <br>베니스,뮌헨도착일','111041006,111061005');">11<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_16_11"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(16,12,'6월 23일 (16일차) 12시경의 일정 <br>베니스,뮌헨도착일','111041006,111061005');">12<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_16_12"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(16,13,'6월 23일 (16일차) 13시경의 일정 <br>베니스,뮌헨도착일','111041006,111061005');">13<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_16_13"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(16,14,'6월 23일 (16일차) 14시경의 일정 <br>베니스,뮌헨도착일','111041006,111061005');">14<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_16_14"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(16,15,'6월 23일 (16일차) 15시경의 일정 <br>베니스,뮌헨도착일','111041006,111061005');">15<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_16_15"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(16,16,'6월 23일 (16일차) 16시경의 일정 <br>베니스,뮌헨도착일','111041006,111061005');">16<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_16_16"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(16,17,'6월 23일 (16일차) 17시경의 일정 <br>베니스,뮌헨도착일','111041006,111061005');">17<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_16_17"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(16,18,'6월 23일 (16일차) 18시경의 일정 <br>베니스,뮌헨도착일','111041006,111061005');">18<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_16_18"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(16,19,'6월 23일 (16일차) 19시경의 일정 <br>베니스,뮌헨도착일','111041006,111061005');">19<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_16_19"></div></div>						
						

							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(16,20,'6월 23일 (16일차)  20~24시의 일정 <br>베니스,뮌헨도착일','111041006,111061005');">20~24 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_16_20"></div></div>



<!---
							<div style="position:absolute;left:25%;top:135px;z-index:999;background:#f3f3f3;height:180px;width:70%;border:1px solid #c0c0c0;font-size:8pt;color:#c0c0c0">도시이동</div>
--->


						</div>
						
						
						<div style="border-top:1px solid #efefef;height:75px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;">숙소</div>


				</li>

				<li class="swiper-slide" style="border-right:1px solid #efefef;">
						<div class="sbold" style="text-align:left;padding-left:5px;font-size:12pt;color:#696969;">6/24  <span style="font-size:10pt;color:#c0c0c0"> 월, D17</span></div>
						<div style="height:68px;font-size:10pt;text-align:left;padding-left:5px;color:#696969;padding-bottom:5px;">


<div style="line-height:110%;height:32px;">뮌헨,잘츠부르크(도착일)</div>



<input type="hidden" id="dayExtInfo_cid_17" value="131041002">
<input type="hidden" id="dayExtInfo_mm_17" value="M1">


<div style="margin-top:3px;padding-left:5px;padding-right:5px;"><a class="btn-u  btn-u-default" href="javascript:showLinkInModal('daymap.asp?trip_id=10259869&theday=17&citylist=111061005,131041002')" style="width:95%;text-align:center;margin-right:5px;margin-left:5px;background:#3ad195;color:#fff;border-radius:15px"><i class="fa fa-map"></i> DAY MAP</a></div>

						</div>
						<div style="position:relative">
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(17,8,'6월 24일 (17일차)  0~9시의 일정 <br>뮌헨,잘츠부르크도착일','111061005,131041002');">0~9 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_17_8"></div></div>

						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(17,9,'6월 24일 (17일차) 9시경의 일정 <br>뮌헨,잘츠부르크도착일','111061005,131041002');">9<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_17_9"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(17,10,'6월 24일 (17일차) 10시경의 일정 <br>뮌헨,잘츠부르크도착일','111061005,131041002');">10<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_17_10"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(17,11,'6월 24일 (17일차) 11시경의 일정 <br>뮌헨,잘츠부르크도착일','111061005,131041002');">11<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_17_11"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(17,12,'6월 24일 (17일차) 12시경의 일정 <br>뮌헨,잘츠부르크도착일','111061005,131041002');">12<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_17_12"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(17,13,'6월 24일 (17일차) 13시경의 일정 <br>뮌헨,잘츠부르크도착일','111061005,131041002');">13<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_17_13"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(17,14,'6월 24일 (17일차) 14시경의 일정 <br>뮌헨,잘츠부르크도착일','111061005,131041002');">14<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_17_14"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(17,15,'6월 24일 (17일차) 15시경의 일정 <br>뮌헨,잘츠부르크도착일','111061005,131041002');">15<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_17_15"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(17,16,'6월 24일 (17일차) 16시경의 일정 <br>뮌헨,잘츠부르크도착일','111061005,131041002');">16<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_17_16"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(17,17,'6월 24일 (17일차) 17시경의 일정 <br>뮌헨,잘츠부르크도착일','111061005,131041002');">17<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_17_17"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(17,18,'6월 24일 (17일차) 18시경의 일정 <br>뮌헨,잘츠부르크도착일','111061005,131041002');">18<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_17_18"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(17,19,'6월 24일 (17일차) 19시경의 일정 <br>뮌헨,잘츠부르크도착일','111061005,131041002');">19<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_17_19"></div></div>						
						

							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(17,20,'6월 24일 (17일차)  20~24시의 일정 <br>뮌헨,잘츠부르크도착일','111061005,131041002');">20~24 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_17_20"></div></div>



<!---
							<div style="position:absolute;left:25%;top:135px;z-index:999;background:#f3f3f3;height:180px;width:70%;border:1px solid #c0c0c0;font-size:8pt;color:#c0c0c0">도시이동</div>
--->


						</div>
						
						
						<div style="border-top:1px solid #efefef;height:75px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;">숙소</div>


				</li>

				<li class="swiper-slide" style="border-right:1px solid #efefef;">
						<div class="sbold" style="text-align:left;padding-left:5px;font-size:12pt;color:#696969;">6/25  <span style="font-size:10pt;color:#c0c0c0"> 화, D18</span></div>
						<div style="height:68px;font-size:10pt;text-align:left;padding-left:5px;color:#696969;padding-bottom:5px;">


<div style="line-height:110%;height:32px;">잘츠부르크,할슈타트(도착일)</div>



<input type="hidden" id="dayExtInfo_cid_18" value="131041032">
<input type="hidden" id="dayExtInfo_mm_18" value="M1">


<div style="margin-top:3px;padding-left:5px;padding-right:5px;"><a class="btn-u  btn-u-default" href="javascript:showLinkInModal('daymap.asp?trip_id=10259869&theday=18&citylist=131041002,131041032')" style="width:95%;text-align:center;margin-right:5px;margin-left:5px;background:#3ad195;color:#fff;border-radius:15px"><i class="fa fa-map"></i> DAY MAP</a></div>

						</div>
						<div style="position:relative">
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(18,8,'6월 25일 (18일차)  0~9시의 일정 <br>잘츠부르크,할슈타트도착일','131041002,131041032');">0~9 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_18_8"></div></div>

						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(18,9,'6월 25일 (18일차) 9시경의 일정 <br>잘츠부르크,할슈타트도착일','131041002,131041032');">9<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_18_9"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(18,10,'6월 25일 (18일차) 10시경의 일정 <br>잘츠부르크,할슈타트도착일','131041002,131041032');">10<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_18_10"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(18,11,'6월 25일 (18일차) 11시경의 일정 <br>잘츠부르크,할슈타트도착일','131041002,131041032');">11<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_18_11"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(18,12,'6월 25일 (18일차) 12시경의 일정 <br>잘츠부르크,할슈타트도착일','131041002,131041032');">12<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_18_12"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(18,13,'6월 25일 (18일차) 13시경의 일정 <br>잘츠부르크,할슈타트도착일','131041002,131041032');">13<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_18_13"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(18,14,'6월 25일 (18일차) 14시경의 일정 <br>잘츠부르크,할슈타트도착일','131041002,131041032');">14<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_18_14"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(18,15,'6월 25일 (18일차) 15시경의 일정 <br>잘츠부르크,할슈타트도착일','131041002,131041032');">15<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_18_15"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(18,16,'6월 25일 (18일차) 16시경의 일정 <br>잘츠부르크,할슈타트도착일','131041002,131041032');">16<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_18_16"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(18,17,'6월 25일 (18일차) 17시경의 일정 <br>잘츠부르크,할슈타트도착일','131041002,131041032');">17<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_18_17"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(18,18,'6월 25일 (18일차) 18시경의 일정 <br>잘츠부르크,할슈타트도착일','131041002,131041032');">18<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_18_18"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(18,19,'6월 25일 (18일차) 19시경의 일정 <br>잘츠부르크,할슈타트도착일','131041002,131041032');">19<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_18_19"></div></div>						
						

							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(18,20,'6월 25일 (18일차)  20~24시의 일정 <br>잘츠부르크,할슈타트도착일','131041002,131041032');">20~24 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_18_20"></div></div>



<!---
							<div style="position:absolute;left:25%;top:135px;z-index:999;background:#f3f3f3;height:180px;width:70%;border:1px solid #c0c0c0;font-size:8pt;color:#c0c0c0">도시이동</div>
--->


						</div>
						
						
						<div style="border-top:1px solid #efefef;height:75px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;">숙소</div>


				</li>

				<li class="swiper-slide" style="border-right:1px solid #efefef;">
						<div class="sbold" style="text-align:left;padding-left:5px;font-size:12pt;color:#696969;">6/26  <span style="font-size:10pt;color:#c0c0c0"> 수, D19</span></div>
						<div style="height:68px;font-size:10pt;text-align:left;padding-left:5px;color:#696969;padding-bottom:5px;">


<div style="line-height:110%;height:32px;">할슈타트,비엔나(빈)(도착일)</div>



<input type="hidden" id="dayExtInfo_cid_19" value="131041001">
<input type="hidden" id="dayExtInfo_mm_19" value="M1">


<div style="margin-top:3px;padding-left:5px;padding-right:5px;"><a class="btn-u  btn-u-default" href="javascript:showLinkInModal('daymap.asp?trip_id=10259869&theday=19&citylist=131041032,131041001')" style="width:95%;text-align:center;margin-right:5px;margin-left:5px;background:#3ad195;color:#fff;border-radius:15px"><i class="fa fa-map"></i> DAY MAP</a></div>

						</div>
						<div style="position:relative">
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(19,8,'6월 26일 (19일차)  0~9시의 일정 <br>할슈타트,비엔나(빈)도착일','131041032,131041001');">0~9 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_19_8"></div></div>

						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(19,9,'6월 26일 (19일차) 9시경의 일정 <br>할슈타트,비엔나(빈)도착일','131041032,131041001');">9<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_19_9"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(19,10,'6월 26일 (19일차) 10시경의 일정 <br>할슈타트,비엔나(빈)도착일','131041032,131041001');">10<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_19_10"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(19,11,'6월 26일 (19일차) 11시경의 일정 <br>할슈타트,비엔나(빈)도착일','131041032,131041001');">11<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_19_11"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(19,12,'6월 26일 (19일차) 12시경의 일정 <br>할슈타트,비엔나(빈)도착일','131041032,131041001');">12<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_19_12"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(19,13,'6월 26일 (19일차) 13시경의 일정 <br>할슈타트,비엔나(빈)도착일','131041032,131041001');">13<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_19_13"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(19,14,'6월 26일 (19일차) 14시경의 일정 <br>할슈타트,비엔나(빈)도착일','131041032,131041001');">14<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_19_14"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(19,15,'6월 26일 (19일차) 15시경의 일정 <br>할슈타트,비엔나(빈)도착일','131041032,131041001');">15<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_19_15"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(19,16,'6월 26일 (19일차) 16시경의 일정 <br>할슈타트,비엔나(빈)도착일','131041032,131041001');">16<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_19_16"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(19,17,'6월 26일 (19일차) 17시경의 일정 <br>할슈타트,비엔나(빈)도착일','131041032,131041001');">17<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_19_17"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(19,18,'6월 26일 (19일차) 18시경의 일정 <br>할슈타트,비엔나(빈)도착일','131041032,131041001');">18<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_19_18"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(19,19,'6월 26일 (19일차) 19시경의 일정 <br>할슈타트,비엔나(빈)도착일','131041032,131041001');">19<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_19_19"></div></div>						
						

							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(19,20,'6월 26일 (19일차)  20~24시의 일정 <br>할슈타트,비엔나(빈)도착일','131041032,131041001');">20~24 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_19_20"></div></div>



<!---
							<div style="position:absolute;left:25%;top:135px;z-index:999;background:#f3f3f3;height:180px;width:70%;border:1px solid #c0c0c0;font-size:8pt;color:#c0c0c0">도시이동</div>
--->


						</div>
						
						
						<div style="border-top:1px solid #efefef;height:75px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;">숙소</div>


				</li>

				<li class="swiper-slide" style="border-right:1px solid #efefef;">
						<div class="sbold" style="text-align:left;padding-left:5px;font-size:12pt;color:#696969;">6/27  <span style="font-size:10pt;color:#c0c0c0"> 목, D20</span></div>
						<div style="height:68px;font-size:10pt;text-align:left;padding-left:5px;color:#696969;padding-bottom:5px;">


<div style="line-height:110%;height:32px;">비엔나(빈)(둘째날)</div>


<input type="hidden" id="dayExtInfo_cid_20" value="">


<div style="margin-top:3px;padding-left:5px;padding-right:5px;"><a class="btn-u  btn-u-default" href="javascript:showLinkInModal('daymap.asp?trip_id=10259869&theday=20&citylist=131041001')" style="width:95%;text-align:center;margin-right:5px;margin-left:5px;background:#3ad195;color:#fff;border-radius:15px"><i class="fa fa-map"></i> DAY MAP</a></div>

						</div>
						<div style="position:relative">
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(20,8,'6월 27일 (20일차)  0~9시의 일정 <br>비엔나(빈)둘째날','131041001');">0~9 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_20_8"></div></div>

						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(20,9,'6월 27일 (20일차) 9시경의 일정 <br>비엔나(빈)둘째날','131041001');">9<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_20_9"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(20,10,'6월 27일 (20일차) 10시경의 일정 <br>비엔나(빈)둘째날','131041001');">10<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_20_10"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(20,11,'6월 27일 (20일차) 11시경의 일정 <br>비엔나(빈)둘째날','131041001');">11<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_20_11"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(20,12,'6월 27일 (20일차) 12시경의 일정 <br>비엔나(빈)둘째날','131041001');">12<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_20_12"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(20,13,'6월 27일 (20일차) 13시경의 일정 <br>비엔나(빈)둘째날','131041001');">13<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_20_13"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(20,14,'6월 27일 (20일차) 14시경의 일정 <br>비엔나(빈)둘째날','131041001');">14<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_20_14"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(20,15,'6월 27일 (20일차) 15시경의 일정 <br>비엔나(빈)둘째날','131041001');">15<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_20_15"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(20,16,'6월 27일 (20일차) 16시경의 일정 <br>비엔나(빈)둘째날','131041001');">16<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_20_16"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(20,17,'6월 27일 (20일차) 17시경의 일정 <br>비엔나(빈)둘째날','131041001');">17<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_20_17"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(20,18,'6월 27일 (20일차) 18시경의 일정 <br>비엔나(빈)둘째날','131041001');">18<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_20_18"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(20,19,'6월 27일 (20일차) 19시경의 일정 <br>비엔나(빈)둘째날','131041001');">19<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_20_19"></div></div>						
						

							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(20,20,'6월 27일 (20일차)  20~24시의 일정 <br>비엔나(빈)둘째날','131041001');">20~24 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_20_20"></div></div>



							<a class="helper_day_20" href="javascript:moveToCityPlanner2('131041001','','2019-06-27',1)"><div style="position:absolute;left:55%;top:35px;z-index:999;cursor:pointer;height:80px;width:40%;border-right:5px solid #c0c0c0;font-size:8pt;color:#c0c0c0;text-align:right;padding-right:8px;font-weight:400">2일차<br>오전투어<br>추천&nbsp;<font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></div></a>
<!--							<a class="helper_day_20" href="javascript:moveToCityPlanner2('131041001','','2019-06-27',0)"><div style="position:absolute;left:55%;top:120px;z-index:999;background:#c0c0c0;cursor:pointer;height:30px;width:40%;border:1px solid #c0c0c0;font-size:8pt;color:#fff">점심</div></a>-->
							<a class="helper_day_20" href="javascript:moveToCityPlanner2('131041001','','2019-06-27',2)"><div style="position:absolute;left:55%;top:155px;z-index:999;cursor:pointer;height:140px;width:40%;border-right:5px solid #c0c0c0;font-size:8pt;color:#c0c0c0;text-align:right;padding-right:8px;font-weight:400">2일차<br>오후투어<br>추천&nbsp;<font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></div></a>
<!--							<a class="helper_day_20" href="/market/index_city.asp?l=planner10259869&stype=guidebook_4&region=131041001&rid=&trip_id=10259869" target="_blank"><div style="position:absolute;left:55%;top:300px;z-index:999;background:#c0c0c0;cursor:pointer;height:30px;width:40%;border:1px solid #c0c0c0;font-size:8pt;color:#fff">저녁식사</div></a>-->
							<a class="helper_day_20" href="javascript:moveToCityPlanner2('131041001','','2019-06-27',3)"><div style="position:absolute;left:55%;top:335px;z-index:999;cursor:pointer;height:55px;width:40%;border-right:5px solid #c0c0c0;font-size:8pt;color:#c0c0c0;text-align:right;padding-right:8px;font-weight:400">2일차<br>저녁투어<br>추천&nbsp;<font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></div></a>



						</div>
						
						
						<div style="border-top:1px solid #efefef;height:75px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;">숙소</div>


				</li>

				<li class="swiper-slide" style="border-right:1px solid #efefef;">
						<div class="sbold" style="text-align:left;padding-left:5px;font-size:12pt;color:#696969;">6/28  <span style="font-size:10pt;color:#c0c0c0"> 금, D21</span></div>
						<div style="height:68px;font-size:10pt;text-align:left;padding-left:5px;color:#696969;padding-bottom:5px;">


<div style="line-height:110%;height:32px;">비엔나(빈),부다페스트(도착일)</div>



<input type="hidden" id="dayExtInfo_cid_21" value="131021001">
<input type="hidden" id="dayExtInfo_mm_21" value="M1">


<div style="margin-top:3px;padding-left:5px;padding-right:5px;"><a class="btn-u  btn-u-default" href="javascript:showLinkInModal('daymap.asp?trip_id=10259869&theday=21&citylist=131041001,131021001')" style="width:95%;text-align:center;margin-right:5px;margin-left:5px;background:#3ad195;color:#fff;border-radius:15px"><i class="fa fa-map"></i> DAY MAP</a></div>

						</div>
						<div style="position:relative">
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(21,8,'6월 28일 (21일차)  0~9시의 일정 <br>비엔나(빈),부다페스트도착일','131041001,131021001');">0~9 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_21_8"></div></div>

						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(21,9,'6월 28일 (21일차) 9시경의 일정 <br>비엔나(빈),부다페스트도착일','131041001,131021001');">9<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_21_9"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(21,10,'6월 28일 (21일차) 10시경의 일정 <br>비엔나(빈),부다페스트도착일','131041001,131021001');">10<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_21_10"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(21,11,'6월 28일 (21일차) 11시경의 일정 <br>비엔나(빈),부다페스트도착일','131041001,131021001');">11<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_21_11"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(21,12,'6월 28일 (21일차) 12시경의 일정 <br>비엔나(빈),부다페스트도착일','131041001,131021001');">12<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_21_12"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(21,13,'6월 28일 (21일차) 13시경의 일정 <br>비엔나(빈),부다페스트도착일','131041001,131021001');">13<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_21_13"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(21,14,'6월 28일 (21일차) 14시경의 일정 <br>비엔나(빈),부다페스트도착일','131041001,131021001');">14<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_21_14"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(21,15,'6월 28일 (21일차) 15시경의 일정 <br>비엔나(빈),부다페스트도착일','131041001,131021001');">15<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_21_15"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(21,16,'6월 28일 (21일차) 16시경의 일정 <br>비엔나(빈),부다페스트도착일','131041001,131021001');">16<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_21_16"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(21,17,'6월 28일 (21일차) 17시경의 일정 <br>비엔나(빈),부다페스트도착일','131041001,131021001');">17<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_21_17"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(21,18,'6월 28일 (21일차) 18시경의 일정 <br>비엔나(빈),부다페스트도착일','131041001,131021001');">18<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_21_18"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(21,19,'6월 28일 (21일차) 19시경의 일정 <br>비엔나(빈),부다페스트도착일','131041001,131021001');">19<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_21_19"></div></div>						
						

							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(21,20,'6월 28일 (21일차)  20~24시의 일정 <br>비엔나(빈),부다페스트도착일','131041001,131021001');">20~24 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_21_20"></div></div>



<!---
							<div style="position:absolute;left:25%;top:135px;z-index:999;background:#f3f3f3;height:180px;width:70%;border:1px solid #c0c0c0;font-size:8pt;color:#c0c0c0">도시이동</div>
--->


						</div>
						
						
						<div style="border-top:1px solid #efefef;height:75px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;">숙소</div>


				</li>

				<li class="swiper-slide" style="border-right:1px solid #efefef;">
						<div class="sbold" style="text-align:left;padding-left:5px;font-size:12pt;color:#696969;">6/29  <span style="font-size:10pt;color:#c0c0c0"> 토, D22</span></div>
						<div style="height:68px;font-size:10pt;text-align:left;padding-left:5px;color:#696969;padding-bottom:5px;">


<div style="line-height:110%;height:32px;">부다페스트,프라하(도착일)</div>



<input type="hidden" id="dayExtInfo_cid_22" value="131011001">
<input type="hidden" id="dayExtInfo_mm_22" value="M1">


<div style="margin-top:3px;padding-left:5px;padding-right:5px;"><a class="btn-u  btn-u-default" href="javascript:showLinkInModal('daymap.asp?trip_id=10259869&theday=22&citylist=131021001,131011001')" style="width:95%;text-align:center;margin-right:5px;margin-left:5px;background:#3ad195;color:#fff;border-radius:15px"><i class="fa fa-map"></i> DAY MAP</a></div>

						</div>
						<div style="position:relative">
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(22,8,'6월 29일 (22일차)  0~9시의 일정 <br>부다페스트,프라하도착일','131021001,131011001');">0~9 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_22_8"></div></div>

						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(22,9,'6월 29일 (22일차) 9시경의 일정 <br>부다페스트,프라하도착일','131021001,131011001');">9<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_22_9"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(22,10,'6월 29일 (22일차) 10시경의 일정 <br>부다페스트,프라하도착일','131021001,131011001');">10<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_22_10"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(22,11,'6월 29일 (22일차) 11시경의 일정 <br>부다페스트,프라하도착일','131021001,131011001');">11<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_22_11"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(22,12,'6월 29일 (22일차) 12시경의 일정 <br>부다페스트,프라하도착일','131021001,131011001');">12<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_22_12"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(22,13,'6월 29일 (22일차) 13시경의 일정 <br>부다페스트,프라하도착일','131021001,131011001');">13<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_22_13"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(22,14,'6월 29일 (22일차) 14시경의 일정 <br>부다페스트,프라하도착일','131021001,131011001');">14<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_22_14"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(22,15,'6월 29일 (22일차) 15시경의 일정 <br>부다페스트,프라하도착일','131021001,131011001');">15<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_22_15"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(22,16,'6월 29일 (22일차) 16시경의 일정 <br>부다페스트,프라하도착일','131021001,131011001');">16<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_22_16"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(22,17,'6월 29일 (22일차) 17시경의 일정 <br>부다페스트,프라하도착일','131021001,131011001');">17<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_22_17"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(22,18,'6월 29일 (22일차) 18시경의 일정 <br>부다페스트,프라하도착일','131021001,131011001');">18<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_22_18"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(22,19,'6월 29일 (22일차) 19시경의 일정 <br>부다페스트,프라하도착일','131021001,131011001');">19<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_22_19"></div></div>						
						

							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(22,20,'6월 29일 (22일차)  20~24시의 일정 <br>부다페스트,프라하도착일','131021001,131011001');">20~24 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_22_20"></div></div>



<!---
							<div style="position:absolute;left:25%;top:135px;z-index:999;background:#f3f3f3;height:180px;width:70%;border:1px solid #c0c0c0;font-size:8pt;color:#c0c0c0">도시이동</div>
--->


						</div>
						
						
						<div style="border-top:1px solid #efefef;height:75px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;">숙소</div>


				</li>

				<li class="swiper-slide" style="border-right:1px solid #efefef;">
						<div class="sbold" style="text-align:left;padding-left:5px;font-size:12pt;color:#696969;">6/30  <span style="font-size:10pt;color:#c0c0c0"> 일, D23</span></div>
						<div style="height:68px;font-size:10pt;text-align:left;padding-left:5px;color:#696969;padding-bottom:5px;">


<div style="line-height:110%;height:32px;">프라하(둘째날)</div>


<input type="hidden" id="dayExtInfo_cid_23" value="">


<div style="margin-top:3px;padding-left:5px;padding-right:5px;"><a class="btn-u  btn-u-default" href="javascript:showLinkInModal('daymap.asp?trip_id=10259869&theday=23&citylist=131011001')" style="width:95%;text-align:center;margin-right:5px;margin-left:5px;background:#3ad195;color:#fff;border-radius:15px"><i class="fa fa-map"></i> DAY MAP</a></div>

						</div>
						<div style="position:relative">
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(23,8,'6월 30일 (23일차)  0~9시의 일정 <br>프라하둘째날','131011001');">0~9 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_23_8"></div></div>

						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(23,9,'6월 30일 (23일차) 9시경의 일정 <br>프라하둘째날','131011001');">9<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_23_9"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(23,10,'6월 30일 (23일차) 10시경의 일정 <br>프라하둘째날','131011001');">10<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_23_10"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(23,11,'6월 30일 (23일차) 11시경의 일정 <br>프라하둘째날','131011001');">11<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_23_11"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(23,12,'6월 30일 (23일차) 12시경의 일정 <br>프라하둘째날','131011001');">12<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_23_12"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(23,13,'6월 30일 (23일차) 13시경의 일정 <br>프라하둘째날','131011001');">13<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_23_13"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(23,14,'6월 30일 (23일차) 14시경의 일정 <br>프라하둘째날','131011001');">14<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_23_14"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(23,15,'6월 30일 (23일차) 15시경의 일정 <br>프라하둘째날','131011001');">15<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_23_15"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(23,16,'6월 30일 (23일차) 16시경의 일정 <br>프라하둘째날','131011001');">16<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_23_16"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(23,17,'6월 30일 (23일차) 17시경의 일정 <br>프라하둘째날','131011001');">17<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_23_17"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(23,18,'6월 30일 (23일차) 18시경의 일정 <br>프라하둘째날','131011001');">18<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_23_18"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(23,19,'6월 30일 (23일차) 19시경의 일정 <br>프라하둘째날','131011001');">19<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_23_19"></div></div>						
						

							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(23,20,'6월 30일 (23일차)  20~24시의 일정 <br>프라하둘째날','131011001');">20~24 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_23_20"></div></div>



							<a class="helper_day_23" href="javascript:moveToCityPlanner2('131011001','','2019-06-30',1)"><div style="position:absolute;left:55%;top:35px;z-index:999;cursor:pointer;height:80px;width:40%;border-right:5px solid #c0c0c0;font-size:8pt;color:#c0c0c0;text-align:right;padding-right:8px;font-weight:400">2일차<br>오전투어<br>추천&nbsp;<font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></div></a>
<!--							<a class="helper_day_23" href="javascript:moveToCityPlanner2('131011001','','2019-06-30',0)"><div style="position:absolute;left:55%;top:120px;z-index:999;background:#c0c0c0;cursor:pointer;height:30px;width:40%;border:1px solid #c0c0c0;font-size:8pt;color:#fff">점심</div></a>-->
							<a class="helper_day_23" href="javascript:moveToCityPlanner2('131011001','','2019-06-30',2)"><div style="position:absolute;left:55%;top:155px;z-index:999;cursor:pointer;height:140px;width:40%;border-right:5px solid #c0c0c0;font-size:8pt;color:#c0c0c0;text-align:right;padding-right:8px;font-weight:400">2일차<br>오후투어<br>추천&nbsp;<font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></div></a>
<!--							<a class="helper_day_23" href="/market/index_city.asp?l=planner10259869&stype=guidebook_4&region=131011001&rid=&trip_id=10259869" target="_blank"><div style="position:absolute;left:55%;top:300px;z-index:999;background:#c0c0c0;cursor:pointer;height:30px;width:40%;border:1px solid #c0c0c0;font-size:8pt;color:#fff">저녁식사</div></a>-->
							<a class="helper_day_23" href="javascript:moveToCityPlanner2('131011001','','2019-06-30',3)"><div style="position:absolute;left:55%;top:335px;z-index:999;cursor:pointer;height:55px;width:40%;border-right:5px solid #c0c0c0;font-size:8pt;color:#c0c0c0;text-align:right;padding-right:8px;font-weight:400">2일차<br>저녁투어<br>추천&nbsp;<font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></div></a>



						</div>
						
						
						<div style="border-top:1px solid #efefef;height:75px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;">숙소</div>


				</li>

				<li class="swiper-slide" style="border-right:1px solid #efefef;">
						<div class="sbold" style="text-align:left;padding-left:5px;font-size:12pt;color:#696969;">7/1  <span style="font-size:10pt;color:#c0c0c0"> 월, D24</span></div>
						<div style="height:68px;font-size:10pt;text-align:left;padding-left:5px;color:#696969;padding-bottom:5px;">


<div style="line-height:110%;height:32px;">프라하(셋째날)</div>


<input type="hidden" id="dayExtInfo_cid_24" value="">


<div style="margin-top:3px;padding-left:5px;padding-right:5px;"><a class="btn-u  btn-u-default" href="javascript:showLinkInModal('daymap.asp?trip_id=10259869&theday=24&citylist=131011001')" style="width:95%;text-align:center;margin-right:5px;margin-left:5px;background:#3ad195;color:#fff;border-radius:15px"><i class="fa fa-map"></i> DAY MAP</a></div>

						</div>
						<div style="position:relative">
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(24,8,'7월 1일 (24일차)  0~9시의 일정 <br>프라하셋째날','131011001');">0~9 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_24_8"></div></div>

						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(24,9,'7월 1일 (24일차) 9시경의 일정 <br>프라하셋째날','131011001');">9<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_24_9"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(24,10,'7월 1일 (24일차) 10시경의 일정 <br>프라하셋째날','131011001');">10<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_24_10"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(24,11,'7월 1일 (24일차) 11시경의 일정 <br>프라하셋째날','131011001');">11<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_24_11"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(24,12,'7월 1일 (24일차) 12시경의 일정 <br>프라하셋째날','131011001');">12<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_24_12"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(24,13,'7월 1일 (24일차) 13시경의 일정 <br>프라하셋째날','131011001');">13<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_24_13"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(24,14,'7월 1일 (24일차) 14시경의 일정 <br>프라하셋째날','131011001');">14<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_24_14"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(24,15,'7월 1일 (24일차) 15시경의 일정 <br>프라하셋째날','131011001');">15<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_24_15"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(24,16,'7월 1일 (24일차) 16시경의 일정 <br>프라하셋째날','131011001');">16<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_24_16"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(24,17,'7월 1일 (24일차) 17시경의 일정 <br>프라하셋째날','131011001');">17<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_24_17"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(24,18,'7월 1일 (24일차) 18시경의 일정 <br>프라하셋째날','131011001');">18<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_24_18"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(24,19,'7월 1일 (24일차) 19시경의 일정 <br>프라하셋째날','131011001');">19<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_24_19"></div></div>						
						

							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(24,20,'7월 1일 (24일차)  20~24시의 일정 <br>프라하셋째날','131011001');">20~24 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_24_20"></div></div>



							<a class="helper_day_24" href="javascript:moveToCityPlanner2('131011001','','2019-07-01',4)"><div style="position:absolute;left:55%;top:35px;z-index:999;cursor:pointer;height:320px;width:40%;border-right:5px solid #c0c0c0;font-size:8pt;color:#c0c0c0;text-align:right;padding-right:8px;font-weight:400">3일차<br>DAY투어<br>근교투어<br>추천&nbsp;<font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></div></a>


						</div>
						
						
						<div style="border-top:1px solid #efefef;height:75px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;">숙소</div>


				</li>

				<li class="swiper-slide" style="border-right:1px solid #efefef;">
						<div class="sbold" style="text-align:left;padding-left:5px;font-size:12pt;color:#696969;">7/2  <span style="font-size:10pt;color:#c0c0c0"> 화, D25</span></div>
						<div style="height:68px;font-size:10pt;text-align:left;padding-left:5px;color:#696969;padding-bottom:5px;">


<div style="line-height:110%;height:32px;">프라하,프랑크푸르트(도착일)</div>



<input type="hidden" id="dayExtInfo_cid_25" value="111061006">
<input type="hidden" id="dayExtInfo_mm_25" value="M2">


<div style="margin-top:3px;padding-left:5px;padding-right:5px;"><a class="btn-u  btn-u-default" href="javascript:showLinkInModal('daymap.asp?trip_id=10259869&theday=25&citylist=131011001,111061006')" style="width:95%;text-align:center;margin-right:5px;margin-left:5px;background:#3ad195;color:#fff;border-radius:15px"><i class="fa fa-map"></i> DAY MAP</a></div>

						</div>
						<div style="position:relative">
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(25,8,'7월 2일 (25일차)  0~9시의 일정 <br>프라하,프랑크푸르트도착일','131011001,111061006');">0~9 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_25_8"></div></div>

						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(25,9,'7월 2일 (25일차) 9시경의 일정 <br>프라하,프랑크푸르트도착일','131011001,111061006');">9<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_25_9"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(25,10,'7월 2일 (25일차) 10시경의 일정 <br>프라하,프랑크푸르트도착일','131011001,111061006');">10<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_25_10"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(25,11,'7월 2일 (25일차) 11시경의 일정 <br>프라하,프랑크푸르트도착일','131011001,111061006');">11<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_25_11"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(25,12,'7월 2일 (25일차) 12시경의 일정 <br>프라하,프랑크푸르트도착일','131011001,111061006');">12<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_25_12"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(25,13,'7월 2일 (25일차) 13시경의 일정 <br>프라하,프랑크푸르트도착일','131011001,111061006');">13<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_25_13"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(25,14,'7월 2일 (25일차) 14시경의 일정 <br>프라하,프랑크푸르트도착일','131011001,111061006');">14<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_25_14"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(25,15,'7월 2일 (25일차) 15시경의 일정 <br>프라하,프랑크푸르트도착일','131011001,111061006');">15<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_25_15"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(25,16,'7월 2일 (25일차) 16시경의 일정 <br>프라하,프랑크푸르트도착일','131011001,111061006');">16<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_25_16"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(25,17,'7월 2일 (25일차) 17시경의 일정 <br>프라하,프랑크푸르트도착일','131011001,111061006');">17<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_25_17"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(25,18,'7월 2일 (25일차) 18시경의 일정 <br>프라하,프랑크푸르트도착일','131011001,111061006');">18<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_25_18"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(25,19,'7월 2일 (25일차) 19시경의 일정 <br>프라하,프랑크푸르트도착일','131011001,111061006');">19<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_25_19"></div></div>						
						

							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(25,20,'7월 2일 (25일차)  20~24시의 일정 <br>프라하,프랑크푸르트도착일','131011001,111061006');">20~24 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_25_20"></div></div>



<!---
							<div style="position:absolute;left:25%;top:135px;z-index:999;background:#f3f3f3;height:180px;width:70%;border:1px solid #c0c0c0;font-size:8pt;color:#c0c0c0">도시이동</div>
--->


						</div>
						
						
						<div style="border-top:1px solid #efefef;height:75px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;">숙소</div>


				</li>

				<li class="swiper-slide" style="border-right:1px solid #efefef;">
						<div class="sbold" style="text-align:left;padding-left:5px;font-size:12pt;color:#696969;">7/3  <span style="font-size:10pt;color:#c0c0c0"> 수, D26</span></div>
						<div style="height:68px;font-size:10pt;text-align:left;padding-left:5px;color:#696969;padding-bottom:5px;">


<div style="line-height:110%;height:32px;">프랑크푸르트,파리(도착일)</div>



<input type="hidden" id="dayExtInfo_cid_26" value="111011004">
<input type="hidden" id="dayExtInfo_mm_26" value="M2">


<div style="margin-top:3px;padding-left:5px;padding-right:5px;"><a class="btn-u  btn-u-default" href="javascript:showLinkInModal('daymap.asp?trip_id=10259869&theday=26&citylist=111061006,111011004')" style="width:95%;text-align:center;margin-right:5px;margin-left:5px;background:#3ad195;color:#fff;border-radius:15px"><i class="fa fa-map"></i> DAY MAP</a></div>

						</div>
						<div style="position:relative">
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(26,8,'7월 3일 (26일차)  0~9시의 일정 <br>프랑크푸르트,파리도착일','111061006,111011004');">0~9 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_26_8"></div></div>

						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(26,9,'7월 3일 (26일차) 9시경의 일정 <br>프랑크푸르트,파리도착일','111061006,111011004');">9<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_26_9"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(26,10,'7월 3일 (26일차) 10시경의 일정 <br>프랑크푸르트,파리도착일','111061006,111011004');">10<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_26_10"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(26,11,'7월 3일 (26일차) 11시경의 일정 <br>프랑크푸르트,파리도착일','111061006,111011004');">11<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_26_11"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(26,12,'7월 3일 (26일차) 12시경의 일정 <br>프랑크푸르트,파리도착일','111061006,111011004');">12<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_26_12"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(26,13,'7월 3일 (26일차) 13시경의 일정 <br>프랑크푸르트,파리도착일','111061006,111011004');">13<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_26_13"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(26,14,'7월 3일 (26일차) 14시경의 일정 <br>프랑크푸르트,파리도착일','111061006,111011004');">14<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_26_14"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(26,15,'7월 3일 (26일차) 15시경의 일정 <br>프랑크푸르트,파리도착일','111061006,111011004');">15<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_26_15"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(26,16,'7월 3일 (26일차) 16시경의 일정 <br>프랑크푸르트,파리도착일','111061006,111011004');">16<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_26_16"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(26,17,'7월 3일 (26일차) 17시경의 일정 <br>프랑크푸르트,파리도착일','111061006,111011004');">17<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_26_17"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(26,18,'7월 3일 (26일차) 18시경의 일정 <br>프랑크푸르트,파리도착일','111061006,111011004');">18<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_26_18"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(26,19,'7월 3일 (26일차) 19시경의 일정 <br>프랑크푸르트,파리도착일','111061006,111011004');">19<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_26_19"></div></div>						
						

							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(26,20,'7월 3일 (26일차)  20~24시의 일정 <br>프랑크푸르트,파리도착일','111061006,111011004');">20~24 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_26_20"></div></div>



<!---
							<div style="position:absolute;left:25%;top:135px;z-index:999;background:#f3f3f3;height:180px;width:70%;border:1px solid #c0c0c0;font-size:8pt;color:#c0c0c0">도시이동</div>
--->


						</div>
						
						
						<div style="border-top:1px solid #efefef;height:75px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;">숙소</div>


				</li>

				<li class="swiper-slide" style="border-right:1px solid #efefef;">
						<div class="sbold" style="text-align:left;padding-left:5px;font-size:12pt;color:#696969;">7/4  <span style="font-size:10pt;color:#c0c0c0"> 목, D27</span></div>
						<div style="height:68px;font-size:10pt;text-align:left;padding-left:5px;color:#696969;padding-bottom:5px;">


<div style="line-height:110%;height:32px;">파리(둘째날)</div>


<input type="hidden" id="dayExtInfo_cid_27" value="">


<div style="margin-top:3px;padding-left:5px;padding-right:5px;"><a class="btn-u  btn-u-default" href="javascript:showLinkInModal('daymap.asp?trip_id=10259869&theday=27&citylist=111011004')" style="width:95%;text-align:center;margin-right:5px;margin-left:5px;background:#3ad195;color:#fff;border-radius:15px"><i class="fa fa-map"></i> DAY MAP</a></div>

						</div>
						<div style="position:relative">
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(27,8,'7월 4일 (27일차)  0~9시의 일정 <br>파리둘째날','111011004');">0~9 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_27_8"></div></div>

						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(27,9,'7월 4일 (27일차) 9시경의 일정 <br>파리둘째날','111011004');">9<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_27_9"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(27,10,'7월 4일 (27일차) 10시경의 일정 <br>파리둘째날','111011004');">10<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_27_10"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(27,11,'7월 4일 (27일차) 11시경의 일정 <br>파리둘째날','111011004');">11<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_27_11"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(27,12,'7월 4일 (27일차) 12시경의 일정 <br>파리둘째날','111011004');">12<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_27_12"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(27,13,'7월 4일 (27일차) 13시경의 일정 <br>파리둘째날','111011004');">13<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_27_13"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(27,14,'7월 4일 (27일차) 14시경의 일정 <br>파리둘째날','111011004');">14<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_27_14"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(27,15,'7월 4일 (27일차) 15시경의 일정 <br>파리둘째날','111011004');">15<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_27_15"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(27,16,'7월 4일 (27일차) 16시경의 일정 <br>파리둘째날','111011004');">16<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_27_16"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(27,17,'7월 4일 (27일차) 17시경의 일정 <br>파리둘째날','111011004');">17<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_27_17"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(27,18,'7월 4일 (27일차) 18시경의 일정 <br>파리둘째날','111011004');">18<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_27_18"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(27,19,'7월 4일 (27일차) 19시경의 일정 <br>파리둘째날','111011004');">19<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_27_19"></div></div>						
						

							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(27,20,'7월 4일 (27일차)  20~24시의 일정 <br>파리둘째날','111011004');">20~24 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_27_20"></div></div>



							<a class="helper_day_27" href="javascript:moveToCityPlanner2('111011004','','2019-07-04',1)"><div style="position:absolute;left:55%;top:35px;z-index:999;cursor:pointer;height:80px;width:40%;border-right:5px solid #c0c0c0;font-size:8pt;color:#c0c0c0;text-align:right;padding-right:8px;font-weight:400">2일차<br>오전투어<br>추천&nbsp;<font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></div></a>
<!--							<a class="helper_day_27" href="javascript:moveToCityPlanner2('111011004','','2019-07-04',0)"><div style="position:absolute;left:55%;top:120px;z-index:999;background:#c0c0c0;cursor:pointer;height:30px;width:40%;border:1px solid #c0c0c0;font-size:8pt;color:#fff">점심</div></a>-->
							<a class="helper_day_27" href="javascript:moveToCityPlanner2('111011004','','2019-07-04',2)"><div style="position:absolute;left:55%;top:155px;z-index:999;cursor:pointer;height:140px;width:40%;border-right:5px solid #c0c0c0;font-size:8pt;color:#c0c0c0;text-align:right;padding-right:8px;font-weight:400">2일차<br>오후투어<br>추천&nbsp;<font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></div></a>
<!--							<a class="helper_day_27" href="/market/index_city.asp?l=planner10259869&stype=guidebook_4&region=111011004&rid=&trip_id=10259869" target="_blank"><div style="position:absolute;left:55%;top:300px;z-index:999;background:#c0c0c0;cursor:pointer;height:30px;width:40%;border:1px solid #c0c0c0;font-size:8pt;color:#fff">저녁식사</div></a>-->
							<a class="helper_day_27" href="javascript:moveToCityPlanner2('111011004','','2019-07-04',3)"><div style="position:absolute;left:55%;top:335px;z-index:999;cursor:pointer;height:55px;width:40%;border-right:5px solid #c0c0c0;font-size:8pt;color:#c0c0c0;text-align:right;padding-right:8px;font-weight:400">2일차<br>저녁투어<br>추천&nbsp;<font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></div></a>



						</div>
						
						
						<div style="border-top:1px solid #efefef;height:75px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;">숙소</div>


				</li>

				<li class="swiper-slide" style="border-right:1px solid #efefef;">
						<div class="sbold" style="text-align:left;padding-left:5px;font-size:12pt;color:#696969;">7/5  <span style="font-size:10pt;color:#c0c0c0"> 금, D28</span></div>
						<div style="height:68px;font-size:10pt;text-align:left;padding-left:5px;color:#696969;padding-bottom:5px;">


<div style="line-height:110%;height:32px;">파리(셋째날)</div>


<input type="hidden" id="dayExtInfo_cid_28" value="">


<div style="margin-top:3px;padding-left:5px;padding-right:5px;"><a class="btn-u  btn-u-default" href="javascript:showLinkInModal('daymap.asp?trip_id=10259869&theday=28&citylist=111011004')" style="width:95%;text-align:center;margin-right:5px;margin-left:5px;background:#3ad195;color:#fff;border-radius:15px"><i class="fa fa-map"></i> DAY MAP</a></div>

						</div>
						<div style="position:relative">
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(28,8,'7월 5일 (28일차)  0~9시의 일정 <br>파리셋째날','111011004');">0~9 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_28_8"></div></div>

						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(28,9,'7월 5일 (28일차) 9시경의 일정 <br>파리셋째날','111011004');">9<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_28_9"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(28,10,'7월 5일 (28일차) 10시경의 일정 <br>파리셋째날','111011004');">10<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_28_10"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(28,11,'7월 5일 (28일차) 11시경의 일정 <br>파리셋째날','111011004');">11<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_28_11"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(28,12,'7월 5일 (28일차) 12시경의 일정 <br>파리셋째날','111011004');">12<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_28_12"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(28,13,'7월 5일 (28일차) 13시경의 일정 <br>파리셋째날','111011004');">13<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_28_13"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(28,14,'7월 5일 (28일차) 14시경의 일정 <br>파리셋째날','111011004');">14<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_28_14"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(28,15,'7월 5일 (28일차) 15시경의 일정 <br>파리셋째날','111011004');">15<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_28_15"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(28,16,'7월 5일 (28일차) 16시경의 일정 <br>파리셋째날','111011004');">16<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_28_16"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(28,17,'7월 5일 (28일차) 17시경의 일정 <br>파리셋째날','111011004');">17<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_28_17"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(28,18,'7월 5일 (28일차) 18시경의 일정 <br>파리셋째날','111011004');">18<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_28_18"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(28,19,'7월 5일 (28일차) 19시경의 일정 <br>파리셋째날','111011004');">19<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_28_19"></div></div>						
						

							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(28,20,'7월 5일 (28일차)  20~24시의 일정 <br>파리셋째날','111011004');">20~24 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_28_20"></div></div>



							<a class="helper_day_28" href="javascript:moveToCityPlanner2('111011004','','2019-07-05',4)"><div style="position:absolute;left:55%;top:35px;z-index:999;cursor:pointer;height:320px;width:40%;border-right:5px solid #c0c0c0;font-size:8pt;color:#c0c0c0;text-align:right;padding-right:8px;font-weight:400">3일차<br>DAY투어<br>근교투어<br>추천&nbsp;<font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></div></a>


						</div>
						
						
						<div style="border-top:1px solid #efefef;height:75px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;">숙소</div>


				</li>

				<li class="swiper-slide" style="border-right:1px solid #efefef;">
						<div class="sbold" style="text-align:left;padding-left:5px;font-size:12pt;color:#696969;">7/6  <span style="font-size:10pt;color:#c0c0c0"> 토, D29</span></div>
						<div style="height:68px;font-size:10pt;text-align:left;padding-left:5px;color:#696969;padding-bottom:5px;">


<div style="line-height:110%;height:32px;">파리(넷째날)</div>


<input type="hidden" id="dayExtInfo_cid_29" value="">


<div style="margin-top:3px;padding-left:5px;padding-right:5px;"><a class="btn-u  btn-u-default" href="javascript:showLinkInModal('daymap.asp?trip_id=10259869&theday=29&citylist=111011004')" style="width:95%;text-align:center;margin-right:5px;margin-left:5px;background:#3ad195;color:#fff;border-radius:15px"><i class="fa fa-map"></i> DAY MAP</a></div>

						</div>
						<div style="position:relative">
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(29,8,'7월 6일 (29일차)  0~9시의 일정 <br>파리넷째날','111011004');">0~9 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_29_8"></div></div>

						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(29,9,'7월 6일 (29일차) 9시경의 일정 <br>파리넷째날','111011004');">9<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_29_9"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(29,10,'7월 6일 (29일차) 10시경의 일정 <br>파리넷째날','111011004');">10<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_29_10"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(29,11,'7월 6일 (29일차) 11시경의 일정 <br>파리넷째날','111011004');">11<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_29_11"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(29,12,'7월 6일 (29일차) 12시경의 일정 <br>파리넷째날','111011004');">12<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_29_12"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(29,13,'7월 6일 (29일차) 13시경의 일정 <br>파리넷째날','111011004');">13<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_29_13"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(29,14,'7월 6일 (29일차) 14시경의 일정 <br>파리넷째날','111011004');">14<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_29_14"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(29,15,'7월 6일 (29일차) 15시경의 일정 <br>파리넷째날','111011004');">15<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_29_15"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(29,16,'7월 6일 (29일차) 16시경의 일정 <br>파리넷째날','111011004');">16<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_29_16"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(29,17,'7월 6일 (29일차) 17시경의 일정 <br>파리넷째날','111011004');">17<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_29_17"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(29,18,'7월 6일 (29일차) 18시경의 일정 <br>파리넷째날','111011004');">18<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_29_18"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(29,19,'7월 6일 (29일차) 19시경의 일정 <br>파리넷째날','111011004');">19<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_29_19"></div></div>						
						

							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(29,20,'7월 6일 (29일차)  20~24시의 일정 <br>파리넷째날','111011004');">20~24 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_29_20"></div></div>



							<a class="helper_day_29" href="javascript:moveToCityPlanner2('111011004','','2019-07-06',1)"><div style="position:absolute;left:55%;top:35px;z-index:999;cursor:pointer;height:80px;width:40%;border-right:5px solid #c0c0c0;font-size:8pt;color:#c0c0c0;text-align:right;padding-right:8px;font-weight:400">4일차<br>오전투어<br>추천&nbsp;<font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></div></a>
<!--							<a class="helper_day_29" href="javascript:moveToCityPlanner2('111011004','','2019-07-06',0)"><div style="position:absolute;left:55%;top:120px;z-index:999;background:#c0c0c0;cursor:pointer;height:30px;width:40%;border:1px solid #c0c0c0;font-size:8pt;color:#fff">점심</div></a>-->
							<a class="helper_day_29" href="javascript:moveToCityPlanner2('111011004','','2019-07-06',2)"><div style="position:absolute;left:55%;top:155px;z-index:999;cursor:pointer;height:140px;width:40%;border-right:5px solid #c0c0c0;font-size:8pt;color:#c0c0c0;text-align:right;padding-right:8px;font-weight:400">4일차<br>오후투어<br>추천&nbsp;<font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></div></a>
<!--							<a class="helper_day_29" href="/market/index_city.asp?l=planner10259869&stype=guidebook_4&region=111011004&rid=&trip_id=10259869" target="_blank"><div style="position:absolute;left:55%;top:300px;z-index:999;background:#c0c0c0;cursor:pointer;height:30px;width:40%;border:1px solid #c0c0c0;font-size:8pt;color:#fff">저녁식사</div></a>-->
							<a class="helper_day_29" href="javascript:moveToCityPlanner2('111011004','','2019-07-06',3)"><div style="position:absolute;left:55%;top:335px;z-index:999;cursor:pointer;height:55px;width:40%;border-right:5px solid #c0c0c0;font-size:8pt;color:#c0c0c0;text-align:right;padding-right:8px;font-weight:400">4일차<br>저녁투어<br>추천&nbsp;<font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></div></a>



						</div>
						
						
						<div style="border-top:1px solid #efefef;height:75px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;">숙소</div>


				</li>

				<li class="swiper-slide" style="border-right:1px solid #efefef;">
						<div class="sbold" style="text-align:left;padding-left:5px;font-size:12pt;color:#696969;">7/7  <span style="font-size:10pt;color:#c0c0c0"> 일, D30</span></div>
						<div style="height:68px;font-size:10pt;text-align:left;padding-left:5px;color:#696969;padding-bottom:5px;">


<div style="line-height:110%;height:32px;">파리(출국일)</div>


<input type="hidden" id="dayExtInfo_cid_30" value="">


<div style="margin-top:3px;padding-left:5px;padding-right:5px;"><a class="btn-u  btn-u-default" href="javascript:showLinkInModal('daymap.asp?trip_id=10259869&theday=30&citylist=111011004')" style="width:95%;text-align:center;margin-right:5px;margin-left:5px;background:#3ad195;color:#fff;border-radius:15px"><i class="fa fa-map"></i> DAY MAP</a></div>

						</div>
						<div style="position:relative">
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(30,8,'7월 7일 (30일차)  0~9시의 일정 <br>파리출국일','111011004');">0~9 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_30_8"></div></div>

						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(30,9,'7월 7일 (30일차) 9시경의 일정 <br>파리출국일','111011004');">9<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_30_9"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(30,10,'7월 7일 (30일차) 10시경의 일정 <br>파리출국일','111011004');">10<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_30_10"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(30,11,'7월 7일 (30일차) 11시경의 일정 <br>파리출국일','111011004');">11<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_30_11"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(30,12,'7월 7일 (30일차) 12시경의 일정 <br>파리출국일','111011004');">12<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_30_12"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(30,13,'7월 7일 (30일차) 13시경의 일정 <br>파리출국일','111011004');">13<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_30_13"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(30,14,'7월 7일 (30일차) 14시경의 일정 <br>파리출국일','111011004');">14<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_30_14"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(30,15,'7월 7일 (30일차) 15시경의 일정 <br>파리출국일','111011004');">15<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_30_15"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(30,16,'7월 7일 (30일차) 16시경의 일정 <br>파리출국일','111011004');">16<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_30_16"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(30,17,'7월 7일 (30일차) 17시경의 일정 <br>파리출국일','111011004');">17<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_30_17"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(30,18,'7월 7일 (30일차) 18시경의 일정 <br>파리출국일','111011004');">18<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_30_18"></div></div>						
						
							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(30,19,'7월 7일 (30일차) 19시경의 일정 <br>파리출국일','111011004');">19<div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_30_19"></div></div>						
						

							<div style="border-top:1px solid #efefef;height:30px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;position:relative;" ondblclick="openSchdEdit(30,20,'7월 7일 (30일차)  20~24시의 일정 <br>파리출국일','111011004');">20~24 <div style="position:absolute;top:3px;left:40px;color:gray;font-size:9pt;" id="schd_detail_30_20"></div></div>



							<a href="/planner/planner_resv_air_m.asp?trip_id=10259869"><div style="cursor:pointer;position:absolute;left:25%;top:358px;z-index:999;background:#f3f3f3;height:34px;width:70%;border:1px solid #c0c0c0;font-size:8pt;color:#c0c0c0"><b>출국</b> </div></a>


						</div>
						
						
						<div style="border-top:1px solid #efefef;height:75px;font-size:8pt;text-align:left;color:#c0c0c0;padding-left:10px;">숙소</div>


				</li>


<a class="helper_slp_111031001" href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=111031001&trip_id=10259869&checkin=2019-06-08&checkout=2019-06-11');">
<li style="display:block;left:105px;width:632px;position:absolute;top:500px;z-index:999;cursor:pointer;color:#c0c0c0;height:50px;border-top:5px solid #c0c0c0;line-height:110%"><font style="font-size:8pt;">런던3박<br>추천숙소</font> <font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></li>
</a>		


<a class="helper_slp_121011003" href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=121011003&trip_id=10259869&checkin=2019-06-11&checkout=2019-06-13');">
<li style="display:block;left:747px;width:418px;position:absolute;top:500px;z-index:999;cursor:pointer;color:#c0c0c0;height:50px;border-top:5px solid #c0c0c0;line-height:110%"><font style="font-size:8pt;">마드리드2박<br>추천숙소</font> <font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></li>
</a>		


<a class="helper_slp_121011003" href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=121011003&trip_id=10259869&checkin=2019-06-13&checkout=2019-06-14');">
<li style="display:block;left:1175px;width:204px;position:absolute;top:500px;z-index:999;cursor:pointer;color:#c0c0c0;height:50px;border-top:5px solid #c0c0c0;line-height:110%"><font style="font-size:8pt;">마드리드1박<br>추천숙소</font> <font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></li>
</a>		


<a class="helper_slp_121011002" href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=121011002&trip_id=10259869&checkin=2019-06-14&checkout=2019-06-17');">
<li style="display:block;left:1389px;width:632px;position:absolute;top:500px;z-index:999;cursor:pointer;color:#c0c0c0;height:50px;border-top:5px solid #c0c0c0;line-height:110%"><font style="font-size:8pt;">바르셀로나3박<br>추천숙소</font> <font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></li>
</a>		


<a class="helper_slp_111041004" href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=111041004&trip_id=10259869&checkin=2019-06-18&checkout=2019-06-21');">
<li style="display:block;left:2245px;width:632px;position:absolute;top:500px;z-index:999;cursor:pointer;color:#c0c0c0;height:50px;border-top:5px solid #c0c0c0;line-height:110%"><font style="font-size:8pt;">로마3박<br>추천숙소</font> <font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></li>
</a>		


<a class="helper_slp_111041003" href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=111041003&trip_id=10259869&checkin=2019-06-21&checkout=2019-06-22');">
<li style="display:block;left:2887px;width:204px;position:absolute;top:500px;z-index:999;cursor:pointer;color:#c0c0c0;height:50px;border-top:5px solid #c0c0c0;line-height:110%"><font style="font-size:8pt;">피렌체1박<br>추천숙소</font> <font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></li>
</a>		


<a class="helper_slp_111041006" href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=111041006&trip_id=10259869&checkin=2019-06-22&checkout=2019-06-23');">
<li style="display:block;left:3101px;width:204px;position:absolute;top:500px;z-index:999;cursor:pointer;color:#c0c0c0;height:50px;border-top:5px solid #c0c0c0;line-height:110%"><font style="font-size:8pt;">베니스1박<br>추천숙소</font> <font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></li>
</a>		


<a class="helper_slp_111061005" href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=111061005&trip_id=10259869&checkin=2019-06-23&checkout=2019-06-24');">
<li style="display:block;left:3315px;width:204px;position:absolute;top:500px;z-index:999;cursor:pointer;color:#c0c0c0;height:50px;border-top:5px solid #c0c0c0;line-height:110%"><font style="font-size:8pt;">뮌헨1박<br>추천숙소</font> <font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></li>
</a>		


<a class="helper_slp_131041002" href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=131041002&trip_id=10259869&checkin=2019-06-24&checkout=2019-06-25');">
<li style="display:block;left:3529px;width:204px;position:absolute;top:500px;z-index:999;cursor:pointer;color:#c0c0c0;height:50px;border-top:5px solid #c0c0c0;line-height:110%"><font style="font-size:8pt;">잘츠부르크1박<br>추천숙소</font> <font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></li>
</a>		


<a class="helper_slp_131041032" href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=131041032&trip_id=10259869&checkin=2019-06-25&checkout=2019-06-26');">
<li style="display:block;left:3743px;width:204px;position:absolute;top:500px;z-index:999;cursor:pointer;color:#c0c0c0;height:50px;border-top:5px solid #c0c0c0;line-height:110%"><font style="font-size:8pt;">할슈타트1박<br>추천숙소</font> <font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></li>
</a>		


<a class="helper_slp_131041001" href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=131041001&trip_id=10259869&checkin=2019-06-26&checkout=2019-06-28');">
<li style="display:block;left:3957px;width:418px;position:absolute;top:500px;z-index:999;cursor:pointer;color:#c0c0c0;height:50px;border-top:5px solid #c0c0c0;line-height:110%"><font style="font-size:8pt;">비엔나(빈)2박<br>추천숙소</font> <font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></li>
</a>		


<a class="helper_slp_131021001" href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=131021001&trip_id=10259869&checkin=2019-06-28&checkout=2019-06-29');">
<li style="display:block;left:4385px;width:204px;position:absolute;top:500px;z-index:999;cursor:pointer;color:#c0c0c0;height:50px;border-top:5px solid #c0c0c0;line-height:110%"><font style="font-size:8pt;">부다페스트1박<br>추천숙소</font> <font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></li>
</a>		


<a class="helper_slp_131011001" href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=131011001&trip_id=10259869&checkin=2019-06-29&checkout=2019-07-02');">
<li style="display:block;left:4599px;width:632px;position:absolute;top:500px;z-index:999;cursor:pointer;color:#c0c0c0;height:50px;border-top:5px solid #c0c0c0;line-height:110%"><font style="font-size:8pt;">프라하3박<br>추천숙소</font> <font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></li>
</a>		


<a class="helper_slp_111061006" href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=111061006&trip_id=10259869&checkin=2019-07-02&checkout=2019-07-03');">
<li style="display:block;left:5241px;width:204px;position:absolute;top:500px;z-index:999;cursor:pointer;color:#c0c0c0;height:50px;border-top:5px solid #c0c0c0;line-height:110%"><font style="font-size:8pt;">프랑크푸르트1박<br>추천숙소</font> <font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></li>
</a>		


<a class="helper_slp_111011004" href="javascript:openSLP('http://www.stubbyplanner.com/mb/index_city.asp?l=planner10259869&region=111011004&trip_id=10259869&checkin=2019-07-03&checkout=2019-07-07');">
<li style="display:block;left:5455px;width:846px;position:absolute;top:500px;z-index:999;cursor:pointer;color:#c0c0c0;height:50px;border-top:5px solid #c0c0c0;line-height:110%"><font style="font-size:8pt;">파리4박<br>추천숙소</font> <font style="font-size:12pt;color:#3ad195"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></li>
</a>		







				</ul>

				
				</div>
			</div>
			<div style="clear:both"></div>


		</div>
		<div style="clear:both"></div>

	</div>

	</section>










<!---
        <section class="stu_event_banner" style="margin:10px 0px;padding:10px 0px">
            <div class="stu_inner_wrap">
                <div class="swiper-container event_banner" style="padding-bottom:0px">
                    <ul >
                        <li class="swiper-slide">
                            <a href="/coupon/winter_coupon.asp" target="_blank">
                                <div class="txtWrap">
                                    <p>유럽 현지투어/액티비티</p>
                                    <b><span>10만원</span>할인 쿠폰</b>
                                </div>
                                <div class="imgWrap" style="background-image:url(/images/coupon-bn.png);">
                                    <b><span>STUBBY PLANNER</span>￦ 100,000</b>
                                </div>
                            </a>
                        </li>

                    </ul>
                </div>
            </div>
        </section>
--->



<script>
function mng_small_city()
{
	tripgene="111031001:3:0:0,121011003:2:X:0,121011004:0:6:0,121011003:1:X:0,121011002:3:X:0|B1855:X:X:X|B1856:X:X:X|B492:X:X:X|B1858:X:X:X|B549:X:X:X,111041004:3:X:1,111041003:1:X:0,111041006:1:X:0,111061005:1:X:0,131041002:1:X:0,131041032:1:X:0,131041001:2:X:0,131021001:1:X:0,131011001:3:X:0,111061006:1:X:0,111011004:4:X:0";
	
}
</script>




            <section style="margin-top:40px">
	<div class="stu_inner_wrap">
		<div style="width:100%;border-radius:3px;border:0px solid #efefef;padding-top:5px;padding-bottom:5px;border-top:1px solid #efefef;padding-top:30px;">
			<div style="float:left;width:25%;" >
				<font style="font-size:18pt;font-weight:700;color:#696969">소도시 정보 </font><br>
				<a href="javascript:mng_small_city()"><font style="font-size:12pt;color:#c0c0c0;">나만의 특별한 여행지정보</font></a>

			</div>


			<div style="float:left;width:75%">
				<div  class="swiper-container swiper">

				<ul class="nolist swiper-wrapper">

				<li class="swiper-slide" style="width:140px"><a href="bucket_detail.asp?trip_id=10259869&cityserial=121011004">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/cff4c6be708c2b1b5d2b58d27c58f842.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">톨레도</div>
						<div>스페인</div>
				</a></li>

				<li class="swiper-slide" style="width:140px"><a href="bucket_detail.asp?trip_id=10259869&cityserial=131041002">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/a79cb74c34036429f7bd7c99897c08f7.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">잘츠부르크</div>
						<div>오스트리아</div>
				</a></li>

				<li class="swiper-slide" style="width:140px"><a href="bucket_detail.asp?trip_id=10259869&cityserial=131041032">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/5a706cbf3d298f0bc440129e3032cdb4.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">할슈타트</div>
						<div>오스트리아</div>
				</a></li>

				<li class="swiper-slide" style="width:140px"><a href="bucket_detail.asp?trip_id=10259869&cityserial=111011008">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/f183b5399ca4329728d14a05b4e09fe7.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">몽생미셸</div>
						<div>파리근교</div>
				</a></li>

				<li class="swiper-slide" style="width:140px"><a href="bucket_detail.asp?trip_id=10259869&cityserial=131011003">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/cc818389d41211198802056f07c9c70b.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">체스키크롬로프</div>
						<div>프라하근교</div>
				</a></li>

				<li class="swiper-slide" style="width:140px"><a href="bucket_detail.asp?trip_id=10259869&cityserial=111031187">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/13f6dc305d53ccb6574b6d0963f47c46.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">세븐시스터즈</div>
						<div>런던근교</div>
				</a></li>

				<li class="swiper-slide" style="width:140px"><a href="bucket_detail.asp?trip_id=10259869&cityserial=111031004">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/639cb1b411abca4c82f6628d446ae1a7.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">옥스퍼드</div>
						<div>런던근교</div>
				</a></li>

				<li class="swiper-slide" style="width:140px"><a href="bucket_detail.asp?trip_id=10259869&cityserial=111041012">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/4daf901f7145246c0d46622c0b44ef3e.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">피사</div>
						<div>피렌체근교</div>
				</a></li>

				<li class="swiper-slide" style="width:140px"><a href="bucket_detail.asp?trip_id=10259869&cityserial=111061003">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/dee92940b8f40a169bcf50c16e4fec46.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">퓌센</div>
						<div>뮌헨근교</div>
				</a></li>

				<li class="swiper-slide" style="width:140px"><a href="bucket_detail.asp?trip_id=10259869&cityserial=111031197">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/f05bd98f0758ec138c02f0f4ff435232.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">코츠월드</div>
						<div>런던근교</div>
				</a></li>

				<li class="swiper-slide" style="width:140px"><a href="bucket_detail.asp?trip_id=10259869&cityserial=111061001">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/5efda51befa27b2e6e3eb271f3cef43e.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">하이델베르크</div>
						<div>프랑크푸르트근교</div>
				</a></li>

				<li class="swiper-slide" style="width:140px"><a href="bucket_detail.asp?trip_id=10259869&cityserial=111011143">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/334f3b7dfa643495567e86d448bb2549.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">지베르니</div>
						<div>파리근교</div>
				</a></li>

				<li class="swiper-slide" style="width:140px"><a href="bucket_detail.asp?trip_id=10259869&cityserial=111041123">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/71e0c95903755a1d8e36068e312a660f.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">친퀘테레</div>
						<div>피렌체근교</div>
				</a></li>

				<li class="swiper-slide" style="width:140px"><a href="bucket_detail.asp?trip_id=10259869&cityserial=121011104">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/a1d723ce41bf2abbfa87efa57c644f74.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">몬세라트</div>
						<div>바르셀로나근교</div>
				</a></li>

				<li class="swiper-slide" style="width:140px"><a href="bucket_detail.asp?trip_id=10259869&cityserial=111061020">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/2548ff57dfc1de73efa89ae0df00d3d5.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">뉘른베르크 </div>
						<div>프랑크푸르트근교</div>
				</a></li>

				<li class="swiper-slide" style="width:140px"><a href="bucket_detail.asp?trip_id=10259869&cityserial=121011008">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/570c19f429fbf10cabd0c7fcb57b919a.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">세고비아</div>
						<div>마드리드근교</div>
				</a></li>

				<li class="swiper-slide" style="width:140px"><a href="bucket_detail.asp?trip_id=10259869&cityserial=121011016">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/5a2953c0d6ad1cab308565b774d0d840.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">지로나</div>
						<div>바르셀로나근교</div>
				</a></li>

				<li class="swiper-slide" style="width:140px"><a href="bucket_detail.asp?trip_id=10259869&cityserial=111041036">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/c36c50770712bc27629fee37ad0a0d6a.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">베로나</div>
						<div>베니스근교</div>
				</a></li>

				<li class="swiper-slide" style="width:140px"><a href="bucket_detail.asp?trip_id=10259869&cityserial=121011070">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/408e6247d3280a02952602b9dc43e4fb.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">시체스</div>
						<div>바르셀로나근교</div>
				</a></li>

				<li class="swiper-slide" style="width:140px"><a href="bucket_detail.asp?trip_id=10259869&cityserial=111031184">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/88021f851a19c840b812bd127f17f71f.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">스톤헨지</div>
						<div>런던근교</div>
				</a></li>

				<li class="swiper-slide" style="width:140px"><a href="bucket_detail.asp?trip_id=10259869&cityserial=111011141">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/f2152f3f5c9275ae6bfa2be517737597.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">퐁텐블로</div>
						<div>파리근교</div>
				</a></li>

				<li class="swiper-slide" style="width:140px"><a href="bucket_detail.asp?trip_id=10259869&cityserial=111031003">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/fd145110ed12213769c68db5a8e60b42.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">윈저</div>
						<div>런던근교</div>
				</a></li>

				<li class="swiper-slide" style="width:140px"><a href="bucket_detail.asp?trip_id=10259869&cityserial=111011144">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/e7f22c23b4aad29705d17d64d9064709.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">오베르 쉬르 우아즈</div>
						<div>파리근교</div>
				</a></li>

				<li class="swiper-slide" style="width:140px"><a href="bucket_detail.asp?trip_id=10259869&cityserial=131011005">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/6fcedcb8a295ea584f3270c4d9503e91.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">까를로비 바리</div>
						<div>프라하근교</div>
				</a></li>

				<li class="swiper-slide" style="width:140px"><a href="bucket_detail.asp?trip_id=10259869&cityserial=131011016">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/f7d5175fd2849780c05d702459d5c19b.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">크리보클라</div>
						<div>프라하근교</div>
				</a></li>

				<li class="swiper-slide" style="width:140px"><a href="bucket_detail.asp?trip_id=10259869&cityserial=111041161">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/89cc4d7c9046e5c491193895187f5486.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">키안티</div>
						<div>피렌체근교</div>
				</a></li>

				<li class="swiper-slide" style="width:140px"><a href="bucket_detail.asp?trip_id=10259869&cityserial=111041124">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/1a528439fdde69be250bc23ed08237c7.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">티볼리</div>
						<div>로마근교</div>
				</a></li>

				<li class="swiper-slide" style="width:140px"><a href="bucket_detail.asp?trip_id=10259869&cityserial=111011161">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/906c8504a2191e2ee49f5b1398910337.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">에트르타</div>
						<div>파리근교</div>
				</a></li>

				<li class="swiper-slide" style="width:140px"><a href="bucket_detail.asp?trip_id=10259869&cityserial=111031065">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/61174b7aa2cd163368667a73106954a7.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">켄터베리</div>
						<div>런던근교</div>
				</a></li>

				<li class="swiper-slide" style="width:140px"><a href="bucket_detail.asp?trip_id=10259869&cityserial=111031195">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/21e7e1738dce72fbc06ad790c0907b5f.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">라이</div>
						<div>런던근교</div>
				</a></li>

				</ul>
				</div>
			</div>
			<div style="clear:both"></div>
		</div>
		<div style="clear:both"></div>

	</div>

	</section>	

            <section style="margin-top:40px">
	<div class="stu_inner_wrap">
		<div style="width:100%;border-radius:3px;border:0px solid #efefef;padding-top:5px;padding-bottom:5px;border-top:1px solid #efefef;padding-top:30px;">
			<div style="float:left;width:25%;" >
				<font style="font-size:18pt;font-weight:700;color:#696969">프리미엄 셀프북 </font><br>
				<font style="font-size:12pt;color:#c0c0c0;"><a href="selfguide.asp?trip_id=10259869" class="btn-u btn-u-dark" style="border-radius:25px">유럽 110권 모두보기</a></font>

			</div>


			<div style="float:left;width:75%">
				<div  class="swiper-container swiper">

				<ul class="nolist swiper-wrapper">	


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('148')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/ea99e9864780ac06087e24f3b022e2e6_l.PNG" style="border-radius:5px;width:90%"></div>
						<div class="sbold">빈 미술사 박물..</div>
						<div>비엔나(빈)</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('133')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/1cb936d85ac08cc57d176033427c8b8f_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">우피치 지식가이..</div>
						<div>피렌체</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('130')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/147a486b26c2ca7ec86502b8b32ee3fe_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">가우디 지식가이..</div>
						<div>바르셀로나</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('109')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/a6c8ab938dbd846d284a55cdfcfcaec4_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">피렌체 르네상스..</div>
						<div>피렌체</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('111')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/ff3aa3b2fa1011843814ce0b66df9445_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">영국박물관 지식..</div>
						<div>런던</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('144')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/e50b9ffa542e1a837e0124a383132235_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">바티칸 지식가이..</div>
						<div>로마</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('147')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/6545442b288e58054a139f338c2d2594_l.PNG" style="border-radius:5px;width:90%"></div>
						<div class="sbold">자연사박물관</div>
						<div>런던</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('146')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/a7d82493211ce1f595e2de80689f1a8e_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">프라도 미술관</div>
						<div>마드리드</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('65')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/c74d56bc27a64d79d3ab9441f8187f39_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">루브르 지식가이..</div>
						<div>파리</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('85')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/319d67befcdb7a422b2f84be4aa24358_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">내셔널갤러리 지..</div>
						<div>런던</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('67')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/7810a1a38e77c8899268232640446105_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">오르세 지식가이..</div>
						<div>파리</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('54')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/941b2a533a47ca603bbc355b5a974304_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">베르사유 지식가..</div>
						<div>파리</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('126')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/1e5ced9f4b7ea94949cae33f49594df6_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">파리 패션 쇼핑..</div>
						<div>파리</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('143')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/83815b17f3c107265a037f1b7f49e75c_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">스페인 패션쇼핑</div>
						<div>바르셀로나</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('142')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/bff92b5d84bf6e7fdf6b06b1c96426c0_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">체코 천연 화장..</div>
						<div>프라하</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('16')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/e41540dd78dee01cfb2b06fb7bf80dba_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">파리 약국화장품..</div>
						<div>파리</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('15')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/dcf95203c6944e0936cf695cea36e2e6_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">프랑스 니치향수..</div>
						<div>파리</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('81')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/8f27e6eee23a0d4d818d31702709eec3_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">세포라 쇼핑 마..</div>
						<div>파리</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('87')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/7ac971a154ee68a200abd97242702f95_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">영국 홍차 마스..</div>
						<div>런던</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('134')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/997390f4316bdaf94f3b4f0481ba736e_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">부다페스트 루인..</div>
						<div>부다페스트</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('128')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/169fa81d1145f4c9aa33f57d1d9cfa00_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">비엔나 카페 마..</div>
						<div>비엔나(빈)</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('117')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/2ed1c980e7ea53652431d01b2a488c2b_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">파리 빵 마스터..</div>
						<div>파리</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('116')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/6c118ac8db4c2583b1449a0c277563cf_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">런던 펍 마스터..</div>
						<div>런던</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('101')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/d255382d3beacc9988cc6db782ef5f4f_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">이탈리아 파스타..</div>
						<div>로마</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('68')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/65d2d49487ce1d99141d23bb66abd148_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">파리 미슐랭 마..</div>
						<div>파리</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('131')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/9dbaf8ba29a3494f0629cfcb0093bdf7_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">퓌센 공략집</div>
						<div>뮌헨</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('127')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/c265272ca66019f00de94eb7fb40ab2c_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">할슈타트 공략집</div>
						<div>할슈타트</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('114')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/5b892600f1876d093c4172c52fbe42ab_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">세븐 시스터즈 ..</div>
						<div>런던</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('113')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/e06840384351565cfd9a6689216ec55f_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">프라프치츠카 브..</div>
						<div>프라하</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('110')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/17f39de0129f08944a8aa1e512fe58da_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">톨레도 공략집</div>
						<div>톨레도</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('105')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/f8cd4c147ea9b1e2b67bd20b7324e3d9_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">친퀘테레 공략집</div>
						<div>피렌체</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('90')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/bc55917394b48711b75e69d515780408_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">토스카나 공략집</div>
						<div>피렌체</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('96')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/cf6309e0a1aec4722dc39b7b894dfa72_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">아말피해안 공략..</div>
						<div>로마</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('66')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/4f42ecd62b94b4b275658ffbc4eada95_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">지베르니 공략집</div>
						<div>파리</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('100')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/9b7a57eb660dde3dc076210dec77e592_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">잘츠부르크 공략..</div>
						<div>잘츠부르크</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('141')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/2aafaa57757f61fdd714f0b25d99096d_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">비엔나 음악여행..</div>
						<div>비엔나(빈)</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('132')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/2fa510af6143bbc548ade8fd4aa538a2_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">프라하 나이트라..</div>
						<div>프라하</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('129')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/c950cdf010c907edab33c34b6b358999_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">파리 나이트라이..</div>
						<div>파리</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('125')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/736cad77ebf788748fa620dedce60688_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">로마 숨은 골목..</div>
						<div>로마</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('123')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/f65d9ed68320193fcbb7073232a335ca_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">파리 자전거여행..</div>
						<div>파리</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('108')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/743b3b8024f64f843356fc57e6f6a69b_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">런던 버스여행 ..</div>
						<div>런던</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('106')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/060246428fdc15f5d552be8b8dd0b818_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">파리 셀프스냅 ..</div>
						<div>파리</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('102')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/52ed913bc24fd95c79c9feadab45760a_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">파리 라탱지구 ..</div>
						<div>파리</div>
				</a></li>


				<li class="swiper-slide" style="width:140px"><a href="javascript:showGuidebook('93')">
						<div><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/88ffb4641afe35f142982ed3c04d878f_l.jpg" style="border-radius:5px;width:90%"></div>
						<div class="sbold">파리 디즈니랜드..</div>
						<div>파리</div>
				</a></li>



				</ul>
				</div>
			</div>
			<div style="clear:both"></div>
		</div>
		<div style="clear:both"></div>

	</div>

	</section>


<script>

function showGuideBook(book_id)
{
	window.webkit.messageHandlers.showGuideBook.postMessage(book_id);
}
var gallery;
function showGuidebook(se)
{


		window.location="premium.asp?trip_id=10259869";
	

}
</script>












<script>
var currencies=[];
var M1=[];
var M2=[];
var M3=[];
var M4=[];
currencies['11102']='1CHF=1194원';currencies['13103']='1PLN=315원';currencies['14101']='1RUB=18원';currencies['14105']='1SEK=125원';currencies['12104']='1TRY=204원';currencies['13116']='1UAH=45원';currencies['13114']='1BAM=685원';currencies['13111']='1RSD=11원';currencies['14104']='1NOK=137원';currencies['13112']='1BGN=686원';currencies['13106']='1HRK=181원';currencies['13101']='1CZK=52원';currencies['14107']='1ISK=10원';currencies['12105']='1ILS=330원';currencies['13117']='1CHF=1194원';currencies['13115']='1MKD=22원';currencies['13120']='1MDL=65원';currencies['13108']='1RON=284원';currencies['13122']='1EUR=1341원';currencies['11113']='1EUR=1341원';currencies['13104']='1EUR=1341원';currencies['11108']='1EUR=1341원';currencies['14102']='1EUR=1341원';currencies['11101']='1EUR=1341원';currencies['11106']='1EUR=1341원';currencies['12103']='1EUR=1341원';currencies['11110']='1EUR=1341원';currencies['11104']='1EUR=1341원';currencies['11111']='1EUR=1341원';currencies['11109']='1EUR=1341원';currencies['11107']='1EUR=1341원';currencies['12102']='1EUR=1341원';currencies['11112']='1EUR=1341원';currencies['13107']='1EUR=1341원';currencies['12101']='1EUR=1341원';currencies['11103']='1GBP=1506원';currencies['13121']='1ALL=11원';currencies['13123']='1AMD=2원';currencies['13118']='1AZN=695원';currencies['14103']='1DKK=180원';currencies['14108']='1DKK=180원';currencies['13119']='1GEL=435원';currencies['13102']='1HUF=4원';M1[111011004]="Low:14° High:23° ";M2[111011004]="Low:16° High:25° ";M3[111011004]="Low:16° High:25° ";M4[111011004]="Low:13° High:21° ";M1[111031001]="Low:13° High:21° ";M2[111031001]="Low:15° High:23° ";M3[111031001]="Low:15° High:23° ";M4[111031001]="Low:13° High:20° ";M1[111041003]="Low:16° High:28° ";M2[111041003]="Low:18° High:32° ";M3[111041003]="Low:18° High:32° ";M4[111041003]="Low:15° High:27° ";M1[111041004]="Low:17° High:28° ";M2[111041004]="Low:19° High:31° ";M3[111041004]="Low:19° High:32° ";M4[111041004]="Low:16° High:27° ";M1[111041006]="Low:17° High:26° ";M2[111041006]="Low:19° High:28° ";M3[111041006]="Low:18° High:28° ";M4[111041006]="Low:15° High:24° ";M1[111061005]="Low:12° High:22° ";M2[111061005]="Low:14° High:24° ";M3[111061005]="Low:14° High:24° ";M4[111061005]="Low:11° High:19° ";M1[111061006]="Low:12° High:24° ";M2[111061006]="Low:14° High:26° ";M3[111061006]="Low:13° High:25° ";M4[111061006]="Low:10° High:21° ";M1[121011002]="Low:18° High:27° ";M2[121011002]="Low:21° High:30° ";M3[121011002]="Low:21° High:30° ";M4[121011002]="Low:19° High:27° ";M1[121011003]="Low:16° High:28° ";M2[121011003]="Low:19° High:32° ";M3[121011003]="Low:19° High:31° ";M4[121011003]="Low:15° High:26° ";M1[121011004]="Low:15° High:27° ";M2[121011004]="Low:18° High:32° ";M3[121011004]="Low:18° High:32° ";M4[121011004]="Low:15° High:27° ";M1[131011001]="Low:14° High:23° ";M2[131011001]="Low:16° High:26° ";M3[131011001]="Low:15° High:25° ";M4[131011001]="Low:11° High:20° ";M1[131021001]="Low:13° High:24° ";M2[131021001]="Low:15° High:27° ";M3[131021001]="Low:14° High:26° ";M4[131021001]="Low:10° High:23° ";M1[131041001]="Low:16° High:25° ";M2[131041001]="Low:18° High:27° ";M3[131041001]="Low:18° High:27° ";M4[131041001]="Low:14° High:21° ";M1[131041002]="Low:13° High:23° ";M2[131041002]="Low:14° High:25° ";M3[131041002]="Low:14° High:25° ";M4[131041002]="Low:10° High:20° ";M1[131041032]="Low:12° High:23° ";M2[131041032]="Low:14° High:25° ";M3[131041032]="Low:13° High:24° ";M4[131041032]="Low:10° High:20° ";
function loadDayExtInfo()
{


	for(i=1;i<plan_term+1;i++)
	{
		if($("#dayExtInfo_cid_"+i).val()!="")
		{
			cid=$("#dayExtInfo_cid_"+i).val();
			mm=$("#dayExtInfo_mm_"+i).val();

//			$("#dayExtInfo_ccy_"+i).html(currencies[cid.substring(0,5)]);
			if(mm=='M1')
				$("#dayExtInfo_temp_"+i).html(M1[cid]);
			else if(mm=='M2')
				$("#dayExtInfo_temp_"+i).html(M2[cid]);
			else if(mm=='M3')
				$("#dayExtInfo_temp_"+i).html(M3[cid]);
			else if(mm=='M4')
				$("#dayExtInfo_temp_"+i).html(M4[cid]);
		}
	}

}
</script>



            <section style="margin-top:40px">
	<div class="stu_inner_wrap">
	<hr>
	<h4 style="margin-left:5px;font-weight: 700;letter-spacing:0;font-size:18pt;color:#696969">테마별 할인상품 비교 <small><font style="color:#ee685a"><b>⚡️ 얼리버드 + 결합 SALE</b></font></small></h4>
	<div style="margin-bottom:10px;padding-left:10px;"><a href="javascript:func_alert('몽생미셀, 패러글라이딩, 남부투어등 필수투어들은 성수기가 되어 예약인원이 어느정도 차면 보통 가격이 인상됩니다.')"><font style="font-size:10pt;color:#c0c0c0">마음에 둔 투어가 있다면 비교해서 미리 할인가격에 예약해두세요.<font style="font-size:12pt;color:#3ad195"><i class="fa fa-question-circle" aria-hidden="true"></i></font></font></u></a></div>
	<div style="clear:both"></div>
<div style="width:33.3%;float:left;text-align:center;margin-bottom:0px;">
		<div style="margin-left:10px;margin-right:10px;position:relative;height:150px;overflow:hidden;border-radius:5px;">
		<a style="display:block;text-decoration:none;" href="javascript:showLinkInModal('/market/group.asp?serial=27&thedate=2019-06-08&from=planner&trip_id=10259869')">
			<img style="position:absolute;top:50%;left:50%;height:100%;transform: translate(-50%, -50%);border-radius:5px;" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/da72b58d4ee68232f91e9982795fa34e.jpg">
			<div style="position: absolute;display: flex;flex-flow: column nowrap;justify-content: center;align-items: center;width:100%;height:100%;margin: 4px 0;color: #fff;text-align: center;text-shadow: #000 0 0 3px;">
                                        <p style="font-size:18px;font-weight:600;color:#fff;">이탈리아 남부투어</p>
                                        <p style="font-size: 14px;font-weight:300;color:#fff;">15개 투어
                                            <span>₩ 60,000~</span>
                                        </p>
			<p style="font-weight:300;font-size:9pt;color:#fff;">이탈리아</p>

			
			<div style="display:inline-block;background:#ee685a;color:#fff;font-size:8pt;padding-top:2px;padding-bottom:2px;padding-left:5px;padding-right:5px;margin-top:5px;">⚡️ 얼리버드SALE</div>
		
			</div>
		</a></div>
	</div><div style="width:33.3%;float:left;text-align:center;margin-bottom:0px;">
		<div style="margin-left:10px;margin-right:10px;position:relative;height:150px;overflow:hidden;border-radius:5px;">
		<a style="display:block;text-decoration:none;" href="javascript:showLinkInModal('/market/group.asp?serial=36&thedate=2019-06-08&from=planner&trip_id=10259869')">
			<img style="position:absolute;top:50%;left:50%;height:100%;transform: translate(-50%, -50%);border-radius:5px;" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/adeda6946a12be647ec7137902f673bb.jpg">
			<div style="position: absolute;display: flex;flex-flow: column nowrap;justify-content: center;align-items: center;width:100%;height:100%;margin: 4px 0;color: #fff;text-align: center;text-shadow: #000 0 0 3px;">
                                        <p style="font-size:18px;font-weight:600;color:#fff;">체코 스카이다이빙</p>
                                        <p style="font-size: 14px;font-weight:300;color:#fff;">2개 투어
                                            <span>₩ 198,000~</span>
                                        </p>
			<p style="font-weight:300;font-size:9pt;color:#fff;">동유럽</p>

			
			<div style="display:inline-block;background:#ee685a;color:#fff;font-size:8pt;padding-top:2px;padding-bottom:2px;padding-left:5px;padding-right:5px;margin-top:5px;">⚡️ 얼리버드SALE</div>
		
			</div>
		</a></div>
	</div><div style="width:33.3%;float:left;text-align:center;margin-bottom:0px;">
		<div style="margin-left:10px;margin-right:10px;position:relative;height:150px;overflow:hidden;border-radius:5px;">
		<a style="display:block;text-decoration:none;" href="javascript:showLinkInModal('/market/group.asp?serial=26&thedate=2019-06-08&from=planner&trip_id=10259869')">
			<img style="position:absolute;top:50%;left:50%;height:100%;transform: translate(-50%, -50%);border-radius:5px;" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/83f804eb009b6e04e9ae5d897bccd278.jpg">
			<div style="position: absolute;display: flex;flex-flow: column nowrap;justify-content: center;align-items: center;width:100%;height:100%;margin: 4px 0;color: #fff;text-align: center;text-shadow: #000 0 0 3px;">
                                        <p style="font-size:18px;font-weight:600;color:#fff;">바티칸 지식가이드</p>
                                        <p style="font-size: 14px;font-weight:300;color:#fff;">20개 투어
                                            <span>₩ 15,000~</span>
                                        </p>
			<p style="font-weight:300;font-size:9pt;color:#fff;">이탈리아</p>

			
			<div style="display:inline-block;background:#ee685a;color:#fff;font-size:8pt;padding-top:2px;padding-bottom:2px;padding-left:5px;padding-right:5px;margin-top:5px;">⚡️ 얼리버드SALE</div>
		
			</div>
		</a></div>
	</div><div style="clear:both;margin-bottom:20px;"></div><div style="width:33.3%;float:left;text-align:center;margin-bottom:0px;">
		<div style="margin-left:10px;margin-right:10px;position:relative;height:150px;overflow:hidden;border-radius:5px;">
		<a style="display:block;text-decoration:none;" href="javascript:showLinkInModal('/market/group.asp?serial=32&thedate=2019-06-08&from=planner&trip_id=10259869')">
			<img style="position:absolute;top:50%;left:50%;height:100%;transform: translate(-50%, -50%);border-radius:5px;" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/8515848961b39dcf35740aa50c7e6c62.jpg">
			<div style="position: absolute;display: flex;flex-flow: column nowrap;justify-content: center;align-items: center;width:100%;height:100%;margin: 4px 0;color: #fff;text-align: center;text-shadow: #000 0 0 3px;">
                                        <p style="font-size:18px;font-weight:600;color:#fff;">가우디 지식가이드</p>
                                        <p style="font-size: 14px;font-weight:300;color:#fff;">17개 투어
                                            <span>₩ 15,000~</span>
                                        </p>
			<p style="font-weight:300;font-size:9pt;color:#fff;">스페인</p>

			
			<div style="display:inline-block;background:#ee685a;color:#fff;font-size:8pt;padding-top:2px;padding-bottom:2px;padding-left:5px;padding-right:5px;margin-top:5px;">⚡️ 얼리버드SALE</div>
		
			</div>
		</a></div>
	</div><div style="width:33.3%;float:left;text-align:center;margin-bottom:0px;">
		<div style="margin-left:10px;margin-right:10px;position:relative;height:150px;overflow:hidden;border-radius:5px;">
		<a style="display:block;text-decoration:none;" href="javascript:showLinkInModal('/market/group.asp?serial=72&thedate=2019-06-08&from=planner&trip_id=10259869')">
			<img style="position:absolute;top:50%;left:50%;height:100%;transform: translate(-50%, -50%);border-radius:5px;" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/309ccb3a2964cbb4e4e2b4e93ce393a7.jpg">
			<div style="position: absolute;display: flex;flex-flow: column nowrap;justify-content: center;align-items: center;width:100%;height:100%;margin: 4px 0;color: #fff;text-align: center;text-shadow: #000 0 0 3px;">
                                        <p style="font-size:18px;font-weight:600;color:#fff;">해리포터 스튜디오 </p>
                                        <p style="font-size: 14px;font-weight:300;color:#fff;">4개 투어
                                            <span>₩ 80,000~</span>
                                        </p>
			<p style="font-weight:300;font-size:9pt;color:#fff;">영국</p>

			
			<div style="display:inline-block;background:#ee685a;color:#fff;font-size:8pt;padding-top:2px;padding-bottom:2px;padding-left:5px;padding-right:5px;margin-top:5px;">⚡️ 얼리버드SALE</div>
		
			</div>
		</a></div>
	</div><div style="width:33.3%;float:left;text-align:center;margin-bottom:0px;">
		<div style="margin-left:10px;margin-right:10px;position:relative;height:150px;overflow:hidden;border-radius:5px;">
		<a style="display:block;text-decoration:none;" href="javascript:showLinkInModal('/market/group.asp?serial=232&thedate=2019-06-08&from=planner&trip_id=10259869')">
			<img style="position:absolute;top:50%;left:50%;height:100%;transform: translate(-50%, -50%);border-radius:5px;" src="http://d3b39vpyptsv01.cloudfront.net/0/0/1551250146150zupASzzTR8.jpg">
			<div style="position: absolute;display: flex;flex-flow: column nowrap;justify-content: center;align-items: center;width:100%;height:100%;margin: 4px 0;color: #fff;text-align: center;text-shadow: #000 0 0 3px;">
                                        <p style="font-size:18px;font-weight:600;color:#fff;">프로방스/라벤더</p>
                                        <p style="font-size: 14px;font-weight:300;color:#fff;">8개 투어
                                            <span>₩ 79,000~</span>
                                        </p>
			<p style="font-weight:300;font-size:9pt;color:#fff;">프랑스</p>

			
			<div style="display:inline-block;background:#ee685a;color:#fff;font-size:8pt;padding-top:2px;padding-bottom:2px;padding-left:5px;padding-right:5px;margin-top:5px;">⚡️ 얼리버드SALE</div>
		
			</div>
		</a></div>
	</div><div style="clear:both;margin-bottom:20px;"></div><div style="width:33.3%;float:left;text-align:center;margin-bottom:0px;">
		<div style="margin-left:10px;margin-right:10px;position:relative;height:150px;overflow:hidden;border-radius:5px;">
		<a style="display:block;text-decoration:none;" href="javascript:showLinkInModal('/market/group.asp?serial=1&thedate=2019-06-08&from=planner&trip_id=10259869')">
			<img style="position:absolute;top:50%;left:50%;height:100%;transform: translate(-50%, -50%);border-radius:5px;" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/008d40a42b47fd66efaececd9f9c6128.jpg">
			<div style="position: absolute;display: flex;flex-flow: column nowrap;justify-content: center;align-items: center;width:100%;height:100%;margin: 4px 0;color: #fff;text-align: center;text-shadow: #000 0 0 3px;">
                                        <p style="font-size:18px;font-weight:600;color:#fff;">몽생미셀 베스트</p>
                                        <p style="font-size: 14px;font-weight:300;color:#fff;">15개 투어
                                            <span>₩ 90,000~</span>
                                        </p>
			<p style="font-weight:300;font-size:9pt;color:#fff;">프랑스</p>

			
			<div style="display:inline-block;background:#ee685a;color:#fff;font-size:8pt;padding-top:2px;padding-bottom:2px;padding-left:5px;padding-right:5px;margin-top:5px;">⚡️ 얼리버드SALE</div>
		
			</div>
		</a></div>
	</div><div style="width:33.3%;float:left;text-align:center;margin-bottom:0px;">
		<div style="margin-left:10px;margin-right:10px;position:relative;height:150px;overflow:hidden;border-radius:5px;">
		<a style="display:block;text-decoration:none;" href="javascript:showLinkInModal('/market/group.asp?serial=38&thedate=2019-06-08&from=planner&trip_id=10259869')">
			<img style="position:absolute;top:50%;left:50%;height:100%;transform: translate(-50%, -50%);border-radius:5px;" src="http://d3b39vpyptsv01.cloudfront.net/0/0/1528708359714OY7hXkHBbt.jpg">
			<div style="position: absolute;display: flex;flex-flow: column nowrap;justify-content: center;align-items: center;width:100%;height:100%;margin: 4px 0;color: #fff;text-align: center;text-shadow: #000 0 0 3px;">
                                        <p style="font-size:18px;font-weight:600;color:#fff;">프라하 시내</p>
                                        <p style="font-size: 14px;font-weight:300;color:#fff;">33개 투어
                                            <span>₩ 10,000~</span>
                                        </p>
			<p style="font-weight:300;font-size:9pt;color:#fff;">동유럽</p>

			
			<div style="display:inline-block;background:#ee685a;color:#fff;font-size:8pt;padding-top:2px;padding-bottom:2px;padding-left:5px;padding-right:5px;margin-top:5px;">⚡️ 얼리버드SALE</div>
		
			</div>
		</a></div>
	</div><div style="width:33.3%;float:left;text-align:center;margin-bottom:0px;">
		<div style="margin-left:10px;margin-right:10px;position:relative;height:150px;overflow:hidden;border-radius:5px;">
		<a style="display:block;text-decoration:none;" href="javascript:showLinkInModal('/market/group.asp?serial=28&thedate=2019-06-08&from=planner&trip_id=10259869')">
			<img style="position:absolute;top:50%;left:50%;height:100%;transform: translate(-50%, -50%);border-radius:5px;" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/928052d12b627c80dd8886e1b0974ee1.jpg">
			<div style="position: absolute;display: flex;flex-flow: column nowrap;justify-content: center;align-items: center;width:100%;height:100%;margin: 4px 0;color: #fff;text-align: center;text-shadow: #000 0 0 3px;">
                                        <p style="font-size:18px;font-weight:600;color:#fff;">로마 시내투어</p>
                                        <p style="font-size: 14px;font-weight:300;color:#fff;">21개 투어
                                            <span>₩ 7,000~</span>
                                        </p>
			<p style="font-weight:300;font-size:9pt;color:#fff;">이탈리아</p>

			
			<div style="display:inline-block;background:#ee685a;color:#fff;font-size:8pt;padding-top:2px;padding-bottom:2px;padding-left:5px;padding-right:5px;margin-top:5px;">⚡️ 얼리버드SALE</div>
		
			</div>
		</a></div>
	</div><div style="clear:both;margin-bottom:20px;"></div><div style="width:33.3%;float:left;text-align:center;margin-bottom:0px;">
		<div style="margin-left:10px;margin-right:10px;position:relative;height:150px;overflow:hidden;border-radius:5px;">
		<a style="display:block;text-decoration:none;" href="javascript:showLinkInModal('/market/group.asp?serial=67&thedate=2019-06-08&from=planner&trip_id=10259869')">
			<img style="position:absolute;top:50%;left:50%;height:100%;transform: translate(-50%, -50%);border-radius:5px;" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/edcd9c5c44d684a389cb8350c1e501aa.jpg">
			<div style="position: absolute;display: flex;flex-flow: column nowrap;justify-content: center;align-items: center;width:100%;height:100%;margin: 4px 0;color: #fff;text-align: center;text-shadow: #000 0 0 3px;">
                                        <p style="font-size:18px;font-weight:600;color:#fff;">토스카나</p>
                                        <p style="font-size: 14px;font-weight:300;color:#fff;">12개 투어
                                            <span>₩ 60,000~</span>
                                        </p>
			<p style="font-weight:300;font-size:9pt;color:#fff;">이탈리아</p>

			
			<div style="display:inline-block;background:#ee685a;color:#fff;font-size:8pt;padding-top:2px;padding-bottom:2px;padding-left:5px;padding-right:5px;margin-top:5px;">⚡️ 얼리버드SALE</div>
		
			</div>
		</a></div>
	</div><div style="width:33.3%;float:left;text-align:center;margin-bottom:0px;">
		<div style="margin-left:10px;margin-right:10px;position:relative;height:150px;overflow:hidden;border-radius:5px;">
		<a style="display:block;text-decoration:none;" href="javascript:showLinkInModal('/market/group.asp?serial=162&thedate=2019-06-08&from=planner&trip_id=10259869')">
			<img style="position:absolute;top:50%;left:50%;height:100%;transform: translate(-50%, -50%);border-radius:5px;" src="http://d3b39vpyptsv01.cloudfront.net/0/0/1555572500125yRHCVsUUeR.jpg">
			<div style="position: absolute;display: flex;flex-flow: column nowrap;justify-content: center;align-items: center;width:100%;height:100%;margin: 4px 0;color: #fff;text-align: center;text-shadow: #000 0 0 3px;">
                                        <p style="font-size:18px;font-weight:600;color:#fff;">부다페스트 시내</p>
                                        <p style="font-size: 14px;font-weight:300;color:#fff;">13개 투어
                                            <span>₩ 29,000~</span>
                                        </p>
			<p style="font-weight:300;font-size:9pt;color:#fff;">동유럽</p>

			
			<div style="display:inline-block;background:#ee685a;color:#fff;font-size:8pt;padding-top:2px;padding-bottom:2px;padding-left:5px;padding-right:5px;margin-top:5px;">⚡️ 얼리버드SALE</div>
		
			</div>
		</a></div>
	</div><div style="width:33.3%;float:left;text-align:center;margin-bottom:0px;">
		<div style="margin-left:10px;margin-right:10px;position:relative;height:150px;overflow:hidden;border-radius:5px;">
		<a style="display:block;text-decoration:none;" href="javascript:showLinkInModal('/market/group.asp?serial=20&thedate=2019-06-08&from=planner&trip_id=10259869')">
			<img style="position:absolute;top:50%;left:50%;height:100%;transform: translate(-50%, -50%);border-radius:5px;" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/db6768706a857b61c960a0ade9735c36.jpg">
			<div style="position: absolute;display: flex;flex-flow: column nowrap;justify-content: center;align-items: center;width:100%;height:100%;margin: 4px 0;color: #fff;text-align: center;text-shadow: #000 0 0 3px;">
                                        <p style="font-size:18px;font-weight:600;color:#fff;">런던 뮤지컬</p>
                                        <p style="font-size: 14px;font-weight:300;color:#fff;">8개 투어
                                            <span>₩ 72,000~</span>
                                        </p>
			<p style="font-weight:300;font-size:9pt;color:#fff;">영국</p>

			
			<div style="display:inline-block;background:#ee685a;color:#fff;font-size:8pt;padding-top:2px;padding-bottom:2px;padding-left:5px;padding-right:5px;margin-top:5px;">⚡️ 얼리버드SALE</div>
		
			</div>
		</a></div>
	</div><div style="clear:both;margin-bottom:20px;"></div><div style="width:33.3%;float:left;text-align:center;margin-bottom:0px;">
		<div style="margin-left:10px;margin-right:10px;position:relative;height:150px;overflow:hidden;border-radius:5px;">
		<a style="display:block;text-decoration:none;" href="javascript:showLinkInModal('/market/group.asp?serial=161&thedate=2019-06-08&from=planner&trip_id=10259869')">
			<img style="position:absolute;top:50%;left:50%;height:100%;transform: translate(-50%, -50%);border-radius:5px;" src="http://d3b39vpyptsv01.cloudfront.net/0/0/1555570342046pcMynDsjsl.jpg">
			<div style="position: absolute;display: flex;flex-flow: column nowrap;justify-content: center;align-items: center;width:100%;height:100%;margin: 4px 0;color: #fff;text-align: center;text-shadow: #000 0 0 3px;">
                                        <p style="font-size:18px;font-weight:600;color:#fff;">비엔나 시내</p>
                                        <p style="font-size: 14px;font-weight:300;color:#fff;">7개 투어
                                            <span>₩ 39,000~</span>
                                        </p>
			<p style="font-weight:300;font-size:9pt;color:#fff;">동유럽</p>

			
			<div style="display:inline-block;background:#ee685a;color:#fff;font-size:8pt;padding-top:2px;padding-bottom:2px;padding-left:5px;padding-right:5px;margin-top:5px;">⚡️ 얼리버드SALE</div>
		
			</div>
		</a></div>
	</div><div style="width:33.3%;float:left;text-align:center;margin-bottom:0px;">
		<div style="margin-left:10px;margin-right:10px;position:relative;height:150px;overflow:hidden;border-radius:5px;">
		<a style="display:block;text-decoration:none;" href="javascript:showLinkInModal('/market/group.asp?serial=260&thedate=2019-06-08&from=planner&trip_id=10259869')">
			<img style="position:absolute;top:50%;left:50%;height:100%;transform: translate(-50%, -50%);border-radius:5px;" src="http://d3b39vpyptsv01.cloudfront.net/0/0/1555328255008ufsIQY54W1.jpg">
			<div style="position: absolute;display: flex;flex-flow: column nowrap;justify-content: center;align-items: center;width:100%;height:100%;margin: 4px 0;color: #fff;text-align: center;text-shadow: #000 0 0 3px;">
                                        <p style="font-size:18px;font-weight:600;color:#fff;">알함브라 궁전투어</p>
                                        <p style="font-size: 14px;font-weight:300;color:#fff;">3개 투어
                                            <span>₩ 53,000~</span>
                                        </p>
			<p style="font-weight:300;font-size:9pt;color:#fff;">스페인</p>

			
			<div style="display:inline-block;background:#ee685a;color:#fff;font-size:8pt;padding-top:2px;padding-bottom:2px;padding-left:5px;padding-right:5px;margin-top:5px;">⚡️ 얼리버드SALE</div>
		
			</div>
		</a></div>
	</div><div style="width:33.3%;float:left;text-align:center;margin-bottom:0px;">
		<div style="margin-left:10px;margin-right:10px;position:relative;height:150px;overflow:hidden;border-radius:5px;">
		<a style="display:block;text-decoration:none;" href="javascript:showLinkInModal('/market/group.asp?serial=141&thedate=2019-06-08&from=planner&trip_id=10259869')">
			<img style="position:absolute;top:50%;left:50%;height:100%;transform: translate(-50%, -50%);border-radius:5px;" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/d46de26fa222510dd8af1ceccd96dee0.jpg">
			<div style="position: absolute;display: flex;flex-flow: column nowrap;justify-content: center;align-items: center;width:100%;height:100%;margin: 4px 0;color: #fff;text-align: center;text-shadow: #000 0 0 3px;">
                                        <p style="font-size:18px;font-weight:600;color:#fff;">세비야 시내투어</p>
                                        <p style="font-size: 14px;font-weight:300;color:#fff;">3개 투어
                                            <span>₩ 33,000~</span>
                                        </p>
			<p style="font-weight:300;font-size:9pt;color:#fff;">스페인</p>

			
			<div style="display:inline-block;background:#ee685a;color:#fff;font-size:8pt;padding-top:2px;padding-bottom:2px;padding-left:5px;padding-right:5px;margin-top:5px;">⚡️ 얼리버드SALE</div>
		
			</div>
		</a></div>
	</div><div style="clear:both;margin-bottom:20px;"></div><div style="width:33.3%;float:left;text-align:center;margin-bottom:0px;">
		<div style="margin-left:10px;margin-right:10px;position:relative;height:150px;overflow:hidden;border-radius:5px;">
		<a style="display:block;text-decoration:none;" href="javascript:showLinkInModal('/market/group.asp?serial=266&thedate=2019-06-08&from=planner&trip_id=10259869')">
			<img style="position:absolute;top:50%;left:50%;height:100%;transform: translate(-50%, -50%);border-radius:5px;" src="http://d3b39vpyptsv01.cloudfront.net/0/0/1555330502785EKeDqKFzUR.jpg">
			<div style="position: absolute;display: flex;flex-flow: column nowrap;justify-content: center;align-items: center;width:100%;height:100%;margin: 4px 0;color: #fff;text-align: center;text-shadow: #000 0 0 3px;">
                                        <p style="font-size:18px;font-weight:600;color:#fff;">베니스 곤돌라</p>
                                        <p style="font-size: 14px;font-weight:300;color:#fff;">2개 투어
                                            <span>₩ 44,000~</span>
                                        </p>
			<p style="font-weight:300;font-size:9pt;color:#fff;">이탈리아</p>

			
			<div style="display:inline-block;background:#ee685a;color:#fff;font-size:8pt;padding-top:2px;padding-bottom:2px;padding-left:5px;padding-right:5px;margin-top:5px;">⚡️ 얼리버드SALE</div>
		
			</div>
		</a></div>
	</div><div style="width:33.3%;float:left;text-align:center;margin-bottom:0px;">
		<div style="margin-left:10px;margin-right:10px;position:relative;height:150px;overflow:hidden;border-radius:5px;">
		<a style="display:block;text-decoration:none;" href="javascript:showLinkInModal('/market/group.asp?serial=81&thedate=2019-06-08&from=planner&trip_id=10259869')">
			<img style="position:absolute;top:50%;left:50%;height:100%;transform: translate(-50%, -50%);border-radius:5px;" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/b49c4b833270649c9388fbc57f78cbe0.jpg">
			<div style="position: absolute;display: flex;flex-flow: column nowrap;justify-content: center;align-items: center;width:100%;height:100%;margin: 4px 0;color: #fff;text-align: center;text-shadow: #000 0 0 3px;">
                                        <p style="font-size:18px;font-weight:600;color:#fff;">마드리드시내 / 프라도 미술관</p>
                                        <p style="font-size: 14px;font-weight:300;color:#fff;">7개 투어
                                            <span>₩ 19,000~</span>
                                        </p>
			<p style="font-weight:300;font-size:9pt;color:#fff;">스페인</p>

			
			<div style="display:inline-block;background:#ee685a;color:#fff;font-size:8pt;padding-top:2px;padding-bottom:2px;padding-left:5px;padding-right:5px;margin-top:5px;">⚡️ 얼리버드SALE</div>
		
			</div>
		</a></div>
	</div><div style="width:33.3%;float:left;text-align:center;margin-bottom:0px;">
		<div style="margin-left:10px;margin-right:10px;position:relative;height:150px;overflow:hidden;border-radius:5px;">
		<a style="display:block;text-decoration:none;" href="javascript:showLinkInModal('/market/group.asp?serial=65&thedate=2019-06-08&from=planner&trip_id=10259869')">
			<img style="position:absolute;top:50%;left:50%;height:100%;transform: translate(-50%, -50%);border-radius:5px;" src="http://d3b39vpyptsv01.cloudfront.net/0/0/1551232402868KDGZ5lX4at.jpg">
			<div style="position: absolute;display: flex;flex-flow: column nowrap;justify-content: center;align-items: center;width:100%;height:100%;margin: 4px 0;color: #fff;text-align: center;text-shadow: #000 0 0 3px;">
                                        <p style="font-size:18px;font-weight:600;color:#fff;">에든버러 시내워킹</p>
                                        <p style="font-size: 14px;font-weight:300;color:#fff;">2개 투어
                                            <span>₩ 40,000~</span>
                                        </p>
			<p style="font-weight:300;font-size:9pt;color:#fff;">영국</p>

			
			<div style="display:inline-block;background:#ee685a;color:#fff;font-size:8pt;padding-top:2px;padding-bottom:2px;padding-left:5px;padding-right:5px;margin-top:5px;">⚡️ 얼리버드SALE</div>
		
			</div>
		</a></div>
	</div><div style="clear:both;margin-bottom:20px;"></div>
	<div style="clear:both"></div>

	</div>
	</section>






            <section style="margin-top:20px;padding-top:10px;padding-bottom:20px;background:#f5f5f5">
	<div class="stu_inner_wrap">
		<div style="border-top:0px solid #efefef;padding-top:20px;width:100%;padding-bottom:5px;padding-top:20px;">
			<div style="float:left;width:25%;" >
				<font style="font-size:18pt;font-weight:700;color:#696969">전문가의뢰</font>
			</div>
		</div>
	

<div id="div_feedback" style="float:left;width:75%;background:#fff;border:1px solid #e5e5e5;padding-top:10px;padding-left:10px;padding-right:10px;padding-bottom:10px;">

<div style="padding-left:15px;padding-right:15px;font-size:13pt;color:gray;padding-top:20px;padding-bottom:20px;">
	루트부터 숙소, 일정까지<br>
	이 여행을 전문가에게 의뢰해 보세요!<br>
	
	<br>
	<a href="/consulting/index.asp?trip_id=10259869" target="_blank" class="btn-u btn-u-lg btn-block" style="background:#ee685a">스투비 맞춤여행의뢰 </a>
</div>


</div>


	</div>

  </section>


        </main>



<div id="modal-Guide2" class="modal fade bs-example-modal-lg"  tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" style="">
    <div class="modal-content">

      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="title-Guide2">GuideBook</h4>
      </div>
      <div class="modal-body" id="desc-Guide2" style="">
      </div>
    </div>
  </div>
</div>

<div id="modal-Guide" class="modal fade bs-example-modal-lg"  tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" style="">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="title-Guide">GuideBook</h4>
      </div>
      <div class="modal-body" style="">
		<iframe id="if_guidebook" frameborder="0" width="100%"  height="500px" src="about:blank" ></iframe>
      </div>
    </div>
  </div>
</div>



<div id="modal-Modify" class="modal fade in" aria-hidden="false">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title">플래너 정보수정</h4>
      </div>
      <div class="modal-body">
<script>
	function ffsubmit()
	{
		document.form.submit();
	}
	
</script>

	<form name="form" action="detail.asp" method="get">


		<input type="hidden" name="trip_id" value="10259869">
		<input type="hidden" name="neededit" value="1">
		<input type="hidden" name="needlogin" value="">
		<input type="hidden" name="access_key" value="">

		<input type="hidden" name="isSubmit" value="1">
		<div class="clearfix" style="margin-bottom:7px">
			<label for="planname">플래너명&nbsp;</label>
			<div class="input">
				<input class="form-control col-md-6" id="planname" name="planname" size="30" type="text" value="30일간 여행">
				
			</div>
		</div>
<!---
		<div class="clearfix" style="margin-bottom:7px">
			<label for="hiddentype">공개여부&nbsp;</label>
			<div class="input">
				<select name="hiddentype" class="form-control col-md-6">
					<option value="">공개</option>
					<option value="iscosthidden">예약정보 비공개</option>
					<option value="ishidden">일정+예약정보 비공개</option>
				</select>
				
			</div>
		</div>
--->
		<div class="clearfix" style="margin-bottom:7px">
			<label for="member_cnt">인원&nbsp;</label>
			<div class="input">
				<select name="member_cnt" class="form-control col-md-6">
					<option value="">-선택-</option>
				
					<option value="1" selected>1명</option>
				
					<option value="2" >2명</option>
				
					<option value="3" >3명</option>
				
					<option value="4" >4명</option>
				
					<option value="5" >5명</option>
				
					<option value="6" >6명</option>
				
					<option value="7" >7명</option>
				
					<option value="8" >8명</option>
				
					<option value="9" >9명</option>
				
					<option value="10" >10명</option>
				
					<option value="11" >11명</option>
				
					<option value="12" >12명</option>
				
					<option value="13" >13명</option>
				
					<option value="14" >14명</option>
				
					<option value="15" >15명</option>
				
					<option value="16" >16명</option>
				
					<option value="17" >17명</option>
				
					<option value="18" >18명</option>
				
					<option value="19" >19명</option>
				
					<option value="20" >20명</option>
				
					<option value="21" >21명</option>
				
					<option value="22" >22명</option>
				
					<option value="23" >23명</option>
				
					<option value="24" >24명</option>
				
					<option value="25" >25명</option>
				
					<option value="26" >26명</option>
				
					<option value="27" >27명</option>
				
					<option value="28" >28명</option>
				
					<option value="29" >29명</option>
				
					<option value="30" >30명</option>
				
					<option value="31" >31명</option>
				
					<option value="32" >32명</option>
				
					<option value="33" >33명</option>
				
					<option value="34" >34명</option>
				
					<option value="35" >35명</option>
				
					<option value="36" >36명</option>
				
					<option value="37" >37명</option>
				
					<option value="38" >38명</option>
				
					<option value="39" >39명</option>
				
					<option value="40" >40명</option>
				
					<option value="41" >41명</option>
				
					<option value="42" >42명</option>
				
					<option value="43" >43명</option>
				
					<option value="44" >44명</option>
				
					<option value="45" >45명</option>
				
					<option value="46" >46명</option>
				
					<option value="47" >47명</option>
				
					<option value="48" >48명</option>
				
					<option value="49" >49명</option>
				
					<option value="50" >50명</option>
		
				</select>
			</div>
		</div>


		<div class="clearfix" style="margin-bottom:7px">
			<label for="tourtype">여행타입&nbsp;</label>
			<div class="input">
				<select name="tripwith" class="form-control col-md-6">
				<option value="">--선택--</option>
				<option value="1" >여자혼자</option>
				<option value="2" >남자혼자</option>
				<option value="3" >커플/신혼</option>
				<option value="4" >여자끼리</option>
				<option value="5" >남자끼리</option>
				<option value="6" >남녀함께</option>
				<option value="7" >아이들과</option>
				<option value="8" >부모님과</option>
				<option value="9" >부모님끼리</option>
				</select>
			</div>
		</div>

		<div class="clearfix">
			<div style="text-align:center">
				<a href="javascript:" data-dismiss="modal" class="btn-u btn-u-default">취소하기</a>
				<a href="javascript:ffsubmit();" class="btn-u btn-u-orange">수정하기</a>
			</div>
		</div>
	</form>	
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div>



<div id="div_bucketlist" style="z-index:999;display:none;position:fixed;top:0px;left;0px;width:100%;height:590px;margin-left:0px;background:#fff;border:7px solid #3ad195;"></div>
<div id="div_trsinfo" style="z-index:999;display:none;position:fixed;top:0px;left;0px;width:100%;height:590px;margin-left:0px;background:#fff;border:7px solid #3ad195;">
	<div style="background:#3ad195;height:50px;overflow-y:hidden;"><div style="float:left;width:85%;font-size:11pt;color:#fff;padding-left:10px;padding-top:5px;font-weight:bold" id="title_trsinfo">구간 이동정보</div><div style="float:left;width:15%;cursor:pointer;text-align:right;padding-right:4px;" onclick="closeTrsInfo()"><font style="font-size:23pt;color:#fff"><i class="fa fa-times-circle"></i></font></div><div style="clear:both"></div></div>
	<iframe src="about:blank" frameborder="0" id="trsinfo_inside" style="width:100%;height:490px"></iframe>
</div>



		</div>


    <!-- swiper.js : 이미지슬라이더 -->
    <script type="text/javascript" src="/market/js/swiper.min.js"></script>

<!-- JS Global Compulsory -->
<script src="/superguide/One-Pages/assets/plugins/jquery/jquery.min.js"></script>
<script src="/superguide/One-Pages/assets/plugins/jquery/jquery-migrate.min.js"></script>

<!-- JS Implementing Plugins -->


<!-- JS Global Compulsory -->
<script type="text/javascript" src="/js/fullcalendar/lib/jquery-ui.min.js"></script>
<script src="/js/fullcalendar/lib/moment.min.js" type="text/javascript"></script>

<script type="text/javascript" src="/js/fullcalendar.min.js"></script>
<script type="text/javascript" src="/js/fullcalendar_lang-all.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="https://unpkg.com/flickity@2.0/dist/flickity.pkgd.min.js"></script>

<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>



<!-----팝업 시작 ---->



<div id="modal-resvinfo"  class="modal fade bs-example-modal-lg">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
	<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
	 <h4 class="modal-title">예약정보&nbsp;&nbsp; <a href="//search.naver.com/search.naver?where=nexearch&sm=ies_hty&ie=utf8&query=%ED%99%98%EC%9C%A8" target="_blank"  class="btn btn-u">환율계산기 &raquo;</a></h4> 
      </div>
      <div class="modal-body">
	 <iframe id="if_resv_info" frameborder="0" src="about:blank" width="100%" height="470px" scrolling="no"></iframe>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->




		<div class="modal fade bs-example-modal-lg" id="modal-page" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-lg">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
		        <h4 class="modal-title" id="myModalLabel">피드백 요청</h4>
		      </div>
		      <div class="modal-body">
		      	<iframe id="if_page" frameborder="0" src="about:blank" width="100%" height="470px" scrolling="no"></iframe>
		      </div>

		    </div>	
		  </div>
		</div>

		<div class="modal fade bs-example-modal-lg" id="modal-delete-page" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-lg">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
		        <h4 class="modal-title" id="myModalLabel">정말 삭제하시겠습니까?</h4>
		      </div>
		      <div class="modal-body">
		      	<a href="javascript:deleteReal()" class="btn-u btn-u-red btn-block">네, 이 플래너를 삭제합니다!</a>
		      </div>

		    </div>	
		  </div>
		</div>
<script>
	function openResvinfo(rs)
	{
		var surl="if_resv_air.asp?pl=10259869&region=&1[1-4]startdate=2019-06-08";
		if(rs)
			surl=surl+"&rs="+rs;
		document.getElementById("if_resv_info").src=surl;
		$('#modal-resvinfo').modal({
			keyboard: true,
			backdrop: 'static',
			show:true
		});
	}

</script>



<script>
var startdate='2019-06-08';
function openStartDateModal()
{
	
	sd=new Date(startdate);
	cur_year=sd.getFullYear();
	cur_month=sd.getMonth()+1;
	cur_day=sd.getDate();
	drawMonth(cur_year,cur_month);
	$("#my_modal_title").html("출국일 변경");
	openMyModal();

	
}

function openMyModal()
{
	$("#mymodal").show();
	$("body").addClass("modal-open");


}
function closeMyModal()
{
	$("#mymodal").hide();
	$("body").removeClass("modal-open")

	
}
var sd=new Date('2019-06-08');
dis_cur_year=sd.getFullYear();
dis_cur_month=sd.getMonth()+1;
dis_cur_day=sd.getDate();

function movePrevMonth()
{
	dis_cur_month--;
	if(dis_cur_month<1)
	{
		dis_cur_year--;
		dis_cur_month=12;
	}
	drawMonth(dis_cur_year,dis_cur_month);	
}
function moveNextMonth()
{
	dis_cur_month++;
	if(dis_cur_month>12)
	{
		dis_cur_year++;
		dis_cur_month=1;
	}

	drawMonth(dis_cur_year,dis_cur_month);	
	
}
function drawMonth(y,m)
{
	max_mday=31;
	if(m==2)
		max_mday=28;
	if(m==4)
		max_mday=30;
	if(m==6)
		max_mday=30;
	if(m==9)
		max_mday=30;
	if(m==11)
		max_mday=30;
	thtml='<div style="margin-top:15px"> </div>';



	thtml+='<div style="padding-bottom:20px;"><div style="float:left;width:20%;text-align:left"><a class="btn-u btn-u-default" style="border-radius:20px" href="javascript:movePrevMonth()"> < </a></div>';
	thtml+='<div style="float:left;width:60%" class="calendar_header_title">'+y+'년 '+m+'월</div>';
	thtml+='<div style="float:left;width:20%;text-align:right"><a class="btn-u btn-u-default" style="border-radius:20px" href="javascript:moveNextMonth()"> > </a></div>';
	thtml+='<div style="clear:both"></div></div>';

	thtml+='<div class="calendar_header">일</div>';
	thtml+='<div class="calendar_header">월</div>';
	thtml+='<div class="calendar_header">화</div>';
	thtml+='<div class="calendar_header">수</div>';
	thtml+='<div class="calendar_header">목</div>';
	thtml+='<div class="calendar_header">금</div>';
	thtml+='<div class="calendar_header">토</div>';
	thtml+='<div style="clear:both"></div>';

	m_txt=m;
	if(m<10)
		m_txt="0"+m;
	var dx = new Date(y+'-'+m_txt+'-01');
	v_bias=dx.getDay();
	for(i=0;i<dx.getDay();i++)
		thtml=thtml+'<div class="calendar_day_nothing"><a>-</a></div>';

	for(i=1;i<=max_mday;i++)
	{
		d_txt=i;
		if(i<10)
			d_txt='0'+i;
		thedate=y+'-'+m_txt+'-'+d_txt;
		if(y==cur_year&&m==cur_month&i==cur_day)
		{
			prv_cal_idx=i;
			myselectedDate=thedate;
			thtml=thtml+'<div style="width:14%;float:left"><div class="calendar_day_selected" id="cd_'+i+'" onclick="selDate(\''+thedate+'\',\''+i+'\')">'+i+'</div></div>';
		}
		else
		{
		
			thtml=thtml+'<div style="width:14%;float:left"><div class="calendar_day" id="cd_'+i+'" onclick="selDate(\''+thedate+'\',\''+i+'\')">'+i+'</div></div>';
		}
		if(eval(i+v_bias) % 7==0)
			thtml+='<div style="clear:both"></div>';
	}

	thtml+='<div style="clear:both"></div>';

	thtml+='<div style="margin-left:20px;margin-right:20px;margin-top:20px;margin-bottom:20px;">';
	
	theclass_f1="btn_arr_nextday_selected";
	theclass_f2="btn_arr_nextday";

	if(arr_nextday==1)
	{
		theclass_f1="btn_arr_nextday";
		theclass_f2="btn_arr_nextday_selected";
	}


		thtml+='<div class="'+theclass_f1+'" style="border-top-left-radius:20px;border-bottom-left-radius:20px;" id="arr_nextday_0"  onclick="selArrNextDay(0)"> 출국일 현지도착</div>';
		thtml+='<div class="'+theclass_f2+'"  style="border-top-right-radius:20px;border-bottom-right-radius:20px;" id="arr_nextday_1" onclick="selArrNextDay(1)">출국일+1 현지도착</div>';
	thtml+='<div style="clear:both"></div></div>';

	thtml+='<div style="margin-left:0px;margin-right:0px;margin-top:40px;margin-bottom:40px;">';
		thtml+='<a class="btn-u btn-u-lg btn-u-green btn-block" style="border-radius:5px;" href="javascript:updateStartdate()">저장</a>';
	thtml+='</div>';

	$("#my_modal_desc").html(thtml);
}
var arr_nextday=0;
var my_arr_nextday=0;
function selArrNextDay(idx)
{
	my_arr_nextday=0;
	if(idx==0)
	{
		$("#arr_nextday_1").removeClass('btn_arr_nextday_selected');
		$("#arr_nextday_1").addClass('btn_arr_nextday');

		$("#arr_nextday_0").removeClass('btn_arr_nextday');
		$("#arr_nextday_0").addClass('btn_arr_nextday_selected');
		my_arr_nextday=0;
	}
	else
	{
		$("#arr_nextday_0").removeClass('btn_arr_nextday_selected');
		$("#arr_nextday_0").addClass('btn_arr_nextday');

		$("#arr_nextday_1").removeClass('btn_arr_nextday');
		$("#arr_nextday_1").addClass('btn_arr_nextday_selected');
		my_arr_nextday=1;
		
	}
}

var myselectedDate='';
var prv_cal_idx;
function selDate(thedate,idx)
{
	myselectedDate=thedate;
	if(prv_cal_idx)
	{
		$("#cd_"+prv_cal_idx).removeClass('calendar_day_selected');
		$("#cd_"+prv_cal_idx).addClass('calendar_day');
	}

	$("#cd_"+idx).removeClass('calendar_day');
	$("#cd_"+idx).addClass('calendar_day_selected');

	prv_cal_idx=idx;
}
var plan_term=30;
var tripwith="";
function updateStartdate()
{
	if(myselectedDate!='')
	{
		startdate=myselectedDate;
		arr_nextday=my_arr_nextday;
		

		$.ajax({
			  url: "/api/planning/saveCookieX.asp",
			 type: "POST",
			  async: false,
			  data: {
				tripgene:'111031001:3:0:0,121011003:2:X:0,121011004:0:6:0,121011003:1:X:0,121011002:3:X:0|B1855:X:X:X|B1856:X:X:X|B492:X:X:X|B1858:X:X:X|B549:X:X:X,111041004:3:X:1,111041003:1:X:0,111041006:1:X:0,111061005:1:X:0,131041002:1:X:0,131041032:1:X:0,131041001:2:X:0,131021001:1:X:0,131011001:3:X:0,111061006:1:X:0,111011004:4:X:0',
				startdate:startdate,
				tid:'10259869',
				term:plan_term,
				arr_nextday:arr_nextday
	
			  },
			  success: function( data ) {
				window.history.go(0);
			}
		});



	}
}

</script>
<script type='text/javascript'>


  //<![CDATA[
    Kakao.init('99954662157a0f0efc7abd010ef26dbc');

function initKakaoBtn()
{
	

	mURL="//www.stubbyplanner.com/planner/detail.asp?tid=10259869";
	mURL0="//www.stubbyplanner.com/planner/planner_rt_m.asp?trip_id=10259869";
	wURL="//www.stubbyplanner.com/planner/detail.asp?tid=10259869";
	wURL0="//www.stubbyplanner.com/planner/planner_rt.asp?trip_id=10259869";
    Kakao.Link.createDefaultButton({
      container: '#kakao-link-btn',
      objectType: 'feed',
      content: {
        title: '2019년 6월 8일 출발 30일간 여행',
        imageUrl: 'http://maps.googleapis.com/maps/api/staticmap?size=500x500&mobile=true&path=color:0x333333ff|weight:2|51.5,-0.126|40.417,-3.702|39.857,-4.024|40.417,-3.702|41.388,2.17|41.895,12.482|43.769,11.257|45.434,12.339|48.14,11.579|47.8,13.044|47.557,13.648|48.209,16.373|47.498,19.041|50.088,14.424|50.112,8.684|48.861,2.342&&markers=color:red|label:E|48.861,2.342&key=AIzaSyAlG3b7IeRzDZW46KIpOFPtiIxXt9MU46I&style=feature:administrative%7Celement:geometry.stroke%7Ccolor:0xb8b8b8%7Cvisibility:on%7Cweight:1&style=feature:administrative%7Celement:labels.text.fill%7Ccolor:0x6195a0&style=feature:administrative.province%7Celement:geometry.stroke%7Cvisibility:off&style=feature:landscape%7Celement:geometry%7Ccolor:0xfffef5&style=feature:landscape.man_made%7Clightness:-5&style=feature:landscape.natural.terrain%7Cvisibility:off&style=feature:poi%7Cvisibility:off&style=feature:poi.park%7Celement:geometry.fill%7Ccolor:0xbae5ce%7Cvisibility:on&style=feature:road%7Csaturation:-100%7Clightness:45%7Cvisibility:simplified&style=feature:road.arterial%7Cvisibility:off&style=feature:road.highway%7Cvisibility:off&style=feature:transit%7Cvisibility:simplified&style=feature:water%7Ccolor:0xc2f1f5%7Csaturation:35%7Clightness:40%7Cgamma:0.42%7Cvisibility:on&style=feature:water%7Celement:labels.text.fill%7Ccolor:0xadadad%7Cvisibility:on&scale=2',
        link: {
          mobileWebUrl: "https://www.stubbyplanner.com/planner/detail.asp?tid=10259869",
          webUrl: "https://www.stubbyplanner.com/planner/detail.asp?tid=10259869"
        }
      }
    });
}
	initKakaoBtn();

  //]]>


var tripgene;
$( document ).ready(function() {
	tripgene="111031001:3:0:0,121011003:2:X:0,121011004:0:6:0,121011003:1:X:0,121011002:3:X:0|B1855:X:X:X|B1856:X:X:X|B492:X:X:X|B1858:X:X:X|B549:X:X:X,111041004:3:X:1,111041003:1:X:0,111041006:1:X:0,111061005:1:X:0,131041002:1:X:0,131041032:1:X:0,131041001:2:X:0,131021001:1:X:0,131011001:3:X:0,111061006:1:X:0,111011004:4:X:0";
	startdate="2019-06-08";


	setTimeout(function(){showCalendar();}, 1000);

            var mySwiper3 = new Swiper ('.swiper', {
                slidesPerView:'auto',
               slidesPerGroup: 5,
                freeMode:true,
                direction:'horizontal',
                navigation: {
                    nextEl: '.swiper-button-next',
                    prevEl: '.swiper-button-prev',
                },
                pagination: {
                    el: '.swiper-pagination',
                },
            })

	loadDayExtInfo();
	$("#datepicker").datepicker({
			 dateFormat: 'yy-mm-dd',
			 onSelect: function(dateText, inst) {  }
	 });
	
	initKakaoBtn();
	


});



function saveTripgene()
{


	$.post("/api/planning/saveCookieX.asp", { 
		tripgene: tripgene,
		startdate:'2019-06-08',
		tripwith:tripwith,
		tid:'10259869'
	},
	function(data) {
		xx=JSON.parse(data);
	});
}




	function openSocialMsg(isfirst)
	{
		var surl="if_socialmsg.asp?gid=&planserial=10259869&isFirst="+isfirst;
		document.getElementById("if_page").src=surl;
		


		$('#modal-page').modal({
			keyboard: true,
			backdrop: 'static',
			show:true
		});

	}
	function closeSocialMsg()
	{
		$('#modal-page').modal('hide');
		document.getElementById("if_page").src="about:blank";
	}

function closeModal()
{
	$('#modal-info').modal('hide');
}



$(function () {
  if (!(/iPad|iPhone|iPod/.test(navigator.userAgent))) return
  $(document.head).append(
    '<style>*{cursor:pointer;-webkit-tap-highlight-color:rgba(0,0,0,0)}</style>'
  )
  $(window).on('gesturestart touchmove', function (evt) {
    if (evt.originalEvent.scale !== 1) {
      document.body.style.transform = 'scale(1)';
      evt.originalEvent.preventDefault();
    }
    else
    {}
  })
})

function showCalendar()
{

	$("#div_loading_on_map").hide();
			$("#div_calendar").fullCalendar({
				header: {
					left: 'prev',
					center: 'title',
					right: 'next'
				},
 
				defaultDate: '2019-06-08',
				buttonIcons: true, // show the prev/next text
				weekNumbers: false,
				editable: false,
				lang:'ko',
				events: [



					{
						id:'0',
						title: '<img src="/images/is/flag/11103_s.gif" style="width:15px;height:11px"> 런던',
						start: '2019-06-08',
						end: '2019-06-12',
						
						color: '#51bec9'
					},

					{
						id:'1',
						title: '<img src="/images/is/flag/12101_s.gif" style="width:15px;height:11px"> 마드리드',
						start: '2019-06-11',
						end: '2019-06-14',
						
						color: '#24afd6'
					},

					{
						id:'2',
						title: '<img src="/images/is/flag/12101_s.gif" style="width:15px;height:11px"> 톨레도',
						start: '2019-06-13',
						end: '2019-06-14',
						
						color: '#ffaf51'
					},

					{
						id:'3',
						title: '<img src="/images/is/flag/12101_s.gif" style="width:15px;height:11px"> 마드리드',
						start: '2019-06-13',
						end: '2019-06-15',
						
						color: '#fd8497'
					},

					{
						id:'4',
						title: '<img src="/images/is/flag/12101_s.gif" style="width:15px;height:11px"> 바르셀로나',
						start: '2019-06-14',
						end: '2019-06-18',
						
						color: '#f7d17c'
					},

					{
						id:'5',
						title: '<img src="/images/is/flag/11104_s.gif" style="width:15px;height:11px"> 로마',
						start: '2019-06-18',
						end: '2019-06-22',
						
						color: '#51d5a1'
					},

					{
						id:'6',
						title: '<img src="/images/is/flag/11104_s.gif" style="width:15px;height:11px"> 피렌체',
						start: '2019-06-21',
						end: '2019-06-23',
						
						color: '#21b4aa'
					},

					{
						id:'7',
						title: '<img src="/images/is/flag/11104_s.gif" style="width:15px;height:11px"> 베니스',
						start: '2019-06-22',
						end: '2019-06-24',
						
						color: '#aed551'
					},

					{
						id:'8',
						title: '<img src="/images/is/flag/11106_s.gif" style="width:15px;height:11px"> 뮌헨',
						start: '2019-06-23',
						end: '2019-06-25',
						
						color: '#f9916a'
					},

					{
						id:'9',
						title: '<img src="/images/is/flag/13104_s.gif" style="width:15px;height:11px"> 잘츠부르크',
						start: '2019-06-24',
						end: '2019-06-26',
						
						color: '#99837a'
					},

					{
						id:'10',
						title: '<img src="/images/is/flag/13104_s.gif" style="width:15px;height:11px"> 할슈타트',
						start: '2019-06-25',
						end: '2019-06-27',
						
						color: '#51bec9'
					},

					{
						id:'11',
						title: '<img src="/images/is/flag/13104_s.gif" style="width:15px;height:11px"> 비엔나(빈)',
						start: '2019-06-26',
						end: '2019-06-29',
						
						color: '#24afd6'
					},

					{
						id:'12',
						title: '<img src="/images/is/flag/13102_s.gif" style="width:15px;height:11px"> 부다페스트',
						start: '2019-06-28',
						end: '2019-06-30',
						
						color: '#ffaf51'
					},

					{
						id:'13',
						title: '<img src="/images/is/flag/13101_s.gif" style="width:15px;height:11px"> 프라하',
						start: '2019-06-29',
						end: '2019-07-03',
						
						color: '#fd8497'
					},

					{
						id:'14',
						title: '<img src="/images/is/flag/11106_s.gif" style="width:15px;height:11px"> 프랑크푸르트',
						start: '2019-07-02',
						end: '2019-07-04',
						
						color: '#f7d17c'
					},

					{
						id:'15',
						title: '<img src="/images/is/flag/11101_s.gif" style="width:15px;height:11px"> 파리',
						start: '2019-07-03',
						end: '2019-07-08',
						
						color: '#51d5a1'
					},

					{
						title: '출국일',
						start: '2019-06-08',
						
						color: '#999999'
						
					}
				],
				eventRender: function (event, element) {
				    element.find('.fc-event-title').html(event.title);
				}
			});
		

	$(".fc-button-prev").html("<");
	$(".fc-button-next").html(">");
}
	function openTrsinfo(dep,des,thedate)
	{
		showTrsTool(dep,des,thedate);
		return;
		

		var surl="/planner/if_trsinfo.asp?depserial="+dep+"&desserial="+des+"&thedate="+thedate;
		document.getElementById("if_trs_info").src=surl;
		$('#modal-trsinfo').modal({
			keyboard: true,
			backdrop: 'static',
			show:true
		});

	}


function func_alert(msg)
{
	
	$("#alert_modal_msg").html(msg);
	$("#alert_modal").show();
	
}
function closeAlertModal()
{
	$("#alert_modal").hide();
}

function getTrsInfo(idx,dep,des,thedate)
{

		$.ajax({
			  url: "/api/planning/GetTrsRecommV4forplanner.asp",
			 type: "GET",
			 dataType: 'json',
			 data: {
				dep:dep,
				des:des,
				thedate:thedate
			  },
			success: function( data ) {
				
				thtml='';
				xtotal=0;
				
				xmax1=0
				xmax2=0
				for(i=0;i<data.trslist.length;i++)
				{
					if(xmax1<data.trslist[i].rate)
						xmax1=data.trslist[i].rate;
				}
				for(i=0;i<data.trslist.length;i++)
				{
					if(xmax1!=data.trslist[i].rate)
					{
						if(xmax2<data.trslist[i].rate)
							xmax2=data.trslist[i].rate;
					}
				}
				curIdx=0;
				for(i=0;i<data.trslist.length;i++)
				{
					if(xmax1==0)
					{	
						if(data.trslist[i].trstype==1||data.trslist[i].trstype==3)
						{
							thtml+='<a target="_blank" href="'+data.trslist[i].link+'"><div class="hotellink">'+data.trslist[i].trstypetxt;
							if(data.trslist[i].rate>0)
							{
								thtml+='<span>';
								thtml+=' '+data.trslist[i].rate+'%';
								thtml+='</span>';

							}
							thtml+='</div></a>';
						}
					}
					else if(xmax2==0)
					{
						if(xmax1==data.trslist[i].rate||(data.trslist[i].trstype==1||data.trslist[i].trstype==3))
						{
							if(curIdx<2)
							{
								thtml+='<a target="_blank" href="'+data.trslist[i].link+'"><div class="hotellink">'+data.trslist[i].trstypetxt;
								if(data.trslist[i].rate>0)
								{
									thtml+='<span>';
									if(data.trslist[i].rate>40)
										thtml+=' <b>'+data.trslist[i].rate+'%</b>';
									else
										thtml+=' '+data.trslist[i].rate+'%';
									thtml+='</span>';

								}
								thtml+='</div></a>';
							}
							curIdx++;
						}
					}
					else 
					{	
						if(xmax1==data.trslist[i].rate||xmax2==data.trslist[i].rate)
						{
							if(data.trslist[i].link=="")
								thtml+='<div class="hotellink" style="background:#efefef;color:#c0c0c0">';
							else
								thtml+='<a target="_blank" href="'+data.trslist[i].link+'"><div class="hotellink">';
							thtml+=data.trslist[i].trstypetxt;
							if(data.trslist[i].rate>0)
							{
								thtml+='<span>';
								if(data.trslist[i].rate>40)
									thtml+=' <b>'+data.trslist[i].rate+'%</b>';
								else
									thtml+=' '+data.trslist[i].rate+'%';
								thtml+='</span>';


							}

							thtml+='</div>';

							if(data.trslist[i].link!="")
								thtml+='</a>';
						}
					}
				}
				$("#trs_link_"+idx).html(thtml);
			}
		});

				

}
$( document ).ready(function() {


	setTimeout(function(){toggleSelectTripWith(); }, 1500);
	




});
</script>

<script>
$( document ).ready(function() {


});

function openSchdEdit(d,t,head_title,cityserials)
{


	$("#my_modal_title").html(head_title+" 일정");

		$.ajax({
			  url: "/api/v5/planner/getSimpleSchd.asp",
			 type: "POST",
			 dataType: 'json',
			 data: {
				trip_id:'10259869',
				t:t,
				d:d,
				mybuckets:'1855,1856,492,1858,549',
				cityserials:cityserials

			  },
			success: function( data ) {
				v="";
				adrs="";
				lat="";
				lng="";
				bucket_id="";
				guidebook_id="";

				if(data.v)
					v=data.v;
				if(data.adrs)
					adrs=data.adrs;

				if(data.lat)
					lat=data.lat;
				if(data.lng)
					lng=data.lng;
				if(data.bucket_id)
					bucket_id=data.bucket_id;

				if(data.guidebook_id)
					guidebook_id=data.guidebook_id;

				thtml='<textarea id="edit_schd_txt" style="width:100%;height:100px;background:#fff">'+v+'</textarea>';

				thtml+='<div style="margin-top:5px;color:#fff;text-align:left">위치지도</div><div style="width:70%;float:left"><input id="edit_schd_adrs" class="form-control" placeholder="지도를 첨부할 주소" style="background:#fff" value="'+adrs+'"></div><div style="width:30%;float:left"><a href="javascript:moveMapwithAdrs();" class="btn-u btn-block btn-u-default" style="padding-top:7px;padding-bottom:7px;">지도첨부</a></div><div style="clear:both"></div>';
				thtml+='<div id="citymap_div" style="">';
			
				if(lat!="")
				{
					mapimg='https://maps.googleapis.com/maps/api/staticmap?center='+lat+','+lng+'&zoom=16&size=800x200&maptype=roadmap&markers=color:green%7C'+lat+','+lng+'&key=AIzaSyAlG3b7IeRzDZW46KIpOFPtiIxXt9MU46I';
					thtml+='<a href="https://www.google.com/maps/place/'+lat+','+lng+'/" target="_blank"><img src="'+mapimg+'" style="width:100%;"></a>'
				}

				thtml+='</div>';


				if(data.buckets)
				{
					thtml+='<div style="margin-top:5px;color:#fff;text-align:left">관련 버킷</div><div style="width:70%;float:left"><select class="form-control" id="edit_schd_bucket_id"><option value="">관련 버킷리스트 선택</option>';
					prv_city_id="";
					for(i=0;i<data.buckets.length;i++)
					{
						if(prv_city_id!=data.buckets[i].city_id)
							if(cityserials.length>10)
								thtml+='<option>----------'+data.buckets[i].city_name+'----------</option>';
						if(bucket_id==data.buckets[i].id)
							thtml+='<option value="'+data.buckets[i].id+'" selected>'+data.buckets[i].title+'</option>';
						else
							thtml+='<option value="'+data.buckets[i].id+'">'+data.buckets[i].title+'</option>';

						prv_city_id=data.buckets[i].city_id;
			
					}
					thtml+='</select></div><div style="width:30%;float:left"><a href="javascript:openSelectedBucket();" class="btn-u btn-block btn-u-default" style="padding-top:7px;padding-bottom:7px;">열기</a></div><div style="clear:both"></div>';
				}

				if(data.guidebooks)
				{
					thtml+='<div style="margin-top:5px;color:#fff;text-align:left">관련 셀프북</div><div style="width:70%;float:left"><select class="form-control" id="edit_schd_guidebook_id"><option value="">관련 셀프북 선택</option>';
					prv_city_id="";
					for(i=0;i<data.guidebooks.length;i++)
					{
						if(prv_city_id!=data.guidebooks[i].city_id)
							if(cityserials.length>10)
								thtml+='<option>----------'+data.guidebooks[i].city_name+'----------</option>';
						if(guidebook_id==data.guidebooks[i].id)
							thtml+='<option value="'+data.guidebooks[i].id+'" selected>'+data.guidebooks[i].title+'</option>';
						else
							thtml+='<option value="'+data.guidebooks[i].id+'">'+data.guidebooks[i].title+'</option>';

						prv_city_id=data.guidebooks[i].city_id;
			
					}
					thtml+='</select></div><div style="width:30%;float:left"><a href="javascript:openSelectedGuidebook();" class="btn-u btn-block btn-u-default" style="padding-top:7px;padding-bottom:7px;">열기</a></div><div style="clear:both"></div>';
				}

				thtml+='<input type="hidden" id="edit_schd_lat" value="'+lat+'"></div>';
				thtml+='<input type="hidden" id="edit_schd_lng" value="'+lng+'"></div>';
			

				thtml+='<div style="width:50%;float:left;"><a href="javascript:delSchd(\''+d+'\',\''+t+'\');" class="btn-block btn-default" style="background:#ee685a;text-align:center;;padding-top:10px;padding-bottom:10px;color:#fff">삭제하기</a></div>';
				thtml+='<div style="width:50%;float:left;"><a href="javascript:saveSchd(\''+d+'\',\''+t+'\');" class="btn-block btn-default" style="background:#3ad195;text-align:center;;padding-top:10px;padding-bottom:10px;color:#fff">저장하기</a></div>';
				thtml+='<div style="clear:both"></div>';
	
				$("#my_modal_desc").html(thtml);
				openMyModal();

			}
		});

	
	

}
function openSelectedGuidebook()
{

	guidebook_id=$('#edit_schd_guidebook_id').val();
	if(guidebook_id!="")
	{
		showGuidebook(guidebook_id);
	}

}

function openSelectedBucket()
{

	bucket_id=$('#edit_schd_bucket_id').val();
	if(bucket_id!="")
	{
		
		window.open('http://www.stubbyplanner.com/planner/bucket_detail.asp?&from=cityplanner&trip_id=10259869&expserial='+bucket_id);
		
	}
}

function moveMapwithAdrs()
{

	geocoder = new google.maps.Geocoder();
	adrs=$('#edit_schd_adrs').val();


  if (geocoder) {
    geocoder.geocode({
      'address': adrs
    }, function(results, status) {
      if (status == google.maps.GeocoderStatus.OK) {
        if (status != google.maps.GeocoderStatus.ZERO_RESULTS) {
	lat=results[0].geometry.location.lat();
	lng= results[0].geometry.location.lng();

	mapimg='https://maps.googleapis.com/maps/api/staticmap?center='+lat+','+lng+'&zoom=16&size=800x200&maptype=roadmap&markers=color:green%7C'+lat+','+lng+'&key=AIzaSyAlG3b7IeRzDZW46KIpOFPtiIxXt9MU46I';
	thtml='';
	thtml+='<a href="https://www.google.com/maps/place/'+lat+','+lng+'/" target="_blank"><img src="'+mapimg+'" style="width:100%;"></a>'
	$("#citymap_div").html(thtml);

	$("#edit_schd_lat").val(lat);
	$("#edit_schd_lng").val(lng);

        } else {
          alert("No results found");
        }
      } else {
        alert("Geocode was not successful for the following reason: " + status);
      }
    });
  }

}
function saveSchd(d,t)
{

		adrs=$('#edit_schd_adrs').val();
		lat=$('#edit_schd_lat').val();
		lng=$('#edit_schd_lng').val();
		bucket_id=$('#edit_schd_bucket_id').val();
		guidebook_id=$('#edit_schd_guidebook_id').val();

		txt=$("#edit_schd_txt").val();
		$.ajax({
			  url: "/api/v5/planner/updateSimpleSchd.asp?",
			 type: "POST",
			 dataType: 'json',
			 data: {
				trip_id:'10259869',
				t:t,
				d:d,
				adrs:adrs,
				lat:lat,
				lng:lng,
				bucket_id:bucket_id,
				guidebook_id:guidebook_id,
				txt:txt

			  },
			success: function( data ) {

				$('#schd_detail_'+d+'_'+t).html(txt);
				closeMyModal();
			}
		});
				
	
}

function delSchd(d,t)
{

		$.ajax({
			  url: "/api/v5/planner/delSimpleSchd.asp?",
			 type: "POST",
			 dataType: 'json',
			 data: {
				trip_id:'10259869',
				t:t,
				d:d,

			  },
			success: function( data ) {

				$('#schd_detail_'+d+'_'+t).html('');
				closeMyModal();
			}
		});
				
	
}


//패스시작
function purchase_step2()
{


	xtitle="스투비패스 구매(2/2)";
	$("#my_modal_title").html(xtitle);


	thtml='<form>';


	thtml+='<div style="margin:10px 0px"><div style="float:left;width:35%;color:#fff">핸드폰</div><div style="float:left;width:65%;color:#fff"><input id="stubbypass_phone" style="padding-top:0px;height:35px;" type="text" class="form-control"></div><div style="clear:both"></div></div>';
	thtml+='<div style="margin:10px 0px"><div style="float:left;width:35%;color:#fff">이메일</div><div style="float:left;width:65%;color:#fff"><input id="stubbypass_email" style="padding-top:0px;height:35px;" type="text" class="form-control"></div><div style="clear:both"></div></div>';

	for(i=0;i<prv_idx;i++)
	{
		if(prv_idx==1)
		{
			thtml+='<div style="margin:10px 0px"><div style="float:left;width:35%;color:#fff">패스 이용자 한글명</div><div style="float:left;width:65%;color:#fff"><input id="pass_user_1_kor" style="padding-top:0px;height:35px;" type="text" class="form-control"></div><div style="clear:both"></div></div>';
			thtml+='<div style="margin:10px 0px"><div style="float:left;width:35%;color:#fff">패스 이용자 영문명</div><div style="float:left;width:65%;color:#fff"><input id="pass_user_1_eng" style="padding-top:0px;height:35px;" type="text" class="form-control"></div><div style="clear:both"></div></div>';

		}
		else
		{
			thtml+='<div style="margin:10px 0px"><div style="float:left;width:35%;color:#fff">패스 이용자'+eval(i+1)+' 영문명</div><div style="float:left;width:65%;color:#fff"><input id="pass_user_'+eval(i+1)+'_kor" style="padding-top:0px;height:35px;" type="text" class="form-control"></div><div style="clear:both"></div></div>';
		}
	}

	thtml+='<div style="margin:10px 0px"><div style="float:left;width:35%;color:#fff">캐쉬백 입금은행</div><div style="float:left;width:65%;color:#fff"><input id="bank_name" style="padding-top:0px;height:35px;" type="text" class="form-control"></div><div style="clear:both"></div></div>';
	thtml+='<div style="margin:10px 0px"><div style="float:left;width:35%;color:#fff">캐쉬백 입금계좌</div><div style="float:left;width:65%;color:#fff"><input id="bank_account" style="padding-top:0px;height:35px;" type="text" class="form-control"></div><div style="clear:both"></div></div>';
	thtml+='<div style="margin:10px 0px"><div style="float:left;width:35%;color:#fff">캐쉬백 예정일자</div><div style="float:left;width:65%;color:#fff">2019년 8월 15일~18일<br>(여행종료후 1개월이후에 가장 빠른 15일)</div><div style="clear:both"></div></div>';


	thtml+='<div style="margin-top:20px"><a href="javascript:req_pass_reservation()" class="btn-u btn-u-green btn-block btn-u-lg">패스 구매하기</a></div></form>';
	$("#my_modal_desc").html(thtml);


}
function req_pass_reservation()
{
	userid='apricot';
	pass_start='2019-06-08';
	pass_end='2019-07-07';
	trip_id='10259869';
	member_cnt=prv_idx;
	pass_price=cur_pass_price;
	exp_cashback_at_txt='2019년 8월 15일~18일';
	phone=$("#stubbypass_phone").val();
	email=$("#stubbypass_email").val();
	bank_account=$("#bank_account").val();
	bank_name=$("#bank_name").val();

	if(userid=="")
	{
		func_alert("로그인후에 이용가능합니다.");
		return;
	}
	if(member_cnt=="")
	{
		func_alert("1명 이상용 패스만 구매가능합니다.");
		return;
	}
	if(pass_price==""||pass_price==0)
	{
		func_alert("패스 가격 산정에 문제가 발생했습니다.");
		return;
	}
	if(phone=="")
	{
		func_alert("핸드폰 번호는 필수항목입니다.");
		return;
	}
	if(email=="")
	{
		func_alert("이메일 주소는 필수항목입니다.");
		return;
	}


	pass_user_1_kor="";
	pass_user_1_eng="";
	pass_user_2_eng="";
	pass_user_3_eng="";
	pass_user_4_eng="";
	pass_user_5_eng="";
	pass_user_6_eng="";

	if($("#pass_user_1_kor"))
		pass_user_1_kor=$("#pass_user_1_kor").val();
	if($("#pass_user_1_eng"))
		pass_user_1_eng=$("#pass_user_1_eng").val();
	if($("#pass_user_2_eng"))
		pass_user_2_eng=$("#pass_user_2_eng").val();
	if($("#pass_user_3_eng"))
		pass_user_3_eng=$("#pass_user_3_eng").val();
	if($("#pass_user_4_eng"))
		pass_user_4_eng=$("#pass_user_4_eng").val();
	if($("#pass_user_5_eng"))
		pass_user_5_eng=$("#pass_user_5_eng").val();
	if($("#pass_user_6_eng"))
		pass_user_6_eng=$("#pass_user_6_eng").val();


	if(pass_user_1_eng=="")
	{
		func_alert("영문이름은 필수항목입니다.");
		return;
	}


	thtml="";
	$.ajax({
		url: '/api/planning/savePassReq.asp',
		type: "POST",

		data: {
	
			userid:userid,
			pass_start:pass_start,
			pass_end:pass_end,
			trip_id:'10259869',
			member_cnt:member_cnt,
			pass_price:pass_price,
			exp_cashback_at_txt:exp_cashback_at_txt,
			phone:phone,
			email:email,
			K522352363432:'V435235230d431',
			bank_account:bank_account,
			bank_name:bank_name,
			pass_user_1_kor:pass_user_1_kor,
			pass_user_1_eng:pass_user_1_eng,
			pass_user_2_eng:pass_user_2_eng,
			pass_user_3_eng:pass_user_3_eng,
			pass_user_4_eng:pass_user_4_eng,
			pass_user_5_eng:pass_user_5_eng,
			pass_user_6_eng:pass_user_6_eng
		},
		success: function(data){
			if(data!="")
			{
				func_alert("이메일과 문자로 결제 요청이 전송되었습니다. 24시간 이내에 결제를 해주시기 바랍니다. 결제완료후에는 24시간이내에 스투비패스 할인 링크가 플래너상에서 제공됩니다.");
				window.history.go(0);
			}
		}
	});
}
function purchase()
{


	userid='apricot';
	pass_start='2019-06-08';
	pass_end='2019-07-07';
	trip_id='10259869';
	member_cnt=prv_idx;
	pass_price=cur_pass_price;


	$.ajax({
		url: '/api/planning/wantPassReq.asp',
		type: "POST",

		data: {
	
			userid:userid,
			pass_start:pass_start,
			pass_end:pass_end,
			trip_id:'10259869',
			member_cnt:member_cnt,
			pass_price:pass_price,
			K522352363432:'V435235230d431'
		},
		success: function(data){
		}
	});	

	
		func_alert("죄송합니다. 오늘 판매분이 이미  매진되었습니다. 내일 다시 시도해주세요. 현재 스투비패스는 시범운영중이며 자정을 기준으로 하루에 선착순 10명에게만 판매되고 있습니다.");
		return;
		
		

	if(cur_pass_price==0)
		return;
	xtitle="스투비패스 구매(1/2)";
	$("#my_modal_title").html(xtitle);
	thtml='<form>';
	thtml+='<div style="margin:10px 0px"><div style="float:left;width:35%;color:#fff;font-size:11pt;">여행기간</div><div style="float:left;width:65%;color:#fff;font-size:11pt;"><b>2019. 6. 8 - 2019. 7. 7</b></div><div style="clear:both"></div></div>';
	thtml+='<div style="margin:10px 0px"><div style="float:left;width:35%;color:#fff;font-size:11pt;">이용인원</div><div style="float:left;width:65%;color:#fff;font-size:11pt;"><b>'+prv_idx+'명</b></div><div style="clear:both"></div></div>';
	thtml+='<div style="margin:10px 0px"><div style="float:left;width:35%;color:#fff;font-size:11pt;">패스가격</div><div style="float:left;width:65%;color:#fff;font-size:11pt;"><b>'+cur_pass_price+'원</b></div><div style="clear:both"></div></div>';

	thtml+='<div style="margin-top:30px;margin-bottom:10px;color:#fff"><font style="font-weight:700;font-size:11pt">중요 고지사항</font></div>';
	thtml+='<div style="text-align:left;margin-bottom:30px;color:#696969;border:1px solid #696969;font-size:10pt;line-height:170%;padding:10px 10px;background:#efefef;">';
	thtml+='1. 모든 할인은 위의 여행기간에 필요한 예약을 진행할 때에만 적용 가능합니다.<br>';
	thtml+='2. 모든 할인은 패스구매시 기입한 패스이용자들에 대해서만 적용가능합니다.<br>';
	thtml+='3. 투어 할인은 상품에 따라 즉시할인과 캐쉬백할인으로 제공됩니다. <br>';
	thtml+='4. 숙소 할인은 모두 캐쉬백 할인으로 제공되며 최종 숙소체류후 최소 1개월이후의 매월 15일~18일에 일괄 입금됩니다.<br>';
	thtml+='5. 숙소 할인은  패스구매후 이 플래너상에서 제공되는 부킹닷컴 링크를 통한 예약에만 적용됩니다.<br>';
	thtml+='6. 투어 할인은 스투비플래너에서 광고판매중인 모든 투어상품에 대해  적용되나 선착순 슈퍼특가 할인과는 중복적용이 불가능합니다.<br>';

	thtml+='</div>';



	thtml+='<a href="javascript:purchase_step2()" class="btn-u btn-u-green btn-block btn-u-lg">다음단계로 ></a></form>';
	$("#my_modal_desc").html(thtml);
	openMyModal();
}
</script>

<!-----팝업 시작 ---->
<div id="modal-info" class="modal fade">
  <div class="modal-dialog modal-lg" style="background:#fff">
			<div><a href="javascript:closeModal()"  style="position:absolute;top:0px;right:5px;color:#696969;font-size:27pt"><i class="fa fa-times-circle" aria-hidden="true"></i></a></div>
	 <iframe id="if_info" frameborder="0" src="about:blank" width="100%" height="590px" ></iframe>
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<div id="mymodal" style="display:none">
	<div style="position:fixed;top:0px;left:0px;z-index:999;background:#000;opacity: 0.9;filter: alpha(opacity=90);width:100%;height:100%"></div>

	<div style="position:fixed;top:0px;left:0px;z-index:1999;width:100%;padding-top:10px;text-align:center;padding-left:20%;padding-right:20%">
		<div style="width:500px;display:inline-block;">
			<div><a href="javascript:closeMyModal()" class="pull-right" style="color:#fff;font-size:27pt"><i class="fa fa-times-circle" aria-hidden="true"></i></a></div>
			<div style="margin-top:10px"><font style="font-size:14pt;color:#fff;font-weight:bold" id="my_modal_title">제목</font></div>
			<div style="clear:both"></div>
			<div style="margin-top:0px"  id="my_modal_desc"></div>
		</div>
	</div>
</div>



<div id="alert_modal" style="display:none; position:fixed; top:0; left:0; right:0; bottom:0; background:rgba(0,0,0,.15); z-index:99999;">
            <div style="position:relative; top:30%; left:50%; transform:translate(-50%, -50%); width:320px; border-radius:2px; box-shadow:0 0 0 1px rgba(0,0,0,.1), 0 2px 8px 0 rgba(0,0,0,.25); background:#fff;">
                <div style="position:relative; height:42px; padding:0 18px; background:#f5f5f7; font-size:15px; font-weight:normal; line-height:42px; color:#4a4a4a;">안내
                    <a href="javascript:closeAlertModal()" class="" style="position:absolute; top:50%; right:20px; transform:translateY(-50%); width:22px; height:22px; background-image:url(https://d3b39vpyptsv01.cloudfront.net/0/0/1548911555427eWBbProQMk.png); background-size:cover;"></a>
                </div>
                <div id="alert_modal_msg" style="padding:16px 24px; font-size:15px; font-weight:normal; line-height:1.4; word-break:keep-all; letter-spacing:0; text-align:center; color:#4a4a4a;"></div>
                <div style="padding:0 24px 20px; text-align:center;">
                    <a href="javascript:closeAlertModal()" class="btn-u btn-u-xs" style="border-radius:3px; background:#8f8f8f">
                        <font style="font-size:16px; font-weight:normal; line-height:42px; color:#fff">확인</font>
                    </a>
                </div>
            </div>
        </div>




<script src="/js2/header_footer3.js" type="text/javascript"></script>
 
       <section class="stu_md_search">
            <div class="search_background"></div>
            <div class="md-container">
                <div class="md-header">
                    <a href="#stu_md-close" class="ico_close"></a>
                    <div class="md-searchWrap">
                            <fieldset>
                                <input type="search" name="search_keyword" autocorrect="off" autosave="off" class="md-search-input" placeholder="도시,국가,키워드로 검색" value>
                            </fieldset>
                     
                    </div>
                </div>

                    <div class="md-content">
                        <div class="md-section">
                            <div class="content-header ico_country">서유럽 국가</div>
                            <ul class="content-list">
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?l=&region=11101">
                                        <div class="value">
                                            <b class="name">프랑스</b>
                                        </div>
                                        <div class="count">
               
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?l=&region=11104">
                                        <div class="value">
                                            <b class="name">이탈리아</b>
                                        </div>
                                        <div class="count">
                    
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?l=&region=11102">
                                        <div class="value">
                                            <b class="name">스위스</b>
                                        </div>
                                        <div class="count">
                              
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?l=&region=11103">
                                        <div class="value">
                                            <b class="name">영국</b>
                                        </div>
                                        <div class="count">
                    
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?l=&region=11106">
                                        <div class="value">
                                            <b class="name">독일</b>
                                        </div>
                                        <div class="count">
                   
                                        </div>
                                    </a>
                                </li>


                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?l=&region=11108">
                                        <div class="value">
                                            <b class="name">벨기에</b>
                                        </div>
                                        <div class="count">
               
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?l=&region=11107">
                                        <div class="value">
                                            <b class="name">네덜란드</b>
                                        </div>
                                        <div class="count">
                              
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?l=&region=11110">
                                        <div class="value">
                                            <b class="name">아일랜드</b>
                                        </div>
                                        <div class="count">
                              
                                        </div>
                                    </a>
                                </li>

                            </ul>
                        </div>
                        <div class="md-section">
                            <div class="content-header ico_country">지중해 국가</div>
                            <ul class="content-list">
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?l=&region=12101">
                                        <div class="value">
                                            <b class="name">스페인</b>
                                        </div>
                                        <div class="count">
                      
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?l=&region=12102">
                                        <div class="value">
                                            <b class="name">포르투갈</b>
                                        </div>
                                        <div class="count">
                       
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?l=&region=12103">
                                        <div class="value">
                                            <b class="name">그리스</b>
                                        </div>
                                        <div class="count">
                 
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?l=&region=12104">

                                        <div class="value">
                                            <b class="name">터키</b>
                                        </div>
                                        <div class="count">
       
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?l=&region=12107">

                                        <div class="value">
                                            <b class="name">몰타</b>
                                        </div>
                                        <div class="count">
                   
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="md-section">
                            <div class="content-header ico_country">동유럽 국가</div>
                            <ul class="content-list">
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?l=&region=13">

                                        <div class="value">
                                            <b class="name">체코</b>
                                        </div>
                                        <div class="count">
                    
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?l=&region=13">
                                        <div class="value">
                                            <b class="name">헝가리</b>
                                        </div>
                                        <div class="count">
                 
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?l=&region=13">
                                        <div class="value">
                                            <b class="name">오스트리아</b>
                                        </div>
                                        <div class="count">
                    
                                        </div>
                                    </a>
                                </li>


                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?l=&region=13">
                                        <div class="value">
                                            <b class="name">슬로베니아</b>
                                        </div>
                                        <div class="count">

                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?l=&region=13106">
                                        <div class="value">
                                            <b class="name">크로아티아</b>
                                        </div>
                                        <div class="count">
                    
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="md-section">
                            <div class="content-header ico_country">북유럽 국가</div>
                            <ul class="content-list">
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?l=&region=14107">
                                        <div class="value">
                                            <b class="name">아이슬란드</b>
                                        </div>
                                        <div class="count">
                  
                                        </div>
                                    </a>
                                </li>
	                     <li class="content-item">
                                    <a href="/market/index_ctry.asp?l=&region=14104">
                                        <div class="value">
                                            <b class="name">노르웨이</b>
                                        </div>
                                        <div class="count">
                   
                                        </div>
                                    </a>
                                </li>



                                <li class="content-item">
                                     <a href="/market/index_ctry.asp?l=&region=14103">
                                        <div class="value">
                                            <b class="name">덴마크</b>
                                        </div>
                                        <div class="count">
                
                                        </div>
                                    </a>
                                </li>


                                <li class="content-item">
                                     <a href="/market/index_ctry.asp?l=&region=14102">
                                        <div class="value">
                                            <b class="name">핀란드</b>
                                        </div>
                                        <div class="count">
                
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="/market/index_ctry.asp?l=&region=14105">
                                        <div class="value">
                                            <b class="name">스웨덴</b>
                                        </div>
                                        <div class="count">
                
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="/market/index_ctry.asp?l=&region=14101">
                                        <div class="value">
                                            <b class="name">러시아</b>
                                        </div>
                                        <div class="count">
                
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                      <a href="/market/index_ctry.asp?l=&region=14106">
                                        <div class="value">
                                            <b class="name">발트3국</b>
                                        </div>
                                        <div class="count">
 
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="md-section">
                            <div class="content-header ico_theme">도시</div>
                            <ul class="content-list">


                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111011004">
                                        <div class="value">
                                            <b class="name">파리</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111031001">
                                        <div class="value">
                                            <b class="name">런던</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=121011002">
                                        <div class="value">
                                            <b class="name">바르셀로나</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=131011001">
                                        <div class="value">
                                            <b class="name">프라하</b>
                                            <i class="category">체코</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111011003">
                                        <div class="value">
                                            <b class="name">니스</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=141051001">
                                        <div class="value">
                                            <b class="name">스톡홀름</b>
                                            <i class="category">스웨덴</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=121011003">
                                        <div class="value">
                                            <b class="name">마드리드</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111021002">
                                        <div class="value">
                                            <b class="name">인터라켄</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111041004">
                                        <div class="value">
                                            <b class="name">로마</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=131041001">
                                        <div class="value">
                                            <b class="name">비엔나</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=141031001">
                                        <div class="value">
                                            <b class="name">코펜하겐</b>
                                            <i class="category">덴마크</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=121031001">
                                        <div class="value">
                                            <b class="name">아테네</b>
                                            <i class="category">그리스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111041006">
                                        <div class="value">
                                            <b class="name">베니스</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111041003">
                                        <div class="value">
                                            <b class="name">피렌체</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=131021001">
                                        <div class="value">
                                            <b class="name">부다페스트</b>
                                            <i class="category">헝가리</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=141021001">
                                        <div class="value">
                                            <b class="name">헬싱키</b>
                                            <i class="category">핀란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=121021001">
                                        <div class="value">
                                            <b class="name">리스본</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111061006">
                                        <div class="value">
                                            <b class="name">프랑크푸르트</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111061005">
                                        <div class="value">
                                            <b class="name">뮌헨</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=131061001">
                                        <div class="value">
                                            <b class="name">두브로브니크</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=121041001">
                                        <div class="value">
                                            <b class="name">이스탄불</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111011014">
                                        <div class="value">
                                            <b class="name">마르세유</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111041001">
                                        <div class="value">
                                            <b class="name">밀라노</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=121041111">
                                        <div class="value">
                                            <b class="name">알라니아</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=141041002">
                                        <div class="value">
                                            <b class="name">오슬로</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111061008">
                                        <div class="value">
                                            <b class="name">베를린</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111071001">
                                        <div class="value">
                                            <b class="name">암스테르담</b>
                                            <i class="category">네덜란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=141041002">
                                        <div class="value">
                                            <b class="name">오슬로</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111081001">
                                        <div class="value">
                                            <b class="name">브뤼셀</b>
                                            <i class="category">벨기에</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111101001">
                                        <div class="value">
                                            <b class="name">더블린</b>
                                            <i class="category">아일랜드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=131081001">
                                        <div class="value">
                                            <b class="name">부쿠레슈티</b>
                                            <i class="category">루마니아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=131031004">
                                        <div class="value">
                                            <b class="name">크라쿠프</b>
                                            <i class="category">폴란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=131031003">
                                        <div class="value">
                                            <b class="name">바르샤바</b>
                                            <i class="category">폴란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=131051002">
                                        <div class="value">
                                            <b class="name">브라티슬라바</b>
                                            <i class="category">슬로바키아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111041011">
                                        <div class="value">
                                            <b class="name">나폴리</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111011005">
                                        <div class="value">
                                            <b class="name">아비뇽</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=131061011">
                                        <div class="value">
                                            <b class="name">흐바르</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111061020">
                                        <div class="value">
                                            <b class="name">뉘른베르크</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=121011057">
                                        <div class="value">
                                            <b class="name">론다</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=141011008">
                                        <div class="value">
                                            <b class="name">블라디보스톡</b>
                                            <i class="category">러시아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111061004">
                                        <div class="value">
                                            <b class="name">드레스덴</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111021005">
                                        <div class="value">
                                            <b class="name">취리히</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=121011028">
                                        <div class="value">
                                            <b class="name">테네리페</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=121011005">
                                        <div class="value">
                                            <b class="name">말라가</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=141071001">
                                        <div class="value">
                                            <b class="name">아퀴레이리</b>
                                            <i class="category">아이슬란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=141071010">
                                        <div class="value">
                                            <b class="name">후사비크</b>
                                            <i class="category">아이슬란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=141071044">
                                        <div class="value">
                                            <b class="name">요쿨살론</b>
                                            <i class="category">아이슬란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=141071019">
                                        <div class="value">
                                            <b class="name">스카프타펠</b>
                                            <i class="category">아이슬란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=141071022">
                                        <div class="value">
                                            <b class="name">굴포스</b>
                                            <i class="category">아이슬란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=141071003">
                                        <div class="value">
                                            <b class="name">레이캬비크</b>
                                            <i class="category">아이슬란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=141061001">
                                        <div class="value">
                                            <b class="name">탈린</b>
                                            <i class="category">에스토니아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=141041012">
                                        <div class="value">
                                            <b class="name">트롬쇠</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=141041011">
                                        <div class="value">
                                            <b class="name">스타방에르</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=141041011">
                                        <div class="value">
                                            <b class="name">뤼세 피오르드</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=141011002">
                                        <div class="value">
                                            <b class="name">상트페테르부르크</b>
                                            <i class="category">러시아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=141011001">
                                        <div class="value">
                                            <b class="name">모스크바</b>
                                            <i class="category">러시아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=131061008">
                                        <div class="value">
                                            <b class="name">자그레브</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=131061002">
                                        <div class="value">
                                            <b class="name">스플리트</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=131041032">
                                        <div class="value">
                                            <b class="name">할슈타트</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=131041002">
                                        <div class="value">
                                            <b class="name">잘츠부르크</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=131011003">
                                        <div class="value">
                                            <b class="name">체스키크롬로프</b>
                                            <i class="category">체코</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=121041008">
                                        <div class="value">
                                            <b class="name">보드룸</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=121041028">
                                        <div class="value">
                                            <b class="name">페티예</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=121041003">
                                        <div class="value">
                                            <b class="name">카파도키아</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=121031021">
                                        <div class="value">
                                            <b class="name">자킨토스</b>
                                            <i class="category">그리스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=121031002">
                                        <div class="value">
                                            <b class="name">산토리니</b>
                                            <i class="category">그리스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=121021008">
                                        <div class="value">
                                            <b class="name">포르투</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=121011007">
                                        <div class="value">
                                            <b class="name">세비야</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=121011001">
                                        <div class="value">
                                            <b class="name">그라나다</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=121011004">
                                        <div class="value">
                                            <b class="name">톨레도</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111061003">
                                        <div class="value">
                                            <b class="name">퓌센</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111061001">
                                        <div class="value">
                                            <b class="name">하이델베르크</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=121071009">
                                        <div class="value">
                                            <b class="name">몰타</b>
                                            <i class="category">몰타</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111041026">
                                        <div class="value">
                                            <b class="name">팔레르모</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111041016">
                                        <div class="value">
                                            <b class="name">볼로냐</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111041036">
                                        <div class="value">
                                            <b class="name">베로나</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111041123">
                                        <div class="value">
                                            <b class="name">친퀘테레</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111031008">
                                        <div class="value">
                                            <b class="name">에든버러</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111021001">
                                        <div class="value">
                                            <b class="name">루체른</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111021009">
                                        <div class="value">
                                            <b class="name">라우터브룬넨</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111011010">
                                        <div class="value">
                                            <b class="name">리옹</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>


                            </ul>
                        </div>


                        <div class="md-section">
                            <div class="content-header ico_country">인기투어 카테고리</div>
                            <ul class="content-list">

<li class="content-item"><a href="/market/group.asp?serial=146"><div class="value"><b class="name">슬로베니아 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=148"><div class="value"><b class="name">코토르</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=149"><div class="value"><b class="name">스르지산</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=151"><div class="value"><b class="name">번지점프</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=152"><div class="value"><b class="name">캐년스윙</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=153"><div class="value"><b class="name">탈린 워킹투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=1"><div class="value"><b class="name">몽생미셀 베스트</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=3"><div class="value"><b class="name">파리 자전거투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=4"><div class="value"><b class="name">파리스냅</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=5"><div class="value"><b class="name">루브르 지식가이드</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=206"><div class="value"><b class="name">와이너리투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=166"><div class="value"><b class="name">고조섬 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=167"><div class="value"><b class="name">코미노섬 크루즈</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=169"><div class="value"><b class="name">몰타섬 지프</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=6"><div class="value"><b class="name">오르세 미술관</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=7"><div class="value"><b class="name">베르사유</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=44"><div class="value"><b class="name">체코 와인</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=56"><div class="value"><b class="name">바르셀로나 스냅</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=58"><div class="value"><b class="name">카를로비 바리</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=15"><div class="value"><b class="name">래프팅</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=18"><div class="value"><b class="name">무동력 자전거</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=19"><div class="value"><b class="name">카약(KAYAK)</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=234"><div class="value"><b class="name">에즈</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=247"><div class="value"><b class="name">아베이로</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=20"><div class="value"><b class="name">런던 뮤지컬</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=21"><div class="value"><b class="name">코츠월드+근교</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=170"><div class="value"><b class="name">리스본 시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=191"><div class="value"><b class="name">리옹 시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=22"><div class="value"><b class="name">세븐시스터즈</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=25"><div class="value"><b class="name">스톤헨지</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=69"><div class="value"><b class="name">벨기에 시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=36"><div class="value"><b class="name">체코 스카이다이빙</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=38"><div class="value"><b class="name">프라하 시내</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=325"><div class="value"><b class="name">자다르 카약</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=40"><div class="value"><b class="name">프라하 자전거</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=41"><div class="value"><b class="name">사운드오브뮤직</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=43"><div class="value"><b class="name">벌룬투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=52"><div class="value"><b class="name">보르게세</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=51"><div class="value"><b class="name">런던 스냅</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=8"><div class="value"><b class="name">삭제</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=138"><div class="value"><b class="name">이스탄불 지식가이드</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=45"><div class="value"><b class="name">체스키</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=9"><div class="value"><b class="name">루아르 고성</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=11"><div class="value"><b class="name">몽마르뜨</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=319"><div class="value"><b class="name">스노쿨링</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=13"><div class="value"><b class="name">스위스 패러글라이딩</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=16"><div class="value"><b class="name">제트보트</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=26"><div class="value"><b class="name">바티칸 지식가이드</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=46"><div class="value"><b class="name">드레스덴</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=62"><div class="value"><b class="name">타파스 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=178"><div class="value"><b class="name">플라멩고</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=72"><div class="value"><b class="name">해리포터 스튜디오 </b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=24"><div class="value"><b class="name">런던 자전거투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=29"><div class="value"><b class="name">베니스 워킹투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=32"><div class="value"><b class="name">가우디 지식가이드</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=34"><div class="value"><b class="name">세고비아</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=67"><div class="value"><b class="name">토스카나</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=74"><div class="value"><b class="name">삭제</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=80"><div class="value"><b class="name">몬세라트</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=81"><div class="value"><b class="name">마드리드시내 / 프라도 미술관</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=86"><div class="value"><b class="name">잔세스칸스(풍차)+</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=145"><div class="value"><b class="name">플리트비체</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=42"><div class="value"><b class="name">소금광산</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=82"><div class="value"><b class="name">마드리드 근교(톨레도/세고비아)</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=10"><div class="value"><b class="name">벨기에 당일치기</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=14"><div class="value"><b class="name">캐녀닝</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=28"><div class="value"><b class="name">로마 시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=33"><div class="value"><b class="name">톨레도</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=35"><div class="value"><b class="name">지로나+투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=39"><div class="value"><b class="name">프라하 스냅</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=98"><div class="value"><b class="name">몽생미셀 야경 벤투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=215"><div class="value"><b class="name">델피-메테오라</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=216"><div class="value"><b class="name">프리이빗 차량 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=217"><div class="value"><b class="name">산토리니 세일링</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=218"><div class="value"><b class="name">크레타</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=219"><div class="value"><b class="name">산토리니 요트투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=99"><div class="value"><b class="name">블루라군투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=96"><div class="value"><b class="name">우피치미술관</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=30"><div class="value"><b class="name">피렌체 시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=154"><div class="value"><b class="name">오랑주리 미술관</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=55"><div class="value"><b class="name">로마 스냅</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=61"><div class="value"><b class="name">바르셀로나 시내</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=54"><div class="value"><b class="name">베로나 자전거 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=230"><div class="value"><b class="name">아이슬란드 일주(feat.링로드)</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=231"><div class="value"><b class="name">베르동</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=235"><div class="value"><b class="name">아를</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=238"><div class="value"><b class="name">융프라우 가이드</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=239"><div class="value"><b class="name">몽블랑 트레킹</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=243"><div class="value"><b class="name">실프라 스노쿨링</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=244"><div class="value"><b class="name">파티마</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=245"><div class="value"><b class="name">나자레</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=246"><div class="value"><b class="name">오비도스</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=249"><div class="value"><b class="name">돌로미티</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=250"><div class="value"><b class="name">카프리섬</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=251"><div class="value"><b class="name">나폴리<>포지타노/아말피/소렌토 차량</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=252"><div class="value"><b class="name">두브로브니크 성벽/워킹투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=321"><div class="value"><b class="name">산토리니 시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=237"><div class="value"><b class="name">파리 공항픽업/샌딩</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=256"><div class="value"><b class="name">왕좌의게임 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=257"><div class="value"><b class="name">트로기르&#38;블루라군&#38;솔타</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=263"><div class="value"><b class="name">프라힐리아나</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=297"><div class="value"><b class="name">깐느</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=300"><div class="value"><b class="name">나폴리공항 픽업/샌딩</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=301"><div class="value"><b class="name">볼로냐 자전거 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=302"><div class="value"><b class="name">밀란 경기장투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=303"><div class="value"><b class="name">세비야-론다 차량투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=304"><div class="value"><b class="name">세비야 플라멩고</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=306"><div class="value"><b class="name">자그레브 공항픽업</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=307"><div class="value"><b class="name">스플리트↔두브로브니크</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=308"><div class="value"><b class="name">스플리트 공항픽업/샌딩</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=309"><div class="value"><b class="name">무라노, 부라노섬</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=310"><div class="value"><b class="name">바라주딘&#38;트라코스찬 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=311"><div class="value"><b class="name">프라하→판도르프 아울렛</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=314"><div class="value"><b class="name">한적한 잘츠부르크 근교</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=240"><div class="value"><b class="name">인터라켄 프라이빗 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=272"><div class="value"><b class="name">부다페스트→판도르프 아울렛</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=273"><div class="value"><b class="name">까를로비 바리</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=274"><div class="value"><b class="name">할슈타트(비엔나, 잘츠부르크)</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=283"><div class="value"><b class="name">루마니아 드라큘라성</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=294"><div class="value"><b class="name">흐바르 섬 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=295"><div class="value"><b class="name">두브로브니크 공항픽업/샌딩</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=312"><div class="value"><b class="name">에보라</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=313"><div class="value"><b class="name">부다페스트 공항픽업/샌딩/트랜스퍼</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=315"><div class="value"><b class="name">오스트리아 공항픽업/샌딩/트랜스퍼</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=316"><div class="value"><b class="name">프라하 공항픽업/샌딩/트랜스퍼</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=318"><div class="value"><b class="name">해적선 크루즈 파티</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=267"><div class="value"><b class="name">코모호수 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=268"><div class="value"><b class="name">티볼리투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=64"><div class="value"><b class="name">피카소 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=65"><div class="value"><b class="name">에든버러 시내워킹</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=102"><div class="value"><b class="name">골든서클투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=103"><div class="value"><b class="name">[프랑스남부]코트다쥐르</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=104"><div class="value"><b class="name">쿠킹 클래스</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=184"><div class="value"><b class="name">스플리트 시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=326"><div class="value"><b class="name">엘라피티섬 크루즈</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=185"><div class="value"><b class="name">체르마트/마테호른 트레킹</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=186"><div class="value"><b class="name">라보/몽트뢰</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=187"><div class="value"><b class="name">루체른 </b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=190"><div class="value"><b class="name">더몰/프라다 스페이스</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=140"><div class="value"><b class="name">벨기에 맥주투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=101"><div class="value"><b class="name">오로라 헌팅투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=114"><div class="value"><b class="name">친퀘테레 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=126"><div class="value"><b class="name">플젠+맥주스파</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=127"><div class="value"><b class="name">천국의 문</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=76"><div class="value"><b class="name">내셔널 갤러리</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=83"><div class="value"><b class="name">암스테르담 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=128"><div class="value"><b class="name">라이(+세븐시스터즈)</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=129"><div class="value"><b class="name">거북이섬 보트투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=135"><div class="value"><b class="name">벌룬투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=136"><div class="value"><b class="name">그린&레드 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=137"><div class="value"><b class="name">ATV투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=142"><div class="value"><b class="name">오르비에토+아씨시</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=130"><div class="value"><b class="name">나바지오 해변+블루케이브 보트투어!</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=139"><div class="value"><b class="name">이스탄불 시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=131"><div class="value"><b class="name">케팔로니아 섬 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=132"><div class="value"><b class="name">할슈타트</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=2"><div class="value"><b class="name">지베르니+근교</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=48"><div class="value"><b class="name">인터라켄 호스텔</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=70"><div class="value"><b class="name">브뤼헤+겐트 차량</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=77"><div class="value"><b class="name">아테네 근교 섬 1DAY 크루즈</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=78"><div class="value"><b class="name">뤼세피오르드</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=141"><div class="value"><b class="name">세비야 시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=17"><div class="value"><b class="name">스위스 스카이다이빙</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=23"><div class="value"><b class="name">대영박물관</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=27"><div class="value"><b class="name">이탈리아 남부투어(로마출발<>포지타노/소렌토/폼페이/아말피/카프리)</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=121"><div class="value"><b class="name">파리시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=115"><div class="value"><b class="name">나폴레옹 왕궁</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=79"><div class="value"><b class="name">코스타브라바 스쿠버/스노클링</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=327"><div class="value"><b class="name">파리 라발레 아울렛 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=123"><div class="value"><b class="name">런던 시내(city)투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=155"><div class="value"><b class="name">프랑크푸르트 시내</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=85"><div class="value"><b class="name">앤트워프 워킹</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=100"><div class="value"><b class="name">공항 셔틀버스</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=157"><div class="value"><b class="name">포르투 시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=156"><div class="value"><b class="name">하이델베르크시내</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=158"><div class="value"><b class="name">상트페테르부르크 시내/근교</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=159"><div class="value"><b class="name">모스크바 시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=162"><div class="value"><b class="name">부다페스트 시내</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=163"><div class="value"><b class="name">센텐드레 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=160"><div class="value"><b class="name">자그레브 시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=161"><div class="value"><b class="name">비엔나 시내</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=164"><div class="value"><b class="name">행글라이딩</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=171"><div class="value"><b class="name">두브로브니크 근교 와이너리</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=174"><div class="value"><b class="name">스플리트 수상 액티비티</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=176"><div class="value"><b class="name">두브로브니크 바다카약</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=179"><div class="value"><b class="name">베를린 시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=182"><div class="value"><b class="name">빙하투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=183"><div class="value"><b class="name">고래투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=193"><div class="value"><b class="name">스나이펠스네스</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=194"><div class="value"><b class="name">아이슬란드 남부투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=195"><div class="value"><b class="name">얼음동굴</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=196"><div class="value"><b class="name">화산투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=232"><div class="value"><b class="name">프로방스/라벤더</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=233"><div class="value"><b class="name">모나코</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=236"><div class="value"><b class="name">파리 필수 티켓</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=248"><div class="value"><b class="name">코임브라</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=253"><div class="value"><b class="name">두브로브니크↔스플리트</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=254"><div class="value"><b class="name">크르카 국립공원</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=259"><div class="value"><b class="name">이스트라반도 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=260"><div class="value"><b class="name">알함브라 궁전투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=262"><div class="value"><b class="name">코르도바</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=265"><div class="value"><b class="name">네르하</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=270"><div class="value"><b class="name">나폴리 푸드/쿠킹클래스</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=305"><div class="value"><b class="name">바르셀로나 티켓</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=320"><div class="value"><b class="name">보드룸 보트투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=197"><div class="value"><b class="name">페티예 패러글라이딩</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=198"><div class="value"><b class="name">파묵칼레+ 차량투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=199"><div class="value"><b class="name">달얀 차량투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=200"><div class="value"><b class="name">카푸타스해변 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=201"><div class="value"><b class="name">사클리켄트 래프팅</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=202"><div class="value"><b class="name">모스타르&#38;포세닉</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=203"><div class="value"><b class="name">신트라/카스카이스</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=204"><div class="value"><b class="name">아라비다 와인투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=205"><div class="value"><b class="name">대항해 보트</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=207"><div class="value"><b class="name">그라나다 패러글라이딩</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=208"><div class="value"><b class="name">트롬소 오로라투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=210"><div class="value"><b class="name">라인폭포&마이링겐</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=255"><div class="value"><b class="name">브라츠섬</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=241"><div class="value"><b class="name">공항픽업서비스</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=242"><div class="value"><b class="name">런던필수 티켓</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=261"><div class="value"><b class="name">그라나다 시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=264"><div class="value"><b class="name">그라나다-론다 차량투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=266"><div class="value"><b class="name">베니스 곤돌라</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=269"><div class="value"><b class="name">폼페이&#38;베수비오</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=277"><div class="value"><b class="name">부다페스트 스냅</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=278"><div class="value"><b class="name">브라티슬라바 시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=279"><div class="value"><b class="name">크라쿠프 시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=280"><div class="value"><b class="name">바르샤바 시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=282"><div class="value"><b class="name">비엔나 공연 티켓</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=284"><div class="value"><b class="name">와이너리 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=285"><div class="value"><b class="name">산토리니 공항 픽업/샌딩</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=317"><div class="value"><b class="name">천혜의 자연, 루스키섬</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=211"><div class="value"><b class="name">에스프레소 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=212"><div class="value"><b class="name">파스타 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=213"><div class="value"><b class="name">피자 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=214"><div class="value"><b class="name">쿠킹클래스</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=288"><div class="value"><b class="name">스트라스부르 당일치기</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=289"><div class="value"><b class="name">블라디보스톡 시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=290"><div class="value"><b class="name">블라디보스톡 공항픽업/샌딩</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=291"><div class="value"><b class="name">로도스섬 페리</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=292"><div class="value"><b class="name">보스포러스 크루즈</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=293"><div class="value"><b class="name">라스토케</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=296"><div class="value"><b class="name">피사 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=298"><div class="value"><b class="name">피렌체 스냅</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=299"><div class="value"><b class="name">베니스 스냅</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=220"><div class="value"><b class="name">용암굴</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=221"><div class="value"><b class="name">개썰매투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=222"><div class="value"><b class="name">데티포스투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=223"><div class="value"><b class="name">미바튼호수투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=224"><div class="value"><b class="name">스노모빌</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=225"><div class="value"><b class="name">스카프타펠</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=226"><div class="value"><b class="name">에트나 화산투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=227"><div class="value"><b class="name">시칠리아 푸드투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=228"><div class="value"><b class="name">아그리젠토</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=229"><div class="value"><b class="name">아이슬란드 렌트카(특가중)</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=322"><div class="value"><b class="name">비세보섬 블루케이브</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=323"><div class="value"><b class="name">하이랜드</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=328"><div class="value"><b class="name">타오르미나 워킹투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=330"><div class="value"><b class="name">밀라노 공항 픽업/샌딩</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=324"><div class="value"><b class="name">로마공항 픽업/샌딩</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=329"><div class="value"><b class="name">베니스공항 픽업/샌딩</b></div></a></li><li class="content-item"><a href="/market/group.asp?serial=331"><div class="value"><b class="name">피렌체공항 픽업/샌딩</b></div></a></li>

                            </ul>
                        </div>

                </div>
            </section>

</body>
</html>