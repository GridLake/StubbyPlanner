<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/include.jspf" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
<link rel="image_src" href="" />
<meta property="og:type" content="website">
<meta property="og:locale" content="ko_KR">
<meta property="fb:app_id" content="218650814915663">

<meta property="og:title" content="플래너  - 나만의 유럽여행을 만드는 스마트한 방법" />
<meta property="og:type" content="website" />
<meta property="og:url" content="http://www.stubbyplanner.com/exp/list.do" /> <!-- 수정필요 -->
<meta property="og:image" content="" />
<meta property="og:site_name" content="상상속 여행을 현실로, 스투비플래너" />
<meta property="og:description" content="유럽여행 계획을 스마트하게 만들수 있는 전문플래너" />

<title>플래너 - 스투비플래너</title>

<!-- Meta -->

    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Favicon -->
    <link rel="shortcut icon" href="<%= contextPath %>/externalData/images2/common/favicon.ico">
    <link rel="icon" href="<%= contextPath %>/externalData/images2/common/favicon.png"> 

	<!-- CSS Global Compulsory -->

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" href="<%= contextPath %>/externalData/superguide/One-Pages/assets/css/app.css">
	<link rel="stylesheet" href="<%= contextPath %>/externalData/superguide/assets/plugins/font-awesome/css/font-awesome.min.css">


	<!-- CSS Header and Footer -->
	<link rel="stylesheet" href="<%= contextPath %>/externalData/superguide/assets/css/headers/header-v4.css">



	<link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/market/css/swiper.min.css">

	<link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/css2/common.css">
	<link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/mb/css/BnB_home.css">
	<link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/market/css/tourHome.css">
	 <link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/css2/header_footer.css">

    <!-- swiper.js : 이미지슬라이더 -->
    <script type="text/javascript" src="<%= contextPath %>/externalData/market/js/swiper.min.js"></script>



<script src="http://www.google.com/jsapi"></script>

<script>
 (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
 (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
 m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
 })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
 ga('create', 'UA-913663-1', 'auto');
 ga('send', 'pageview');
 ga('send','event','exp','listview','');

</script>


<link href='https://fonts.googleapis.com/css?family=Noto+Sans:400,700' rel='stylesheet' type='text/css'>
<style>

.stu_tagArea .stu_tag_on
{
	background:#696969;
	color:#fff;
	padding:10px 10px;
}
.stu_tagArea .stu_tag_off
{
	padding:10px 10px;
}
.grid {
 
  /* center */
  margin: 0 auto;
}

/* clearfix */
.grid:after {
  content: '';
  display: block;
  clear: both;
}

/* ---- grid-item ---- */
.grid-sizer,
.grid-item {
width:50%;
}

.grid-item {
  padding-left:5px;
  padding-right:5px;
  position:relative;
  height: 120px;
  float: left;
  overflow:hidden;

margin-bottom: 10px;
}

.grid-item--height2 { height: 180px; }
.grid-item--height3 { height: 260px; }

.swiper-pagination-bullet-active
{background:#007aff}
.sround{
width:80%;border-radius:3px;
}
.sbold
{font-weight:500;padding-top:5px;}
.round
{border-radius:100px;}
ul.nolist
{list-style:none;}
ul.nolist li
{
	display: inline-block;
	width:11.5%;
	overflow:hidden;
	text-align: center;
}
ul.nolist li a
{
	font-size: 12px;font-weight: 300;line-height: 16px;color: #666;
}
.stu_topBanner .viewport .textArea 
{
	top:10px;
}
.stu_category li
{
	-webkit-border-radius: 22px;
	  border-radius: 22px;
}
.stu_tab-content .swiper-slide
{
}
.stu_topBanner
{
	height:auto;
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
.speech-bubble {
	position: relative;
	background: #ee685a;
	border-radius: .4em;
}

.speech-bubble:after {
	content: '';
	position: absolute;
	top: 0;
	left: 27%;
	width: 0;
	height: 0;
	border: 23px solid transparent;
	border-bottom-color: #ee685a;
	border-top: 0;
	border-left: 0;
	margin-left: -11.5px;
	margin-top: -18px;
}

</style>
<script>
function logging(a,p)
{
	/* 경로 확인 필요 */
	$.ajax({
		  url: "/api/logging.do?p="+p+"_mobile&a="+a,
	
		  success: function( data ) {
					
		}
	});
	
}
</script>

</head>	
<body >
    <div class="stu_wrap">
        <!-- 기존 헤더 영역(삭제하세요.) -->

<jsp:include page="/WEB-INF/layout/header_large.jsp"></jsp:include>

<main style="margin-top:10px">


<script>
function openURLXXX(xurl)
{
	nurl="";
	if(xurl.indexOf("?")>0)
	{
		if(getMobileOperatingSystem()=='Android')
			nurl=xurl+'&needlogin=1&access_key=&ver=2';
		else
			nurl=xurl;

	}
	else
	{
		if(getMobileOperatingSystem()=='Android')
			nurl=xurl+'?needlogin=1&access_key=&ver=2';
		else
			nurl=xurl;

	}
	

	openURL2(nurl);
}

</script>
<section>
      <div class="stu_inner_wrap">
	<div style="padding-bottom:30px;">

		<div style="float:left;width:45%">
			<div style="text-align:left;padding-top:30px;padding-left:30px;">
			<h2 class="stu_h2_title" style="color:gray;line-height:200%;font-weight:500;font-size:16pt"><font style="font-weight:700;">스투비플래너</font>로  <br>유럽여행 경비  17%를 줄여보세요.</h2>



				<div style="padding-top:20px;padding-right:30px;">
					<div style="width:50%;position:relative;display:inline-block;margin-top:8px;vertical-align:middle">
						<!-- <a href="javascript:showPlannerSelector();" style="text-align:center;width:100%;margin-right:5px;text-decoration:none;font-weight:700;color:#fff;font-size:14pt;display:inline-block;padding:10px 20px;background:#ee685a" onclick="logging('planning','home')"><i class="fa fa-map" aria-hidden="true"></i> 플래너 시작</a> -->
						<a href="<%= contextPath %>/planner/planner_rt.do" style="text-align:center;width:100%;margin-right:5px;text-decoration:none;font-weight:700;color:#fff;font-size:14pt;display:inline-block;padding:10px 20px;background:#ee685a" onclick="logging('planning','home')"><i class="fa fa-map" aria-hidden="true"></i> 플래너 시작</a>
					</div><div style="width:50%;display:inline-block;margin-top:8px;margin-left:0px;vertical-align:middle ">
						<a href="<%= contextPath %>/consulting/index.do" style="text-align:center;width:100%;margin-left:5px;text-decoration:none;font-weight:700;color:#fff;font-size:14pt;display:inline-block;padding:10px 15px;background:#3ad195" onclick="logging('recom','home')"><i class="fa fa-magic" aria-hidden="true"></i> 맞춤여행 의뢰</a>
					</div>
					<div style="clear:both"></div>
<%-- 					
<script>
function showPlannerSelector()
{
	$("#speech-bubble").show();
}
</script>
					<div id="speech-bubble" class="speech-bubble" style="display:none;margin-top:20px;height:56px;">	
	
						<div style="width:50%;vertical-align:middle;float:left">
							<a href="<%= contextPath %>/planner/planner_rt.do" style="margin-top:8px;margin-bottom:8px;margin-left:12px;margin-right:4px;center;text-decoration:none;font-weight:700;color:#fff;font-size:12pt;display:inline-block;padding-top:6px;padding-bottom:6px;width:90%;text-align:center;border:2px solid #fff;border-radius:2px" onclick="logging('planning','home')"><i class="fa fa-map" aria-hidden="true"></i> 빈 플래너 시작</a>
						</div><div style="width:50%;vertical-align:middle;float:left">
							<a href="<%= contextPath %>/stubbyx/step0.do" style="margin-top:8px;margin-bottom:8px;margin-left:4px;margin-right:12;text-align:center;text-decoration:none;font-weight:700;color:#fff;font-size:12pt;display:inline-block;padding-top:6px;padding-bottom:6px;width:90%;text-align:center;border:2px solid #fff;border-radius:2px" onclick="logging('recom','home')"><i class="fa fa-magic" aria-hidden="true"></i> 추천받고 시작</a>
						</div>
						<div style="clear:both"></div>

					</div>
 --%>
			
				</div>

				<div style="font-size:10pt;color:#696969;margin-top:20px;line-height:200%;">


미리 예약할수록 비용이 줄어드는 <b>유럽 자유여행</b><br>
<b>771,379</b>개의 유럽여행 데이타를 기반으로 제공되는 <br>
<b>다양한 추천</b>과 <b>시뮬레이션 기능</b>을 활용해<br/>
여행루트와 일정을 미리 확정해 <b>17%</b>의 비용을 줄여보세요!
</div>


<!--
771,379 개의 유럽여행 데이터 활용해<br><b>출국 2개월전까지</b> 루트와 일정을 완성하고<br>현지교통,숙소,투어를 <b>미리 예약하면</b><Br>출국 2주전 대비 <b>17%의 경비를 절감</b>할 수 있습니다.</div>
				<div style="padding-top:20px">
					<div style="position:relative;display:inline-block;margin-top:8px;vertical-align:middle">
						<a href="/planner/planner_rt.do" style="text-decoration:none;font-weight:700;color:#fff;font-size:14pt;display:inline-block;padding:10px 20px;background:#ee685a" onclick="logging('planning','planner')"><i class="fa fa-map"></i> 플래너 시작</a>
					</div><div style="display:inline-block;margin-top:8px;margin-left:10px;vertical-align:middle ">
						<a href="/consulting/index.do" style="text-decoration:none;font-weight:700;color:#fff;font-size:14pt;display:inline-block;padding:10px 15px;background:#3ad195" onclick="logging('recomm','planner')"><i class="fa fa-magic"></i> 맞춤여행 의뢰</a>
					</div>
				</div>

				<div style="font-size:8pt;color:#696969;margin-top:20px;"><font style="color:#ff6142;font-weight:600;font-size:9pt">스마트 여행일정 추천</font> 750,763 개의 유럽여행 데이터 기반</div>
				<div style="font-size:8pt;color:#696969;margin-top:10px;"><font style="color:#ff6142;font-weight:600;font-size:9pt">현지 구간권 할인예약</font> 미리 예약하면 최대 80%할인</div>
				<div style="font-size:8pt;color:#696969;margin-top:10px;"><font style="color:#ff6142;font-weight:600;font-size:9pt">놀라운 투어 할인</font>미리 예약하면 최대 20%할인</div>
				<div style="font-size:8pt;color:#696969;margin-top:10px;"><font style="color:#ff6142;font-weight:600;font-size:9pt">최적위치의 숙소 할인</font>미리 예약할수록 할인!</div>

				<div style="font-size:8pt;color:#696969;margin-top:20px;"><font style="color:#ff6142;font-weight:600;font-size:9pt">여행루트/일정 추천</font> 750,763개의 유럽여행 데이터</div>
				<div style="font-size:8pt;color:#696969;margin-top:10px;"><font style="color:#ff6142;font-weight:600;font-size:9pt">직거래 투어상품 추천</font> 1,537개의 유럽 직거래 투어상품 추천</div>
				<div style="font-size:8pt;color:#696969;margin-top:10px;"><font style="color:#ff6142;font-weight:600;font-size:9pt">실시간 교통편 추천</font>  skyscanner 유럽 저가항공 + 유럽 각국가 철도청 연동</div>
				<div style="font-size:8pt;color:#696969;margin-top:10px;"><font style="color:#ff6142;font-weight:600;font-size:9pt">맞춤 숙소추천</font> 1천만개 booking.com 유럽 호텔/아파트 + 908개 유럽 민박 </div>
-->

			</div>
		</div>


		<div style="float:left;width:55%">
			<div style="margin-top:75px;">
				

				<img width="100%" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/1850a7fdfa9651e1cd8792db5bb76ba6.png">
			
			</div>
		</div>

		<div style="clear:both"></div>


	</div>
     </div>
</section>




<div style="background:#f5f5f5;">
<div class="container" style="margin-top:0px;">
	<div style="float:left;width:50%;padding-top:15px;margin-top:25px;padding-bottom:20px;border-bottom:0px solid #efefef;background:#f5f5f5;margin-bottom:10px;padding-left:20px;padding-right:20px;">
		<a href="<%= contextPath %>/market/index.do"  style="text-decoration:none;font-weight:500;color:gray;width:100%;font-size:14pt;margin-bottom:0px;display:inline-block;padding:10px 15px;border:1px solid #efefef;background:#fff;border-radius:5px;"><font style="color:##3ad195;font-weight:400;font-size:9pt">플래너로 미리 일정을 확정한 사람들을 위한 할인!</font><br> <b>얼리버드특가</b>  <font style="font-size:9pt;color:#3ad195;font-weight:700">빠를수록 커지는 할인율!</font> <i class="fa fa-chevron-right" aria-hidden="true"></i></a>
	</div>
	<div  style="float:left;width:50%;padding-top:15px;margin-top:25px;padding-bottom:20px;border-bottom:0px solid #efefef;background:#f5f5f5;margin-bottom:10px;padding-left:20px;padding-right:20px;">
		<a href="<%= contextPath %>/consulting/index.do"  style="text-decoration:none;font-weight:500;color:gray;width:100%;font-size:14pt;margin-bottom:0px;display:inline-block;padding:10px 15px;border:1px solid #efefef;background:#fff;border-radius:5px;"><font style="color:##3ad195;font-weight:400;font-size:9pt">첫 유럽 자유여행이라면, 미리 맡겨서 비용을 줄이세요!</font><br>유럽여행 전문가 의뢰 <font style="font-size:9pt;color:#3ad195;font-weight:700">55,200원부터</font> <i class="fa fa-chevron-right" aria-hidden="true"></i></a>
	</div>
</div>
</div>
	


<div class="container" style="padding-top:10px;margin-bottom:10px;" >
      
      <h2 style="padding-left:20px;font-size:18pt;font-weight:700;color:#696969">내 여행계획</h2>

	<p style="padding-left:20px;font-size:14pt;color:gray">2021년 2월 출발 <font style="font-size:11pt">1</font></p>
	<div style="">
	<div style="" class="swiper-container swiper3">

<ul class="swiper-wrapper"><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;left:10px;width:40px;height:40px;text-align:center;">
		<img id="tripwith_img" onerror="this.src='http://www.stubbyplanner.com/img_v14/tripwith/TW_0_0.png'" src="http://www.stubbyplanner.com/img_v14/tripwith/TW_1_2.png" style="width:35px;height:auto">
	</div>


						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://maps.googleapis.com/maps/api/staticmap?size=400x400&mobile=true&visible=39,17&path=color:0x|weight:1&&key=AIzaSyAlG3b7IeRzDZW46KIpOFPtiIxXt9MU46I&format=png&maptype=roadmap&style=element:geometry%7Ccolor:0xffffff%7Cvisibility:on&style=element:labels%7Cvisibility:simplified&style=element:labels.icon%7Cvisibility:off&style=element:labels.text%7Ccolor:0xcfcfcf%7Cvisibility:simplified&style=feature:administrative.country%7Celement:geometry.stroke%7Ccolor:0xd6d6d6%7Cvisibility:on%7Cweight:0.5&style=feature:poi%7Cvisibility:off&style=feature:water%7Celement:geometry%7Ccolor:0xd2f4f4%7Cvisibility:on&style=feature:water%7Celement:labels%7Cvisibility:off">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">5일전 수정</span>
						[D-625]1일간 남자혼자여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">1<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li></ul>
		<div style="clear:both"></div>
		
		</div>
		</div>
<hr>

	<p style="padding-left:20px;font-size:14pt;color:gray">2019년 6월 출발 <font style="font-size:11pt">36</font></p>
	<div style="">
	<div style="" class="swiper-container swiper3">

<ul class="swiper-wrapper"><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">



						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://maps.googleapis.com/maps/api/staticmap?size=400x400&mobile=true&visible=39,17&path=color:0x|weight:1|48.14,11.579|50.088,14.424|48.811,14.315|47.8,13.044&&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|48.14,11.579&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight3%2Epng|50.088,14.424&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|48.811,14.315&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|47.8,13.044&key=AIzaSyAlG3b7IeRzDZW46KIpOFPtiIxXt9MU46I&format=png&maptype=roadmap&style=element:geometry%7Ccolor:0xffffff%7Cvisibility:on&style=element:labels%7Cvisibility:simplified&style=element:labels.icon%7Cvisibility:off&style=element:labels.text%7Ccolor:0xcfcfcf%7Cvisibility:simplified&style=feature:administrative.country%7Celement:geometry.stroke%7Ccolor:0xd6d6d6%7Cvisibility:on%7Cweight:0.5&style=feature:poi%7Cvisibility:off&style=feature:water%7Celement:geometry%7Ccolor:0xd2f4f4%7Cvisibility:on&style=feature:water%7Celement:labels%7Cvisibility:off">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">1일전 수정</span>
						[D-30]7일간 유럽여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">7<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">



						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://maps.googleapis.com/maps/api/staticmap?size=400x400&mobile=true&visible=39,17&path=color:0x|weight:1|48.861,2.342|46.686,7.856&&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight3%2Epng|48.861,2.342&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|46.686,7.856&key=AIzaSyAlG3b7IeRzDZW46KIpOFPtiIxXt9MU46I&format=png&maptype=roadmap&style=element:geometry%7Ccolor:0xffffff%7Cvisibility:on&style=element:labels%7Cvisibility:simplified&style=element:labels.icon%7Cvisibility:off&style=element:labels.text%7Ccolor:0xcfcfcf%7Cvisibility:simplified&style=feature:administrative.country%7Celement:geometry.stroke%7Ccolor:0xd6d6d6%7Cvisibility:on%7Cweight:0.5&style=feature:poi%7Cvisibility:off&style=feature:water%7Celement:geometry%7Ccolor:0xd2f4f4%7Cvisibility:on&style=feature:water%7Celement:labels%7Cvisibility:off">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">1일전 수정</span>
						[D-30]5일간 유럽여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">5<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">



						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://maps.googleapis.com/maps/api/staticmap?size=400x400&mobile=true&visible=39,17&path=color:0x|weight:1|48.861,2.342|46.686,7.856|48.14,11.579&&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight3%2Epng|48.861,2.342&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|46.686,7.856&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|48.14,11.579&key=AIzaSyAlG3b7IeRzDZW46KIpOFPtiIxXt9MU46I&format=png&maptype=roadmap&style=element:geometry%7Ccolor:0xffffff%7Cvisibility:on&style=element:labels%7Cvisibility:simplified&style=element:labels.icon%7Cvisibility:off&style=element:labels.text%7Ccolor:0xcfcfcf%7Cvisibility:simplified&style=feature:administrative.country%7Celement:geometry.stroke%7Ccolor:0xd6d6d6%7Cvisibility:on%7Cweight:0.5&style=feature:poi%7Cvisibility:off&style=feature:water%7Celement:geometry%7Ccolor:0xd2f4f4%7Cvisibility:on&style=feature:water%7Celement:labels%7Cvisibility:off">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">4일전 수정</span>
						[D-27]6일간 유럽여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">6<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">



						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://maps.googleapis.com/maps/api/staticmap?size=400x400&mobile=true&visible=39,17&path=color:0x|weight:1|48.861,2.342|48.209,16.373|41.895,12.482&&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight3%2Epng|48.861,2.342&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|48.209,16.373&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight3%2Epng|41.895,12.482&key=AIzaSyAlG3b7IeRzDZW46KIpOFPtiIxXt9MU46I&format=png&maptype=roadmap&style=element:geometry%7Ccolor:0xffffff%7Cvisibility:on&style=element:labels%7Cvisibility:simplified&style=element:labels.icon%7Cvisibility:off&style=element:labels.text%7Ccolor:0xcfcfcf%7Cvisibility:simplified&style=feature:administrative.country%7Celement:geometry.stroke%7Ccolor:0xd6d6d6%7Cvisibility:on%7Cweight:0.5&style=feature:poi%7Cvisibility:off&style=feature:water%7Celement:geometry%7Ccolor:0xd2f4f4%7Cvisibility:on&style=feature:water%7Celement:labels%7Cvisibility:off">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">4일전 수정</span>
						[D-27]8일간 유럽여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">8<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">



						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://maps.googleapis.com/maps/api/staticmap?size=400x400&mobile=true&visible=39,17&path=color:0x|weight:1|48.861,2.342|50.847,4.351&&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight3%2Epng|48.861,2.342&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|50.847,4.351&key=AIzaSyAlG3b7IeRzDZW46KIpOFPtiIxXt9MU46I&format=png&maptype=roadmap&style=element:geometry%7Ccolor:0xffffff%7Cvisibility:on&style=element:labels%7Cvisibility:simplified&style=element:labels.icon%7Cvisibility:off&style=element:labels.text%7Ccolor:0xcfcfcf%7Cvisibility:simplified&style=feature:administrative.country%7Celement:geometry.stroke%7Ccolor:0xd6d6d6%7Cvisibility:on%7Cweight:0.5&style=feature:poi%7Cvisibility:off&style=feature:water%7Celement:geometry%7Ccolor:0xd2f4f4%7Cvisibility:on&style=feature:water%7Celement:labels%7Cvisibility:off">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">5일전 수정</span>
						[D-26]5일간 유럽여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">5<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">



						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://maps.googleapis.com/maps/api/staticmap?size=400x400&mobile=true&visible=39,17&path=color:0x|weight:1|48.861,2.342|48.14,11.579|47.57,10.7&&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight3%2Epng|48.861,2.342&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight1%2Epng|48.14,11.579&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight0%2Epng|47.57,10.7&key=AIzaSyAlG3b7IeRzDZW46KIpOFPtiIxXt9MU46I&format=png&maptype=roadmap&style=element:geometry%7Ccolor:0xffffff%7Cvisibility:on&style=element:labels%7Cvisibility:simplified&style=element:labels.icon%7Cvisibility:off&style=element:labels.text%7Ccolor:0xcfcfcf%7Cvisibility:simplified&style=feature:administrative.country%7Celement:geometry.stroke%7Ccolor:0xd6d6d6%7Cvisibility:on%7Cweight:0.5&style=feature:poi%7Cvisibility:off&style=feature:water%7Celement:geometry%7Ccolor:0xd2f4f4%7Cvisibility:on&style=feature:water%7Celement:labels%7Cvisibility:off">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">5일전 수정</span>
						[D-26]5일간 유럽여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">5<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">



						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://maps.googleapis.com/maps/api/staticmap?zoom=3&size=400x400&mobile=true&&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight3%2Epng|48.861,2.342&key=AIzaSyAlG3b7IeRzDZW46KIpOFPtiIxXt9MU46I&format=png&maptype=roadmap&style=element:geometry%7Ccolor:0xffffff%7Cvisibility:on&style=element:labels%7Cvisibility:simplified&style=element:labels.icon%7Cvisibility:off&style=element:labels.text%7Ccolor:0xcfcfcf%7Cvisibility:simplified&style=feature:administrative.country%7Celement:geometry.stroke%7Ccolor:0xd6d6d6%7Cvisibility:on%7Cweight:0.5&style=feature:poi%7Cvisibility:off&style=feature:water%7Celement:geometry%7Ccolor:0xd2f4f4%7Cvisibility:on&style=feature:water%7Celement:labels%7Cvisibility:off">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">6일전 수정</span>
						[D-25]4일간 유럽여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">4<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">



						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://maps.googleapis.com/maps/api/staticmap?size=400x400&mobile=true&visible=39,17&path=color:0x|weight:1|48.861,2.342|51.5,-0.126&&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight3%2Epng|48.861,2.342&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight3%2Epng|51.5,-0.126&key=AIzaSyAlG3b7IeRzDZW46KIpOFPtiIxXt9MU46I&format=png&maptype=roadmap&style=element:geometry%7Ccolor:0xffffff%7Cvisibility:on&style=element:labels%7Cvisibility:simplified&style=element:labels.icon%7Cvisibility:off&style=element:labels.text%7Ccolor:0xcfcfcf%7Cvisibility:simplified&style=feature:administrative.country%7Celement:geometry.stroke%7Ccolor:0xd6d6d6%7Cvisibility:on%7Cweight:0.5&style=feature:poi%7Cvisibility:off&style=feature:water%7Celement:geometry%7Ccolor:0xd2f4f4%7Cvisibility:on&style=feature:water%7Celement:labels%7Cvisibility:off">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">6일전 수정</span>
						[D-25]7일간 유럽여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">7<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">



						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://maps.googleapis.com/maps/api/staticmap?zoom=3&size=400x400&mobile=true&&markers=scale:2|icon:http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fimg%5Fv13%2Fmarker%2Fmycity%5Fnight3%2Epng|48.861,2.342&key=AIzaSyAlG3b7IeRzDZW46KIpOFPtiIxXt9MU46I&format=png&maptype=roadmap&style=element:geometry%7Ccolor:0xffffff%7Cvisibility:on&style=element:labels%7Cvisibility:simplified&style=element:labels.icon%7Cvisibility:off&style=element:labels.text%7Ccolor:0xcfcfcf%7Cvisibility:simplified&style=feature:administrative.country%7Celement:geometry.stroke%7Ccolor:0xd6d6d6%7Cvisibility:on%7Cweight:0.5&style=feature:poi%7Cvisibility:off&style=feature:water%7Celement:geometry%7Ccolor:0xd2f4f4%7Cvisibility:on&style=feature:water%7Celement:labels%7Cvisibility:off">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">6일전 수정</span>
						[D-25]4일간 유럽여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">4<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">



						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://www.stubbyplanner.com/img_v9/img_pfnull.jpg">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">6일전 수정</span>
						[D-25]1일간 여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">1<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">



						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://www.stubbyplanner.com/img_v9/img_pfnull.jpg">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">7일전 수정</span>
						[D-24]4일간 유럽여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">4<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">



						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://www.stubbyplanner.com/img_v9/img_pfnull.jpg">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">8일전 수정</span>
						[D-23]4일간 유럽여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">4<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">



						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://www.stubbyplanner.com/img_v9/img_pfnull.jpg">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">8일전 수정</span>
						[D-23]4일간 유럽여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">4<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">



						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://www.stubbyplanner.com/img_v9/img_pfnull.jpg">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">8일전 수정</span>
						[D-23]5일간 유럽여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">5<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">



						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://www.stubbyplanner.com/img_v9/img_pfnull.jpg">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">8일전 수정</span>
						[D-23]5일간 유럽여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">5<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">



						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://www.stubbyplanner.com/img_v9/img_pfnull.jpg">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">8일전 수정</span>
						[D-23]4일간 유럽여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">4<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">



						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://www.stubbyplanner.com/img_v9/img_pfnull.jpg">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">8일전 수정</span>
						[D-23]4일간 유럽여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">4<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">



						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://www.stubbyplanner.com/img_v9/img_pfnull.jpg">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">8일전 수정</span>
						[D-23]4일간 유럽여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">4<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">



						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://www.stubbyplanner.com/img_v9/img_pfnull.jpg">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">8일전 수정</span>
						[D-23]8일간 유럽여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">8<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">



						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://www.stubbyplanner.com/img_v9/img_pfnull.jpg">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">8일전 수정</span>
						[D-23]4일간 유럽여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">4<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">



						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://www.stubbyplanner.com/img_v9/img_pfnull.jpg">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">8일전 수정</span>
						[D-23]5일간 유럽여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">5<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">



						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://www.stubbyplanner.com/img_v9/img_pfnull.jpg">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">8일전 수정</span>
						[D-23]12일간 유럽여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">12<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;left:10px;width:40px;height:40px;text-align:center;">
		<img id="tripwith_img" onerror="this.src='http://www.stubbyplanner.com/img_v14/tripwith/TW_0_0.png'" src="http://www.stubbyplanner.com/img_v14/tripwith/TW_1_3.png" style="width:35px;height:auto">
	</div>


						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://www.stubbyplanner.com/img_v9/img_pfnull.jpg">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">8일전 수정</span>
						[D-23]17일간 커플/신혼여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">17<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">



						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://www.stubbyplanner.com/img_v9/img_pfnull.jpg">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">8일전 수정</span>
						[D-23]5일간 유럽여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">5<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">



						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://www.stubbyplanner.com/img_v9/img_pfnull.jpg">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">8일전 수정</span>
						[D-23]5일간 유럽여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">5<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">



						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://www.stubbyplanner.com/img_v9/img_pfnull.jpg">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">8일전 수정</span>
						[D-23]4일간 유럽여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">4<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">



						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://www.stubbyplanner.com/img_v9/img_pfnull.jpg">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">8일전 수정</span>
						[D-23]4일간 유럽여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">4<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">



						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://www.stubbyplanner.com/img_v9/img_pfnull.jpg">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">11일전 수정</span>
						[D-20]4일간 유럽여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">4<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">



						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://www.stubbyplanner.com/img_v9/img_pfnull.jpg">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">11일전 수정</span>
						[D-20]1일간 여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">1<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">



						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://www.stubbyplanner.com/img_v9/img_pfnull.jpg">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">12일전 수정</span>
						[D-19]5일간 유럽여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">5<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">



						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://www.stubbyplanner.com/img_v9/img_pfnull.jpg">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">12일전 수정</span>
						[D-19]5일간 유럽여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">5<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">



						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://www.stubbyplanner.com/img_v9/img_pfnull.jpg">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">5월 7일 수정</span>
						[D-10]유럽여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;"><font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">



						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://www.stubbyplanner.com/img_v9/img_pfnull.jpg">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">5월 7일 수정</span>
						[D-10]유럽여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;"><font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">



						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://www.stubbyplanner.com/img_v9/img_pfnull.jpg">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">5월 7일 수정</span>
						[D-10]1일간 여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">1<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">



						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://www.stubbyplanner.com/img_v9/img_pfnull.jpg">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">5월 7일 수정</span>
						[D-10]8일간 유럽여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">8<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;left:10px;width:40px;height:40px;text-align:center;">
		<img id="tripwith_img" onerror="this.src='http://www.stubbyplanner.com/img_v14/tripwith/TW_0_0.png'" src="http://www.stubbyplanner.com/img_v14/tripwith/TW_2_1.png" style="width:35px;height:auto">
	</div>


						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://www.stubbyplanner.com/img_v9/img_pfnull.jpg">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">5월 2일 수정</span>
						[D-5]1일간 여자끼리여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">1<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li></ul>
		<div style="clear:both"></div>
		
		</div>
		</div>
<hr>

	<p style="padding-left:20px;font-size:14pt;color:gray">2019년 5월 출발 <font style="font-size:11pt">3</font></p>
	<div style="">
	<div style="" class="swiper-container swiper3">

<ul class="swiper-wrapper"><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">



						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://www.stubbyplanner.com/img_v9/img_pfnull.jpg">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">4월 30일 수정</span>
						[D-2]3일간 여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">3<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">



						<img style="border:1px solid #efefef;border-radius:5px;opacity:0.4"  width="100%" src="http://www.stubbyplanner.com/img_v9/img_pfnull.jpg">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">4월 30일 수정</span>
						[D-2]5일간 유럽여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">5<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li><li class="swiper-slide"     style="flex-basis:25%;margin: 0 0.8%;">
<a href="javascript:func_alert('로그인후 이용하세요.')">

				<div style=";margin-bottom:20px;position:relative;">
					<div style="padding-left:5px;padding-right:5px;">



						<img style="border:1px solid #efefef;border-radius:5px;"  width="100%" src="http://www.stubbyplanner.com/img_v9/img_pfnull.jpg">
						<div style="text-align:left;font-size:11pt">
						<span style="float:right;display:inline-block;padding-left:3px;padding-right:3px;font-size:8pt;background:#c0c0c0;color:#fff">4월 30일 수정</span>
						[D-2]25일간 유럽여행  
						</div>
					</div>


	<div style="z-index:99;background:#fff;border:1px solid #efefef;position:absolute;top:10px;right:10px;border-radius:50px;width:40px;height:40px;padding-top:3px;text-align:center;font-size:13pt;font-weight:500;color:#696969;">25<font style="font-size:8pt"> 일</font></div>






				</div>
		</a>
</li></ul>
		<div style="clear:both"></div>
		
		</div>
		</div>
<hr>


		<div style="clear:both"></div>
	
</div>






            <section class="stu_regions">
                <div class="stu_inner_wrap" style="">

               <h2 style="font-size:18pt;font-weight:700;color:#696969">
                    인기 루트로 여행계획 시작 
                </h2>
 

                

                    <div id="tab-1" class="stu_tab-content current">
                        <div class="swiper-container swiper3">
                            <ul class="swiper-wrapper">





                                <li class="swiper-slide">
                                	<!-- 경로 & 파라미터 변경 필요 -->
                                    <a href="http://www.stubbyplanner.com/planner/planner_rt.do?tripgene=111031001:3:X:0,111011004:3:0:0,111041006:1:5:0,111041003:1:1:0,111041004:3:1:0">
                                        <img class="fw" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/636c475c3ce6932a35fadb740f63bf74_l.jpg">
                                        <div class="tone-down"></div>
                                        <div class="stu_titleArea">
                                            <p>서유럽 단기</p>
                                            <p class="type2">12~15일</p>
                                        </div>
                                    </a>
                                </li>

                                <li class="swiper-slide">
									<!-- 경로 & 파라미터 변경 필요 -->
                                    <a href="http://www.stubbyplanner.com/planner/planner_rt.do?tripgene=111031001,111011004,111021002,111041006,111041003,111041004">

                                        <img class="fw" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/c04eadc3c03e90ca9c25d825120ed706_l.jpg">
                                        <div class="tone-down"></div>
                                        <div class="stu_titleArea">
                                            <p>서유럽 핵심</p>
                                            <p class="type2">13~21일</p>
                                        </div>
                                    </a>
                                </li>


                                <li class="swiper-slide">
                                  <!-- 경로 & 파라미터 변경 필요 -->
                                  <a href="http://www.stubbyplanner.com/planner/planner_rt.do?tripgene=131011001:2:X:0,131011003:1:2:0,131041002:0:0:0,131041032:1:1:0,131041001:1:1:0,131021001:1:1:0">
                                        <img class="fw" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/467ff806c2e8d1d75abfe661f238595b_l.jpg">
                                        <div class="tone-down"></div>
                                        <div class="stu_titleArea">
                                            <p>동유럽 단기</p>
                                            <p class="type2">7~10일</p>
                                        </div>
                                    </a>
                                </li>

                                <li class="swiper-slide">
                                 <!-- 경로 & 파라미터 변경 필요 -->
								 <a href="http://www.stubbyplanner.com/planner/planner_rt.do?tripgene=121011002:3:X:0,121011001:1:1:0,121011048:0:2:0,121011005:1:2:0,121011057:1:2:0,121011007:1:0:0,121021001:2:0:0,121021041:1:0:0,121011003:1:0:0,121011004:0:2:0,121011008:0:0:0,121011003:3:0:0">
                                        <img class="fw" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/41f99a5e1fef95c038f585bc77f827e5_l.jpg">
                                        <div class="tone-down"></div>
                                        <div class="stu_titleArea">
                                            <p>스페인+포르투갈</p>
                                            <p class="type2">15~20일</p>
                                        </div>
                                    </a>
                                </li>

                                <li class="swiper-slide">
                                 <!-- 경로 & 파라미터 변경 필요 -->
								 <a href="http://www.stubbyplanner.com/planner/planner_rt.do?tripgene=121041001:3:X:0,121041035:1:0:0,121041006:1:0:0,121041003:2:0:0,121041030:1:0:0,121041004:1:0:0,121031002:2:0:0,121031001:2:0:0,121041001:1:5:0">
                                        <img class="fw" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/684a6760ae74e6e614c6b24f7b4d2337_l.jpg">
                                        <div class="tone-down"></div>
                                        <div class="stu_titleArea">
                                            <p>터키+그리스</p>
                                            <p class="type2">15~20일</p>
                                        </div>
                                    </a>
                                </li>


                                <li class="swiper-slide">
                                	<!-- 경로 & 파라미터 변경 필요 -->
                                    <a href="http://www.stubbyplanner.com/planner/planner_rt.do?tripgene=111031001:3:X,121011003:2:X,121011004:0:X,121011003:1:X,121011002:3:X,111041004:3:X,111041003:1:X,111041006:1:X,111061005:1:X,131041002:1:X,131041032:1:X,131041001:2:X,131021001:1:X,131011001:3:X,111061006:1:X,111011004:4:X">
                                        <img class="fw" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/5bf452c02b7c792e6cbda09451d2f523_l.jpg">
                                        <div class="tone-down"></div>
                                        <div class="stu_titleArea">
                                            <p>유럽일주</p>
                                            <p class="type2">30일</p>
                                        </div>
                                    </a>
                                </li>

                            </ul>
                        </div>
                        <!--Navigation buttons-->
                        <div class="swiper-button-prev swiper-button-prev3"></div>
                        <div class="swiper-button-next swiper-button-next3"></div>
                    </div>
	</div>
            </section>


<section>
        <div class="stu_inner_wrap" style="">
      <h2 style="font-size:18pt;font-weight:700;color:#696969">추천 여행</h2>


<div style="margin-top:10px;height:300px;background:url('<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1529656417211lU1eOwrfYb.jpg');background-repeat: no-repeat;background-size:cover;background-position:center center;position:relative">
		<div style="position:absolute;top:0px;left:0px;width:100%;height:300px;background:#000;opacity: 0.25;filter: alpha(opacity=25);"> </div>



		<div style="position:absolute;top:40px;left:50px;width:500px;height:200px;z-index:9;valign:">
			<div style="margin-top:6px;margin-right:20px;float:left;padding-top:6px;text-align:center;border:1px solid #fff;border-radius:30px;width:60px;height:60px;"><font style="font-size:20pt;font-weight:600;color:#fff"> 10</font><font style="font-size:9pt;font-weight:500;color:#fff">일</font></div>

			<div style="float:left;width:400px;">
				<div style="margin-top:0px;padding-top:0px;padding-right:15px;"><font style="color:#fff;font-size:18pt;font-weight:600;">발트3국+북유럽</font></div>
				<font style="color:#fff;font-size:13pt;font-weight:500;">중세유럽속으로 떠나는 시간여행</font>
			</div>
			<div style="clear:both"></div>


			<p style="margin-top:100px">
				<a href="<%= contextPath %>/planner/view.do?trip_id=10013676" class="btn-u btn-u-green" style="border-radius:25px;background:#3ad195">이 플래너 자세히 <i class="fa fa-arrow-right"></i></a>
			</p>

		</div>


		<div style="position:absolute;top:40px;right:50px;width:300px;height:200px;z-index:9;">
			<div class="rt_left" style="float:left;width:33.33%;height:54px;text-align:center;position:relative"><font style="font-size:8pt;color:#fff">헬싱키</font> <div style="position:absolute;top:0px;right:0px;height:25px;width:50%;border-bottom:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff"><img src="<%= contextPath %>/externalData/images/is/flag/14102_s.gif" width="15px" style="border-radius:7px;"></div></div><div class="rt_left" style="float:left;width:33.33%;height:54px;text-align:center;position:relative"><font style="font-size:8pt;color:#fff">탈린</font> <div style="position:absolute;top:0px;right:0px;height:25px;width:100%;border-bottom:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff"><img src="<%= contextPath %>/externalData/images/is/flag/14106_s.gif" width="15px" style="border-radius:7px;"></div></div><div class="rt_left" style="float:left;width:33.33%;height:54px;text-align:center;position:relative"><font style="font-size:8pt;color:#fff">리가</font> <div style="position:absolute;top:0px;left:0px;height:25px;width:50%;border-bottom:3px solid #fff;"></div><div style="position:absolute;bottom:0px;left:0px;height:25px;width:50%;border-right:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff;margin-right:2px;"><img src="<%= contextPath %>/externalData/images/is/flag/13109_s.gif" width="15px" style="border-radius:7px;"></div></div><div style="clear:both"></div><div class="rt_left" style="float:right;width:33.33%;height:54px;text-align:center;position:relative"><div style="padding-top:29px;font-size:8pt;color:#fff">샤울레이</div><div style="position:absolute;top:0px;left:0px;height:25px;width:50%;border-bottom:3px solid #fff;"></div><div style="position:absolute;top:0px;left:0px;height:24px;width:50%;border-right:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff;margin-right:2px;margin-top:-2px;"><img src="<%= contextPath %>/externalData/images/is/flag/13110_s.gif" width="15px" style="border-radius:7px;"></div></div><div class="rt_left" style="float:right;width:33.33%;height:54px;text-align:center;position:relative"><font style="font-size:8pt;color:#fff">빌니우스</font> <div style="position:absolute;top:0px;right:0px;height:25px;width:100%;border-bottom:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff;"><img src="<%= contextPath %>/externalData/images/is/flag/13110_s.gif" width="15px" style="border-radius:7px;"></div></div><div class="rt_left" style="float:right;width:33.33%;height:54px;text-align:center;position:relative"><font style="font-size:8pt;color:#fff">모스크바</font> <div style="position:absolute;top:0px;right:0px;height:25px;width:50%;border-bottom:3px solid #fff;"></div><div style="position:absolute;bottom:0px;right:0px;height:25px;width:50%;border-left:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff"><img src="<%= contextPath %>/externalData/images/is/flag/14101_s.gif" width="15px" style="border-radius:7px;"></div></div><div style="clear:both"></div><div class="rt_left" style="float:left;width:33.33%;height:54px;text-align:center;position:relative"><div style="padding-top:29px;font-size:8pt;color:#fff">상트페테르..</div><div style="position:absolute;top:0px;right:0px;height:25px;width:50%;border-bottom:3px solid #fff;"></div><div style="position:absolute;top:0px;right:0px;height:24px;width:50%;border-left:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff;margin-right:2px;margin-top:-2px;"><img src="<%= contextPath %>/externalData/images/is/flag/14101_s.gif" width="15px" style="border-radius:7px;"></div></div><div class="rt_left" style="float:left;width:33.33%;height:54px;text-align:center;position:relative"><font style="font-size:8pt;color:#fff">헬싱키</font> <div style="position:absolute;top:0px;left:0px;height:25px;width:50%;border-bottom:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff;"><img src="<%= contextPath %>/externalData/images/is/flag/14102_s.gif" width="15px" style="border-radius:7px;"></div></div><div style="clear:both"></div>
			<div style="clear:both"></div>
		</div>

</div>

<div style="margin-top:10px;height:300px;background:url('<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1529656926388R72gaH51HO.jpg');background-repeat: no-repeat;background-size:cover;background-position:center center;position:relative">
		<div style="position:absolute;top:0px;left:0px;width:100%;height:300px;background:#000;opacity: 0.25;filter: alpha(opacity=25);"> </div>



		<div style="position:absolute;top:40px;left:50px;width:500px;height:200px;z-index:9;valign:">
			<div style="margin-top:6px;margin-right:20px;float:left;padding-top:6px;text-align:center;border:1px solid #fff;border-radius:30px;width:60px;height:60px;"><font style="font-size:20pt;font-weight:600;color:#fff"> 9</font><font style="font-size:9pt;font-weight:500;color:#fff">일</font></div>

			<div style="float:left;width:400px;">
				<div style="margin-top:0px;padding-top:0px;padding-right:15px;"><font style="color:#fff;font-size:18pt;font-weight:600;">터키일주</font></div>
				<font style="color:#fff;font-size:13pt;font-weight:500;">되는대로, 흘러가는대로 떠나보는 터키여행</font>
			</div>
			<div style="clear:both"></div>


			<p style="margin-top:100px">
				<a href="<%= contextPath %>/planner/view.do?trip_id=10013681" class="btn-u btn-u-green" style="border-radius:25px;background:#3ad195">이 플래너 자세히 <i class="fa fa-arrow-right"></i></a>
			</p>

		</div>


		<div style="position:absolute;top:40px;right:50px;width:300px;height:200px;z-index:9;">
			<div class="rt_left" style="float:left;width:33.33%;height:54px;text-align:center;position:relative"><font style="font-size:8pt;color:#fff">이스탄불</font> <div style="position:absolute;top:0px;right:0px;height:25px;width:50%;border-bottom:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff"><img src="<%= contextPath %>/externalData/images/is/flag/12104_s.gif" width="15px" style="border-radius:7px;"></div></div><div class="rt_left" style="float:left;width:33.33%;height:54px;text-align:center;position:relative"><font style="font-size:8pt;color:#fff">사프란볼루</font> <div style="position:absolute;top:0px;right:0px;height:25px;width:100%;border-bottom:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff"><img src="<%= contextPath %>/externalData/images/is/flag/12104_s.gif" width="15px" style="border-radius:7px;"></div></div><div class="rt_left" style="float:left;width:33.33%;height:54px;text-align:center;position:relative"><font style="font-size:8pt;color:#fff">카파도키아</font> <div style="position:absolute;top:0px;left:0px;height:25px;width:50%;border-bottom:3px solid #fff;"></div><div style="position:absolute;bottom:0px;left:0px;height:25px;width:50%;border-right:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff;margin-right:2px;"><img src="<%= contextPath %>/externalData/images/is/flag/12104_s.gif" width="15px" style="border-radius:7px;"></div></div><div style="clear:both"></div><div class="rt_left" style="float:right;width:33.33%;height:54px;text-align:center;position:relative"><div style="padding-top:29px;font-size:8pt;color:#fff">안탈리아</div><div style="position:absolute;top:0px;left:0px;height:25px;width:50%;border-bottom:3px solid #fff;"></div><div style="position:absolute;top:0px;left:0px;height:24px;width:50%;border-right:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff;margin-right:2px;margin-top:-2px;"><img src="<%= contextPath %>/externalData/images/is/flag/12104_s.gif" width="15px" style="border-radius:7px;"></div></div><div class="rt_left" style="float:right;width:33.33%;height:54px;text-align:center;position:relative"><font style="font-size:8pt;color:#fff">파묵칼레</font> <div style="position:absolute;top:0px;right:0px;height:25px;width:100%;border-bottom:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff;"><img src="<%= contextPath %>/externalData/images/is/flag/12104_s.gif" width="15px" style="border-radius:7px;"></div></div><div class="rt_left" style="float:right;width:33.33%;height:54px;text-align:center;position:relative"><font style="font-size:8pt;color:#fff">셀축</font> <div style="position:absolute;top:0px;right:0px;height:25px;width:50%;border-bottom:3px solid #fff;"></div><div style="position:absolute;bottom:0px;right:0px;height:25px;width:50%;border-left:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff"><img src="<%= contextPath %>/externalData/images/is/flag/12104_s.gif" width="15px" style="border-radius:7px;"></div></div><div style="clear:both"></div><div class="rt_left" style="float:left;width:33.33%;height:54px;text-align:center;position:relative"><div style="padding-top:29px;font-size:8pt;color:#fff;">이스탄불</div><div style="position:absolute;top:0px;right:0px;height:25px;width:50%;border-left:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff;margin-right:2px;margin-top:-2px;"><img src="<%= contextPath %>/externalData/images/is/flag/12104_s.gif" width="15px" style="border-radius:7px;"></div></div><div style="clear:both"></div>
			<div style="clear:both"></div>
		</div>

</div>

<div style="margin-top:10px;height:300px;background:url('<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1529656420875aoFUHIp5Eo.jpg');background-repeat: no-repeat;background-size:cover;background-position:center center;position:relative">
		<div style="position:absolute;top:0px;left:0px;width:100%;height:300px;background:#000;opacity: 0.25;filter: alpha(opacity=25);"> </div>



		<div style="position:absolute;top:40px;left:50px;width:500px;height:200px;z-index:9;valign:">
			<div style="margin-top:6px;margin-right:20px;float:left;padding-top:6px;text-align:center;border:1px solid #fff;border-radius:30px;width:60px;height:60px;"><font style="font-size:20pt;font-weight:600;color:#fff"> 24</font><font style="font-size:9pt;font-weight:500;color:#fff">일</font></div>

			<div style="float:left;width:400px;">
				<div style="margin-top:0px;padding-top:0px;padding-right:15px;"><font style="color:#fff;font-size:18pt;font-weight:600;">동유럽 완전일주</font></div>
				<font style="color:#fff;font-size:13pt;font-weight:500;">동화속 발트3국부터 폴란드, 크로아티아, 터키까지!</font>
			</div>
			<div style="clear:both"></div>


			<p style="margin-top:100px">
				<a href="<%= contextPath %>/planner/view.do?trip_id=10013683" class="btn-u btn-u-green" style="border-radius:25px;background:#3ad195">이 플래너 자세히 <i class="fa fa-arrow-right"></i></a>
			</p>

		</div>


		<div style="position:absolute;top:40px;right:50px;width:300px;height:200px;z-index:9;">
			<div class="rt_left" style="float:left;width:33.33%;height:54px;text-align:center;position:relative"><font style="font-size:8pt;color:#fff">헬싱키</font> <div style="position:absolute;top:0px;right:0px;height:25px;width:50%;border-bottom:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff"><img src="<%= contextPath %>/externalData/images/is/flag/14102_s.gif" width="15px" style="border-radius:7px;"></div></div><div class="rt_left" style="float:left;width:33.33%;height:54px;text-align:center;position:relative"><font style="font-size:8pt;color:#fff">탈린</font> <div style="position:absolute;top:0px;right:0px;height:25px;width:100%;border-bottom:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff"><img src="<%= contextPath %>/externalData/images/is/flag/14106_s.gif" width="15px" style="border-radius:7px;"></div></div><div class="rt_left" style="float:left;width:33.33%;height:54px;text-align:center;position:relative"><font style="font-size:8pt;color:#fff">리가</font> <div style="position:absolute;top:0px;left:0px;height:25px;width:50%;border-bottom:3px solid #fff;"></div><div style="position:absolute;bottom:0px;left:0px;height:25px;width:50%;border-right:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff;margin-right:2px;"><img src="<%= contextPath %>/externalData/images/is/flag/13109_s.gif" width="15px" style="border-radius:7px;"></div></div><div style="clear:both"></div><div class="rt_left" style="float:right;width:33.33%;height:54px;text-align:center;position:relative"><div style="padding-top:29px;font-size:8pt;color:#fff">샤울레이</div><div style="position:absolute;top:0px;left:0px;height:25px;width:50%;border-bottom:3px solid #fff;"></div><div style="position:absolute;top:0px;left:0px;height:24px;width:50%;border-right:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff;margin-right:2px;margin-top:-2px;"><img src="<%= contextPath %>/externalData/images/is/flag/13110_s.gif" width="15px" style="border-radius:7px;"></div></div><div class="rt_left" style="float:right;width:33.33%;height:54px;text-align:center;position:relative"><font style="font-size:8pt;color:#fff">빌니우스</font> <div style="position:absolute;top:0px;right:0px;height:25px;width:100%;border-bottom:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff;"><img src="<%= contextPath %>/externalData/images/is/flag/13110_s.gif" width="15px" style="border-radius:7px;"></div></div><div class="rt_left" style="float:right;width:33.33%;height:54px;text-align:center;position:relative"><font style="font-size:8pt;color:#fff">바르샤바</font> <div style="position:absolute;top:0px;right:0px;height:25px;width:50%;border-bottom:3px solid #fff;"></div><div style="position:absolute;bottom:0px;right:0px;height:25px;width:50%;border-left:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff"><img src="<%= contextPath %>/externalData/images/is/flag/13103_s.gif" width="15px" style="border-radius:7px;"></div></div><div style="clear:both"></div><div class="rt_left" style="float:left;width:33.33%;height:54px;text-align:center;position:relative"><div style="padding-top:29px;font-size:8pt;color:#fff">크라쿠프</div><div style="position:absolute;top:0px;right:0px;height:25px;width:50%;border-bottom:3px solid #fff;"></div><div style="position:absolute;top:0px;right:0px;height:24px;width:50%;border-left:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff;margin-right:2px;margin-top:-2px;"><img src="<%= contextPath %>/externalData/images/is/flag/13103_s.gif" width="15px" style="border-radius:7px;"></div></div><div class="rt_left" style="float:left;width:33.33%;height:54px;text-align:center;position:relative"><font style="font-size:8pt;color:#fff">부다페스트</font> <div style="position:absolute;top:0px;right:0px;height:25px;width:100%;border-bottom:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff;"><img src="<%= contextPath %>/externalData/images/is/flag/13102_s.gif" width="15px" style="border-radius:7px;"></div></div><div class="rt_left" style="float:left;width:33.33%;height:54px;text-align:center;position:relative"><font style="font-size:8pt;color:#fff">류블랴나</font> <div style="position:absolute;top:0px;left:0px;height:25px;width:50%;border-bottom:3px solid #fff;"></div><div style="position:absolute;bottom:0px;left:0px;height:25px;width:50%;border-right:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff"><img src="<%= contextPath %>/externalData/images/is/flag/13107_s.gif" width="15px" style="border-radius:7px;"></div></div><div style="clear:both"></div><div class="rt_left" style="float:right;width:33.33%;height:54px;text-align:center;position:relative"><div style="padding-top:29px;font-size:8pt;color:#fff">블레드</div><div style="position:absolute;top:0px;left:0px;height:25px;width:50%;border-bottom:3px solid #fff;"></div><div style="position:absolute;top:0px;left:0px;height:24px;width:50%;border-right:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff;margin-right:2px;margin-top:-2px;"><img src="<%= contextPath %>/externalData/images/is/flag/13107_s.gif" width="15px" style="border-radius:7px;"></div></div><div class="rt_left" style="float:right;width:33.33%;height:54px;text-align:center;position:relative"><font style="font-size:8pt;color:#fff">자그레브</font> <div style="position:absolute;top:0px;right:0px;height:25px;width:100%;border-bottom:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff;"><img src="<%= contextPath %>/externalData/images/is/flag/13106_s.gif" width="15px" style="border-radius:7px;"></div></div><div class="rt_left" style="float:right;width:33.33%;height:54px;text-align:center;position:relative"><font style="font-size:8pt;color:#fff">플리트비체</font> <div style="position:absolute;top:0px;right:0px;height:25px;width:50%;border-bottom:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff"><img src="<%= contextPath %>/externalData/images/is/flag/13106_s.gif" width="15px" style="border-radius:7px;"></div></div><div style="clear:both"></div><div style="clear:both"></div>
			<div style="clear:both"></div>
		</div>

</div>

<div style="margin-top:10px;height:300px;background:url('<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1529656413306maGa5t0jvt.jpg');background-repeat: no-repeat;background-size:cover;background-position:center center;position:relative">
		<div style="position:absolute;top:0px;left:0px;width:100%;height:300px;background:#000;opacity: 0.25;filter: alpha(opacity=25);"> </div>



		<div style="position:absolute;top:40px;left:50px;width:500px;height:200px;z-index:9;valign:">
			<div style="margin-top:6px;margin-right:20px;float:left;padding-top:6px;text-align:center;border:1px solid #fff;border-radius:30px;width:60px;height:60px;"><font style="font-size:20pt;font-weight:600;color:#fff"> 12</font><font style="font-size:9pt;font-weight:500;color:#fff">일</font></div>

			<div style="float:left;width:400px;">
				<div style="margin-top:0px;padding-top:0px;padding-right:15px;"><font style="color:#fff;font-size:18pt;font-weight:600;">독일+스위스</font></div>
				<font style="color:#fff;font-size:13pt;font-weight:500;">푸른 자연과 고딕체의 신비한 조합</font>
			</div>
			<div style="clear:both"></div>


			<p style="margin-top:100px">
				<a href="<%= contextPath %>/planner/view.do?trip_id=10013685" class="btn-u btn-u-green" style="border-radius:25px;background:#3ad195">이 플래너 자세히 <i class="fa fa-arrow-right"></i></a>
			</p>

		</div>


		<div style="position:absolute;top:40px;right:50px;width:300px;height:200px;z-index:9;">
			<div class="rt_left" style="float:left;width:33.33%;height:54px;text-align:center;position:relative"><font style="font-size:8pt;color:#fff">프랑크푸르트</font> <div style="position:absolute;top:0px;right:0px;height:25px;width:50%;border-bottom:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff"><img src="<%= contextPath %>/externalData/images/is/flag/11106_s.gif" width="15px" style="border-radius:7px;"></div></div><div class="rt_left" style="float:left;width:33.33%;height:54px;text-align:center;position:relative"><font style="font-size:8pt;color:#fff">뮌헨</font> <div style="position:absolute;top:0px;right:0px;height:25px;width:100%;border-bottom:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff"><img src="<%= contextPath %>/externalData/images/is/flag/11106_s.gif" width="15px" style="border-radius:7px;"></div></div><div class="rt_left" style="float:left;width:33.33%;height:54px;text-align:center;position:relative"><font style="font-size:8pt;color:#fff">퓌센</font> <div style="position:absolute;top:0px;left:0px;height:25px;width:50%;border-bottom:3px solid #fff;"></div><div style="position:absolute;bottom:0px;left:0px;height:25px;width:50%;border-right:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff;margin-right:2px;"><img src="<%= contextPath %>/externalData/images/is/flag/11106_s.gif" width="15px" style="border-radius:7px;"></div></div><div style="clear:both"></div><div class="rt_left" style="float:right;width:33.33%;height:54px;text-align:center;position:relative"><div style="padding-top:29px;font-size:8pt;color:#fff">루체른</div><div style="position:absolute;top:0px;left:0px;height:25px;width:50%;border-bottom:3px solid #fff;"></div><div style="position:absolute;top:0px;left:0px;height:24px;width:50%;border-right:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff;margin-right:2px;margin-top:-2px;"><img src="<%= contextPath %>/externalData/images/is/flag/11102_s.gif" width="15px" style="border-radius:7px;"></div></div><div class="rt_left" style="float:right;width:33.33%;height:54px;text-align:center;position:relative"><font style="font-size:8pt;color:#fff">인터라켄</font> <div style="position:absolute;top:0px;right:0px;height:25px;width:100%;border-bottom:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff;"><img src="<%= contextPath %>/externalData/images/is/flag/11102_s.gif" width="15px" style="border-radius:7px;"></div></div><div class="rt_left" style="float:right;width:33.33%;height:54px;text-align:center;position:relative"><font style="font-size:8pt;color:#fff">융프라우</font> <div style="position:absolute;top:0px;right:0px;height:25px;width:50%;border-bottom:3px solid #fff;"></div><div style="position:absolute;bottom:0px;right:0px;height:25px;width:50%;border-left:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff"><img src="<%= contextPath %>/externalData/images/is/flag/11102_s.gif" width="15px" style="border-radius:7px;"></div></div><div style="clear:both"></div><div class="rt_left" style="float:left;width:33.33%;height:54px;text-align:center;position:relative"><div style="padding-top:29px;font-size:8pt;color:#fff">인터라켄</div><div style="position:absolute;top:0px;right:0px;height:25px;width:50%;border-bottom:3px solid #fff;"></div><div style="position:absolute;top:0px;right:0px;height:24px;width:50%;border-left:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff;margin-right:2px;margin-top:-2px;"><img src="<%= contextPath %>/externalData/images/is/flag/11102_s.gif" width="15px" style="border-radius:7px;"></div></div><div class="rt_left" style="float:left;width:33.33%;height:54px;text-align:center;position:relative"><font style="font-size:8pt;color:#fff">몽트뢰</font> <div style="position:absolute;top:0px;right:0px;height:25px;width:100%;border-bottom:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff;"><img src="<%= contextPath %>/externalData/images/is/flag/11102_s.gif" width="15px" style="border-radius:7px;"></div></div><div class="rt_left" style="float:left;width:33.33%;height:54px;text-align:center;position:relative"><font style="font-size:8pt;color:#fff">인터라켄</font> <div style="position:absolute;top:0px;left:0px;height:25px;width:50%;border-bottom:3px solid #fff;"></div><div style="position:absolute;bottom:0px;left:0px;height:25px;width:50%;border-right:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff"><img src="<%= contextPath %>/externalData/images/is/flag/11102_s.gif" width="15px" style="border-radius:7px;"></div></div><div style="clear:both"></div><div class="rt_left" style="float:right;width:33.33%;height:54px;text-align:center;position:relative"><div style="padding-top:29px;font-size:8pt;color:#fff">베른</div><div style="position:absolute;top:0px;left:0px;height:25px;width:50%;border-bottom:3px solid #fff;"></div><div style="position:absolute;top:0px;left:0px;height:24px;width:50%;border-right:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff;margin-right:2px;margin-top:-2px;"><img src="<%= contextPath %>/externalData/images/is/flag/11102_s.gif" width="15px" style="border-radius:7px;"></div></div><div class="rt_left" style="float:right;width:33.33%;height:54px;text-align:center;position:relative"><font style="font-size:8pt;color:#fff">바젤</font> <div style="position:absolute;top:0px;right:0px;height:25px;width:100%;border-bottom:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff;"><img src="<%= contextPath %>/externalData/images/is/flag/11102_s.gif" width="15px" style="border-radius:7px;"></div></div><div class="rt_left" style="float:right;width:33.33%;height:54px;text-align:center;position:relative"><font style="font-size:8pt;color:#fff">파리</font> <div style="position:absolute;top:0px;right:0px;height:25px;width:50%;border-bottom:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff"><img src="<%= contextPath %>/externalData/images/is/flag/11101_s.gif" width="15px" style="border-radius:7px;"></div></div><div style="clear:both"></div><div style="clear:both"></div>
			<div style="clear:both"></div>
		</div>

</div>

<div style="margin-top:10px;height:300px;background:url('<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1529656418134cDDvAVssFz.jpg');background-repeat: no-repeat;background-size:cover;background-position:center center;position:relative">
		<div style="position:absolute;top:0px;left:0px;width:100%;height:300px;background:#000;opacity: 0.25;filter: alpha(opacity=25);"> </div>



		<div style="position:absolute;top:40px;left:50px;width:500px;height:200px;z-index:9;valign:">
			<div style="margin-top:6px;margin-right:20px;float:left;padding-top:6px;text-align:center;border:1px solid #fff;border-radius:30px;width:60px;height:60px;"><font style="font-size:20pt;font-weight:600;color:#fff"> 14</font><font style="font-size:9pt;font-weight:500;color:#fff">일</font></div>

			<div style="float:left;width:400px;">
				<div style="margin-top:0px;padding-top:0px;padding-right:15px;"><font style="color:#fff;font-size:18pt;font-weight:600;">포르투갈+스페인</font></div>
				<font style="color:#fff;font-size:13pt;font-weight:500;">와인향 가득한 낭만 끝판왕 포르투+스페인 남부를 한번에 !</font>
			</div>
			<div style="clear:both"></div>


			<p style="margin-top:100px">
				<a href="<%= contextPath %>/planner/view.do?trip_id=10005173" class="btn-u btn-u-green" style="border-radius:25px;background:#3ad195">이 플래너 자세히 <i class="fa fa-arrow-right"></i></a>
			</p>

		</div>


		<div style="position:absolute;top:40px;right:50px;width:300px;height:200px;z-index:9;">
			<div class="rt_left" style="float:left;width:33.33%;height:54px;text-align:center;position:relative"><font style="font-size:8pt;color:#fff">마드리드</font> <div style="position:absolute;top:0px;right:0px;height:25px;width:50%;border-bottom:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff"><img src="<%= contextPath %>/externalData/images/is/flag/12101_s.gif" width="15px" style="border-radius:7px;"></div></div><div class="rt_left" style="float:left;width:33.33%;height:54px;text-align:center;position:relative"><font style="font-size:8pt;color:#fff">포르투</font> <div style="position:absolute;top:0px;right:0px;height:25px;width:100%;border-bottom:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff"><img src="<%= contextPath %>/externalData/images/is/flag/12102_s.gif" width="15px" style="border-radius:7px;"></div></div><div class="rt_left" style="float:left;width:33.33%;height:54px;text-align:center;position:relative"><font style="font-size:8pt;color:#fff">리스본</font> <div style="position:absolute;top:0px;left:0px;height:25px;width:50%;border-bottom:3px solid #fff;"></div><div style="position:absolute;bottom:0px;left:0px;height:25px;width:50%;border-right:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff;margin-right:2px;"><img src="<%= contextPath %>/externalData/images/is/flag/12102_s.gif" width="15px" style="border-radius:7px;"></div></div><div style="clear:both"></div><div class="rt_left" style="float:right;width:33.33%;height:54px;text-align:center;position:relative"><div style="padding-top:29px;font-size:8pt;color:#fff">신트라</div><div style="position:absolute;top:0px;left:0px;height:25px;width:50%;border-bottom:3px solid #fff;"></div><div style="position:absolute;top:0px;left:0px;height:24px;width:50%;border-right:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff;margin-right:2px;margin-top:-2px;"><img src="<%= contextPath %>/externalData/images/is/flag/12102_s.gif" width="15px" style="border-radius:7px;"></div></div><div class="rt_left" style="float:right;width:33.33%;height:54px;text-align:center;position:relative"><font style="font-size:8pt;color:#fff">로카 곶</font> <div style="position:absolute;top:0px;right:0px;height:25px;width:100%;border-bottom:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff;"><img src="<%= contextPath %>/externalData/images/is/flag/12102_s.gif" width="15px" style="border-radius:7px;"></div></div><div class="rt_left" style="float:right;width:33.33%;height:54px;text-align:center;position:relative"><font style="font-size:8pt;color:#fff">카스카이스</font> <div style="position:absolute;top:0px;right:0px;height:25px;width:50%;border-bottom:3px solid #fff;"></div><div style="position:absolute;bottom:0px;right:0px;height:25px;width:50%;border-left:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff"><img src="<%= contextPath %>/externalData/images/is/flag/12102_s.gif" width="15px" style="border-radius:7px;"></div></div><div style="clear:both"></div><div class="rt_left" style="float:left;width:33.33%;height:54px;text-align:center;position:relative"><div style="padding-top:29px;font-size:8pt;color:#fff">리스본</div><div style="position:absolute;top:0px;right:0px;height:25px;width:50%;border-bottom:3px solid #fff;"></div><div style="position:absolute;top:0px;right:0px;height:24px;width:50%;border-left:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff;margin-right:2px;margin-top:-2px;"><img src="<%= contextPath %>/externalData/images/is/flag/12102_s.gif" width="15px" style="border-radius:7px;"></div></div><div class="rt_left" style="float:left;width:33.33%;height:54px;text-align:center;position:relative"><font style="font-size:8pt;color:#fff">세비야</font> <div style="position:absolute;top:0px;right:0px;height:25px;width:100%;border-bottom:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff;"><img src="<%= contextPath %>/externalData/images/is/flag/12101_s.gif" width="15px" style="border-radius:7px;"></div></div><div class="rt_left" style="float:left;width:33.33%;height:54px;text-align:center;position:relative"><font style="font-size:8pt;color:#fff">말라가</font> <div style="position:absolute;top:0px;left:0px;height:25px;width:50%;border-bottom:3px solid #fff;"></div><div style="position:absolute;bottom:0px;left:0px;height:25px;width:50%;border-right:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff"><img src="<%= contextPath %>/externalData/images/is/flag/12101_s.gif" width="15px" style="border-radius:7px;"></div></div><div style="clear:both"></div><div class="rt_left" style="float:right;width:33.33%;height:54px;text-align:center;position:relative"><div style="padding-top:29px;font-size:8pt;color:#fff">그라나다</div><div style="position:absolute;top:0px;left:0px;height:25px;width:50%;border-bottom:3px solid #fff;"></div><div style="position:absolute;top:0px;left:0px;height:24px;width:50%;border-right:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff;margin-right:2px;margin-top:-2px;"><img src="<%= contextPath %>/externalData/images/is/flag/12101_s.gif" width="15px" style="border-radius:7px;"></div></div><div class="rt_left" style="float:right;width:33.33%;height:54px;text-align:center;position:relative"><font style="font-size:8pt;color:#fff">바르셀로나</font> <div style="position:absolute;top:0px;right:0px;height:25px;width:50%;border-bottom:3px solid #fff;"></div><div style="position:absolute;width:100%;text-align:center;top:14px;color:#fff;"><img src="<%= contextPath %>/externalData/images/is/flag/12101_s.gif" width="15px" style="border-radius:7px;"></div></div><div style="clear:both"></div>
			<div style="clear:both"></div>
		</div>

</div>


	</div>

  </section>

        </main>




        <section class="stu_event_banner">
            <div class="stu_inner_wrap">
                <div class="event_banner2" style="background:#f3f3f3;height:120px;overflow:hidden;position:relative;">
                   
                            <a href="<%= contextPath %>/consulting/index.do" target="_blank" style="width:100%; height:100%;">
                                <div class="txtWrap">
                                    <p>유럽여행이 처음이라면</p>
                                    <b >전문가의 도움을 받아보세요.</b>
                                </div>
                                <div class="imgWrap" style="background-image:url(<%= contextPath %>/externalData/img_v15/back_private.png);">
                                    <b><span>전문가 유럽계획 의뢰</span>￦ 55,200</b>
                                </div>
                            </a>
		<div style="clear:both"></div>
                </div>
            </div>
        </section>



<jsp:include page="/WEB-INF/layout/footer_large.jsp"></jsp:include>

	</div>

<!-- JS Global Compulsory -->


<script src="<%= contextPath %>/externalData/superguide/One-Pages/assets/plugins/jquery/jquery.min.js"></script>
<script src="<%= contextPath %>/externalData/superguide/One-Pages/assets/plugins/jquery/jquery-migrate.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


<!-- JS Implementing Plugins -->
<script src="<%= contextPath %>/externalData/superguide/One-Pages/assets/plugins/smoothScroll.js"></script>
<script src="<%= contextPath %>/externalData/superguide/One-Pages/assets/plugins/jquery.easing.min.js"></script>

<!-- JS Page Level -->
<script src="<%= contextPath %>/externalData/superguide/One-Pages/assets/js/one.app.js"></script>

<script src="<%= contextPath %>/externalData/market/js/lazysizes.min.js" type="text/javascript" async=""></script>
<script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>



	<script>
		var id = "#"+'${ lnb_item }';
		$(".lnb_item").removeClass("active");
		$(id).addClass("active");
	</script>

<script>



$(function() {

            var mySwiper = new Swiper ('.swiperTop', {
                // Optional parameters
                direction:'horizontal',
                loop:false,



                // Pagination
                pagination: {
                    el: '.swiper-pagination',
                },

                // Navigation arrows
                navigation: {
                    nextEl: '.swiper-button-next',
                    prevEl: '.swiper-button-prev',
                },
            })



      $(document).ready(function() {


         // 스와이핑
            var mySwiper = new Swiper ('.swiper1', {
                slidesPerView:'auto',
                freeMode:true,
                direction:'horizontal',
                noSwiping:true,
                noSwipingClass:'swiper-slide',
                breakpoints: {
                    620: {
                        noSwiping:false,
                        scrollbar: {
                            el: '.swiper-scrollbar',
                            hide: true,
                        },
                    },
                }
            });

            // 아코디언 버튼(토글)
            var hide_list = $('.swiper1 li:gt(5)');
            $(hide_list).addClass('stu_hide');
            $('.ct-toggle-btn-wrap').click(function() {
                $(this).children('.ct-toggle-btn').toggleClass('on');
                $(hide_list).toggleClass('stu_hide');
            });



	$('.grid').masonry({
	  itemSelector: '.grid-item',
	  columnWidth: '.grid-sizer',
	  percentPosition: true
	
	});


            var mySwiper = new Swiper ('.swiper3', {
                slidesPerView:'auto',
                direction:'horizontal',
            })
            var mySwiper = new Swiper ('.swiperBottom', {
                slidesPerView:'auto',
                freeMode:true,
                direction:'horizontal',
                navigation: {
                    nextEl: '.swiper-button-next4',
                    prevEl: '.swiper-button-prev4',
                },
            })



            $('ul.stu_tabs li').click(function() {
                var tab_id = $(this).attr('data-tab');
                $('ul.stu_tabs li').removeClass('current');
                $('.stu_tab-content').removeClass('current');
                $(this).addClass('current');
                $("#"+tab_id).addClass('current');
            });


        });



});


function func_premium(msg,tid)
{
	if(tid=="")
	{
		$("#premium_modal_link").hide();
		$("#premium_modal_link").attr("href","#");	
	}
	else
	{
		$("#premium_modal_link").attr("href","javascript:deletePlan('"+tid+"')");	
		$("#premium_modal_link").show();
	}
	$("#premium_modal_msg").html(msg);
	$("#premium_modal").show();
	
}
function closepremiumModal()
{
	$("#premium_modal").hide();
}

/* 구현 안된 기능 
func_premium_link(l,msg)
{
	$("#premium2_modal_link").attr("href",l);	
	$("#premium2_modal_msg").html(msg);
	$("#premium2_modal").show();
}
 */
function closepremium2Modal()
{
	$("#premium2_modal").hide();
}

function func_prime_link(l,msg)
{
	$("#prime2_modal_link").attr("href",l);	
	$("#prime2_modal_msg").html(msg);
	$("#prime2_modal").show();
	

}

function closeprime2Modal()
{
	$("#prime2_modal").hide();
}

function func_prime(msg,tid)
{
	if(tid=="")
	{
		$("#prime_modal_link").hide();
		$("#prime_modal_link").attr("href","#");	
	}
	else
	{
		$("#prime_modal_link").attr("href","javascript:deletePlan('"+tid+"')");	
		$("#prime_modal_link").show();
	}
	$("#prime_modal_msg").html(msg);
	$("#prime_modal").show();
	
}
function closeprimeModal()
{
	$("#prime_modal").hide();
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

function deletePlan(tid)
{
		// line 1267 경로 수정 필요
		$.ajax({
			url: "/api/v5/planner/del_trip.do",
			type: "GET",
			dataType: 'json',
			data: {
				trip_id:tid
			},
             	  	success: function(data)
			{
				if(data.result=="ERR")
				{	
					window.history.go(0);					
				}
				else
				{
					// line 1282 경로 확인 필요
					window.location="<%= contextPath %>/planner/index.do";
					
				}
			}
		});
}

</script>
<script src="<%= contextPath %>/externalData/js2/header_footer.js" type="text/javascript"></script>
 
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
                                	<!-- line 1311 ~ 1583 경로 : ? 뒤 확인 필요  -->
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=11101">
                                        <div class="value">
                                            <b class="name">프랑스</b>
                                        </div>
                                        <div class="count">
               
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                	<!-- line 1322 ? 뒤 확인 필요  -->
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=11104">
                                        <div class="value">
                                            <b class="name">이탈리아</b>
                                        </div>
                                        <div class="count">
                    
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                	<!-- line 1333 ? 뒤 확인 필요  -->
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=11102">
                                        <div class="value">
                                            <b class="name">스위스</b>
                                        </div>
                                        <div class="count">
                              
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <!-- line 1344 ? 뒤 확인 필요  -->
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=11103">
                                        <div class="value">
                                            <b class="name">영국</b>
                                        </div>
                                        <div class="count">
                    
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                	<!-- line 1355 ? 뒤 확인 필요  -->
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=11106">
                                        <div class="value">
                                            <b class="name">독일</b>
                                        </div>
                                        <div class="count">
                   
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                	<!-- line 1366 ? 뒤 확인 필요  -->
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=11108">
                                        <div class="value">
                                            <b class="name">벨기에</b>
                                        </div>
                                        <div class="count">
               
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=11107">
                                        <div class="value">
                                            <b class="name">네덜란드</b>
                                        </div>
                                        <div class="count">
                              
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=11110">
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
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=12101">
                                        <div class="value">
                                            <b class="name">스페인</b>
                                        </div>
                                        <div class="count">
                      
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=12102">
                                        <div class="value">
                                            <b class="name">포르투갈</b>
                                        </div>
                                        <div class="count">
                       
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=12103">
                                        <div class="value">
                                            <b class="name">그리스</b>
                                        </div>
                                        <div class="count">
                 
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=12104">

                                        <div class="value">
                                            <b class="name">터키</b>
                                        </div>
                                        <div class="count">
       
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=12107">

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
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=13">

                                        <div class="value">
                                            <b class="name">체코</b>
                                        </div>
                                        <div class="count">
                    
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=13">
                                        <div class="value">
                                            <b class="name">헝가리</b>
                                        </div>
                                        <div class="count">
                 
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=13">
                                        <div class="value">
                                            <b class="name">오스트리아</b>
                                        </div>
                                        <div class="count">
                    
                                        </div>
                                    </a>
                                </li>


                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=13">
                                        <div class="value">
                                            <b class="name">슬로베니아</b>
                                        </div>
                                        <div class="count">

                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=13106">
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
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=14107">
                                        <div class="value">
                                            <b class="name">아이슬란드</b>
                                        </div>
                                        <div class="count">
                  
                                        </div>
                                    </a>
                                </li>
	                     <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=14104">
                                        <div class="value">
                                            <b class="name">노르웨이</b>
                                        </div>
                                        <div class="count">
                   
                                        </div>
                                    </a>
                                </li>



                                <li class="content-item">
                                     <a href="<%= contextPath %>/market/index_ctry.do?l=&region=14103">
                                        <div class="value">
                                            <b class="name">덴마크</b>
                                        </div>
                                        <div class="count">
                
                                        </div>
                                    </a>
                                </li>


                                <li class="content-item">
                                     <a href="<%= contextPath %>/market/index_ctry.do?l=&region=14102">
                                        <div class="value">
                                            <b class="name">핀란드</b>
                                        </div>
                                        <div class="count">
                
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="<%= contextPath %>/market/index_ctry.do?l=&region=14105">
                                        <div class="value">
                                            <b class="name">스웨덴</b>
                                        </div>
                                        <div class="count">
                
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="<%= contextPath %>/market/index_ctry.do?l=&region=14101">
                                        <div class="value">
                                            <b class="name">러시아</b>
                                        </div>
                                        <div class="count">
                
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                      <a href="<%= contextPath %>/market/index_ctry.do?l=&region=14106">
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

								<!-- line 1604 ~ 2324 경로 : ? 뒤 확인 필요-->
                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111011004">
                                        <div class="value">
                                            <b class="name">파리</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111031001">
                                        <div class="value">
                                            <b class="name">런던</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121011002">
                                        <div class="value">
                                            <b class="name">바르셀로나</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=131011001">
                                        <div class="value">
                                            <b class="name">프라하</b>
                                            <i class="category">체코</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111011003">
                                        <div class="value">
                                            <b class="name">니스</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=141051001">
                                        <div class="value">
                                            <b class="name">스톡홀름</b>
                                            <i class="category">스웨덴</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121011003">
                                        <div class="value">
                                            <b class="name">마드리드</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111021002">
                                        <div class="value">
                                            <b class="name">인터라켄</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111041004">
                                        <div class="value">
                                            <b class="name">로마</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=131041001">
                                        <div class="value">
                                            <b class="name">비엔나</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=141031001">
                                        <div class="value">
                                            <b class="name">코펜하겐</b>
                                            <i class="category">덴마크</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121031001">
                                        <div class="value">
                                            <b class="name">아테네</b>
                                            <i class="category">그리스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111041006">
                                        <div class="value">
                                            <b class="name">베니스</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111041003">
                                        <div class="value">
                                            <b class="name">피렌체</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=131021001">
                                        <div class="value">
                                            <b class="name">부다페스트</b>
                                            <i class="category">헝가리</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=141021001">
                                        <div class="value">
                                            <b class="name">헬싱키</b>
                                            <i class="category">핀란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121021001">
                                        <div class="value">
                                            <b class="name">리스본</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111061006">
                                        <div class="value">
                                            <b class="name">프랑크푸르트</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111061005">
                                        <div class="value">
                                            <b class="name">뮌헨</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=131061001">
                                        <div class="value">
                                            <b class="name">두브로브니크</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121041001">
                                        <div class="value">
                                            <b class="name">이스탄불</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111011014">
                                        <div class="value">
                                            <b class="name">마르세유</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111041001">
                                        <div class="value">
                                            <b class="name">밀라노</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121041111">
                                        <div class="value">
                                            <b class="name">알라니아</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=141041002">
                                        <div class="value">
                                            <b class="name">오슬로</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111061008">
                                        <div class="value">
                                            <b class="name">베를린</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111071001">
                                        <div class="value">
                                            <b class="name">암스테르담</b>
                                            <i class="category">네덜란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=141041002">
                                        <div class="value">
                                            <b class="name">오슬로</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111081001">
                                        <div class="value">
                                            <b class="name">브뤼셀</b>
                                            <i class="category">벨기에</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111101001">
                                        <div class="value">
                                            <b class="name">더블린</b>
                                            <i class="category">아일랜드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=131081001">
                                        <div class="value">
                                            <b class="name">부쿠레슈티</b>
                                            <i class="category">루마니아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=131031004">
                                        <div class="value">
                                            <b class="name">크라쿠프</b>
                                            <i class="category">폴란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=131031003">
                                        <div class="value">
                                            <b class="name">바르샤바</b>
                                            <i class="category">폴란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=131051002">
                                        <div class="value">
                                            <b class="name">브라티슬라바</b>
                                            <i class="category">슬로바키아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111041011">
                                        <div class="value">
                                            <b class="name">나폴리</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111011005">
                                        <div class="value">
                                            <b class="name">아비뇽</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=131061011">
                                        <div class="value">
                                            <b class="name">흐바르</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111061020">
                                        <div class="value">
                                            <b class="name">뉘른베르크</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121011057">
                                        <div class="value">
                                            <b class="name">론다</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=141011008">
                                        <div class="value">
                                            <b class="name">블라디보스톡</b>
                                            <i class="category">러시아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111061004">
                                        <div class="value">
                                            <b class="name">드레스덴</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111021005">
                                        <div class="value">
                                            <b class="name">취리히</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121011028">
                                        <div class="value">
                                            <b class="name">테네리페</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121011005">
                                        <div class="value">
                                            <b class="name">말라가</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=141071001">
                                        <div class="value">
                                            <b class="name">아퀴레이리</b>
                                            <i class="category">아이슬란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=141071010">
                                        <div class="value">
                                            <b class="name">후사비크</b>
                                            <i class="category">아이슬란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=141071044">
                                        <div class="value">
                                            <b class="name">요쿨살론</b>
                                            <i class="category">아이슬란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=141071019">
                                        <div class="value">
                                            <b class="name">스카프타펠</b>
                                            <i class="category">아이슬란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=141071022">
                                        <div class="value">
                                            <b class="name">굴포스</b>
                                            <i class="category">아이슬란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=141071003">
                                        <div class="value">
                                            <b class="name">레이캬비크</b>
                                            <i class="category">아이슬란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=141061001">
                                        <div class="value">
                                            <b class="name">탈린</b>
                                            <i class="category">에스토니아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=141041012">
                                        <div class="value">
                                            <b class="name">트롬쇠</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=141041011">
                                        <div class="value">
                                            <b class="name">스타방에르</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=141041011">
                                        <div class="value">
                                            <b class="name">뤼세 피오르드</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=141011002">
                                        <div class="value">
                                            <b class="name">상트페테르부르크</b>
                                            <i class="category">러시아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=141011001">
                                        <div class="value">
                                            <b class="name">모스크바</b>
                                            <i class="category">러시아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=131061008">
                                        <div class="value">
                                            <b class="name">자그레브</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=131061002">
                                        <div class="value">
                                            <b class="name">스플리트</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=131041032">
                                        <div class="value">
                                            <b class="name">할슈타트</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=131041002">
                                        <div class="value">
                                            <b class="name">잘츠부르크</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=131011003">
                                        <div class="value">
                                            <b class="name">체스키크롬로프</b>
                                            <i class="category">체코</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121041008">
                                        <div class="value">
                                            <b class="name">보드룸</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121041028">
                                        <div class="value">
                                            <b class="name">페티예</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121041003">
                                        <div class="value">
                                            <b class="name">카파도키아</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121031021">
                                        <div class="value">
                                            <b class="name">자킨토스</b>
                                            <i class="category">그리스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121031002">
                                        <div class="value">
                                            <b class="name">산토리니</b>
                                            <i class="category">그리스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121021008">
                                        <div class="value">
                                            <b class="name">포르투</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121011007">
                                        <div class="value">
                                            <b class="name">세비야</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121011001">
                                        <div class="value">
                                            <b class="name">그라나다</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121011004">
                                        <div class="value">
                                            <b class="name">톨레도</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111061003">
                                        <div class="value">
                                            <b class="name">퓌센</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111061001">
                                        <div class="value">
                                            <b class="name">하이델베르크</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121071009">
                                        <div class="value">
                                            <b class="name">몰타</b>
                                            <i class="category">몰타</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111041026">
                                        <div class="value">
                                            <b class="name">팔레르모</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111041016">
                                        <div class="value">
                                            <b class="name">볼로냐</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111041036">
                                        <div class="value">
                                            <b class="name">베로나</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111041123">
                                        <div class="value">
                                            <b class="name">친퀘테레</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111031008">
                                        <div class="value">
                                            <b class="name">에든버러</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111021001">
                                        <div class="value">
                                            <b class="name">루체른</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111021009">
                                        <div class="value">
                                            <b class="name">라우터브룬넨</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111011010">
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
<!-- line 2341 ~ 3142 경로 : ? 뒤 확인 필요, 오른쪽으로 길게 늘어진 코드를 다시 정렬함(랙 방지) -->
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=146">
        <div class="value"><b class="name">슬로베니아 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=148">
        <div class="value"><b class="name">코토르</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=149">
        <div class="value"><b class="name">스르지산</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=151">
        <div class="value"><b class="name">번지점프</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=152">
        <div class="value"><b class="name">캐년스윙</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=153">
        <div class="value"><b class="name">탈린 워킹투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=1">
        <div class="value"><b class="name">몽생미셀 베스트</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=3">
        <div class="value"><b class="name">파리 자전거투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=4">
        <div class="value"><b class="name">파리스냅</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=5">
        <div class="value"><b class="name">루브르 지식가이드</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=206">
        <div class="value"><b class="name">와이너리투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=166">
        <div class="value"><b class="name">고조섬 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=167">
        <div class="value"><b class="name">코미노섬 크루즈</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=169">
        <div class="value"><b class="name">몰타섬 지프</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=6">
        <div class="value"><b class="name">오르세 미술관</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=7">
        <div class="value"><b class="name">베르사유</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=44">
        <div class="value"><b class="name">체코 와인</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=56">
        <div class="value"><b class="name">바르셀로나 스냅</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=58">
        <div class="value"><b class="name">카를로비 바리</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=15">
        <div class="value"><b class="name">래프팅</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=18">
        <div class="value"><b class="name">무동력 자전거</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=19">
        <div class="value"><b class="name">카약(KAYAK)</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=234">
        <div class="value"><b class="name">에즈</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=247">
        <div class="value"><b class="name">아베이로</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=20">
        <div class="value"><b class="name">런던 뮤지컬</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=21">
        <div class="value"><b class="name">코츠월드+근교</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=170">
        <div class="value"><b class="name">리스본 시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=191">
        <div class="value"><b class="name">리옹 시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=22">
        <div class="value"><b class="name">세븐시스터즈</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=25">
        <div class="value"><b class="name">스톤헨지</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=69">
        <div class="value"><b class="name">벨기에 시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=36">
        <div class="value"><b class="name">체코 스카이다이빙</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=38">
        <div class="value"><b class="name">프라하 시내</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=325">
        <div class="value"><b class="name">자다르 카약</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=40">
        <div class="value"><b class="name">프라하 자전거</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=41">
        <div class="value"><b class="name">사운드오브뮤직</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=43">
        <div class="value"><b class="name">벌룬투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=52">
        <div class="value"><b class="name">보르게세</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=51">
        <div class="value"><b class="name">런던 스냅</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=8">
        <div class="value"><b class="name">삭제</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=138">
        <div class="value"><b class="name">이스탄불 지식가이드</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=45">
        <div class="value"><b class="name">체스키</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=9">
        <div class="value"><b class="name">루아르 고성</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=11">
        <div class="value"><b class="name">몽마르뜨</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=319">
        <div class="value"><b class="name">스노쿨링</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=13">
        <div class="value"><b class="name">스위스 패러글라이딩</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=16">
        <div class="value"><b class="name">제트보트</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=26">
        <div class="value"><b class="name">바티칸 지식가이드</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=46">
        <div class="value"><b class="name">드레스덴</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=62">
        <div class="value"><b class="name">타파스 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=178">
        <div class="value"><b class="name">플라멩고</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=72">
        <div class="value"><b class="name">해리포터 스튜디오 </b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=24">
        <div class="value"><b class="name">런던 자전거투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=29">
        <div class="value"><b class="name">베니스 워킹투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=32">
        <div class="value"><b class="name">가우디 지식가이드</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=34">
        <div class="value"><b class="name">세고비아</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=67">
        <div class="value"><b class="name">토스카나</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=74">
        <div class="value"><b class="name">삭제</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=80">
        <div class="value"><b class="name">몬세라트</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=81">
        <div class="value"><b class="name">마드리드시내 / 프라도 미술관</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=86">
        <div class="value"><b class="name">잔세스칸스(풍차)+</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=145">
        <div class="value"><b class="name">플리트비체</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=42">
        <div class="value"><b class="name">소금광산</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=82">
        <div class="value"><b class="name">마드리드 근교(톨레도/세고비아)</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=10">
        <div class="value"><b class="name">벨기에 당일치기</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=14">
        <div class="value"><b class="name">캐녀닝</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=28">
        <div class="value"><b class="name">로마 시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=33">
        <div class="value"><b class="name">톨레도</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=35">
        <div class="value"><b class="name">지로나+투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=39">
        <div class="value"><b class="name">프라하 스냅</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=98">
        <div class="value"><b class="name">몽생미셀 야경 벤투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=215">
        <div class="value"><b class="name">델피-메테오라</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=216">
        <div class="value"><b class="name">프리이빗 차량 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=217">
        <div class="value"><b class="name">산토리니 세일링</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=218">
        <div class="value"><b class="name">크레타</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=219">
        <div class="value"><b class="name">산토리니 요트투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=99">
        <div class="value"><b class="name">블루라군투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=96">
        <div class="value"><b class="name">우피치미술관</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=30">
        <div class="value"><b class="name">피렌체 시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=154">
        <div class="value"><b class="name">오랑주리 미술관</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=55">
        <div class="value"><b class="name">로마 스냅</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=61">
        <div class="value"><b class="name">바르셀로나 시내</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=54">
        <div class="value"><b class="name">베로나 자전거 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=230">
        <div class="value"><b class="name">아이슬란드 일주(feat.링로드)</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=231">
        <div class="value"><b class="name">베르동</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=235">
        <div class="value"><b class="name">아를</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=238">
        <div class="value"><b class="name">융프라우 가이드</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=239">
        <div class="value"><b class="name">몽블랑 트레킹</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=243">
        <div class="value"><b class="name">실프라 스노쿨링</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=244">
        <div class="value"><b class="name">파티마</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=245">
        <div class="value"><b class="name">나자레</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=246">
        <div class="value"><b class="name">오비도스</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=249">
        <div class="value"><b class="name">돌로미티</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=250">
        <div class="value"><b class="name">카프리섬</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=251">
        <div class="value"><b class="name">나폴리&#38;
                근교 프라이빗 차량</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=252">
        <div class="value"><b class="name">두브로브니크 성벽/워킹투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=321">
        <div class="value"><b class="name">산토리니 시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=237">
        <div class="value"><b class="name">파리 공항픽업/샌딩</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=256">
        <div class="value"><b class="name">왕좌의게임 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=257">
        <div class="value"><b class="name">트로기르&#38;
                블루라군&#38;
                솔타</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=263">
        <div class="value"><b class="name">프라힐리아나</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=297">
        <div class="value"><b class="name">깐느</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=300">
        <div class="value"><b class="name">나폴리공항 픽업/샌딩</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=301">
        <div class="value"><b class="name">볼로냐 자전거 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=302">
        <div class="value"><b class="name">밀란 경기장투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=303">
        <div class="value"><b class="name">세비야-론다 차량투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=304">
        <div class="value"><b class="name">세비야 플라멩고</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=306">
        <div class="value"><b class="name">자그레브 공항픽업</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=307">
        <div class="value"><b class="name">스플리트↔두브로브니크</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=308">
        <div class="value"><b class="name">스플리트 공항픽업/샌딩</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=309">
        <div class="value"><b class="name">무라노,
                부라노섬</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=310">
        <div class="value"><b class="name">바라주딘&#38;
                트라코스찬 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=311">
        <div class="value"><b class="name">프라하→판도르프 아울렛</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=314">
        <div class="value"><b class="name">한적한 잘츠부르크 근교</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=240">
        <div class="value"><b class="name">인터라켄 프라이빗 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=272">
        <div class="value"><b class="name">부다페스트→판도르프 아울렛</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=273">
        <div class="value"><b class="name">까를로비 바리</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=274">
        <div class="value"><b class="name">할슈타트(비엔나, 잘츠부르크)</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=283">
        <div class="value"><b class="name">루마니아 드라큘라성</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=294">
        <div class="value"><b class="name">흐바르 섬 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=295">
        <div class="value"><b class="name">두브로브니크 공항픽업/샌딩</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=312">
        <div class="value"><b class="name">에보라</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=313">
        <div class="value"><b class="name">부다페스트 공항픽업/샌딩/트랜스퍼</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=315">
        <div class="value"><b class="name">오스트리아 공항픽업/샌딩/트랜스퍼</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=316">
        <div class="value"><b class="name">프라하 공항픽업/샌딩/트랜스퍼</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=318">
        <div class="value"><b class="name">해적선 크루즈 파티</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=267">
        <div class="value"><b class="name">코모호수 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=268">
        <div class="value"><b class="name">티볼리투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=64">
        <div class="value"><b class="name">피카소 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=65">
        <div class="value"><b class="name">에든버러 시내워킹</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=102">
        <div class="value"><b class="name">골든서클투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=103">
        <div class="value"><b class="name">[프랑스남부]코트다쥐르</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=104">
        <div class="value"><b class="name">쿠킹 클래스</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=184">
        <div class="value"><b class="name">스플리트 시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=326">
        <div class="value"><b class="name">엘라피티섬 크루즈</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=185">
        <div class="value"><b class="name">체르마트/마테호른 트레킹</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=186">
        <div class="value"><b class="name">라보/몽트뢰</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=187">
        <div class="value"><b class="name">루체른 </b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=190">
        <div class="value"><b class="name">더몰/프라다 스페이스</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=140">
        <div class="value"><b class="name">벨기에 맥주투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=101">
        <div class="value"><b class="name">오로라 헌팅투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=114">
        <div class="value"><b class="name">친퀘테레 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=126">
        <div class="value"><b class="name">플젠+맥주스파</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=127">
        <div class="value"><b class="name">천국의 문</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=76">
        <div class="value"><b class="name">내셔널 갤러리</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=83">
        <div class="value"><b class="name">암스테르담 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=128">
        <div class="value"><b class="name">라이(+세븐시스터즈)</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=129">
        <div class="value"><b class="name">거북이섬 보트투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=135">
        <div class="value"><b class="name">벌룬투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=136">
        <div class="value"><b class="name">그린&레드 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=137">
        <div class="value"><b class="name">ATV투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=142">
        <div class="value"><b class="name">오르비에토+아씨시</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=130">
        <div class="value"><b class="name">나바지오 해변+블루케이브 보트투어 !</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=139">
        <div class="value"><b class="name">이스탄불 시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=131">
        <div class="value"><b class="name">케팔로니아 섬 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=132">
        <div class="value"><b class="name">할슈타트</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=2">
        <div class="value"><b class="name">지베르니+근교</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=48">
        <div class="value"><b class="name">인터라켄 호스텔</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=70">
        <div class="value"><b class="name">브뤼헤+겐트 차량</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=77">
        <div class="value"><b class="name">아테네 근교 섬 1DAY 크루즈</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=78">
        <div class="value"><b class="name">뤼세피오르드</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=141">
        <div class="value"><b class="name">세비야 시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=17">
        <div class="value"><b class="name">스위스 스카이다이빙</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=23">
        <div class="value"><b class="name">대영박물관</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=27">
        <div class="value"><b class="name">이탈리아 남부투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=121">
        <div class="value"><b class="name">파리시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=115">
        <div class="value"><b class="name">나폴레옹 왕궁</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=79">
        <div class="value"><b class="name">코스타브라바 스쿠버/스노클링</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=327">
        <div class="value"><b class="name">파리 라발레 아울렛 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=123">
        <div class="value"><b class="name">런던 시내(city)투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=155">
        <div class="value"><b class="name">프랑크푸르트 시내</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=85">
        <div class="value"><b class="name">앤트워프 워킹</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=100">
        <div class="value"><b class="name">공항 셔틀버스</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=157">
        <div class="value"><b class="name">포르투 시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=156">
        <div class="value"><b class="name">하이델베르크시내</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=158">
        <div class="value"><b class="name">상트페테르부르크 시내/근교</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=159">
        <div class="value"><b class="name">모스크바 시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=162">
        <div class="value"><b class="name">부다페스트 시내</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=163">
        <div class="value"><b class="name">센텐드레 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=160">
        <div class="value"><b class="name">자그레브 시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=161">
        <div class="value"><b class="name">비엔나 시내</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=164">
        <div class="value"><b class="name">행글라이딩</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=171">
        <div class="value"><b class="name">두브로브니크 근교 와이너리</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=174">
        <div class="value"><b class="name">스플리트 수상 액티비티</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=176">
        <div class="value"><b class="name">두브로브니크 바다카약</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=179">
        <div class="value"><b class="name">베를린 시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=182">
        <div class="value"><b class="name">빙하투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=183">
        <div class="value"><b class="name">고래투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=193">
        <div class="value"><b class="name">스나이펠스네스</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=194">
        <div class="value"><b class="name">아이슬란드 남부투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=195">
        <div class="value"><b class="name">얼음동굴</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=196">
        <div class="value"><b class="name">화산투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=232">
        <div class="value"><b class="name">프로방스/라벤더</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=233">
        <div class="value"><b class="name">모나코</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=236">
        <div class="value"><b class="name">파리 필수 티켓</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=248">
        <div class="value"><b class="name">코임브라</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=253">
        <div class="value"><b class="name">두브로브니크↔스플리트</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=254">
        <div class="value"><b class="name">크르카 국립공원</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=259">
        <div class="value"><b class="name">이스트라반도 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=260">
        <div class="value"><b class="name">알함브라 궁전투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=262">
        <div class="value"><b class="name">코르도바</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=265">
        <div class="value"><b class="name">네르하</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=270">
        <div class="value"><b class="name">나폴리 푸드/쿠킹클래스</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=305">
        <div class="value"><b class="name">바르셀로나 티켓</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=320">
        <div class="value"><b class="name">보드룸 보트투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=197">
        <div class="value"><b class="name">페티예 패러글라이딩</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=198">
        <div class="value"><b class="name">파묵칼레+차량투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=199">
        <div class="value"><b class="name">달얀 차량투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=200">
        <div class="value"><b class="name">카푸타스해변 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=201">
        <div class="value"><b class="name">사클리켄트 래프팅</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=202">
        <div class="value"><b class="name">모스타르&#38;
                포세닉</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=203">
        <div class="value"><b class="name">신트라/카스카이스</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=204">
        <div class="value"><b class="name">아라비다 와인투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=205">
        <div class="value"><b class="name">대항해 보트</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=207">
        <div class="value"><b class="name">그라나다 패러글라이딩</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=208">
        <div class="value"><b class="name">트롬소 오로라투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=210">
        <div class="value"><b class="name">라인폭포&마이링겐</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=255">
        <div class="value"><b class="name">브라츠섬</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=241">
        <div class="value"><b class="name">공항픽업서비스</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=242">
        <div class="value"><b class="name">런던필수 티켓</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=261">
        <div class="value"><b class="name">그라나다 시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=264">
        <div class="value"><b class="name">그라나다-론다 차량투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=266">
        <div class="value"><b class="name">베니스 곤돌라</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=269">
        <div class="value"><b class="name">폼페이&#38;
                베수비오</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=277">
        <div class="value"><b class="name">부다페스트 스냅</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=278">
        <div class="value"><b class="name">브라티슬라바 시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=279">
        <div class="value"><b class="name">크라쿠프 시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=280">
        <div class="value"><b class="name">바르샤바 시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=282">
        <div class="value"><b class="name">비엔나 공연 티켓</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=284">
        <div class="value"><b class="name">와이너리 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=285">
        <div class="value"><b class="name">산토리니 공항 픽업/샌딩</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=317">
        <div class="value"><b class="name">천혜의 자연,
                루스키섬</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=211">
        <div class="value"><b class="name">에스프레소 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=212">
        <div class="value"><b class="name">파스타 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=213">
        <div class="value"><b class="name">피자 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=214">
        <div class="value"><b class="name">쿠킹클래스</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=288">
        <div class="value"><b class="name">스트라스부르 당일치기</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=289">
        <div class="value"><b class="name">블라디보스톡 시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=290">
        <div class="value"><b class="name">블라디보스톡 공항픽업/샌딩</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=291">
        <div class="value"><b class="name">로도스섬 페리</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=292">
        <div class="value"><b class="name">보스포러스 크루즈</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=293">
        <div class="value"><b class="name">라스토케</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=296">
        <div class="value"><b class="name">피사 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=298">
        <div class="value"><b class="name">피렌체 스냅</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=299">
        <div class="value"><b class="name">베니스 스냅</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=220">
        <div class="value"><b class="name">용암굴</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=221">
        <div class="value"><b class="name">개썰매투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=222">
        <div class="value"><b class="name">데티포스투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=223">
        <div class="value"><b class="name">미바튼호수투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=224">
        <div class="value"><b class="name">스노모빌</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=225">
        <div class="value"><b class="name">스카프타펠</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=226">
        <div class="value"><b class="name">에트나 화산투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=227">
        <div class="value"><b class="name">시칠리아 푸드투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=228">
        <div class="value"><b class="name">아그리젠토</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=229">
        <div class="value"><b class="name">아이슬란드 렌트카(특가중)</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=322">
        <div class="value"><b class="name">비세보섬 블루케이브</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=323">
        <div class="value"><b class="name">하이랜드</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=328">
        <div class="value"><b class="name">타오르미나 워킹투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=330">
        <div class="value"><b class="name">밀라노 공항 픽업/샌딩</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=324">
        <div class="value"><b class="name">로마공항 픽업/샌딩</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=329">
        <div class="value"><b class="name">베니스공항 픽업/샌딩</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=331">
        <div class="value"><b class="name">피렌체공항 픽업/샌딩</b></div>
    </a></li>

                            </ul>
                        </div>

                </div>
            </section>



<div id="premium_modal" style="display:none; position:fixed; top:0; left:0; right:0; bottom:0; background:rgba(0,0,0,.15); z-index:99999;">
            <div style="position:relative; top:30%; left:50%; transform:translate(-50%, -50%); width:320px; border-radius:2px; box-shadow:0 0 0 1px rgba(0,0,0,.1), 0 2px 8px 0 rgba(0,0,0,.25); background:#fff;">
                <div style="position:relative; height:42px; padding:0 18px; background:#f5f5f7; font-size:15px; font-weight:normal; line-height:42px; color:#4a4a4a;">안내
                    <a href="javascript:closepremiumModal()" class="" style="position:absolute; top:50%; right:20px; transform:translateY(-50%); width:22px; height:22px; background-image:url(<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1548911555427eWBbProQMk.png); background-size:cover;"></a>
                </div>
                <div id="premium_modal_msg" style="padding:16px 24px; font-size:15px; font-weight:normal; line-height:1.4; word-break:keep-all; letter-spacing:0; text-align:center; color:#4a4a4a;"></div>
                <div style="padding:0 24px 20px; text-align:center;">
                    <a id="premium_modal_link" href="#" class="btn-u btn-u-xs" style="border-radius:3px; background:#8f8f8f">
                        <font style="font-size:16px; font-weight:normal; line-height:42px; color:#fff">플래너 삭제</font>
                    </a>
                    <a href="premium.do" class="btn-u btn-u-xs" style="border-radius:3px; background:#8f8f8f">
                        <font style="font-size:16px; font-weight:normal; line-height:42px; color:#fff">프리미엄 서비스 가입</font>
                    </a>
                </div>
            </div>
        </div>
<div id="premium2_modal" style="display:none; position:fixed; top:0; left:0; right:0; bottom:0; background:rgba(0,0,0,.15); z-index:99999;">
            <div style="position:relative; top:30%; left:50%; transform:translate(-50%, -50%); width:320px; border-radius:2px; box-shadow:0 0 0 1px rgba(0,0,0,.1), 0 2px 8px 0 rgba(0,0,0,.25); background:#fff;">
                <div style="position:relative; height:42px; padding:0 18px; background:#f5f5f7; font-size:15px; font-weight:normal; line-height:42px; color:#4a4a4a;">안내
                    <a href="javascript:closepremium2Modal()" class="" style="position:absolute; top:50%; right:20px; transform:translateY(-50%); width:22px; height:22px; background-image:url(<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1548911555427eWBbProQMk.png); background-size:cover;"></a>
                </div>
                <div id="premium2_modal_msg" style="padding:16px 24px; font-size:15px; font-weight:normal; line-height:1.4; word-break:keep-all; letter-spacing:0; text-align:center; color:#4a4a4a;"></div>
                <div style="padding:0 24px 20px; text-align:center;">
                    <a id="premium2_modal_link" href="#" class="btn-u btn-u-xs" style="border-radius:3px; background:#8f8f8f">
                        <font style="font-size:16px; font-weight:normal; line-height:42px; color:#fff">플래너 열기</font>
                    </a>
                    <a href="premium.do" class="btn-u btn-u-xs" style="border-radius:3px; background:#8f8f8f">
                        <font style="font-size:16px; font-weight:normal; line-height:42px; color:#fff">프리미엄 서비스 가입</font>
                    </a>
                </div>
            </div>
        </div>

<div id="prime_modal" style="display:none; position:fixed; top:0; left:0; right:0; bottom:0; background:rgba(0,0,0,.15); z-index:99999;">
            <div style="position:relative; top:30%; left:50%; transform:translate(-50%, -50%); width:320px; border-radius:2px; box-shadow:0 0 0 1px rgba(0,0,0,.1), 0 2px 8px 0 rgba(0,0,0,.25); background:#fff;">
                <div style="position:relative; height:42px; padding:0 18px; background:#f5f5f7; font-size:15px; font-weight:normal; line-height:42px; color:#4a4a4a;">안내
                    <a href="javascript:closeprimeModal()" class="" style="position:absolute; top:50%; right:20px; transform:translateY(-50%); width:22px; height:22px; background-image:url(<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1548911555427eWBbProQMk.png); background-size:cover;"></a>
                </div>
                <div id="prime_modal_msg" style="padding:16px 24px; font-size:15px; font-weight:normal; line-height:1.4; word-break:keep-all; letter-spacing:0; text-align:center; color:#4a4a4a;"></div>
                <div style="padding:0 24px 20px; text-align:center;">
                    <a id="prime_modal_link" href="#" class="btn-u btn-u-xs" style="border-radius:3px; background:#8f8f8f">
                        <font style="font-size:16px; font-weight:normal; line-height:42px; color:#fff">플래너 삭제</font>
                    </a>
                    <a href="/selfguide/premium2.do" class="btn-u btn-u-xs" style="border-radius:3px; background:#8f8f8f">
                        <font style="font-size:16px; font-weight:normal; line-height:42px; color:#fff">스투비 프라임 가입</font>
                    </a>
                </div>
            </div>
        </div>
<div id="prime2_modal" style="display:none; position:fixed; top:0; left:0; right:0; bottom:0; background:rgba(0,0,0,.15); z-index:99999;">
            <div style="position:relative; top:30%; left:50%; transform:translate(-50%, -50%); width:320px; border-radius:2px; box-shadow:0 0 0 1px rgba(0,0,0,.1), 0 2px 8px 0 rgba(0,0,0,.25); background:#fff;">
                <div style="position:relative; height:42px; padding:0 18px; background:#f5f5f7; font-size:15px; font-weight:normal; line-height:42px; color:#4a4a4a;">안내
                    <a href="javascript:closeprime2Modal()" class="" style="position:absolute; top:50%; right:20px; transform:translateY(-50%); width:22px; height:22px; background-image:url(<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1548911555427eWBbProQMk.png); background-size:cover;"></a>
                </div>
                <div id="prime2_modal_msg" style="padding:16px 24px; font-size:15px; font-weight:normal; line-height:1.4; word-break:keep-all; letter-spacing:0; text-align:center; color:#4a4a4a;"></div>
                <div style="padding:0 24px 20px; text-align:center;">
                    <a id="prime2_modal_link" href="#" class="btn-u btn-u-xs" style="border-radius:3px; background:#8f8f8f">
                        <font style="font-size:16px; font-weight:normal; line-height:42px; color:#fff">플래너 열기</font>
                    </a>
                    <a href="/selfguide/premium2.do" class="btn-u btn-u-xs" style="border-radius:3px; background:#8f8f8f">
                        <font style="font-size:16px; font-weight:normal; line-height:42px; color:#fff">스투비 프라임 가입</font>
                    </a>
                </div>
            </div>
        </div>




<div id="alert_modal" style="display:none; position:fixed; top:0; left:0; right:0; bottom:0; background:rgba(0,0,0,.15); z-index:99999;">
            <div style="position:relative; top:30%; left:50%; transform:translate(-50%, -50%); width:320px; border-radius:2px; box-shadow:0 0 0 1px rgba(0,0,0,.1), 0 2px 8px 0 rgba(0,0,0,.25); background:#fff;">
                <div style="position:relative; height:42px; padding:0 18px; background:#f5f5f7; font-size:15px; font-weight:normal; line-height:42px; color:#4a4a4a;">안내
                    <a href="javascript:closeAlertModal()" class="" style="position:absolute; top:50%; right:20px; transform:translateY(-50%); width:22px; height:22px; background-image:url(<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1548911555427eWBbProQMk.png); background-size:cover;"></a>
                </div>

                <div id="alert_modal_msg" style="padding:16px 24px; font-size:15px; font-weight:normal; line-height:1.4; word-break:keep-all; letter-spacing:0; text-align:center; color:#4a4a4a;"></div>
                <div style="padding:0 24px 20px; text-align:center;">
                    <a href="javascript:closeAlertModal()" class="btn-u btn-u-xs" style="border-radius:3px; background:#8f8f8f">
                        <font style="font-size:16px; font-weight:normal; line-height:42px; color:#fff">확인</font>
                    </a>
                </div>
            </div>
        </div>

</body>
</html>