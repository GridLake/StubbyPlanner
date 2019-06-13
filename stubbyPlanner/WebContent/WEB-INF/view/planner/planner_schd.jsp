<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/include.jspf" %>
<%
	int trip_id = Integer.parseInt(request.getParameter("trip_id"));
// 	System.out.println(trip_id);
%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>

<meta property="og:type" content="website">
<meta property="og:locale" content="ko_KR">
<meta property="fb:app_id" content="218650814915663">
<meta property="og:title" content="" />
<meta property="og:type" content="website" />
<meta property="og:url" content="http://www.stubbyplanner.com/planner/planner_schd.jsp?trip_id=10000001"/>  
<meta property="og:image" content="" />
<meta property="og:site_name" content="상상속 여행을 현실로, 스투비플래너" />
<meta property="og:description" content=" " />

<title> - 스투비플래너</title>

<link rel="image_src" href="" />
<!-- Meta -->
	

    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="스투비플래너">

    <!-- Favicon -->
    <link rel="shortcut icon" href="/favicon.ico">


 	<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:400,300,700&amp;subset=cyrillic,latin">

	<!-- CSS Global Compulsory -->

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" href="/stubbyPlanner/externalData/superguide/One-Pages/assets/css/app.css">
	<link rel="stylesheet" href="/stubbyPlanner/externalData/superguide/One-Pages/assets/css/blocks.css">

	<!-- CSS Implementing Plugins -->
	<link rel="stylesheet" href="/stubbyPlanner/externalData/superguide/assets/plugins/animate.css">
	<link rel="stylesheet" href="/stubbyPlanner/externalData/superguide/assets/plugins/line-icons/line-icons.css">
	<link rel="stylesheet" href="/stubbyPlanner/externalData/superguide/assets/plugins/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="/stubbyPlanner/externalData/superguide/One-Pages/assets/plugins/owl-carousel2/assets/owl.carousel.css">



	<link rel="stylesheet" href="https://unpkg.com/flickity@2.0/dist/flickity.css" media="screen">
	<link rel="stylesheet" href="/stubbyPlanner/externalData/superguide/assets/css/headers/header-v4.css">

<script src="https://www.google.com/jsapi"></script>
<script>
 (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
 (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
 m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
 })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
 ga('create', 'UA-913663-1', 'auto');
 ga('send', 'pageview');


!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
document,'script','https://connect.facebook.net/en_US/fbevents.js');
fbq('init', '597062987120795');
fbq('track', 'Planner');
</script>

<script src="https://maps.google.co.kr/maps/api/js?sensor=false&language=ko&key=AIzaSyA2uoKY8XZudT_cVnXJZqPm57U0TVB0WG0&callback"></script>

<script>
var geocoder;
var map_att;
var marker;

// geo좌표를 받아와서 해당 위치에 마커찍고 누를시 출발위치 표시
function moveMapwithAdrs()
{
	if(marker)
		marker.setMap(null);
	  geocoder = new google.maps.Geocoder(); // 서버에 지오코드 요청을 보내는 새 인스턴스 생성
	adrs=$("#schd_adrs").val();


  if (geocoder) {
    geocoder.geocode({
      'address': adrs
    }, function(results, status) {
      if (status == google.maps.GeocoderStatus.OK) { // geocoder 완료시에 반환된 상태 = OK
        if (status != google.maps.GeocoderStatus.ZERO_RESULTS) {	//결과값이 리턴된게 하나라도 있을 경우
          map_att.setCenter(results[0].geometry.location); // geo좌표값으로 센터위치

        var infowindow = new google.maps.InfoWindow({
            content: '<b>출발위치</b>',
            size: new google.maps.Size(150, 50)
          });

          marker = new google.maps.Marker({
            position:  results[0].geometry.location,
            map: map_att,
          draggable: true,
          animation: google.maps.Animation.DROP,
            title: "출발위치"
          });

    document.getElementById('lat').value = results[0].geometry.location.lat();
    document.getElementById('lng').value = results[0].geometry.location.lng();

    marker.addListener('drag', handleEvent);
    marker.addListener('dragend', handleEvent);

          google.maps.event.addListener(marker, 'click', function() {
            infowindow.open(map, marker);
          });


        } else {
          alert("No results found");
        }
      } else {
        alert("Geocode was not successful for the following reason: " + status);
      }
    });
  }

}

function mapInit(plat,plng) {

	
    document.getElementById('schd_lat').value = plat;
    document.getElementById('schd_lng').value = plng;
  var latlng = new google.maps.LatLng(plat, plng);
  var myOptions_att = {
    zoom: 12,
    center: latlng,
    mapTypeControl: true,
    mapTypeControlOptions: {
      style: google.maps.MapTypeControlStyle.DROPDOWN_MENU
    },
    navigationControl: true,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  map_att = new google.maps.Map(document.getElementById("div_map"), myOptions_att);




          var infowindow = new google.maps.InfoWindow({
            content: '<b>출발위치</b>',
            size: new google.maps.Size(150, 50)
          });

          marker = new google.maps.Marker({
            position:  latlng,
            map: map_att,
          draggable: true,
          animation: google.maps.Animation.DROP,
            title: "출발위치"
          });


    marker.addListener('drag', handleEvent);
    marker.addListener('dragend', handleEvent);

          google.maps.event.addListener(marker, 'click', function() {
            infowindow.open(map_att, marker);
          });


}
function handleEvent(event) {
    document.getElementById('schd_lat').value = event.latLng.lat();
    document.getElementById('schd_lng').value = event.latLng.lng();
}


</script>

<style>
.twist
{
    -webkit-transform: rotate(-1deg);
    transform: rotate(-1deg);
	background:#fff;
	box-shadow: 0 2px 3px rgba(0, 0, 0, 0.3); 
}

#markerLayer img {
        border-radius: 50px;
}

.icon_btn_selected
{
	background:#fff;
	width:42px;
	height:42px;
	border-radius:25px;
	padding-top:2px;
	text-align:center;
	cursor:pointer;
	font-size:19pt;
	color:#3ad195;
}
.icon_btn
{
	background:#3ad195;
	width:42px;
	height:42px;
	border-radius:25px;
	padding-top:2px;
	text-align:center;
	cursor:pointer;
	font-size:19pt;
	color:#fff;
}
.icon_btn a
{color:#fff}
.icon_btn_selected a
{color:#3ad195}
.div_row
{
	padding-top:4px;
	padding-bottom:4px;
}
.top_menu
{
	cursor:pointer;
	float:left;
	width:25%;
	text-align:center;
	padding-top:10px;
	padding-bottom:10px;
}

.flickity-prev-next-button.previous
{left:0px;}
.flickity-prev-next-button.next
{right:0px;}
.flickity-prev-next-button
{top:43%;}
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


.plus{color:#fff;}
.minus{color:#27ae60;}

a{text-decoration:none;}
.white_line_box
{margin-left:5px;margin-right:5px;margin-top:3px;margin-bottom:3px;background:#c4c4c4;padding-top:4px;padding-bottom:4px;text-align:center;font-size:25pt}

h1,h2,h3,h4,h5,p,b,i,div,span,a,td,li,i,font,small{font-family: 'Noto Sans', sans-serif;}
	.menu-small{font-size:11pt}
.light_medium_10_shadowed {
	border: 0px rgb(0, 0, 0); color: rgb(255, 255, 255); line-height: 13px; font-size: 10px; font-weight: 700; text-decoration: none; text-shadow: 0px 0px 7px rgba(0,0,0,0.5); background-color: transparent;
	font-family:'NanumGothic';
}
.light_medium_13_shadowed {
	border: 0px rgb(0, 0, 0); color: rgb(255, 255, 255); line-height: 17px; font-size: 16px; font-weight: 700; text-decoration: none; text-shadow: 0px 0px 7px rgba(0,0,0,0.5); background-color: transparent;
	font-family:'NanumGothic';
}


.light_medium_10_shadowed_m {
	border: 0px rgb(0, 0, 0); color: rgb(255, 255, 255); line-height: 13px; font-size: 8px; font-weight: 500; text-decoration: none; text-shadow: 0px 0px 7px rgba(0,0,0,0.5); background-color: transparent;
	font-family:'Noto Sans', sans-serif;
}
.light_medium_13_shadowed_m {
	border: 0px rgb(0, 0, 0); color: rgb(255, 255, 255); line-height: 19px; font-size: 18px; font-weight: 700; text-decoration: none; text-shadow: 0px 0px 7px rgba(0,0,0,0.5); background-color: transparent;
	font-family:'Noto Sans', sans-serif;
}
.div_ctry_title
{text-align:center;padding-top:2px;padding-bottom:2px;}
.div_ctry_sub
{padding-left:10px;padding-right:10px;text-align:center}
.menu
{
	float:left;
	color:#c0c0c0;
	font-size:8pt;
	font-weight:bold;
	text-align:center;
	width:13%;
	padding-top:2px;
	padding-bottom:2px;

	margin-left:5px;

}
.menu a
{
	color:#696969;
}

 .owl-dots {
    text-align: center;
//    position: fixed;
  //  bottom: 5px;
    width: 100%;
    -webkit-backface-visibility: hidden;
    -moz-backface-visibility: hidden;
    -ms-backface-visibility: hidden;
    backface-visibility: hidden;
}

.owl-dot {
    border-radius: 50px;
    height: 10px;
    width: 10px;
    display: inline-block;
    background: rgba(127,127,127, 0.5);
    margin-left: 5px;
    margin-right: 5px;
}

.owl-dot.active {
    background: rgba(127,127,127, 1);
}

.region_menu
{	text-align:center;
	padding-top:8px;
	float:left;

	width:13.5%;

	border:1px solid #efefef;
	margin-right:2px;
}
.region_menu img
{width:80%;}
.region_title
{
	padding-left:5px;padding-right:5px;
	text-align:center;
	font-size:8pt;padding-top:3px;padding-bottom:3px;
}

.popover {
  position: absolute;
  top: 0;
  left: 0;

  z-index: 1010;
  display: none;
  max-width: 600px;
  padding: 1px;
  text-align: left;
  white-space: normal;
  background-color: #ffffff;
  border: 1px solid #ccc;
  border: 1px solid rgba(0, 0, 0, 0.2);
  -webkit-border-radius: 6px;
     -moz-border-radius: 6px;
          border-radius: 6px;
  -webkit-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
     -moz-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
          box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  -webkit-background-clip: padding-box;
     -moz-background-clip: padding;
          background-clip: padding-box;
}
.owl-dot
{
	border-radius:0px;
	width:12px;
	height:5px;
	margin-left:2px;
	margin-right:2px;
}
#fixed_header.fixed {
    position: fixed;

    padding-left:57px;
    padding-right:57px;
    top: 85px;

    left: 0;
    z-index: 1;
    width: 100%;
	
    background-color:#fff; /* makes other content won't be seen when the page scrolling */
}

.region_top_menu a{color:#696969}
.region_top_menu_selected a{color:#27ae60}

.region_top_menu
{
	padding-top:15px;
	padding-bottom:14px;
	margin-left:0px;
	margin-right:0px;
	font-size:9pt;
	font-weight:900;
	cursor:pointer;
}
.region_top_menu_selected
{
	padding-top:13px;
	padding-bottom:13px;
	border-top:3px solid #27ae60;
	margin-left:0px;
	margin-right:0px;
	font-size:9pt;
	font-weight:900;
	cursor:pointer;
}
.thema_icon_menu
{
	padding-top:5px;
	padding-bottom:3px;
	border-left: 1px solid #efefef;
	border-right: 0px solid #efefef;
	font-size:8pt;color:gray;
	font-weight:700;
	cursor:pointer;
}
.thema_icon_menu_selected
{
	color:#27ae60;
}




.owl-nav [class*=owl-] {
	background: rgba(0, 0, 0, 0.5);
	color: rgba(255, 255, 255, 0.9);
	font-size: 11px;
	width: 30px;
	height: 30px;
	line-height: 30px;
	border-radius: 0;
	text-align: center;
}


.owl-nav [class*=owl-]:hover {
	background: rgba(0, 0, 0, 0.9);
	color: #FFF;
}


.owl-prev
{
	position: absolute;
	top: 150px;
	height: 30px;
	margin: auto !important;
}

.owl-next {
	position: absolute;
	top: 150px;
	height: 30px;
	margin: auto !important;
}


#top_banner .owl-prev
{
	position: absolute;
	top: 190px;
	left:0px;
	height: 30px;
	margin-left:0px;
	margin: auto !important;
}

#top_banner .owl-next {
	position: absolute;
	top: 190px;
	right:0px;
	height: 30px;
	margin-right:0px;
	margin: auto !important;
}
#superweek_banner .owl-prev
{
	position: absolute;
	top: 190px;
	height: 30px;
	margin: auto !important;
}

#superweek_banner  .owl-next {
	position: absolute;
	top: 190px;
	height: 30px;
	margin: auto !important;
}


.owl-prev {
	left: -10px;
}

.owl-next {
	right: -10px;
}

.grayimg {
    -webkit-filter: grayscale(100%);
    filter: grayscale(100%);
}

.tab_menu_selected
{
	border-top:1px solid rgba(0,0,0,.1);
	border-left:1px solid rgba(0,0,0,.1);
	border-bottom:1px solid #fff;
	background:#ffffff;
	color:#4a4a4a;
	padding-top:9px;
	padding-bottom:9px;
	text-align:center;
	font-weight:bold;
}
.tab_menu
{
	border-top:1px solid rgba(0,0,0,.1);
	border-left:1px solid rgba(0,0,0,.1);
	border-bottom:1px solid rgba(0,0,0,.1);
	background:#efefef;
	color:#818181;
	padding-top:9px;
	padding-bottom:9px;
	text-align:center;
	font-weight:bold;

}
.rank_list
{
	margin-top:3px;
	margin-bottom:3px;
	font-size:9pt;
	font-weight:400;
	padding-top:5px;
	height:25px;
}

.rank_list i
{
	margin-right:7px;line-height:15px;float:left;display:block;width:25px;text-align:center;font-size:8pt;border:1px solid #efefef;font-weight:bold;padding-top:2px;padding-bottom:2px;color:#696969;

}
body{
	background:#efefef;
}
#calendar_left
{
	border-radius:12px;
	background:#3ad195;
	border:1px solid #efefef;
	overflow:hidden;
	min-height:500px;
	padding-left:10px;padding-right:10px;padding-top:10px;padding-bottom:10px;
}
#calendar_right
{
	background:#fff;
	border:1px solid #efefef;
	overflow:hidden;
	height:610px;
	padding-left:10px;padding-right:10px;padding-top:10px;padding-bottom:10px;

}
#header_desc
{
	height:535px;
	overflow:auto;
}
.calendar_header_title
{
	text-align:center;
	font-size:13pt;
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
	height:70px;
}
.calendar_header
{
	text-align:center;
	float:left;
	width:14%;
	font-size:9pt;
	color:#fff;
	padding-top:15px;
	padding-bottom:2px;
	border-bottom: 1px solid #fff;
}
.calendar_day
{
	margin-top:2px;
	margin-bottom:2px;
	text-align:center;
	font-size:11pt;
	color:#fff;

	padding-top:5px;
	padding-bottom:5px;
	cursor:pointer;
	height:70px;
}
.calendar_day a{color:#fff}
.calendar_day_selected
{
	margin-top:2px;
	margin-bottom:2px;
	text-align:center;
	font-size:11pt;
	
	color:#3ad195;
	
//	border-radius:20px;
	padding-top:5px;
	padding-bottom:5px;
	cursor:pointer;
	height:70px;
}
.calendar_day_selected .tday
{
	margin-left:15px;
	margin-right:15px;

	margin-top:2px;
	margin-bottom:2px;

	padding-top:10px;
	padding-bottom:10px;

	border-radius:50px;
	border:1px solid #fff;
	color:#3ad195;	
	background:#fff;
}
.calendar_day .tday
{
	margin-left:15px;
	margin-right:15px;

	margin-top:3px;
	margin-bottom:3px;

	padding-top:10px;
	padding-bottom:10px;
}

.calendar_day_selected a{color:#fff}
html {
    -ms-overflow-style:  auto;
    overflow: auto;
}
</style>


<!-- Facebook Pixel Code -->
<script>
!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
document,'script','https://connect.facebook.net/en_US/fbevents.js');

fbq('init', '597062987120795');
fbq('track', "PageView");
fbq('track', 'Lead');
</script>

<noscript><img height="1" width="1" style="display:none"
src="https://www.facebook.com/tr?id=597062987120795&ev=PageView&noscript=1"
/></noscript>
<!-- End Facebook Pixel Code -->

</head>	
<body id="body" data-spy="scroll" data-target=".one-page-header" class="demo-lightbox-gallery">

<script>



function gotoHome()
{
	if(confirm(' 이 페이지를 나가려고 합니다.'))
		window.location='/stubbyPlanner/main.do';	
}
// ########3수정해야한다.
function gotoResv()
{
	
		window.location="/common/login.asp"
	
}
</script>
<div style="padding-bottom:0px;background:#3ad195;">
	<div id="topControllerLeft" style="padding-top:5px;width:20%;float:left;">
		<div style="padding-left:15px;">
			<a href="javascript:gotoHome()"><img src="http://www.stubbyplanner.com/img_v11/logo_white.png" height="35px"></a>
		</div>
	</div>
	<div id="topControllerRight" style="width:80%;float:left;">
		<div class="top_menu" id="menu1" onclick="window.location='/stubbyPlanner/planner/planner_rt.do?trip_id=<%=trip_id%>'"><font style="color:#fff;font-size:12pt;">루트</font></div>
		<div class="top_menu"  id="menu2" onclick="window.location='/stubbyPlanner/planner/planner_schd.do?trip_id=<%=trip_id%>'" style="border-bottom:5px solid gray"><font style="font-size:12pt;color:#fff;">일정</font></div>
		<div class="top_menu"  id="menu3" onclick="gotoResv()" ><font style="font-size:12pt;color:#fff;"  >예약 <i class="fa fa-lock"></i></font></div>
		<div style="float:left;width:25%;text-align:center;padding-top:8px;">


				<div id="btnStart" style="display:inline-block;border-radius:5px;border:0px solid #fff;background:#ee685a;width:70%;text-align:center;padding-top:6px;padding-bottom:6px;cursor:pointer;text-decoration:none;color:#FFF;font-size:10pt;font-weight:bold"" onclick="toggleTRMenu();" > GUEST로 작업중 <i id="guest_btn_icon" class="fa fa-angle-down"></i></div>

		</div>

<script>
// 수정해야한다.
var trip_id= <%=trip_id%>; 
var is_TRMenu_displayed=0;
// # 저장 선택메뉴
function toggleTRMenu()
{

	if(is_TRMenu_displayed)
	{
		$("#div_top_right_menu").hide();
		is_TRMenu_displayed=0;
		$("#guest_btn_icon").removeClass("fa-angle-up");
		$("#guest_btn_icon").addClass("fa-angle-down");

	}
	else
	{
		$("#div_top_right_menu").show();
		is_TRMenu_displayed=1;
		$("#guest_btn_icon").removeClass("fa-angle-down");
		$("#guest_btn_icon").addClass("fa-angle-up");

	}
}
function login()
{
	window.location="/stubbyPlanner/common/login.do?h_url=%2Fplan%2Fplanner%5Frt4%2Easp%3Ftrip%5Fid%3D"+trip_id;
}
function register()
{
	window.location="/common/register.asp?h_url=%2Fplan%2Fplanner%5Frt4%2Easp%3Ftrip%5Fid%3D"+trip_id;
}
function complete()
{
	window.location="detail.asp?tid="+trip_id;
}
</script>

			<div id="div_top_right_menu" style="border:1px solid #696969;padding-left:10px;padding-right:10px;padding-top:10px;padding-bottom:10px;border-radius:0px;z-index:999;display:none;position:absolute;top:43px;width:270px;right:35px;background:#fff">
				<div><i class="fa fa-unlock" aria-hidden="true"></i> 이 주소로 접근하는 모든 사람이 보고 수정할 수 있습니다.</div>
				<div style="padding-top:10px;">
					<a href="javascript:login()" class="btn btn-block" style="background:#696969;border:1px solid #fff;color:#fff;text-align:center">로그인 하기</a>
					<a href="javascript:register()" class="btn btn-block" style="background:#696969;border:1px solid #fff;color:#fff;text-align:center">회원가입하기</a>
					<a href="javascript:complete()" class="btn btn-block" style="background:#c0c0c0;border:1px solid #fff;color:#fff;text-align:center">비회원으로 작업완료</a>
				</div>
			</div>

		<div style="clear:both"></div>
	</div>
	<div style="clear:both"></div>
</div>

<main class="wrapper">
	<div class="container content" style="padding-top:20px;padding-bottom:0px;">

	<div id="calendar_left" style="float:left;width:45%;margin-top:20px">
		<div id="calendar"></div>
	</div>
	<div style="float:left;width:5%">&nbsp;</div>
	<div id="calendar_right" style="float:left;width:50%;margin-top:0px;">
		<div id="header_title" style="font-size:14pt;color:#696969;padding-top:12px;padding-bottom:14px;text-align:center">-</div>
		<div id="header_desc" style="padding-top:5px;padding-bottom:5px;">



		</div>
			
		</div>
	</div>

	</div>
</main>

<script src="/stubbyPlanner/externalData/superguide/One-Pages/assets/plugins/jquery/jquery.min.js"></script>
<script src="/stubbyPlanner/externalData/superguide/One-Pages/assets/plugins/jquery/jquery-migrate.min.js"></script>

<script src="https://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
  <link rel="stylesheet" type="text/css" href="https://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


<!-- JS Implementing Plugins -->
<script src="/stubbyPlanner/externalData/superguide/One-Pages/assets/plugins/smoothScroll.js"></script>
<script src="/stubbyPlanner/externalData/superguide/One-Pages/assets/plugins/jquery.easing.min.js"></script>

<script src="https://unpkg.com/flickity@2.0/dist/flickity.pkgd.min.js"></script>

<!-- JS Page Level -->
<script src="/stubbyPlanner/externalData/superguide/One-Pages/assets/js/one.app.js"></script>

<script>

function movePrevMonth()
{
	cur_month--;
	if(cur_month<1)
	{
		cur_year--;
		cur_month=12;
	}
	drawMonth(cur_year,cur_month);	
}
function moveNextMonth()
{
	cur_month++;
	if(cur_month>12)
	{
		cur_year++;
		cur_month=1;
	}

	drawMonth(cur_year,cur_month);	
	
}
function drawMonth(y,m,d)
{
// 	console.log("y:"+y + "m::" + m + "d::" + d);
	$.ajax({
		  url: "/stubbyPlanner/model1/cal_route.jsp",
		 type: "GET",
		 dataType: 'json',
		 data: {
			y:y,
			m:m,
			trip_id:<%=trip_id%>
		  },
		  success: function( data ) {
// 			  console.log(data);
				theIdx=0;
				theDispCityIdx=0;
				myroutes=data.routes;
				
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

				thtml='';

				thtml+='<div style="float:left;width:25%"><a class="btn-u" style="border-radius:30px;background:gray" href="javascript:movePrevMonth()"> < </a></div>';
				thtml+='<div style="float:left;width:50%" class="calendar_header_title">'+y+'년 '+m+'월</div>';
				thtml+='<div style="float:left;width:25%;text-align:right"><a class="btn-u" style="border-radius:30px;background:gray" href="javascript:moveNextMonth()"> > </a></div>';
				thtml+='<div style="clear:both"></div>';

				thtml+='<div class="calendar_header">SUN</div>';
				thtml+='<div class="calendar_header">MON</div>';
				thtml+='<div class="calendar_header">TUE</div>';
				thtml+='<div class="calendar_header">WED</div>';
				thtml+='<div class="calendar_header">THU</div>';
				thtml+='<div class="calendar_header">FRI</div>';
				thtml+='<div class="calendar_header">SAT</div>';
				thtml+='<div style="clear:both"></div>';
				pos=1;
				m_txt=m;
				if(m<9)
					m_txt="0"+m;
				var dx = new Date(y+'-'+m_txt+'-01');
// 				console.log("y:"+y + "m::" + m + "d::" + d);
				for(i=0;i<dx.getDay();i++)
				{
					thtml=thtml+'<div class="calendar_day_nothing"><a href="#" style="color:#fff">-</a></div>';
					pos++;
				}
				for(i=1;i<=max_mday;i++)
				{
					d_txt=i;
					if(i<10)
						d_txt='0'+i;
// 					console.log("y:"+y + "m::" + m + "d::" + d);
					thedate=y+'-'+m_txt+'-'+d_txt;
//					if(selected_date==thedate)
//					{
//						thtml=thtml+'<div style="width:14%;float:left"><div class="calendar_day_selected" id="cd_'+i+'" onclick="selDate(\''+thedate+'\',\''+i+'\')">'+i+'</div></div>';
//					}
//					else
					{

// 						console.log(myroutes);
						if(myroutes)
						if(myroutes[theIdx])
						{
							if((myroutes[theIdx].date_in.y<parseInt(y)&&myroutes[theIdx].date_out.d>=i)||(myroutes[theIdx].date_in.m<parseInt(m)&&myroutes[theIdx].date_out.d>=i)||(myroutes[theIdx].date_in.d<=i&&myroutes[theIdx].date_out.d>=i)||(myroutes[theIdx].date_in.d<=i&&myroutes[theIdx].date_out.m>parseInt(m)))
							{
// 								console.log(myroutes[theIdx].date_in.y +"/" + myroutes[theIdx].date_out.d + "/" + parseInt(y) );
// 								console.log(myroutes[theIdx].date_in.m +"/" + myroutes[theIdx].date_out.d + "/" + parseInt(m));
								var thecolor;
								if(theDispCityIdx%2==1)
									thecolor="#3ad195";
								else
									thecolor="#ff6142";
								console.log("theIdx:: " + theIdx );
								console.log("myroutes.length-1:: " + myroutes.length-1 );
								if(theIdx<myroutes.length-1&&myroutes[theIdx].date_out.d==i)
								{
									theDispCityIdx++;
									thtml+='<div style="width:14%;float:left"><div class="calendar_day" id="cd_'+i+'" onclick="selDate(\''+thedate+'\',\''+i+'\')"><div class="tday">'+i+'</div>';
									

									thtml+='<div style="clear:both"> </div>';
									local_idx=0;
// 									console.log("i" + i); // 10,11,13
									while(myroutes[theIdx]&&myroutes[theIdx].date_out.d==i)
// 										console.log("myroutes[theIdx::" + myroutes[theIdx] + "myroutes[theIdx].date_out.d" + "i" + i);
									{
										local_idx++;
//										thtml+='<div style="position:relative;margin-left:50%;font-size:9pt;color:#c0c0c0;height:15px;"> </div>';
										theIdx++;	
			
									}
									if(local_idx>1)
										thtml+='<div style="height:4px;padding-left:30%;padding-right:30%;"> </div>';
									else
										thtml+='<div style="height:4px;"> </div>';

									if(thecolor=="#3ad195")
									{
										thtml+='<div style="width:45%;float:left;background:#fff;height:2px;"> </div>';
										thtml+='<div style="width:4%;float:left;background:#fff;height:2px;margin-left:3%;margin-right:3%"> </div>';
										thtml+='<div style="width:45%;float:left;background:#fff;height:2px;"> </div>';
									}
									else
									{
										thtml+='<div style="width:45%;float:left;background:#fff;height:2px;"> </div>';
										thtml+='<div style="width:4%;float:left;background:#fff;height:2px;margin-left:3%;margin-right:3%"> </div>';
										thtml+='<div style="width:45%;float:left;background:#fff;height:2px;"> </div>';
									}


									if(myroutes[theIdx])
									{
										if(myroutes[theIdx].title.length>6)
											thtml+='<div style="position:absolute;padding-left:39px;font-size:7pt;padding-top:2px;color:#fff;height:15px;">'+myroutes[theIdx].title+'</div></div></div>';
										else
											thtml+='<div style="position:absolute;padding-left:39px;font-size:8pt;color:#fff;height:15px;padding-top:2px;">'+myroutes[theIdx].title+'</div></div></div>';

									}

									thtml+='</div></div>';

								}
								else
								{
									thtml+='<div style="width:14%;float:left"><div class="calendar_day" id="cd_'+i+'" onclick="selDate(\''+thedate+'\',\''+i+'\')"><div class="tday">'+i+'</div>';
									thtml+='<div style="height:4px;"> </div>';

									thtml+='<div style="background:#fff;height:2px;"> </div>';
									if(myroutes[theIdx].date_in.d==i)
									{
										if(myroutes[theIdx].title.length>6)
											thtml+='<div style="position:absolute;margin-left:0%;font-size:7pt;color:#fff;height:15px;padding-top:2px;">'+myroutes[theIdx].title+'</div></div></div>';
										else
											thtml+='<div style="position:absolute;margin-left:0%;font-size:8pt;color:#fff;height:15px;padding-top:2px;">'+myroutes[theIdx].title+'</div></div></div>';
									}
									else
									{
										thtml+='<div style="position:absolute;margin-left:50%;font-size:9pt;color:#fff;height:15px;"></div></div></div>';
									}
								}
								
							}
							else
							{
								thtml=thtml+'<div style="width:14%;float:left"><div class="calendar_day" id="cd_'+i+'" onclick="selDate(\''+thedate+'\',\''+i+'\')"><div class="tday">'+i+'</div>';
								thtml+='</div></div>';
							}
							}
						else
						{
							thtml=thtml+'<div style="width:14%;float:left"><div class="calendar_day" id="cd_'+i+'" onclick="selDate(\''+thedate+'\',\''+i+'\')"><div class="tday">'+i+'</div>';
							thtml+='</div></div>';
						}
					}


					if(pos%7==0)
						thtml+='<div style="clear:both"></div>';
					pos++;
					
				}

	
			$("#calendar").html(thtml);

			if(d)
			{
				if(m<10)
					m="0"+m;

				if(d<10)
					d="0"+d;
				thedate=y+'-'+m+'-'+d;
				
				selDate(thedate,d)
			}
		}
	});


}


function fapplyprev()
{
	selected_date_list="";
	$('.calendar_day_selected').addClass('calendar_day');
	$('.calendar_day_selected').removeClass('calendar_day_selected');


		$("#div_apply_step1").show();
		$("#div_apply_step2").hide();
	
}
function showSchdDetail(id,t)
{
	if(id.substring(0,1)=="B")
	{
		openBucketDetail(id.substring(1),t);
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
				thtml+="<p>"+data.schd_desc+"</p>"; 

				if(data.location)
				{
					thtml+='<div><a href="https://www.google.com/maps/@'+data.location.lat+','+data.location.lng+',18z" target="_blank"><img width="100%" src="https://maps.googleapis.com/maps/api/staticmap?zoom=15&size=640x250&mobile=true&markers=color:red|'+data.data.location.lat+','+data.data.location.lng+'&key=AIzaSyCKLReQhuQjYV2EwJb8cwElimBV9wcl8NY&scale=2"></a></div>';
				}		
		

				xtitle="";
				if(data.schd_stime)
					xtitle+="["+data.schd_stime+"]"; 
				xtitle+=data.data.schd_title;

				$("#title-Guide2").html(xtitle);
				$("#desc-Guide2").html(thtml);

				$('#modal-Guide2').modal();
			}
		});
	}
}

function openBucketDetail(s,t)
{
	$("#title-Guide").html(t);
		document.getElementById("if_guidebook").src="/bucket_detail.asp?fromplanner=1&expserial="+s;
	$('#modal-Guide').modal();
}

var cur_cityBlockArr;
var Xcur_cityname;
var Xcur_cityid;
var Xcur_rid;
var Xcur_lat;
var Xcur_lng;


var selected_date;
var selected_date_idx;
var weekday=new Array();
weekday[0]="일";
weekday[1]="월";
weekday[2]="화";
weekday[3]="수";
weekday[4]="목";
weekday[5]="금";
weekday[6]="토";

function reloadDaySchd()
{
	selDate(selected_date,selected_date_idx);
}
var isMapDisplayed=false;
function updateMap()
{
	if(isMapDisplayed)
		opencitymap(Xcur_cityname,Xcur_cityid,Xcur_rid,Xcur_lat,Xcur_lng);
	
}
var prv_rid;
function closeMap()
{
	isMapDisplayed=false;
	if($("#icon_btn_container_"+prv_rid))
	{
		$("#icon_btn_container_"+prv_rid).css("background","#fff");
		$("#icon_btn_"+prv_rid).addClass("icon_btn");
		$("#icon_btn_"+prv_rid).removeClass("icon_btn_selected");
	}
	prv_rid="";

	$("#map_canvas").hide();
}
// cur_cityBlockArr[cb_i].city_name,cur_cityBlockArr[cb_i].city_id,cur_cityBlockArr[cb_i].r_id
// ,cur_cityBlockArr[cb_i].city_lat,cur_cityBlockArr[cb_i].city_lng
function opencitymap(city_name,city_id,rid,city_lat,city_lng)
{
	clearMyMarkers();
	Xcur_cityname=city_name;
	Xcur_cityid=city_id;
	Xcur_rid=rid;
	Xcur_lat=city_lat;
	Xcur_lng=city_lng;

	
	if($("#icon_btn_container_"+prv_rid))
	{
		
		$("#icon_btn_container_"+prv_rid).css("background","#fff");

		$("#icon_btn_"+prv_rid).addClass("icon_btn");
		$("#icon_btn_"+prv_rid).removeClass("icon_btn_selected");
	}
	
	prv_rid=rid;
	if(!map)
		initialize();
	else
		google.maps.event.clearListeners(map, 'tilesloaded');
	var markerBounds = new google.maps.LatLngBounds();
	var myLatlng = new google.maps.LatLng(lat,lng);

	markerBounds.extend(myLatlng);
	spotcnt=0;
// 	console.log("cur_cityBlockArr :: " + cur_cityBlockArr);
	if(cur_cityBlockArr)
	{

		for(i=0;i<cur_cityBlockArr.length;i++)
		{
			if(cur_cityBlockArr[i].r_id==rid)
			{

				if(cityBlockArr[i].schedule)
				{
					for(j=0;j<cityBlockArr[i].schedule.length;j++)
					{


						for(k=0;k<cityBlockArr[i].schedule[j].spots.length;k++)
						{

							spotcnt++;
							xlat=cityBlockArr[i].schedule[j].spots[k].lat;
							xlng=cityBlockArr[i].schedule[j].spots[k].lng;

							var mPos=new google.maps.LatLng(xlat,xlng);
							markerBounds.extend(mPos);

							if(cityBlockArr[i].schedule[j].spots.length==1)
							{


								xtitle=cityBlockArr[i].schedule[j].spots[k].title;
								if(cityBlockArr[i].schedule[j].img)
									addMarker(xlat,xlng,xtitle,0,1,cityBlockArr[i].schedule[j].img.url);
								else
									addMarker(xlat,xlng,xtitle,0,0);
							}
							else
							{
								xtitle=cityBlockArr[i].schedule[j].spots[k].title+" - "+cityBlockArr[i].schedule[j].title;

								addMarker(xlat,xlng,xtitle,1,0);
							}
						}
					}
				}
				break;
			}
		}
	}
	if(spotcnt==0)
	{
		map.setCenter(myLatlng);
			
		
	}
	else
	{
		map.setCenter(myLatlng);
		google.maps.event.addListener(map, 'tilesloaded', function() {
			map.fitBounds(markerBounds);
			google.maps.event.clearListeners(map, 'tilesloaded');
		});
	}

	isMapDisplayed=true;
	$("#icon_btn_container_"+rid).css("background","#3ad195");

	$("#icon_btn_"+rid).removeClass("icon_btn");
	$("#icon_btn_"+rid).addClass("icon_btn_selected");

	$("#map_canvas").show();
	
}
function selDate(thedate,idx)
{	
	console.log("idx::" + idx);
	if(selected_date)
	{
		$("#cd_"+selected_date_idx).removeClass('calendar_day_selected');
		$("#cd_"+selected_date_idx).addClass('calendar_day');
	}
	selected_date=thedate;
	selected_date_idx=idx;
	console.log("selected_date::" + selected_date);
	console.log("selected_date_idx::" + selected_date_idx);
	if($("#cd_"+idx).hasClass('calendar_day_selected'))
	{
		$("#cd_"+idx).removeClass('calendar_day_selected');
		$("#cd_"+idx).addClass('calendar_day');
	}
	else
	{
		$("#cd_"+idx).removeClass('calendar_day');
		$("#cd_"+idx).addClass('calendar_day_selected');

	}


	
	var xx = new Date(thedate);
// 	console.log("thedate :: " + thedate);
// 	console.log("idx::" + idx);
	y=xx.getFullYear();
	m=xx.getMonth()+1;
	d=xx.getDate();
	$("#header_title").html(m+'월 '+d+'일 <font style="font-size:9pt;">'+weekday[xx.getDay()]+'');
		
	$.ajax({
		  url: "/stubbyPlanner/model1/cal_day_schd.jsp",
		 type: "GET",
		 dataType: 'json',
		 data: {
			y:y,
			m:m,
			d:d,
			trip_id:<%=trip_id%>
		  },
		  success: function( data ) {
			cityBlockArr=data.items;
// 			console.log(cityBlockArr[2].item_type)
			if(cityBlockArr)
			{

			cur_cityBlockArr=cityBlockArr;
			thtml='';
			if(cityBlockArr.length==0)
				thtml='<div  style="border-top:0.5px solid #c8c8c8;border-bottom:0.5px solid #c8c8c8;padding-top:30px;padding-bottom:30px;font-size:8pt;color:#c0c0c0;text-align:center">여행기간에 포함되지 않는 날짜입니다. </div>';


			for(i=cityBlockArr.length-1;i >= 0;i--)
			{

if(cityBlockArr[i].item_type=="city_schd")
{
	thtml+='<div style="">';
	thtml+='<div style="border-top:0.5px solid #c8c8c8;border-bottom:0.5px solid #c8c8c8;margin-bottom:0px;padding-left:0px;padding-right:0px;padding-bottom:0px;padding-top:0px;">';
	thtml+='<div style="float:left;width:15%;padding-left:20px;border-right:0.5px solid #c8c8c8;height:55px;padding-top:7px;" id="icon_btn_container_'+cityBlockArr[i].r_id+'">';

	if(cityBlockArr[i].schedule.length>0)
		thtml+='<div  id="icon_btn_'+cityBlockArr[i].r_id+'" class="icon_btn" onclick="opencitymap(\''+cityBlockArr[i].city_name+'\',\''+cityBlockArr[i].city_id+'\','+cityBlockArr[i].r_id+',\''+cityBlockArr[i].city_lat+'\',\''+cityBlockArr[i].city_lng+'\')"><a title="'+cityBlockArr[i].city_name+' '+cityBlockArr[i].city_day+'일차 지도" ><i class="fa fa-map-marker" aria-hidden="true"></i></a></div>';
	else
		thtml+='<div class="icon_btn" style="background:#efefef;cursor:auto"><i class="fa fa-map-marker" aria-hidden="true"></i></div>';

	thtml+='</div>';

	thtml+='<div style="float:left;width:60%;padding-left:10px;height:55px;padding-top:7px;">';
	thtml+='<div><font style="font-size:11pt;color:#9b9b9b">'+cityBlockArr[i].city_name+' '+cityBlockArr[i].city_day+'일차</font></div>';
	thtml+='<div style="padding-bottom:5px;"><font style="font-size:8pt;color:#9b9b9b">'+cityBlockArr[i].ctry_name+'</font></div>';
	thtml+='</div>';

	thtml+='<div style="float:left;width:25%;text-align:center;height:55px;padding-top:7px;">';
	if(cityBlockArr[i].can_select_bucket)
		thtml+='<div style="display:inline-block;" class="icon_btn" onclick="showBucketList(\''+cityBlockArr[i].city_name+'\',\''+cityBlockArr[i].city_id+'\',1,'+cityBlockArr[i].r_id+')"><a title="'+cityBlockArr[i].city_name+' 버킷리스트" style="color:#fff"><i class="fa fa-calendar-check-o" aria-hidden="true"></i></a></div>&nbsp;&nbsp;';
	else
		thtml+='<div class="icon_btn" onclick="openBucketDetail(\''+cityBlockArr[i].city_bucket_id+'\',\''+cityBlockArr[i].city_name+'\');" style="background:#c0c0c0;display:inline-block;"><font style="font-size:19pt;"><a  title="'+cityBlockArr[i].city_name+' 도시정보" href="javascript:openBucketDetail(\''+cityBlockArr[i].city_bucket_id+'\',\''+cityBlockArr[i].city_name+'\');"><i class="fa fa-info" aria-hidden="true"></i></a></font></div>&nbsp;&nbsp;';

	thtml+='<div class="icon_btn" onclick="writeCustomSchd(\''+y+'\',\''+m+'\',\''+d+'\','+cityBlockArr[i].r_id+',\''+thedate+'\',\''+idx+'\',\''+cityBlockArr[i].city_lat+'\',\''+cityBlockArr[i].city_lng+'\',\'\',\''+i+'\',\''+cityBlockArr[i].city_day+'\');" style="background:#c0c0c0;display:inline-block;"><font style="font-size:19pt;"><a href="javascript:writeCustomSchd(\''+y+'\',\''+m+'\',\''+d+'\','+cityBlockArr[i].r_id+',\''+thedate+'\',\''+idx+'\',\''+cityBlockArr[i].city_lat+'\',\''+cityBlockArr[i].city_lng+'\',\'\',\''+i+'\',\''+cityBlockArr[i].city_day+'\');"><i class="fa fa-pencil" aria-hidden="true"></i></a></font></div>';


	thtml+='</div>';
	thtml+='<div style="clear:both"></div>';
	thtml+='</div>';


	if(cityBlockArr[i].buckets)
	{
		if(cityBlockArr[i].buckets.length>0)
		{
			if(cityBlockArr[i].buckets.length>6)
				thtml+='<div style="border-bottom:0.5px solid #c8c8c8;padding-left:20px;padding-right:0px;"><div class="bucket-carousel" ';
			else
				thtml+='<div style="border-bottom:0.5px solid #c8c8c8;padding-left:20px;padding-right:20px;"><div ';
			thtml+='style="padding-top:15px;padding-bottom:15px;">';
			for(j=cityBlockArr[i].buckets.length-1; j>=0; j++)
			{
				if(cityBlockArr[i].buckets.length>6)
					thtml+='<div class="carousel-cell" ';
				else
					thtml+='<div ';

				thtml+=' style="float:left;width:70px;margin-right:5px;cursor:pointer" onclick="add_schd_bucket(\''+thedate+'\','+y+','+m+','+d+','+cityBlockArr[i].buckets[j].bucket_id+','+cityBlockArr[i].r_id+','+idx+','+i+')"><div style="border-radius:35px;width:70px;height:70px;position:relative;"><img src="'+cityBlockArr[i].buckets[j].img.url+'" style="width:70px;border-radius:35px"><div style="position:absolute;top:0px;left:0px;background:#000;opacity:0.5;width:70px;height:70px;border-radius:35px">&nbsp;</div><div style="position:absolute;top:0px;left:0px;font-size:30pt;text-align:center;color:#fff;width:70px;">+</div></div>';
				thtml+='<div style="text-align:center;font-size:8pt;color:#9b9b9b;padding-top:5px;">'+cityBlockArr[i].buckets[j].title+'</div></div>';
			}
			thtml+='<div style="clear:both"></div></div></div>';
		}
	}

	if(cityBlockArr[i].schedule)
	{
		if(cityBlockArr[i].schedule.length==0)
		{
			thtml+='<div  style="border-bottom:0.5px solid #c8c8c8;padding-top:30px;padding-bottom:30px;font-size:8pt;color:#c0c0c0;text-align:center">아직 등록한 일정이 없습니다.</div>';
		}
		else
		{
			thtml+='<div style="overflow-x:hidden" id="schd_container_'+cityBlockArr[i].r_id+'">';

			for(j=cityBlockArr[i].schedule.length -1;j>= 0;j--)
			{
				schd_stime=cityBlockArr[i].schedule[j].s_time;
				console.log(schd_stime);
				if(!schd_stime)	
					schd_stime="";
				//if(schd_stime!="")
				{
					var bucket_id="";
					if(cityBlockArr[i].schedule[j].bucket_id)
						bucket_id=cityBlockArr[i].schedule[j].bucket_id;
					var schd_img="";
					if(cityBlockArr[i].schedule[j].img)
						schd_img=cityBlockArr[i].schedule[j].img.url;
					thtml+='<div  class="schd_block" style="border-bottom:0.5px solid #c8c8c8" id="schd_'+cityBlockArr[i].schedule[j].schd_id+'">';
					thtml+='<div style="float:left;width:15%;border-right:0.5px solid #c8c8c8;height:60px;padding-top:17px;font-size:13pt;color:#464646;text-align:center;"> ';


				if(schd_stime=="")
					thtml+='<a href="javascript:mngSTime(\''+y+'\',\''+m+'\',\''+d+'\','+cityBlockArr[i].r_id+',\''+thedate+'\',\''+idx+'\',\''+cityBlockArr[i].schedule[j].schd_id+'\',\''+i+'\')" style="color:#c0c0c0"  alt="시간수정"><font style="color:#efefef"><i class="fa fa-clock-o"></i></font></a>';
				else
					thtml+='<a href="javascript:mngSTime(\''+y+'\',\''+m+'\',\''+d+'\','+cityBlockArr[i].r_id+',\''+thedate+'\',\''+idx+'\',\''+cityBlockArr[i].schedule[j].schd_id+'\',\''+i+'\')" style="color:#c0c0c0"  alt="시간수정">'+schd_stime+'</a>';

					thtml+='</div>';


					thtml+='<div style="float:left;width:60%;padding-left:10px;height:60px;padding-top:17px;" onmousedown="twistSchd(\''+cityBlockArr[i].schedule[j].schd_id+'\')" onmouseup="backTwistSchd(\''+cityBlockArr[i].schedule[j].schd_id+'\')">';
				
				stitle=cityBlockArr[i].schedule[j].title;
				if(stitle.length>16)
					stitle=stitle.substring(0,16)+"..";

					if(bucket_id=="")
						thtml+='<div><a href="javascript:showSchdDetail(\''+cityBlockArr[i].schedule[j].schd_id+'\',\''+cityBlockArr[i].schedule[j].title+'\')"><font style="font-size:13pt;color:#464646">'+stitle+'</font></a> <a href="javascript:del_schd(\''+thedate+'\',\''+cityBlockArr[i].schedule[j].schd_id+'\','+y+','+m+','+d+','+cityBlockArr[i].r_id+','+idx+')" style="color:#c0c0c0" alt="일정삭제"><i class="fa fa-trash"></i></a>';
					else
						thtml+='<div><a href="javascript:showSchdDetail(\'B'+bucket_id+'\',\''+cityBlockArr[i].schedule[j].title+'\')"><font style="font-size:13pt;color:#464646">'+stitle+'</font></a> <a href="javascript:del_schd(\''+thedate+'\',\''+cityBlockArr[i].schedule[j].schd_id+'\','+y+','+m+','+d+','+cityBlockArr[i].r_id+','+idx+')" style="color:#c0c0c0" alt="일정삭제"><i class="fa fa-trash"></i></a>';

					if(bucket_id=="")
						thtml+=' <a href="javascript:writeCustomSchd(\''+y+'\',\''+m+'\',\''+d+'\','+cityBlockArr[i].r_id+',\''+thedate+'\',\''+idx+'\',\''+cityBlockArr[i].city_lat+'\',\''+cityBlockArr[i].city_lng+'\',\''+cityBlockArr[i].schedule[j].schd_id+'\',\''+i+'\',\''+cityBlockArr[i].city_day+'\')" style="color:#c0c0c0"  alt="일정수정"><i class="fa fa-pencil-square"></i></a>';
					thtml+='</div>';
					thtml+='</div>';
					thtml+='<div style="float:left;width:25%;padding-top:5px;text-align:center">';
					if(schd_img)
						thtml+='<a href="javascript:showSchdDetail(\''+cityBlockArr[i].schedule[j].schd_id+'\',\''+cityBlockArr[i].schedule[j].title+'\')"><img src="'+schd_img+'" width="50px" style="border-radius:100px"></a>';
					thtml+='</div>';
					thtml+='<div style="clear:both"></div>';
					thtml+='</div>';
				}
			}

		}
		
	}
	thtml+='</div>';

}
else if(cityBlockArr[i].item_type=="city_move")
{
	thtml+='<div style="height:2px;background:#f0f0f0"></div>';
	thtml+='<div style="padding-left:20px;padding-right:20px;padding-top:15px;padding-bottom:15px;border-top:0.5px solid #c8c8c8;border-bottom:0.5px solid #c8c8c8">';

	thtml+='<div style="float:left;text-ailgn:right;width:80%"><a href="javascript:openTrsModal(\''+cityBlockArr[i].linkurl+'\',\''+cityBlockArr[i].dep_name+'\',\''+cityBlockArr[i].des_name+'\')"><font style="font-size:10pt;color:#c8c8c8">'+cityBlockArr[i].dep_name+'~'+cityBlockArr[i].des_name+' '+cityBlockArr[i].desc+' 구간 <i class="fa fa-chevron-circle-right" aria-hidden="true"></i></font></a></div>';
	//thtml+='<div style="float:left;text-align:right;width:20%"><a href=""><font style="color:#c0c0c0"><i class="fa fa-pencil" aria-hidden="true"></i> 내 티켓</font></a></div>';
	thtml+='<div style="clear:both"></div></div>';

	thtml+='<div style="height:2px;background:#f0f0f0"></div>';
	

}
			}
			$("#header_desc").html(thtml);


			if($('.bucket-carousel'))
			{
				$('.bucket-carousel').flickity({
				cellAlign: 'left',
				contain: true,
				imagesLoaded: true,
				pageDots: false,
				dragThreshold: 20
				});
			}

		}


			resized();
			updateMap();
			for(i=cityBlockArr.length-1 ;i>=0;i--)
			{
				if(cityBlockArr[i].item_type=="city_schd")
					dragdropactivate(cityBlockArr[i].r_id,cityBlockArr[i].city_day);
					console.log(cityBlockArr[i].r_id + "//" + cityBlockArr[i].city_day);
			}
				



	}

	});

	
	

}


function resized()
{
	newMapHeight=eval($(window).height()-10);

	$("#map_canvas").css("height",newMapHeight);


}
function moveSchd(r_id,dayofcity,sidx,eidx)
{

	$.ajax({
		  url: "/api/v5/planner/move_schd.asp",
		 type: "GET",
		 dataType: 'json',
		 data: {
			trip_id:'<%=trip_id%>',
			r_id:r_id,
			dayofcity:dayofcity,
			sidx:sidx,
			eidx:eidx

		},

		  success: function( data ) {

			reloadDaySchd();

		}
	});
	
}

function dragdropactivate(r_id,dayofcity)
{

	
    $( "#schd_container_"+r_id ).sortable({
      items: ".schd_block",
       start: function(event, ui) {

                var start_pos = ui.item.index();
                ui.item.data('start_pos', start_pos);
	
       },
      update : function(event, ui) {
                var start_pos = ui.item.data('start_pos');
                var index = ui.item.index();

	if(start_pos!=index)
	{
		sidx=start_pos;
		eidx=index;
		if(sidx<eidx)
		{
		//	eidx--;
		}
			
		moveSchd(r_id,dayofcity,sidx,eidx);

	}
	else
	{
		
	}
      },
      sort: function() {
        // gets added unintentionally by droppable interacting with sortable
        // using connectWithSortable fixes this, but doesn't allow you to customize active/hoverClass options
        //$( this ).removeClass( "ui-state-default" );
      }
    });


}
function twistSchd(id)
{
	
	$("#schd_"+id).addClass("twist");
}
function backTwistSchd(id)
{
	$("#schd_"+id).removeClass("twist");
}


function saveCustomSchd(y,m,d,r_id,thedate,idx,cb_i,city_day)
{
// 	console.log("cb_i::"  + cb_i);
	var schd_id=$("#schd_id").val();
	var schd_title=$("#schd_title").val();
	var schd_desc=$("#schd_desc").val();
	var schd_adrs=$("#schd_adrs").val();

	var schd_time_h=$("#schd_time_h").val();
	var schd_time_m=$("#schd_time_m").val();
	if($("#use_stime").is(":checked"))
		schd_time=schd_time_h+":"+schd_time_m;
	else
		schd_time="";

	var bucket_id=$("#bucket_id").val();
	var schd_img=$("#schd_img").val();
	

	var schd_lat=$("#schd_lat").val();
	var schd_lng=$("#schd_lng").val();

// 	console.log("schd_id:: " + "schd_lat:: " + schd_lat + "schd_lng:: " + schd_lng + "schd_time:: " +schd_time + "idx::" + idx + "r_id::" + r_id);
	
	$.ajax({
		  url: "/stubbyPlanner/model1/mng_schd.jsp",
		 type: "GET",
		 dataType: 'json',
		 data: {
			schd_id:schd_id,
			y:y,
			m:m,
			d:d,
			trip_id:'<%=trip_id%>',
			r_id:r_id,
			schd_title:schd_title,
			schd_desc:schd_desc,
			schd_adrs:schd_adrs,
			schd_time:schd_time,
			schd_lat:schd_lat,
			schd_lng:schd_lng,
			schd_img:schd_img,
			bucket_id:bucket_id,
			city_day:city_day
		},

		  success: function( data ) {

			$("#mymodal").modal('hide');
			
			selDate(thedate,idx);
			if(schd_lat!="")
				opencitymap(cur_cityBlockArr[cb_i].city_name,cur_cityBlockArr[cb_i].city_id,cur_cityBlockArr[cb_i].r_id,cur_cityBlockArr[cb_i].city_lat,cur_cityBlockArr[0].city_lng);

		}
	});
}
function showMap(plat,plng)
{

	var use_map=$("#use_map").is(":checked");
	if(use_map)
	{
		mapInit(plat,plng);
		$("#attach_map").show();
	}
	else
	{

		$("#schd_lat").val('');
		$("#schd_lng").val('');
		$("#attach_map").hide();

	}

}
// 왼쪽 시간 수정
function mngSTime(y,m,d,r_id,thedate,idx,schd_id,cb_i,city_day)
{
		schd_title="";
		schd_desc="";
		schd_adrs="";
		schd_time="";
		schd_img="";
		bucket_id="";
		schd_lat="";
		schd_lng="";

	if(schd_id!="")
	{
		//수정일 경우 ajax를 동기화해서 가져온 뒤에 기본값 추가 처리

		$.ajax({
			url: "/stubbyPlanner/model1/schd_modify.jsp",
			type: "GET",
			async: false,
			dataType: "json",
			data: {
			    schd_id:schd_id
			},
			success: function( xdata ) {
				data=xdata.data;
				if(data.schd_title)
					schd_title=data.schd_title;

				if(data.schd_desc)
					schd_desc=data.schd_desc;

				if(data.schd_adrs)
					schd_adrs=data.schd_adrs;

				if(data.schd_time)
					schd_time=data.schd_time;

				if(data.bucket_id)
					bucket_id=data.bucket_id;
			
				if(data.schd_lat)
					schd_lat=data.schd_lat;
				if(data.schd_lng)
					schd_lng=data.schd_lng;
				if(data.schd_img)
					schd_img=data.schd_img;

			}
	
		});

	}

	is_checked="";
	schd_time_h="";
	schd_time_m="";
	if(schd_time!="")
	{
		is_checked="checked";
		schd_time_h=schd_time.substring(0,2);
		schd_time_m=schd_time.substring(3,5);
	}

	thtml='<input type="hidden" id="schd_img" name="schd_img" value="'+schd_img+'"><input type="hidden" id="schd_id" name="schd_id" value="'+schd_id+'"><input type="hidden" id="bucket_id" name="bucket_id" value="'+bucket_id+'"><input type="hidden" id="schd_title" name="schd_title" value="'+schd_title+'"><input type="hidden" id="schd_desc" name="schd_desc" value="'+schd_desc+'"><input type="hidden" id="schd_adrs" name="schd_adrs" value="'+schd_adrs+'"><input type="hidden" id="schd_lat" name="schd_lat" value="'+schd_lat+'"><input type="hidden" id="schd_lng" name="schd_id" value="'+schd_lng+'">';
	
	thtml+='<div class="div_row" style="margin-top:20px;margin-bottom:20px"><div style="padding-top:4px;width:25%;float:left;text-align:right;padding-right:10px;"><input type="checkbox" id="use_stime" '+is_checked+'>시작시간 지정</div>';

	thtml+='<select id="schd_time_h" style="width:30%;float:left" class="form-control" onchange="useSTime()">';

		for(i=0;i<24;i++)
		{
			i_2=i;
			if(i<10)
				i_2="0"+i;
			if(schd_time_h==i_2)
				thtml+='<option value="'+i_2+'" selected>'+i_2+'시</option>';
			else
				thtml+='<option value="'+i_2+'">'+i_2+'시</option>';

		}
	thtml+='</select>';
	thtml+='<select id="schd_time_m" style="width:30%;float:left" class="form-control" onchange="useSTime()">';
		for(i=0;i<60;i++)
		{
			i_2=i;
			if(i<10)
				i_2="0"+i;

			if(schd_time_m==i_2)
				thtml+='<option value="'+i_2+'" selected>'+i_2+'분</option>';
			else
				thtml+='<option value="'+i_2+'">'+i_2+'분</option>';
		}
	thtml+='</select>';
	thtml+='<div style="clear:both"></div></div>';


	thtml+='<div class="div_row"><a class="btn-u btn-u-lg btn-block" style="background:#3ad195" href="javascript:saveCustomSchd(\''+y+'\',\''+m+'\',\''+d+'\','+r_id+',\''+thedate+'\','+idx+','+cb_i+','+city_day+')">저장하기</div>';

	$("#mymodal_content").html(thtml);
	$("#mymodal_title").html(schd_title+" 시간설정");

	$("#mymodal").modal();


}
function useSTime()
{
	$("#use_stime").attr("checked", true);
}

function writeCustomSchd(y,m,d,r_id,thedate,idx,clat,clng,schd_id,cb_i,city_day)
{
		
		schd_title=""; //일정명
		schd_desc=""; // 메모
		schd_adrs=""; // 주소
		schd_time=""; // 시간
		schd_img=""; // 버킷이미지
		bucket_id=""; // 버킷id
		schd_lat=""; // x
		schd_lng=""; // y

	if(schd_id!="")
	{
		//수정일 경우 ajax를 동기화해서 가져온 뒤에 기본값 추가 처리

		$.ajax({
			url: "/stubbyPlanner/model1/schd_modify.jsp",
			type: "GET",
			async: false,
			dataType: "json",
			data: {
			    schd_id:schd_id,
			    city_day:city_day
			},
			success: function( xdata ) {
				data=xdata.data;
				console.log(data.schd_title +"//" + data.schd_desc +"//" + data.schd_adrs +"//" + data.schd_time +"//" + data.schd_time +"//");
				if(data.schd_title)
					schd_title=data.schd_title;

				if(data.schd_desc)
					schd_desc=data.schd_desc;

				if(data.schd_adrs)
					schd_adrs=data.schd_adrs;

				if(data.schd_time)
					schd_time=data.schd_time;

				if(data.bucket_id)
					bucket_id=data.bucket_id;
			
				if(data.schd_lat)
					schd_lat=data.schd_lat;
				if(data.schd_lng)
					schd_lng=data.schd_lng;
				if(data.schd_img)
					schd_img=data.schd_img;

			}
	
		});

	}
	
	is_checked="";
	schd_time_h="";
	schd_time_m="";
	if(schd_time!="")
	{
		is_checked="checked";
		schd_time_h=schd_time.substring(0,2);
		schd_time_m=schd_time.substring(3,5);
	}

	is_map_checked="";
	//수정인 경우 초기값 읽어오기
	if(schd_lat!="")
	{
		is_map_checked="checked";
	}

	thtml='<input type="hidden" id="schd_img" name="schd_img" value="'+schd_img+'"><input type="hidden" id="schd_id" name="schd_id" value="'+schd_id+'"><input type="hidden" id="bucket_id" name="bucket_id" value="'+bucket_id+'">';
	thtml+='<div class="div_row"><input type="text" id="schd_title" name="schd_title" class="form-control" placeholder="일정명" value="'+schd_title+'"></div>';
	thtml+='<div class="div_row"><textarea id="schd_desc" name="schd_desc" class="form-control" placeholder="메모" rows="5">'+schd_desc+'</textarea>';
	thtml+='<div  class="div_row"><div style="width:50%;float:left;padding-top:4px;"><input type="checkbox" id="use_map" onclick="showMap(\''+clat+'\',\''+clng+'\')" '+is_map_checked+'>지도첨부</div>';
	thtml+='<div style="width:50%;float:left"><div style="padding-top:4px;width:40%;float:left;text-align:right;padding-right:10px;"><input type="checkbox" id="use_stime" '+is_checked+'>시작시간 지정</div>';

	thtml+='<select id="schd_time_h" style="width:30%;float:left" class="form-control"  onchange="useSTime()">';

		for(i=0;i<24;i++)
		{
			i_2=i;
			if(i<10)
				i_2="0"+i;
			if(schd_time_h==i_2)
				thtml+='<option value="'+i_2+'" selected>'+i_2+'시</option>';
			else
				thtml+='<option value="'+i_2+'">'+i_2+'시</option>';

		}
	thtml+='</select>';
	thtml+='<select id="schd_time_m" style="width:30%;float:left" class="form-control"  onchange="useSTime()">';
		for(i=0;i<60;i++)
		{
			i_2=i;
			if(i<10)
				i_2="0"+i;

			if(schd_time_m==i_2)
				thtml+='<option value="'+i_2+'" selected>'+i_2+'분</option>';
			else
				thtml+='<option value="'+i_2+'">'+i_2+'분</option>';
		}
	thtml+='</select>';
	thtml+='</div><div style="clear:both"></div></div>';

		thtml+='<div id="attach_map" style="display:none;">';

		thtml+='<div id="div_map" style="height:200px;background:#efefef"></div><input type="hidden" id="schd_lat" value="'+schd_lat+'"><input type="hidden" id="schd_lng" value="'+schd_lng+'">';
		thtml+='<div class="div_row"><div style="float:left;width:80%;"><input id="schd_adrs" name="schd_adrs" type="text" class="form-control" value="'+schd_adrs+'"></div><div style="float:left;width:20%;"><a href="javascript:moveMapwithAdrs()" class="btn-block btn-u btn-u-dark">주소로 이동</a></div><div style="clear:both"></div></div>';
	thtml+='</div>';
	thtml+='<div class="div_row"><a class="btn-u btn-u-lg btn-block" style="background:#3ad195" href="javascript:saveCustomSchd(\''+y+'\',\''+m+'\',\''+d+'\','+r_id+',\''+thedate+'\','+idx+','+cb_i+','+city_day+')">저장하기</div>';

	$("#mymodal_content").html(thtml);

	if(is_map_checked=="checked")
		showMap(schd_lat,schd_lng);

	$("#mymodal_title").html("일정 작성");
	$("#mymodal").modal();


}
function del_schd(thedate,schd_id,y,m,d,r_id,idx)
{
	$.ajax({
		  url: "/stubbyPlanner/model1/del_schd.jsp",
		 type: "GET",
		 dataType: 'json',
		 data: {
			y:y,
			m:m,
			d:d,
			trip_id:<%=trip_id%>,
			schd_id:schd_id,
			r_id:r_id
		},

		  success: function( data ) {
			
			selDate(thedate,idx);

		}
	});
}
function add_schd_bucket(thedate,y,m,d,bucket_id,r_id,idx,cb_i)
{
	$.ajax({
		  url: "/api/v5/planner/add_schd_bucket.asp",
		 type: "GET",
		 dataType: 'json',
		 data: {
			y:y,
			m:m,
			d:d,
			trip_id:<%=trip_id%>,
			bucket_id:bucket_id,
			r_id:r_id
		},

		  success: function( data ) {
			
			selDate(thedate,idx);
			opencitymap(cur_cityBlockArr[cb_i].city_name,cur_cityBlockArr[cb_i].city_id,cur_cityBlockArr[cb_i].r_id,cur_cityBlockArr[cb_i].city_lat,cur_cityBlockArr[cb_i].city_lng);
		}
	});
}
function openTrsModal(thelink,depname,desname)
{
	newMapWidth=eval($(window).width());
	newMapHeight=eval($(window).height()-3);
	$("#div_trsinfo").css("width",newMapWidth);
	$("#div_trsinfo").css("height",newMapHeight);
	trsinfo_inside_h=eval(newMapHeight-64);
	$("#trsinfo_inside").css("height",trsinfo_inside_h);
	$("#trsinfo_inside").attr("src",thelink);
	$("#title_trsinfo").html(depname+"~"+desname+" 구간 이동검색");	
	$("#div_trsinfo").show();
}
function closeTrsInfo()
{
	$("#div_trsinfo").hide();
}
function closeMyModal()
{
	$("#mymodal").hide();
	$("body").removeClass("modal-open")
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
		thtml+='<iframe frameborder="0" width="100%" height="'+(newMapHeight-50)+'px" src="/bucket_detail.asp?fromplanner=1&cityserial='+city_id+'"></iframe>';
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
							for(j=0;j<data.bucket_group[i].bucket_list.length;j++)
							{


t_linkurl="index_exp.asp?expserial="+data.bucket_group[i].bucket_list[j].bucket_id;
t_select='bucket_select(\''+data.bucket_group[i].bucket_list[j].bucket_id+'\')';

thtml+='<div style="float:left;margin-bottom:17px;margin-top:0px;width:175px;cursor:pointer;" class="carousel-cell">';
thtml+='<div style="margin-left:5px;margin-right:5px;">';
thtml+='<div style="height:210px;overflow:hidden">';

thtml+='<div style="position:relative;">';
thtml+='<a href="javascript:'+t_select+'"><img src="'+data.bucket_group[i].bucket_list[j].img_url+'"  style="border-radius:5px;width:165px;height:165px" onerror="this.src=\'/img_v12/img_er.gif\'"></a>';


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
thtml+='<h5 style="padding-left:3px;line-height:100%;padding-bottom:0px;margin-bottom:0px;text-align:left;color:#fff;font-size:9pt;" >'+schd_flag+'<a href="'+t_linkurl+'" style="color:#696969">'+data.bucket_group[i].bucket_list[j].title+'</a></h5>';
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
						}
thtml+='</div>';
						$("#div_bucketlist").html(thtml);
						$("#div_bucketlist").show();
					}
				}
			});
	}
}


var cur_r_id="";
var cur_region_id="";

function toggleSchd(bucket_id,region_id)
{
             $.ajax({
             	url: 'https://www.stubbyplanner.com/api/v5/planner/toggle_bucket.asp?trip_id=<%=trip_id%>&region_id='+region_id+'&bucket_id='+bucket_id,
               	dataType: 'json',
               	success: function(data){
			if(data!="")
			{
								
//

			}
		}
	});
}
function bucket_select(id)
{
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
			toggleSchd("B"+id,cur_region_id) ;
	}
	else
	{
		$("#bucket_bg_"+id).removeClass("bk_bg");
		$("#bucket_bg_"+id).addClass("bk_bg_selected");


		$("#bucket_check_"+id).removeClass("bk");
		$("#bucket_check_"+id).addClass("bk_selected");
		$("#bucket_check_"+id).addClass("selected_flag")


		$("#bucket_check_"+id).html('<font style="color:#3ad195"><i class="fa fa-check-circle"></i></font>');


//		setTimeout(function(){
//
//			$("#bucket_bg_"+id).removeClass("bk_bg_selected");
//			$("#bucket_bg_"+id).addClass("bk_bg");
//
//			$("#bucket_check_"+id).addClass("bk");
//			$("#bucket_check_"+id).removeClass("bk_selected");
//		}, 1000);



//		$("#bucket_check_"+id).removeClass("bk");
//		$("#bucket_check_"+id).addClass("bk_selected");
//		$("#bucket_check_"+id).html('<font class="#ee685a"><i class="fa fa-heart"></i></font>');
//		$("#bucket_bg_"+id).removeClass("bk_bg");
//		$("#bucket_bg_"+id).addClass("bk_bg_selected");

		if(cur_region_id!="")
			toggleSchd("B"+id,cur_region_id) ;

	}

}

function closeBucketlist()
{

	$("#div_bucketlist").hide();
	$("#cp_"+cur_r_id).css("background","#fff");
	$("#cp_"+cur_r_id).css("color","#696969");
	$("#cp_heart_"+cur_r_id).css("color","#3ad195");
	cur_r_id="";
	reloadDaySchd();
}


var cur_year=2019;
var cur_month=7;
var cur_day=8;

$(function() {

	drawMonth(cur_year,cur_month,cur_day);
});
</script>



<div id="mymodal" class="modal fade bs-example-modal-lg"  tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" style="">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="mymodal_title">일정추가</h4>
      </div>
      <div class="modal-body" style="" id="mymodal_content">
	
      </div>
    </div>
  </div>
</div>


<div id="div_trsinfo" style="z-index:999;display:none;position:absolute;top:0px;left;0px;width:100%;height:590px;margin-left:0px;background:#fff;border:7px solid #3ad195;">
	<div style="background:#3ad195;height:50px;overflow-y:hidden;"><div style="float:left;width:85%;font-size:11pt;color:#fff;padding-left:10px;padding-top:5px;font-weight:bold" id="title_trsinfo">구간 이동정보</div><div style="float:left;width:15%;cursor:pointer;text-align:right;padding-right:4px;" onclick="closeTrsInfo()"><font style="font-size:23pt;color:#fff"><i class="fa fa-times-circle"></i></font></div><div style="clear:both"></div></div>
	<iframe src="about:blank" frameborder="0" id="trsinfo_inside" style="width:100%;height:490px"></iframe>
</div>

<div style="display:none;">
	<div id="mapControllerRightTop" style="padding-top:5px;padding-right:5px;"><div class="icon_btn" onclick="closeMap()"><i class="fa fa-times"></i></div></div>
</div>
<div id="map_canvas"  style="z-index:199;display:none;position:absolute;top:0px;left;0px;width:51%;height:590px;margin-left:0px;border:12px solid #3ad195;background:#3ad195;"></div>

<div id="div_bucketlist" style="z-index:999;display:none;position:absolute;top:0px;left;0px;width:100%;height:590px;margin-left:0px;background:#fff;border:7px solid #3ad195;"></div>

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
<!-----팝업 시작 ---->
<div id="modal-info" class="modal fade bs-example-modal-lg">
  <div class="modal-dialog modal-lg">
	 <iframe id="if_info" frameborder="0" src="about:blank" width="100%" height="590px" ></iframe>
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->




<script>
var map;
var stockholm = new google.maps.LatLng(0,0);
function initialize()
{
	var mapOptions = {
	      zoom: 13,
	      mapTypeId: google.maps.MapTypeId.ROADMAP,
	      center: stockholm,
	      streetViewControl: false,
	  mapTypeControl: true,
	  mapTypeControlOptions: {
	        position: google.maps.ControlPosition.LEFT_TOP
	    },
	      panControl: true,
	  panControlOptions: {
	        position: google.maps.ControlPosition.LEFT_TOP
	    },
	      zoomControl: true,
	    zoomControlOptions: {
	        style: google.maps.ZoomControlStyle.SMALL,
	        position: google.maps.ControlPosition.RIGHT_TOP
	    },
	      scaleControl: true
	};
 
 	map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);

	var mapControllerRightTop=document.getElementById("mapControllerRightTop");
	map.controls[google.maps.ControlPosition.TOP_RIGHT].push(mapControllerRightTop);


var styles=[
  {
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#f5f5f5"
      }
    ]
  },
  {
    "elementType": "labels.icon",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#616161"
      }
    ]
  },
  {
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "color": "#f5f5f5"
      }
    ]
  },
  {
    "featureType": "administrative",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#ffffff"
      }
    ]
  },
  {
    "featureType": "administrative.country",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#FFFFFF"
      }
    ]
  },
  {
    "featureType": "administrative.country",
    "elementType": "labels.text",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "administrative.land_parcel",
    "elementType": "labels.text",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "administrative.locality",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#ffffff"
      }
    ]
  },
  {
    "featureType": "administrative.locality",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#CFCFCF"
      }
    ]
  },
  {
    "featureType": "administrative.locality",
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "visibility": "simplified"
      }
    ]
  },
  {
    "featureType": "administrative.neighborhood",
    "elementType": "labels.text",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "administrative.province",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#ffffff"
      }
    ]
  },
  {
    "featureType": "administrative.province",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "landscape",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#ffffff"
      }
    ]
  },
  {
    "featureType": "landscape",
    "elementType": "labels.text",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#ffffff"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "labels",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "labels.text",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "labels",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "road.local",
    "elementType": "labels",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "road.local",
    "elementType": "labels.text",
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
    "featureType": "transit",
    "elementType": "labels.icon",
    "stylers": [
      {
        "visibility": "on"
      }
    ]
  },
  {
    "featureType": "transit.line",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#e5e5e5"
      }
    ]
  },
  {
    "featureType": "transit.line",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "transit.line",
    "elementType": "labels.text",
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
        "color": "#F2FFFF"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "labels",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  }
];
	map.setOptions({styles: styles});

	var myoverlay = new google.maps.OverlayView();
	myoverlay.draw = function () {
		this.getPanes().markerLayer.id='markerLayer';
	};
	myoverlay.setMap(map);

	
}
var prv_infowindow;

var myMarkers=[];

function clearMyMarkers()
{
	
	for(i=0;i<myMarkers.length;i++)
		myMarkers[i].setMap(null);
	myMarkers=[];
}
function addMarker(lat,lng,title,is_recomm,is_mine,optimg)
{

	var zidx=9;
	if(lat!="")
	{
		var myLatlng = new google.maps.LatLng(lat,lng);
		var marker;
		if(is_mine>0)
		{
				if(is_mine==2)
				{
					zidx=99;
					icoimg="https://www.stubbyplanner.com/img_v8/marker_visited.png";
					var marker = new google.maps.Marker({
					      icon:icoimg,
					      position: myLatlng,
					      map: map,
					      title: title,
					      zindex:zidx,
					    optimized: false
					});

				}
				else
				{
					zidx=99;
	
					icoimg = {
					    url: optimg,
					    scaledSize: new google.maps.Size(32, 32),
					    anchor: new google.maps.Point(4, 4)
					  };
//					icoimg="https://www.stubbyplanner.com/img_v8/marker_willgo.png";

					var marker = new google.maps.Marker({
					      icon:icoimg,
			  		      shape:{coords:[16,16,16],type:'circle'},
					      position: myLatlng,
					      map: map,
					      title: title,
					      zindex:zidx,
					    optimized: false
					});

				}

		}
		else
		{
			if(is_recomm)
			{
				zidx=10;
				icoimg="https://www.stubbyplanner.com/img_v8/marker.png";

			}
			else
			{
				icoimg="https://www.stubbyplanner.com/img_v8/selectcityICON_red.png";
			}

					var marker = new google.maps.Marker({
					      icon:icoimg,
					      position: myLatlng,
					      map: map,
					      title: title,
					      zindex:zidx,
					    optimized: false
					});

		}

		myMarkers.push(marker);
	
		google.maps.event.addListener(marker, 'click', function() {
			if(prv_infowindow)
				prv_infowindow.close();

			infowindow = new google.maps.InfoWindow();
				
			thtml=title;
			infowindow.setContent(thtml);

			infowindow.open(map,marker);
			prv_infowindow=infowindow;
		});
		
	}
}


</script>

<!--[if lt IE 10]>
	<script src="/superguide/One-Pages/assets/plugins/sky-forms-pro/skyforms/js/jquery.placeholder.min.js"></script>
<![endif]-->
</body>
</html>