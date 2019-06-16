<%@page import="stbplanner.planner.model.PlannerDetailDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="java.util.*"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/include.jspf" %>
<%
	int trip_id = Integer.parseInt(request.getParameter("tid"));
%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
<link rel="image_src" href="http://maps.googleapis.com/maps/api/staticmap?size=500x500&mobile=true&visible=39,17&path=color:0x|weight:1|48.861,2.342|50.847,4.351|51.5,-0.126&&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight3%2Epng|48.861,2.342&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|50.847,4.351&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight3%2Epng|51.5,-0.126&key=AIzaSyAlG3b7IeRzDZW46KIpOFPtiIxXt9MU46I&format=png&maptype=roadmap&style=element:geometry%7Ccolor:0xffffff%7Cvisibility:on&style=element:labels%7Cvisibility:simplified&style=element:labels.icon%7Cvisibility:off&style=element:labels.text%7Ccolor:0xcfcfcf%7Cvisibility:simplified&style=feature:administrative.country%7Celement:geometry.stroke%7Ccolor:0xd6d6d6%7Cvisibility:on%7Cweight:0.5&style=feature:poi%7Cvisibility:off&style=feature:water%7Celement:geometry%7Ccolor:0xd2f4f4%7Cvisibility:on&style=feature:water%7Celement:labels%7Cvisibility:off&scale=2" />
<meta property="og:type" content="website">
<meta property="og:locale" content="ko_KR">
<meta property="fb:app_id" content="218650814915663">
<meta property="og:title" content="8일간 여행 (2019년 7월 13일 출발) - 스투비플래너" />
<meta property="og:type" content="website" />
<meta property="og:url" content="http://www.stubbyplanner.com/planner/detail.asp?trip_id=" />
<meta property="og:image" content="http://maps.googleapis.com/maps/api/staticmap?size=500x500&mobile=true&visible=39,17&path=color:0x|weight:1|48.861,2.342|50.847,4.351|51.5,-0.126&&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight3%2Epng|48.861,2.342&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|50.847,4.351&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight3%2Epng|51.5,-0.126&key=AIzaSyAlG3b7IeRzDZW46KIpOFPtiIxXt9MU46I&format=png&maptype=roadmap&style=element:geometry%7Ccolor:0xffffff%7Cvisibility:on&style=element:labels%7Cvisibility:simplified&style=element:labels.icon%7Cvisibility:off&style=element:labels.text%7Ccolor:0xcfcfcf%7Cvisibility:simplified&style=feature:administrative.country%7Celement:geometry.stroke%7Ccolor:0xd6d6d6%7Cvisibility:on%7Cweight:0.5&style=feature:poi%7Cvisibility:off&style=feature:water%7Celement:geometry%7Ccolor:0xd2f4f4%7Cvisibility:on&style=feature:water%7Celement:labels%7Cvisibility:off&scale=2" />
<meta property="og:site_name" content="상상속 여행을 현실로, 스투비플래너" />
<meta property="og:description" content="스투비플래너로 만든 나만의  여행" />
<title>8일간 여행 (2019년 7월 13일 출발) - 스투비플래너</title>

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
	<link rel="stylesheet" href="<%= contextPath %>/externalData/superguide/assets/css/headers/header-v4.css">

	<!-- CSS Implementing Plugins -->
	<link rel="stylesheet" href="<%= contextPath %>/externalData/superguide/assets/plugins/animate.css">
	<link rel="stylesheet" href="<%= contextPath %>/externalData/superguide/assets/plugins/line-icons/line-icons.css">
	<link rel="stylesheet" href="<%= contextPath %>/externalData/superguide/assets/plugins/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="<%= contextPath %>/externalData/unpkg.com/flickity@2.0/dist/flickity.css" media="screen">

	<link rel="stylesheet" href="//www.stubbyplanner.com/css/ui-lightness/jquery-ui-1.8.16.custom.css">

    <link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/market/css/swiper.min.css">
    <link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/css2/common.css">
    <link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/market/css/tourHome.css">
    <link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/mb/css/BnB_home.css">
	<link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/css2/header_footer.css">



     <link href='<%= contextPath %>/externalData/css/fullcalendar.css' rel='stylesheet' />
	<!-- CSS Customization -->
	<link rel="stylesheet" href="<%= contextPath %>/externalData/superguide/assets/css/style.css">
	<link rel="stylesheet" href="<%= contextPath %>/externalData/superguide/assets/css/custom.css">

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


<!-- <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAlG3b7IeRzDZW46KIpOFPtiIxXt9MU46I&callback=initMap" async defer></script> -->
<script src="https://maps.google.co.kr/maps/api/js?sensor=false&language=ko&key=AIzaSyA2uoKY8XZudT_cVnXJZqPm57U0TVB0WG0&callback=initMap" async defer></script>
<script>	

</script>
<script>
var map;
var geocoder;
var overlay;
var marker=[];
var routelines=[];
      function initMap(data) {
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
	thtml='<div style="margin-bottom:5px;margin-left:10px;font-size:10pt;color:#696969;border:1px solid #efefef;border-radius:10px;padding-top:5px;padding-bottom:5px;padding-left:10px;padding-right:10px;background:#fff;font-weight:600;cursor:pointer" onclick="openStartDateModal()">'+data.planner.startdate.substring(0, 4)+'년'+data.planner.startdate.substring(5, 7)+'월'+data.planner.startdate.substring(8, 10)+'일 출발 </div>';
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

	iniMapItems(data);
	

      }

var trip_tt;
var tripwith_isopen= trip_txt == null ? false : true;
var tripwith_txt = [];
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
			thtml+='<div><a href="javascript:selectTripwith('+x+','+y+')"><img src="/stubbyPlanner/externalData/img_v14/tripwith/TW_'+x+'_'+y+'_w.png" width="100%"></a></div>';
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
	
	$("#tripwith_img").attr('src','/stubbyPlanner/externalData/img_v14/tripwith/TW_'+x+'_'+y+'.png');
	$("#tripwith_txt").html(tripwith_txt[thei]);
	tripwith=thei;
	
	saveTripgene();
	toggleSelectTripWith();
}
function iniMapItems(data)
{
        var image0 = {
          url: '/stubbyPlanner/externalData/marker/mycity_night0.png',
		scaledSize: new google.maps.Size(8, 8),
          anchor: new google.maps.Point(4, 4)
        };
        var image1 = {
          url: '/stubbyPlanner/externalData/marker/mycity_night1.png',
			scaledSize: new google.maps.Size(14, 14),
          anchor: new google.maps.Point(7,7)
        };
        var image2 = {
          url: '/stubbyPlanner/externalData/marker/mycity_night2.png',
	scaledSize: new google.maps.Size(16, 16),
          anchor: new google.maps.Point(8, 8)
        };
        var image3 = {
          url: '/stubbyPlanner/externalData/marker/mycity_night3.png',
	scaledSize: new google.maps.Size(18, 18),
          anchor: new google.maps.Point(9, 9)
        };
        var image4 = {
          url: '/stubbyPlanner/externalData/marker/mycity_night4.png',
	scaledSize: new google.maps.Size(20, 20),
          anchor: new google.maps.Point(10, 10)
        };
        var image5 = {
          url: '/stubbyPlanner/externalData/marker/mycity_night5.png',
	scaledSize: new google.maps.Size(22, 22),
          anchor: new google.maps.Point(11, 11)
        };
        var image6 = {
          url: '/stubbyPlanner/externalData/marker/mycity_night6.png',
	scaledSize: new google.maps.Size(22, 22),
          anchor: new google.maps.Point(11, 11)
        };
        var image7 = {
          url: '/stubbyPlanner/externalData/marker/mycity_night7.png',
	scaledSize: new google.maps.Size(22, 22),
          anchor: new google.maps.Point(11, 11)
        };
        var image8 = {
          url: '/stubbyPlanner/externalData/marker/mycity_night8.png',
	scaledSize: new google.maps.Size(22, 22),
          anchor: new google.maps.Point(11, 11)
        };
        var image9 = {
          url: '/stubbyPlanner/externalData/marker/mycity_night9.png',
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
	
	for (var i = 0; i < data.map.length; i++) {
		var k = data.map[i].nights;
		var image;
		if(k == 0) image = image0;
		else if(k==1) image = image1;
		else if(k==2) image = image2;
		else if(k==3) image = image3;
		else if(k==4) image = image4;
		else if(k==5) image = image5;
		else if(k==6) image = image6;
		else if(k==7) image = image7;
		else if(k==8) image = image8;
		else if(k==9) image = image9;
		marker[i] = new google.maps.Marker({
	          map: map,
	          position: {lat:data.map[i].lat, lng: data.map[i].lng},
	            icon: image,
	            shape: shape,
	            title: image,
	            zIndex: 10000
	    });

		if( i >= 1 ){
			lineSymbol=lineSymbol_TRAIN_LR;
			
	        var path = [marker[i-1].getPosition(), marker[i].getPosition()];
	        routelines[i] = new google.maps.Polyline({
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
	       routelines[i].setPath(path);
		}
		
	}//for


	var rightTopControlDiv = document.createElement('div');
	thtml='<div style="margin-top:10px;margin-right:10px;font-size:18pt;font-weight:500;color:#696969;background:#fff;border:1px solid #efefef;border-radius:30px;width:60px;height:60px;padding-top:11px;text-align:center">'+data.planner.terms+'<font style="font-size:9pt">일</font></div>';
	rightTopControlDiv.innerHTML = thtml;
	rightTopControlDiv.index = 1;
	map.controls[google.maps.ControlPosition.RIGHT_TOP].push(rightTopControlDiv);

	var bounds = new google.maps.LatLngBounds();
		
		for (var i = 0; i < marker.length; i++) {
			
			bounds.extend(marker[i].getPosition());
		}
	
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
	             	url: '/api/planning/bucket_list.asp?trip_id=<%=trip_id%>&region_id='+city_id,
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
             	url: '//www.stubbyplanner.com/api/v5/planner/toggle_bucket.asp?trip_id=<%=trip_id%>&region_id='+region_id+'&bucket_id='+bucket_id,
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
	window.location='city_buckets.asp?city_id='+cur_region_id+'&trip_id=<%=trip_id%>';

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
				trip_id:<%=trip_id%>
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
<link rel="stylesheet" href="<%= contextPath %>/externalData/css/photoswipe.css"> 
<link rel="stylesheet" href="https://photoswipe.com/dist/default-skin/default-skin.css?v=4.1.1-1.0.4"> 
<!-- Core JS file -->
<script src="<%= contextPath %>/externalData/js/photoswipe.min.js"></script> 
<!-- UI JS file -->
<script src="<%= contextPath %>/externalData/js/photoswipe-ui-default.min.js"></script> 

</head>
<!-- <body id="body" onload="initMap()"> -->
<body id ="body">

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
                <a href="<%= contextPath %>/externalData/market/index.asp?from=top1">
                    <div class="header_banner_wrap">
                        <p class="txtWrap">1,700가지 유럽투어/액티비티
                            <span>얼리버드 SALE</span>
                        </p>
                        <p class="btnWrap">미리 예약할수록!!</p>
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
                            <img class="fh" src="<%= contextPath %>/externalData/images2/stu_logo_mobile.png" alt="logo"/>
                        </a>
                    </h1>
                    <div class="gnb_banner on-pc">
                        <div class="swiper-container swiper-gnb_banner">
                            <ul class="swiper-wrapper">


                              <li class="swiper-slide">
                                    <a href="http://www.stubbyplanner.com/coupon/iceland_coupon.asp">
                                        <img class="fw" src="<%= contextPath %>/externalData/images2/sample/GB02.jpg" alt=""/>
                                        <div class="txtWrap">
                                            <p>아이슬란드 특급 할인!</p>
                                            <b><span>130,000원</span> 할인쿠폰</b>
                                        </div>
                                    </a>
                                </li>


                                <li class="swiper-slide">
                                   <a href="/consulting/index.asp?from=top2">
                                        <img class="fw" src="<%= contextPath %>/externalData/images2/sample/GB03.jpg" alt=""/>
                                        <div class="txtWrap">
                                            <p>유럽 초보자를 위한</p>
                                            <b>전문가 유럽 맞춤계획 의뢰<span> </span></b>
                                        </div>
                                    </a>
                                </li>


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
                                        <img class="fw" src="<%= contextPath %>/externalData/images2/sample/GB01.jpg" alt=""/>
                                        <div class="txtWrap">
                                            <p>유럽 현지투어 / 액티비티</p>
                                            <b><span>100,000원</span> 할인쿠폰</b>
                                        </div>
                                    </a>
                                </li>
 
                            </ul>
                            <div class="swiper-pagination gnb_banner-pagination"></div>
                            <div class="swiper-button-prev gnb_banner-button-prev"></div>
                            <div class="swiper-button-next gnb_banner-button-next"></div>
                        </div>
                    </div>
                    <ul class="gnb_wrap on-pc">
                        <li class="gnb_item">
                            <a href="<%= contextPath %>/guide/reservation.asp">예약내역</a>
                        </li>
                        <li class="gnb_item">
                            <a href="<%= contextPath %>/coupon/index.asp">쿠폰함</a>
                        </li>

                        <li class="gnb_item gnb_profile sign_in">
                            <a href="#" class="profile_photo">
                                <img class="fh" src="<%= contextPath %>/externalData/img_v9/img_pfnull.jpg" alt="프로필 사진"/>
                            </a>


                            <div class="prfPopup">
                                <ul class="prfPopup_section">
                                    <li class="prfPopup_item prfPopup_profile">
                                        <a href="#" class="profile_photo">
                                            <img class="fh" src="<%= contextPath %>/externalData/img_v9/img_pfnull.jpg" alt="프로필 사진"/>
                                        </a>
                                        <div class="profile_name">
                                            <p>ggplay1</p>
                                            <a href="<%= contextPath %>/ggplay1" class="mng_account">마이페이지</a>
                                        </div>
                                    </li>
                                </ul>
                                <ul class="prfPopup_section">

                                    <li class="prfPopup_item prfPopup_coupon">
                                        <a href="<%= contextPath %>/coupon/index.asp"><i></i>쿠폰함</a>
                                    </li>
                                    <li class="prfPopup_item prfPopup_square">
                                        <a href="<%= contextPath %>/square/"><i></i>광장</a>
                                    </li>

                                    <li class="prfPopup_item prfPopup_premium">
                                        <a href="<%= contextPath %>/selfguide/"><i></i>프리미엄</a>
                                    </li>
                                </ul>

                                <ul class="prfPopup_section">
                                    <li class="prfPopup_item">
                                        <a href="<%= contextPath %>/qa/">1:1문의</a>
                                    </li>
                                    <li class="prfPopup_item">
                                        <a href="<%= contextPath %>/common/memberinfo.asp">회원정보변경</a>
                                    </li>
                                    <li class="prfPopup_item">
                                        <a href="<%= contextPath %>/common/logout.asp">로그아웃</a>
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
                            <a href="<%= contextPath %>/planner/index.do">계획짜기</a>
                        </li>
                        <li class="lnb_item  ">
                            <a href="<%= contextPath %>/market/index.do">투어예약</a>
                        </li>
                        <li class="lnb_item  ">
                            <a href="<%= contextPath %>/mb/index.do">숙소예약</a>
                        </li>

                        <li class="lnb_item ">
                            <a href="<%= contextPath %>/exp/list.do">여행지</a>
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
                                <img class="fh" src="<%= contextPath %>/externalData/images2/stu_logo_mobile.png" alt="logo"/>
                            </a>
                        </li>

                        <li class="side_item sign_in">
                            <div class="side_profile">
                                <a href="#" class="profile_photo">
                                    <i>
                                        <img class="fh" src="<%= contextPath %>/externalData/img_v9/img_pfnull.jpg" alt="프로필 사진"/>
                                    </i>
                                </a>
                                <div class="profile_name">
                                    <p>ggplay1</p>
                                    <a href="<%= contextPath %>/ggplay1" class="mng_account">마이페이지</a>
                                </div>
                            </div>
                        </li>

                    </ul>
                    <ul class="side_section">

                        <li class="side_item side_resv">
                            <a href="<%= contextPath %>/guide/reservation.jsp">
                                <i></i>예약내역
                            </a>
                        </li>

                        <li class="side_item side_coupon">
                            <a href="<%= contextPath %>/coupon/index.do"><i></i>쿠폰함</a>
                        </li>
                        <li class="side_item side_square">
                            <a href="<%= contextPath %>/square/index.do"><i></i>광장</a>
                        </li>

                        <li class="side_item side_premium">
                            <a href="<%= contextPath %>/selfguide/index.do"><i></i>프리미엄</a>
                        </li>
                    </ul>


                    <ul class="side_section sign_in">
                        <li class="side_item">
                            <a href="<%= contextPath %>/qa/index.do">1:1문의</a>
                        </li>
                        <li class="side_item">
                            <a href="<%= contextPath %>/common/memberinfo.do">회원정보변경</a>
                        </li>
                        <li class="side_item">
                            <a href="<%= contextPath %>/common/logout.do">로그아웃</a>
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


		<h3 style="padding-left:10px;padding-top:25px;font-weight:600;font-size:18pt">나의 여행 플래너 <div class="btn-group" style="margin-top:0px;padding-top:0px;">
		             <button type="button" class="btn-u btn-u-dark" style="border-radius:25px;" data-toggle="dropdown" aria-expanded="false">
                            		<span class="fa fa-cog"></span> 관리
                          		  <span class="fa fa-angle-down"></span>
                        		</button>
                        		<ul class="dropdown-menu" role="menu">
			  <li><a href="javascript:openStartDateModal()">출발일변경</a></li>
                        		    <li><a href="javascript:mngPlannerInfo()">정보 수정</a></li>
                        		    <li><a href="/stubbyPlanner/planner/planner_rt.do?trip_id=<%=trip_id%>">루트 수정</a></li>
                        		    <li><a href="/stubbyPlanner/planner/planner_schd.do?trip_id=<%=trip_id%>">일정표 관리</a></li>
                        		    <li><a href="/stubbyPlanner/planner/planner_resv.do?trip_id=<%=trip_id%>">예약정보 관리</a></li>
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

		<div style="margin-top:15px;font-size:13pt;padding-top:10px;padding-bottom:10px;padding-left:20px;padding-right:20px;text-align:left;margin-left:30px;margin-right:3px;border:1px solid #efefef;font-weight:500;background:#efefef;color:#fff;border-radius:5px;cursor:pointer" onclick="window.location='detail_schd.asp?trip_id=<%=trip_id%>'"><div style="display:inline-block;line-height:110%;color:#fff;"><i class="fa fa-calendar" aria-hidden="true"></i> 일정표  </div>  <span style="float:right"><font style="font-size:9pt;color:#fff;">0개</font>&nbsp;&nbsp;&nbsp;<i class="fa fa-chevron-right" aria-hidden="true"></i></span></div>

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
				trip_id:<%=trip_id%>
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
	<a href="/stubbyPlanner/planner/planner_resv_air.jsp?trip_id=<%=trip_id%>" style="color:#696969">
	<div style="position:relative;font-size:25pt;padding:5px 10px;border:1px solid #efefef;background:#fff;margin:0px 5px;">
		<i class="fa fa-plane"></i>
		<div style="position:absolute;top:15px;left:60px;font-size:12pt;color:#696969f;font-weight:600">항공권</div>
		<div style="position:absolute;top:10px;left:60px;"><font style="font-size:9pt;color:#c0c0c0;font-weight:500">0만원</font></div>	
	</div>
	</a>
	</div>


	<div style="float:left;width:25%;">
	<a href="planner_resv_trs.jsp?trip_id=<%=trip_id%>&ridx=1" style="color:#696969">
	<div style="position:relative;font-size:25pt;padding:5px 10px;border:1px solid #efefef;background:#fff;margin:0px 5px;">
		<i class="fa fa-arrow-right"></i>
		<div style="position:absolute;top:15px;left:60px;font-size:12pt;color:#696969f;font-weight:600">도시이동</div>
		<div style="position:absolute;top:10px;left:60px;"><font style="font-size:9pt;color:#c0c0c0;font-weight:500">0만원</font></div>	
	</div>
	</a>
	</div>


	<div style="float:left;width:25%;">
	<a href="planner_resv_slp.asp?trip_id=<%=trip_id%>&ridx=0" style="color:#696969">
	<div style="position:relative;font-size:25pt;padding:5px 10px;border:1px solid #efefef;background:#fff;margin:0px 5px;">
		<i class="fa fa-bed"></i>
		<div style="position:absolute;top:15px;left:60px;font-size:12pt;color:#696969f;font-weight:600">숙소</div>
		<div style="position:absolute;top:10px;left:60px;"><font style="font-size:9pt;color:#c0c0c0;font-weight:500">0만원</font></div>	
	</div>
	</a>
	</div>


	<div style="float:left;width:25%;">
	<a href="planner_resv_tour.asp?trip_id=<%=trip_id%>&ridx=0" style="color:#696969">
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
	
<script>

function moveToCityPlanner2(cityid,rid,tdate,timeoption)
{
	
	showLinkInModal('/planner/planner_city_schd2.asp?selecteddate='+tdate+'&stype=tour&TimeOption='+timeoption+'&trip_id=<%=trip_id%>&l=planner<%=trip_id%>&region='+cityid+'&rid='+rid+'&bucket_ids=&tripwith='+tripwith);
	
}

function moveToCityPlanner(rid,tdate)
{
	
	showLinkInModal('/planner/planner_city_schd2.asp?trip_id=<%=trip_id%>&needlogin=&access_key=&l=planner<%=trip_id%>&region='+rid+'&bucket_ids=&tripwith='+tripwith);
	
}
</script>

<script>
function openSLP(turl)
{
	
	window.open(turl+'&tripwith='+tripwith+'&bucket_ids=');
	
	
}
</script>

<script>
function mng_small_city()
{
	tripgene="111011004:3:X,111081001:1:X,111031001:3:X";
	
}
</script>




   


<script>

function showGuideBook(book_id)
{
	window.webkit.messageHandlers.showGuideBook.postMessage(book_id);
}
var gallery;
function showGuidebook(se)
{


		window.location="premium.asp?trip_id=<%=trip_id%>";
	

}
</script>












<script>
var currencies=[];
var M1=[];
var M2=[];
var M3=[];
var M4=[];
currencies['11102']='1CHF=1189원';currencies['13103']='1PLN=314원';currencies['14101']='1RUB=18원';currencies['14105']='1SEK=125원';currencies['12104']='1TRY=204원';currencies['13116']='1UAH=45원';currencies['13114']='1BAM=686원';currencies['13111']='1RSD=11원';currencies['14104']='1NOK=137원';currencies['13112']='1BGN=684원';currencies['13106']='1HRK=180원';currencies['13101']='1CZK=52원';currencies['14107']='1ISK=9원';currencies['12105']='1ILS=331원';currencies['13117']='1CHF=1189원';currencies['13115']='1MKD=22원';currencies['13120']='1MDL=65원';currencies['13108']='1RON=283원';currencies['13122']='1EUR=1337원';currencies['11113']='1EUR=1337원';currencies['13104']='1EUR=1337원';currencies['11108']='1EUR=1337원';currencies['14102']='1EUR=1337원';currencies['11101']='1EUR=1337원';currencies['11106']='1EUR=1337원';currencies['12103']='1EUR=1337원';currencies['11110']='1EUR=1337원';currencies['11104']='1EUR=1337원';currencies['11111']='1EUR=1337원';currencies['11109']='1EUR=1337원';currencies['11107']='1EUR=1337원';currencies['12102']='1EUR=1337원';currencies['11112']='1EUR=1337원';currencies['13107']='1EUR=1337원';currencies['12101']='1EUR=1337원';currencies['11103']='1GBP=1503원';currencies['13121']='1ALL=11원';currencies['13123']='1AMD=2원';currencies['13118']='1AZN=696원';currencies['14103']='1DKK=179원';currencies['14108']='1DKK=179원';currencies['13119']='1GEL=435원';currencies['13102']='1HUF=4원';M1[111011004]="Low:16° High:25° ";M2[111011004]="Low:16° High:25° ";M3[111011004]="Low:13° High:21° ";M4[111011004]="Low:10° High:16° ";M1[111031001]="Low:15° High:23° ";M2[111031001]="Low:15° High:23° ";M3[111031001]="Low:13° High:20° ";M4[111031001]="Low:10° High:16° ";M1[111081001]="Low:15° High:23° ";M2[111081001]="Low:14° High:23° ";M3[111081001]="Low:12° High:20° ";M4[111081001]="Low:9° High:15° ";
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

	<form name="form" action="detail.do" method="get">


		<input type="hidden" name="trip_id" value="<%=trip_id%>">
		<input type="hidden" name="neededit" value="1">
		<input type="hidden" name="needlogin" value="">
		<input type="hidden" name="access_key" value="">

		<input type="hidden" name="isSubmit" value="1">
		<div class="clearfix" style="margin-bottom:7px">
			<label for="planname">플래너명&nbsp;</label>
			<div class="input">
				<input class="form-control col-md-6" id="planname" name="planname" size="30" type="text" value="8일간 여행">
				
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
    <script type="text/javascript" src="/stubbyPlanner/externalData/market/js/swiper.min.js"></script>

<!-- JS Global Compulsory -->
<script src="/stubbyPlanner/externalData/superguide/One-Pages/assets/plugins/jquery/jquery.min.js"></script>
<script src="/stubbyPlanner/externalData/superguide/One-Pages/assets/plugins/jquery/jquery-migrate.min.js"></script>

<!-- JS Implementing Plugins -->


<!-- JS Global Compulsory -->
<script type="text/javascript" src="<%= contextPath %>/externalData/js/fullcalendar/lib/jquery-ui.min.js"></script>
<script src="/stubbyPlanner/externalData/js/fullcalendar/lib/moment.min.js" type="text/javascript"></script>

<script type="text/javascript" src="/stubbyPlanner/externalData/js/fullcalendar.min.js"></script>
<script type="text/javascript" src="/stubbyPlanner/externalData/js/fullcalendar_lang-all.js"></script>

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
		var surl="if_resv_air.asp?pl=<%=trip_id%>&region=&1[1-4]startdate=2019-07-13";
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
// var startdate='2019-07-13';
var startdate=startdate;
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

var sd=new Date(thedate);
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
var plan_term=8;
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
				tripgene:'111011004:3:X,111081001:1:X,111031001:3:X',
				startdate:startdate,
				tid:'<%=trip_id%>',
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
	

	mURL="//www.stubbyplanner.com/planner/detail.asp?tid=<%=trip_id%>";
	mURL0="//www.stubbyplanner.com/planner/planner_rt_m.asp?trip_id=<%=trip_id%>";
	wURL="//www.stubbyplanner.com/planner/detail.asp?tid=<%=trip_id%>";
	wURL0="//www.stubbyplanner.com/planner/planner_rt.asp?trip_id=<%=trip_id%>";
    Kakao.Link.createDefaultButton({
      container: '#kakao-link-btn',
      objectType: 'feed',
      content: {
        title: '2019년 7월 13일 출발 8일간 여행',
        imageUrl: 'http://maps.googleapis.com/maps/api/staticmap?size=500x500&mobile=true&path=color:0x333333ff|weight:2|48.861,2.342|50.847,4.351|51.5,-0.126&&markers=color:red|label:E|51.5,-0.126&key=AIzaSyAlG3b7IeRzDZW46KIpOFPtiIxXt9MU46I&style=feature:administrative%7Celement:geometry.stroke%7Ccolor:0xb8b8b8%7Cvisibility:on%7Cweight:1&style=feature:administrative%7Celement:labels.text.fill%7Ccolor:0x6195a0&style=feature:administrative.province%7Celement:geometry.stroke%7Cvisibility:off&style=feature:landscape%7Celement:geometry%7Ccolor:0xfffef5&style=feature:landscape.man_made%7Clightness:-5&style=feature:landscape.natural.terrain%7Cvisibility:off&style=feature:poi%7Cvisibility:off&style=feature:poi.park%7Celement:geometry.fill%7Ccolor:0xbae5ce%7Cvisibility:on&style=feature:road%7Csaturation:-100%7Clightness:45%7Cvisibility:simplified&style=feature:road.arterial%7Cvisibility:off&style=feature:road.highway%7Cvisibility:off&style=feature:transit%7Cvisibility:simplified&style=feature:water%7Ccolor:0xc2f1f5%7Csaturation:35%7Clightness:40%7Cgamma:0.42%7Cvisibility:on&style=feature:water%7Celement:labels.text.fill%7Ccolor:0xadadad%7Cvisibility:on&scale=2',
        link: {
          mobileWebUrl: "https://www.stubbyplanner.com/planner/detail.asp?tid=<%=trip_id%>",
          webUrl: "https://www.stubbyplanner.com/planner/detail.asp?tid=<%=trip_id%>"
        }
      }
    });
}
	initKakaoBtn();

  //]]>

var thedate;
var tripgene;
$( document ).ready(function() {
	
	$.ajax({
		  url: "/stubbyPlanner/model1/detail_ajax.jsp",
		 type: "GET",
		 dataType: 'json',
		 data: {
			trip_id:<%=trip_id%>
		  },
		
		  success: function( data ) {
// 				alert(data.planner.startdate);
				thedate = data.planner.startdate;
				startdate = data.planner.startdate;
				trip_txt = data.planner.triptype;
				if(trip_txt == '여자혼자') trip_tt =1;
				else if(trip_txt == '남자혼자') trip_tt =2;
				else if(trip_txt == '커플/신혼') trip_tt =3;
				else if(trip_txt == '여자끼리') trip_tt =4;
				else if(trip_txt == '남자끼리') trip_tt =5;
				else if(trip_txt == '남녀함께') trip_tt =6;
				else if(trip_txt == '아이들과') trip_tt =7;
				else if(trip_txt == '부모님과') trip_tt =8;
				else if(trip_txt == '부모님끼리') trip_tt =9;
// 				alert(data.map.length);
				// 
		setTimeout(function(){toggleSelectTripWith(); }, 1500);
	
// 	console.log(startdate);
	startdate=startdate;

	
	setTimeout(function(){showCalendar(data);}, 1000);
// 	setTimeout(function(){iniMapItems(data);}, 1500);
	initMap(data);

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
	
		  }
	
	
	});//ajax1
	
	
			
	
});
	




function saveTripgene()
{


	$.post("/api/planning/saveCookieX.asp", { 
		tripgene: tripgene,
		startdate:'2019-07-13',
		tripwith:tripwith,
		tid:'<%=trip_id%>'
	},
	function(data) {
		xx=JSON.parse(data);
	});
}

	function openSocialMsg(isfirst)
	{
		var surl="if_socialmsg.asp?gid=&planserial=<%=trip_id%>&isFirst="+isfirst;
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
/* 
$('div').find('span').each(function(i, e){
						console.log($(this).text());
					})
 */
function showCalendar(data)
{
	console.log(data.calendar[3].Country_name);
	eventData = [];
	for (var i = 0; i < data.calendar.length; i++) {
	var randomColor = '#'+ ('000000' + Math.floor(Math.random()*16777215).toString(16)).slice(-6);
		eventData.push({
			title :  '<img src="/stubbyPlanner/externalData/stbcimg/'+data.calendar[i].Country_name+'.gif" style="width:15px;height:11px">'+data.calendar[i].scity_name, 
			start : new Date(data.calendar[i].rt_startdate),
			end : new Date(data.calendar[i].rt_enddate),
			color : randomColor
		})
				
	}
	
	$("#div_loading_on_map").hide();
			$("#div_calendar").fullCalendar({
				header: {
					left: 'prev',
					center: 'title',
					right: 'next'
				},
				defaultDate: startdate,
				buttonIcons: true, // show the prev/next text
				weekNumbers: false,
				editable: false,
				lang:'ko',
				events: eventData,
				eventRender: function (event, element) {
				    element.find('.fc-event-title').html(event.title);
				    element.find('.fc-event-time').hide();
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

</script>
<script>
 

function openSchdEdit(d,t,head_title,cityserials)
{

	$("#my_modal_title").html(head_title+" 일정");

		$.ajax({
			  url: "/api/v5/planner/getSimpleSchd.asp",
			 type: "POST",
			 dataType: 'json',
			 data: {
				trip_id:'<%=trip_id%>',
				t:t,
				d:d,
				mybuckets:'',
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
		
		window.open('http://www.stubbyplanner.com/planner/bucket_detail.asp?&from=cityplanner&trip_id=<%=trip_id%>&expserial='+bucket_id);
		
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
				trip_id:'<%=trip_id%>',
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
				trip_id:'<%=trip_id%>',
				t:t,
				d:d,

			  },
			success: function( data ) {

				$('#schd_detail_'+d+'_'+t).html('');
				closeMyModal();
			}
		});
				
	
}


<%-- <script src="<%= contextPath %>/externalData/js2/header_footer3.js" type="text/javascript"></script> --%>
 


</body>
</html>