<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/include.jspf" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<link rel="image_src" href="" />
<meta property="og:title" content="${attr_list[0].city_name} 숙소 - 스투비플래너" />

<script src="https://www.google.com/jsapi"></script>

<script>
 (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
 (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
 m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
 })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
 ga('create', 'UA-913663-1', 'auto');
 ga('send', 'pageview');
ga('send','event','tour','city','${attr_list[0].city_id}');
</script>

<noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=597062987120795&ev=PageView&noscript=1"/></noscript>



        <title> ${attr_list[0].city_name} 숙소 - 스투비플래너</title>
    <!-- meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
	
	<!-- Favicon -->
    <link rel="shortcut icon" href="<%= contextPath %>/externalData/images2/common/favicon.ico">
    <link rel="icon" href="<%= contextPath %>/externalData/images2/common/favicon.png"> 
	



	<!-- CSS Header and Footer -->
	<link rel="stylesheet" href="<%= contextPath %>/externalData/superguide/assets/css/headers/header-v4.css">

	<!-- CSS Implementing Plugins -->
	<link rel="stylesheet" href="<%= contextPath %>/externalData/superguide/assets/plugins/animate.css">
	<link rel="stylesheet" href="<%= contextPath %>/externalData/superguide/assets/plugins/line-icons/line-icons.css">
	<link rel="stylesheet" href="<%= contextPath %>/externalData/superguide/assets/plugins/font-awesome/css/font-awesome.min.css">


    <!-- CSS/JavaScript -->
    <link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/mb/css/swiper.min.css">
    <link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/css2/daterangepicker.css">
    <link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/css2/common.css">
	<link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/css2/header_footer.css">
	<link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/css2/slpmain.css">
	<link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/css2/itemStyle.css">
    <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>

	<!-- lazysizes.min.js : 레이지로딩 -->
    <script src="<%= contextPath %>/externalData/js2/lazysizes.min.js" type="text/javascript" async=""></script>
    <!-- swiper.min.js : 이미지슬라이더 -->
    <script src="<%= contextPath %>/externalData/js2/swiper.min.js" type="text/javascript"></script>
    <!-- daterangepicker.js : 달력 -->
    <script src="<%= contextPath %>/externalData/js2/moment.min.js" type="text/javascript"></script>
    <script src="<%= contextPath %>/externalData/js2/daterangepicker.js" type="text/javascript"></script>
    <!-- header/footer -->
	<script src="<%= contextPath %>/externalData/js2/header_footer3.js" type="text/javascript"></script>



<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false&language=ko&key=AIzaSyD22gGuJambID4g4M2bHWgxOCmWCArzTzM"></script>

<script type="text/javascript">

	var stockholm = new google.maps.LatLng('${attr_list[0].city_x}','${attr_list[0].city_y}');
	var marker;
	var map;
	var allMarkers = [];
	var myMarkers=[];
	var recommMarkers=[];
	var prv_infowindow;
	var Spots=[];
	var markerManager;

	
	function resized(){
		newMapHeight=eval($(window).height())-125;

		$("#map_canvas").css("height",newMapHeight);
	}
	
	var isfirst=true;
	var directionsDisplay;
	var directionsService = new google.maps.DirectionsService();
	var geocoder;
	var googlePlaceService;

	function initialize() {
		
	var mapOptions = {
			
		    zoom: 10,
		    mapTypeId: google.maps.MapTypeId.ROADMAP,
		    center: stockholm,
		    streetViewControl: false,
		    panControl: false,
		    zoomControl: false,
		    scaleControl: false
	};
	
	map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);
	
	
	var styles=[{"featureType": "administrative","elementType": "geometry.stroke"
		,"stylers": [{"color": "#b8b8b8"},{"visibility": "on"},{"weight": 1}]}
		,{"featureType": "administrative","elementType": "labels.text.fill","stylers": [{"color": "#6195a0"}]}
		,{"featureType": "administrative.province","elementType": "geometry.stroke","stylers": [{"visibility": "on"}]}
		,{"featureType": "landscape","elementType": "geometry","stylers": [{"color": "#ffffff"}]}
		,{"featureType": "landscape.man_made","stylers": [{"lightness": -5},{"visibility": "simplified"}]}
		,{"featureType": "landscape.man_made","elementType": "geometry","stylers": [{"color": "#f0f0f0"},{"visibility": "on"}]}
		,{"featureType": "poi","stylers": [{"visibility": "off"}]}
		,{"featureType": "poi.park","elementType": "geometry.fill","stylers": [{"color": "#bae5ce"},{"visibility": "on"}]}
		,{"featureType": "road","stylers": [{"saturation": -100},{"lightness": 45},{"visibility": "simplified"}]}
		,{"featureType": "road.arterial","stylers": [{"visibility": "off"}]},{"featureType": "road.highway","stylers": [{"visibility": "off"}]}
		,{"featureType": "transit","stylers": [{"visibility": "simplified"}]}
		,{"featureType": "water","stylers": [{"color": "#c2f1f5"},{"saturation": 35}
		,{"lightness": 40},{"gamma": 0.42},{"visibility": "on"}]}
		,{"featureType": "water","elementType": "labels.text.fill","stylers": [{"color": "#adadad"},{"visibility": "on"}]}];

	map.setOptions({styles: styles});


	var myoverlay = new google.maps.OverlayView();
	myoverlay.draw = function () {
		this.getPanes().markerLayer.id='markerLayer';
	};
	myoverlay.setMap(map);

	google.maps.event.addListener(map, 'tilesloaded', function() {
		
		if(is_first_map_load)
			{
				//loadIniSchd();
				is_first_map_load=0;
			}

	});


	}

	var is_first_map_load=1;


	</script>






<style>
.pager
{

	margin-top:0px;
	margin-bottom:70px;
}
.prd_item .like.active {
    background-position: -84px 0;
}
.prd_item .like {
    position: absolute;
    top: 10px;
    right: 10px;
    width: 28px;
    height: 28px;
    background-position: -112px 0;
    background-size: 224px;
    z-index: 9;
}
.like
{
    background-image: url("/stubbyPlanner/externalData/images2/common/stu_icon.png");
    background-repeat: no-repeat;
    vertical-align: middle;
}
.selector_trs
{
	cursor:pointer;
	margin:5px 10%;padding:6px 0px;font-size:12pt;font-weight:700;text-align:center;border:1px solid #696969;color:#fff;
}
.selector_trs_selected
{
	cursor:pointer;
	margin:5px 10%;padding:6px 0px;font-size:12pt;font-weight:700;text-align:center;background:#fff;border:1px solid #696969;color:#000;
}

.stu_top_banner .stu_schedule:before {
    content: "";
    position: absolute;

    top: 5.5px;

    width: 18px;
    height: 18px;
    background-position: -180px -198px;
    background-size: 288px;
}
#markerLayer img {
	border:3px solid #fff;
        border-radius: 50px;
}




/* 헤더영역 */
header .stu_gnb_container { position:fixed; top:0; left:0; right:0; height:50px; border-bottom:1px solid #e5e5e5; background:rgba(255,255,255,.95); line-height:50px; z-index:10; -webkit-transition:top .3s ease; -moz-transition:top .3s ease; -o-transition:top .3s ease; transition:top .3s ease; }
header .stu_gnb_container .stu_inner_wrap { padding:0 16px; }
header .stu_gnb_container .stu_logo { float:left; position:relative; top:8px; height:34px; }
header .stu_gnb_container .stu_gnb_wrap { float:right; display:inline-block; }
header .stu_gnb_container .stu_gnb_wrap li { display:inline-block; position:relative; }
header .stu_gnb_container .stu_gnb_wrap li + li { margin-left:6px; }
header .stu_gnb_container .stu_gnb_wrap li p { display:none; }
header .stu_gnb_container .stu_gnb_wrap li#ico_search { padding:0 20px 0 5px; -webkit-border-radius:18px; border-radius:18px; border:1px solid #e5e5e5; background:#f5f5f5; line-height:34px; }
header .stu_gnb_container .stu_gnb_wrap li#ico_search:after { content:"검색"; font-size:15px; font-weight:300; color:#666; cursor:text; }
header .stu_gnb_container .stu_gnb_wrap li#ico_planner { display:none; }
header .stu_gnb_container button { margin-top:-2px; }
header .stu_gnb_container button.ico_search { display:inline-block; width:30px; height:30px; background-position:-60px -30px; background-size:240px; opacity:.6; }
header .stu_gnb_container button.ico_planner { display:none; }
header .stu_gnb_container button.ico_booking { display:none; }

@media (min-width:620px){

/* 헤더영역 */
header .stu_gnb_container { position:relative; top:0! important; height:56px; line-height:56px; }
header .stu_gnb_container .stu_inner_wrap { padding:0 20px; }
header .stu_gnb_container .stu_logo { top:11px; }
header .stu_gnb_container .stu_gnb_wrap li + li { margin-left:32px; }
header .stu_gnb_container .stu_gnb_wrap li:after { display:inline-block; font-size:16px; font-weight:400; color:#222; }
header .stu_gnb_container .stu_gnb_wrap li a { position:absolute; top:0; left:0; width:100%; height:100%; }
header .stu_gnb_container .stu_gnb_wrap li#ico_search { padding:0 32px 0 10px; }
header .stu_gnb_container .stu_gnb_wrap li#ico_search:after { content:"투어 또는 국가 검색"; font-size:14px; }
header .stu_gnb_container .stu_gnb_wrap li#ico_booking:after { content:"내 예약"; }
header .stu_gnb_container .stu_gnb_wrap li#ico_planner { display:inline-block; }
header .stu_gnb_container .stu_gnb_wrap li#ico_planner:after { content:"플래너"; }
header .stu_gnb_container button.ico_booking { display:none; }

}

@media (min-width:1025px){


/* 헤더영역 */
header .stu_gnb_container .stu_inner_wrap { padding:0; }
header .stu_gnb_container .stu_gnb_wrap li + li { margin-left:40px; }
header .stu_gnb_container .stu_gnb_wrap li#ico_search { padding:0 32px 0 12px; }
header .stu_gnb_container .stu_gnb_wrap li#ico_search:after { content:"도시로 검색하세요"; }

}
.hotel_fav
{
	float:left;
	position:relative;
	width:150px;
	height:180px;
}


<%@include file="/WEB-INF/layout/css/header_large.css" %>

</style>
</head>



<body>

  <div class="stu_wrap" >

<jsp:include page="/WEB-INF/layout/header_large.jsp"></jsp:include>
	
	

    <!--메인영역_Str-->

    <!--메인영역_Str-->
    <main class="stu_clearfix" >

       <section class="stu_top_banner" >
            <div class="stu_bg">
                <div class="titArea">

                     <a href="/mb/index.asp" class="loc">숙소 홈</a>

                    <b class="current-city" id="current-city">파리
                        <div class="popover-wrap" id="popover-wrap-city">
                            <ul>
                                <li><a href="#" class="current">파리</a></li>

	<li><a href="/mb/index_city.asp?trip_id=&l=&r_id=&region=111011003&tripwith=">니스</a></li>

	<li><a href="/mb/index_city.asp?trip_id=&l=&r_id=&region=111011005&tripwith=">아비뇽</a></li>

	<li><a href="/mb/index_city.asp?trip_id=&l=&r_id=&region=111011010&tripwith=">리옹</a></li>

	<li><a href="/mb/index_city.asp?trip_id=&l=&r_id=&region=111011002&tripwith=">베르사유</a></li>

	<li><a href="/mb/index_city.asp?trip_id=&l=&r_id=&region=111011008&tripwith=">몽생미셸</a></li>

	<li><a href="/mb/index_city.asp?trip_id=&l=&r_id=&region=111011012&tripwith=">스트라스부르</a></li>

	<li><a href="/mb/index_city.asp?trip_id=&l=&r_id=&region=111011014&tripwith=">마르세유</a></li>

	<li><a href="/mb/index_city.asp?trip_id=&l=&r_id=&region=111011011&tripwith=">깐느</a></li>

	<li><a href="/mb/index_city.asp?trip_id=&l=&r_id=&region=111011128&tripwith=">엑상프로방스</a></li>

	<li><a href="/mb/index_city.asp?trip_id=&l=&r_id=&region=111011143&tripwith=">지베르니</a></li>

	<li><a href="/mb/index_city.asp?trip_id=&l=&r_id=&region=111011013&tripwith=">보르도</a></li>

	<li><a href="/mb/index_city.asp?trip_id=&l=&r_id=&region=111011001&tripwith=">샤모니몽블랑</a></li>

	<li><a href="/mb/index_city.asp?trip_id=&l=&r_id=&region=111011110&tripwith=">아를</a></li>

	<li><a href="/mb/index_city.asp?trip_id=&l=&r_id=&region=111011141&tripwith=">퐁텐블로</a></li>

	<li><a href="/mb/index_city.asp?trip_id=&l=&r_id=&region=111011015&tripwith=">디종</a></li>

	<li><a href="/mb/index_city.asp?trip_id=&l=&r_id=&region=111011009&tripwith=">생 폴 드 방스</a></li>

	<li><a href="/mb/index_city.asp?trip_id=&l=&r_id=&region=111011044&tripwith=">툴루즈</a></li>

	<li><a href="/mb/index_city.asp?trip_id=&l=&r_id=&region=111011050&tripwith=">안시</a></li>

	<li><a href="/mb/index_city.asp?trip_id=&l=&r_id=&region=111011120&tripwith=">생 말로</a></li>



                            </ul>
                        </div>
                    </b>

                    <b class="current-city" id="current-menu">숙소
                        <div class="popover-wrap" id="popover-wrap-menu">
                            <ul>
                                <li><a href="#" class="current">숙소</a></li>
                                <li><a href="/market/index_city.asp?region=111031001" class="">투어/일정</a></li>

                            </ul>
                        </div>
                    </b>

                </div>





                <div class="stu_trip-type" style="left:40%;">
                    <div class="selectBtn">

                        <img src="https://d3b39vpyptsv01.cloudfront.net/0/0/1550717273498xKH93UsUl5.png">
                        <p>여행테마</p>

                    </div>
                    <div class="selectBox">
                        <p>누구와 함께하는 여행인가요?</p>
                        <i class="close"></i>
                         <ul>
                            <li  id="T1">
                                <i>
                                    <img class="fw" src="https://www.stubbyplanner.com/img_v14/tripwith/TW_1_1.png">
                                </i>
                                <span>여자혼자</span>
                            </li>
                            <li  id="T2">
                                <i>
                                    <img class="fw" src="https://www.stubbyplanner.com/img_v14/tripwith/TW_1_2.png">
                                </i>
                                <span>남자혼자</span>
                            </li>
                            <li  id="T3">
                                <i>
                                    <img class="fw" src="https://www.stubbyplanner.com/img_v14/tripwith/TW_1_3.png">
                                </i>
                                <span>커플/신혼</span>
                            </li>
                            <li  id="T4">
                                <i>
                                    <img class="fw" src="https://www.stubbyplanner.com/img_v14/tripwith/TW_2_1.png">
                                </i>
                                <span>여자끼리</span>
                            </li>
                            <li  id="T5">
                                <i>
                                    <img class="fw" src="https://www.stubbyplanner.com/img_v14/tripwith/TW_2_2.png">
                                </i>
                                <span>남자끼리</span>
                            </li>
                            <li  id="T6">
                                <i>
                                    <img class="fw" src="https://www.stubbyplanner.com/img_v14/tripwith/TW_2_3.png">
                                </i>
                                <span>남녀함께</span>
                            </li>
                            <li  id="T7">
                                <i>
                                    <img class="fw" src="https://www.stubbyplanner.com/img_v14/tripwith/TW_3_1.png">
                                </i>
                                <span>아이들과</span>
                            </li>
                            <li  id="T8">
                                <i>
                                    <img class="fw" src="https://www.stubbyplanner.com/img_v14/tripwith/TW_3_2.png">
                                </i>
                                <span>부모님과</span>
                            </li>
                            <li  id="T9">
                                <i>
                                    <img class="fw" src="https://www.stubbyplanner.com/img_v14/tripwith/TW_3_3.png">
                                </i>
                                <span>부모님끼리</span>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="stu_setting_wrap">
                    <div class="stu_calendar">


                        <input type="text" name="datefilter" class="selectDate" value="07월 02일~07월03일" readonly onfocus="this.blur();" placeholder="체크인 ~ 체크아웃" />
                    </div>
                    <div class="stu_person_wrap">
                        <div class="selectBtn">
			
<!--
                            <img src="https://d3b39vpyptsv01.cloudfront.net/0/0/1550200849544oFb0AnnOiL.png">
-->
                            <p id="AA_txt" style="color:#000;">객실 및 인원</p>
                        </div>
                        <div class="selectBox">
                            <div class="stu_inner_wrap">
                                <div class="inner_head">
                                    <a class="ico_close"><i></i></a>
                                    <span>객실 및 인원</span>
                                </div>
                                <div class="inner_body">
                                    <ul class="panel">
                                        <li class="opt_wrap type-room">
                                            <div class="opt_title">
                                                <b>객실</b>
                                            </div>
                                            <div class="count_range">
                                                <a class="decrease">
                                                    <input value="-" count_range="m" type="button">
                                                </a>
                                                <input class="count" value="1" readonly name>
                                                <a class="increase">
                                                    <input value="+" count_range="p" type="button">
                                                </a>
                                            </div>
                                        </li>
                                        <li class="opt_wrap type-adult">
                                            <div class="opt_title">
                                                <b>성인</b>
                                            </div>
                                            <div class="count_range">
                                                <a class="decrease">
                                                    <input value="-" count_range="m" type="button">
                                                </a>
                                                <input class="count" value="2" readonly name>
                                                <a class="increase">
                                                    <input value="+" count_range="p" type="button">
                                                </a>
                                            </div>
                                        </li>
                                        <li class="opt_wrap type-children">
                                            <div class="opt_title">
                                                <b>어린이</b>
                                                <p>만 0세 ~ 17세</p>
                                            </div>
                                            <div class="count_range">
                                                <a class="decrease">
                                                    <input value="-" count_range="m" type="button">
                                                </a>
                                                <input class="count" value="0" readonly name>
                                                <a class="increase">
                                                    <input value="+" count_range="p" type="button">
                                                </a>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="inner_btn">
                                    <a class="btn_apply" href="javascript:updateAA_complete()">선택 완료</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <section class="time_filter">
            <div class="stu_inner_wrap">
                <ul class="filter_body" style="text-align:left">

                    <li class="tab on" style="text-align:center;width:25%"><a href="javascript:chgMenu('호텔');">호텔</a></li>
                    <li class="tab " style="text-align:center;width:25%"><a href="javascript:chgMenu('호스텔');">호스텔</a></li>
                    <li class="tab " style="text-align:center;width:25%"><a href="javascript:chgMenu('아파트');">아파트</a></li>

                    <li class="tab " style="text-align:center;width:25%"><a href="javascript:chgMenu('민박');">민박</a></li>

                </ul>
            </div>
        </section>



<script>
tripwith_txt=[];
tripwith_txt[1]='여자혼자';
tripwith_txt[2]='남자혼자';
tripwith_txt[3]='커플/신혼';
tripwith_txt[4]='여자끼리';
tripwith_txt[5]='남자끼리';
tripwith_txt[6]='남녀함께';
tripwith_txt[7]='아이들과';
tripwith_txt[8]='부모님과';
tripwith_txt[9]='부모님끼리';


var tripwith='';

</script>


        <section class="spot_filter">
            <div class="stu_inner_wrap">
                <div class="filter_head d-n">
                    <a class="ico_reset"><p>초기화</p></a>
                    <a class="ico_close"><i></i></a>
                    <span>필터</span>
                </div>
                <div class="filter_body">
                    <div class="panel">

                        <div class="opt_wrap">
                            <div class="swiper-container swiper1">




                                <b class="opt_title">방문예정지</b>
                                <a class="btn_more"><i></i><span class="item_count"></span></a>
                                <ul class="swiper-wrapper hot multi" data-count>

	<c:forEach items="${attr_list}" var="attr_list">
     <li  id="B${attr_list.attr_id}"  class="swiper-slide " onclick="toggleBucket('${attr_list.attr_id}')">${attr_list.attr_name}</li>
	</c:forEach>

      
                                </ul>
                                <!--scrollbar-->
                                <div class="swiper-scrollbar"></div>
                            </div>
                        </div>



                        <div class="opt_wrap d-n">
                            <b class="opt_title">가격대(1박)</b>
                            <ul class="col4">
                                <li class="opt_item all" onclick="selPrice('_')"  id="mm__">전체</li>
                                <li class="opt_item " onclick="selPrice('0_70000')">7만원 이하</li>
                                <li class="opt_item " onclick="selPrice('70000_130000')">13만원 이하</li>
                                <li class="opt_item " onclick="selPrice('130000_200000')">20만원 이하</li>
                                <li class="opt_item " onclick="selPrice('200000_300000')">30만원 이하</li>
                                <li class="opt_item " onclick="selPrice('300000_400000')">40만원 이하</li>
                                <li class="opt_item " onclick="selPrice('400000_500000')">50만원 이하</li>
                                <li class="opt_item " onclick="selPrice('500000_9900000')">50만원 이상</li>
                            </ul>
                        </div>

                        <div class="opt_wrap d-n">
                            <b class="opt_title">이용자 평점</b>
                            <ul class="col4">
                                <li class="opt_item all" onclick="select_review_score('')">전체</li>
                                <li class="opt_item " onclick="select_review_score('7');">7점 이상</li>
                                <li class="opt_item " onclick="select_review_score('8');">8점 이상</li>
                                <li class="opt_item " onclick="select_review_score('9');">9점 이상</li>
                            </ul>
                        </div>




                        <div class="opt_wrap hotel d-n">
                            <b class="opt_title">호텔 타입</b>
                            <ul class="col4">
                                <li class="opt_item all" onclick="select_class('');select_thema_code(204)">전체</li>
                                <li class="opt_item " onclick="select_class('3');select_thema_code(204);">3성급 이상</li>
                                <li class="opt_item " onclick="select_class('4');select_thema_code(204);">4성급 이상</li>
                                <li class="opt_item " onclick="select_class('5');select_thema_code(204);">5성급 이상</li>
                            </ul>
                        </div>
                        


                    </div>
                </div>

                <div class="filter_btn d-n">
                    <a class="btn_apply">선택 완료</a>
                </div>




            </div>
        </section>



        <section class="prd_map">
            <div class="stu_inner_wrap stu_clearfix">
                <div class="map_btn stu_clearfix">
                    <img class="fw" src="https://d3b39vpyptsv01.cloudfront.net/0/0/1551345371447mJb7zgDiPF.jpg">
                    <i></i><p>지도로 보기</p>
                </div>
                <div class="map_background"></div>
                <div class="map_container">
                    <div class="map_head">
                        <a class="ico_close"><i></i></a>
                        <span>지도로 보기</span>
                    </div>
                    <div class="map_body" id="map_canvas"></div>
                </div>
            </div>
        </section>
        <!-- list-type / exp-type / selfbook-type -->




        <section class="prd_filter">
            <div class="stu_inner_wrap">




                <div class="btn_prd_filter">

                    <button type="button" class="filter">필터
                        <span class="select_count"></span>
                    </button>
                    <i></i>
                    <button type="button" class="map">지도로 보기</button>

                </div>






                <div class="filter-header">
                    <h3 class="stu_title"></h3>
                    <a class="stu_reset">모두 지우기</a>
                </div>
                <div class="filter-container">
                    <ul>
                        <li class="filter-section stu_clearfix">
                            <h4 class="stu_title">상품 정렬</h4>
                            <ul class="filter-wrap sorting">

                                <li class="filter-list table default on">
                                    <div class="filter-item"  onclick="update_orderby('dist')">이동거리순+예약자 많은순</div>
                                </li>

                            </ul>
                        </li>


                            </ul>
                        </li>


                        <li class="filter-section">
                            <h4 class="stu_title">호텔타입</h4>
                            <ul class="filter-wrap category">


                                <li class="filter-list default on">
                                    <div class="filter-item" onclick="select_class('');select_thema_code(204)">호텔전체</div>
                                </li>
                                <li class="filter-list default">
                                    <div class="filter-item" onclick="select_class('3');select_thema_code(204);">3성급 이상 호텔 </div>
                                </li>
                                <li class="filter-list default">
                                    <div class="filter-item" onclick="select_class('4');select_thema_code(204);">4성급 이상 호텔 </div>
                                </li>
                                <li class="filter-list default">
                                    <div class="filter-item" onclick="select_class('5');select_thema_code(204);">5성급 이상 호텔 </div>
                                </li>

                            </ul>
                        </li>


                        <li class="filter-section">
                            <h4 class="stu_title">평점</h4>
                            <ul class="filter-wrap process">

                                <li class="filter-list default on">
                                    <div class="filter-item" onclick="select_review_score('')">전체</div>
                                </li>

                                <li class="filter-list default ">
                                    <div class="filter-item" onclick="select_review_score('7');">7점이상</div>
                                </li>
                                <li class="filter-list default ">
                                    <div class="filter-item" onclick="select_review_score('8');">8점이상</div>
                                </li>
                                <li class="filter-list default ">
                                    <div class="filter-item" onclick="select_review_score('9');">9점이상</div>
                                </li>

                            </ul>
                        </li>



                    </ul>
                </div>
                <div class="filter-footer">
                    <div class="btn_apply">
                        <button type="button">확인</button>
                    </div>
                </div>
            </div>
        </section>


        <section class="stu_prd_list stu_clearfix">
            <div class="stu_inner_wrap">


	<div id="fav_list"></div>


                <div class="filter_header">
                    <div class="titArea">
                        <h3 class="stu_title"></h3>
                        <span class="prd_count"></span>

                    </div>
                </div>

                <ul class="prd_list stu_clearfix paginated" id="tourlist">
		<li><div style="text-align:center;paddin-top:70px;padding-bottom:70px;color:#c0c0c0;font-size:10pt;">loading...</div></li>
                </ul>
            </div>
        </section>




    </main>
    <!--//메인영역_End-->



        <section class="stu_event_banner">
            <div class="stu_inner_wrap">
                <div class="event_banner2" style="background:#f3f3f3;height:120px;overflow:hidden;position:relative;">
                   
                            <a href="http://www.stubbyplanner.com/consulting/index.asp" target="_blank" style="width:100%; height:100%;">
                                <div class="txtWrap">
                                    <p>유럽여행이 처음이라면</p>
                                    <b >전문가의 도움을 받아보세요.</b>
                                </div>
                                <div class="imgWrap" style="background-image:url(/img_v15/back_private.png);">
                                    <b><span>전문가 유럽계획 의뢰</span>￦ 55,200</b>
                                </div>
                            </a>
		<div style="clear:both"></div>
                </div>
            </div>
        </section>



   <footer>
        <div class="stu_utils">
            <div class="stu_inner_wrap">
                <ul class="stu_links stu_clearfix">
                    <li><a href="https://docs.google.com/forms/d/e/1FAIpQLSdEGNceBzh0dJAaY5oF74W6z9Er9_M7ZMcv2xqvOWMcArKbsA/viewform" target="_blank">광고/제휴문의</a></li>
                    <li><a href="http://www.stubbyplanner.com/qa/" target="_blank">서비스문의</a></li>
                    <li><a href="http://www.stubbyplanner.com/personalinfo.asp" target="_blank">개인정보 취급방침</a></li><br/>
                    <li><a href="http://www.stubbyplanner.com/common/usercontract.html" target="_blank">이용약관</a></li>
                    <li><a href="http://www.stubbyplanner.com/guide/tour_user_contract.html" target="_blank">여행자약관</a></li>
                    <li><a href="http://www.stubbyplanner.com/common/guidecontract.html" target="_blank">가이드약관</a></li>

                </ul>
                <ul class="stu_sns">
                    <li class="stu_facebook">
                        <a href="http://www.facebook.com/stubbyplanner/" target="_blank" title="페이스북">페이스북</a>
                    </li>
                    <li class="stu_instagram">
                        <a href="https://www.instagram.com/stubbyplanner/" target="_blank" title="인스타그램">인스타그램</a>
                    </li>
                    <li class="stu_kakaotalk">
                        <a href="https://pf.kakao.com/_QwGUM/" target="_blank" title="카카오톡">카카오톡</a>
                    </li>
                    <li class="stu_email">
                        <a href="mailto://stubbyteam@gmail.com" target="_blank" title="이메일">이메일</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="stu_coInfo">
            <div class="stu_inner_wrap">
                <div class="stu_footer_logo"></div>
                <div class="stu_copyright">
                    <div class="info_btn">사업자정보<i></i></div>
                    <div class="business_info">
                        <ul class="txtWrap">
                            <li>(주)스투비익스피어리언스</li>
                            <li>대표 : 백주흠</li>
                            <li>사업자등록번호 : 635-81-01124</li>
                        </ul>
                        <ul class="txtWrap">
                            <li>고객센터 : 02-886-0982</li>
                            <li>이메일 : stubbyteam@gmail.com</li>
                            <li>운영시간(한국) : 11시~19시(주말/공휴일 휴무)</li><br/>
                            <li>주소 : 서울특별시 관악구 남부순환로 1837 샤론빌딩 402</li>
                            <li>통신판매업 신고 : 2018-서울관악-1368호</li>
                        </ul>
                    </div>
                    자사는 서울특별시관광협회 공제영업보증보험에 가입되어 있습니다. 스투비익스피어리언스는 통신판매중개자이며 통신판매의 당사자가 아닙니다.<br/>따라서 스투비익스피어리언스는 상품·거래정보 및 거래에 대하여 책임을 지지 않습니다.

                </div>
            </div>
        </div>
    </footer>



</div>
<!--//Contents_End-->

<script>
var checkin="2019-07-03";
var checkout="2019-07-04";
var n_room=1;
var n_adult=2;
var n_child=0;

function chgMenu(menu)
{
	type=menu;
	updateHTs();

}

	$(document).ready(function() {
		var prdCategory = new Swiper ('.swiper-category', { direction:'horizontal', slidesPerView:'auto', freeMode:true });

		
		
		
		
		// 도시 이동 메뉴(토글)
        $('#current-city').click(function(event) {
            event.stopPropagation();
            $(this).toggleClass('on');
            $('#popover-wrap-city').toggleClass('on');
        });
  
            
            $('#current-in').click(function(event) {
                event.stopPropagation();
                $(this).toggleClass('on');
                $('#popover-wrap-in').toggleClass('on');
            });
            
            $('#current-out').click(function(event) {
                event.stopPropagation();
                $(this).toggleClass('on');
                $('#popover-wrap-out').toggleClass('on');
            });

            $('#current-menu').click(function(event) {
                event.stopPropagation();
                $(this).toggleClass('on');
                $('#popover-wrap-menu').toggleClass('on');
            });

            $(document).click(function() {
                $('.current-city').removeClass('on');
                $('.popover-wrap').removeClass('on');
            });

            // 상품 카테고리 Toggle
            $('.stu_prd_category li').on('click', function() {
                $('.stu_prd_category li').removeClass('on');
                $(this).addClass('on');
            });
            
            // 달력 선택 도구
            $('input[name="datefilter"]').daterangepicker({
        		autoUpdateInput: false,
                startDate :'2019/07/03',
    			endDate :'2019/07/04',
                opens: "center",
                locale: {
                format: 'Y/M/D',
                separator: ' ~ ',
                applyLabel: '선택 완료',
                cancelLabel: '초기화',
                daysOfWeek: ['일','월','화','수','목','금','토'],
                monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']

                },
            });
            
            $('input[name="datefilter"]').on('apply.daterangepicker', function(ev, picker) {
            	$(this).val(picker.startDate.format('M월 D일') + ' ~ ' + picker.endDate.format('M월 D일'));
            	
            	checkin=picker.startDate.format('Y-MM-DD');
            	checkout=picker.endDate.format('Y-MM-DD');
            	
            	updateHTs();
            	
            }); // $('input[name="datefilter"]')
            
            $('input[name="datefilter"]').on('cancel.daterangepicker', function(ev, picker) {
                $(this).val('');
            });
            
         	// 달력 팝업 On
            $('.stu_calendar input').click(function() {
                $('body').toggleClass('modal-opened');
                $('.daterangepicker').toggleClass('action');
                $('.current-city, .stu_trip-type .selectBox').removeClass('on');
                $('.stu_person_wrap .selectBox').removeClass('action');
            });

            // 달력 팝업 Off
            $('.daterangepicker .closeBtn, .daterangepicker .drp-buttons .btn').click(function() {
                $('body').removeClass('modal-opened');
                $('.daterangepicker').removeClass('action');
            });
            
         	// 여행테마(누구와)
            $('.stu_trip-type .selectBtn').click(function() {
                $(this).next().toggleClass('on');
                $('.daterangepicker, .stu_person_wrap .selectBox').removeClass('action');
            });
         	
         	$('.stu_trip-type .selectBox li').click(function () {
         		var getText = $(this).children('span').text();
         		$('.selectBox li').removeClass('current');
         		$(this).addClass('current').closest('.selectBox').removeClass('on').prev().children('p').text(getText).css('color', '#4a4a4a');
         		tripwith=$(this).attr("id").replace("T","");
         		
         		updateHTs();
         		
         	}); //$('.stu_trip-type .selectBox li')
         	
         	$('.stu_trip-type .selectBox .close').click(function() {
                $(this).parent().removeClass('on');
            });

         	 // 객실 및 인원 On
            $('.stu_person_wrap .selectBtn').click(function() {
                $('body').toggleClass('modal-opened');
                $(this).next().toggleClass('action');
                $('.daterangepicker').removeClass('action');
                $('.stu_trip-type .selectBox').removeClass('on');
            });
            $('.stu_person_wrap .ico_close, .stu_person_wrap .btn_apply').click(function() {
                $('body').removeClass('modal-opened');
                $(this).closest('.selectBox').removeClass('action');
            });

         	// 인원선택
            $('.count_range a').click(function(e) {
                e.preventDefault();
                var type = $(this).children('input').attr('count_range'),
                    $count = $(this).parent().find('input.count'),
                    count_val = $count.val();
                if(type=='m') {
                    if(count_val < 1) {
                        return;
                    }
                    $count.val(parseInt(count_val)-1);
                } else if(type=='p') {
                    $count.val(parseInt(count_val)+1);
                }
            });
         	
            $('.type-room .increase').click(function() {
        		n_room++;
        		updateAACnt();
        	});
            

        	$('.type-room .decrease').click(function() {
        		if(n_room>1)
        			n_room--;
        		updateAACnt();
        	});
        	

        	$('.type-adult .increase').click(function() {
        		n_adult++;
        		updateAACnt();

        	});
        	
        	
        	$('.type-adult .decrease').click(function() {
        		if(n_adult>1)
        			n_adult--;
        		updateAACnt();

        	});

        	// 어린이 추가
        	$(' .type-children .increase').click(function() {
        		n_child++;
        		updateAACnt();

        		var lastField = $('.stu_person_wrap .panel li:last'),
                intId = (lastField && lastField.length && lastField.data("idx") + 1) || 1,
                fieldWrapper = $("<li class=\"opt_wrap add_children\" id=\"children" + intId + "\"/>");
            	fieldWrapper.data("idx", intId);
            	

                var fItem = $("<div class=\"opt_title\"><b>어린이"+intId+" 나이</b></div><div class=\"opt_form\"><select id=\"ageofchild"+intId+"\" title=\"연령대\"><option value=\"0\">만 0세</option><option value=\"1\">만 1세</option><option value=\"2\">만 2세</option><option value=\"3\">만 3세</option><option value=\"4\">만 4세</option><option value=\"5\">만 5세</option><option value=\"6\">만 6세</option><option value=\"7\">만 7세</option><option value=\"8\">만 8세</option><option value=\"9\">만 9세</option><option value=\"10\">만 10세</option><option value=\"11\">만 11세</option><option value=\"12\">만 12세</option><option value=\"13\">만 13세</option><option value=\"14\">만 14세</option><option value=\"15\">만 15세</option><option value=\"16\">만 16세</option><option value=\"17\">만 17세</option></select></div>");
                fieldWrapper.append(fItem);

            		$('.stu_person_wrap .panel').append(fieldWrapper);	
        	}); //어린이추가 함수
        	
            // 어린이 제거
         	$('.type-children .decrease').click(function() {
         		if(n_child>0) n_child--;
         		updateAACnt();
         		$('.stu_person_wrap .panel').children('.add_children:last').remove();

         	});// 어린이제거
         	
         	  // 이미지 스와이핑
            var mySwiper = new Swiper ('.swiper1', {
                direction:'horizontal',
                slidesPerView:'auto',
                freeMode:true,
                scrollbar: {
                    el: '.swiper-scrollbar',
                    hide:true,
                },
            });

            // 상품(필터) 팝업
            $('.btn_prd_filter button.filter, .prd_filter .stu_title, .prd_filter .btn_apply').click(function() {
                $('body').toggleClass('modal-opened');
                $('.prd_filter').toggleClass('action');
            });

         	// 지도로 보기
            $('.prd_map .map_btn').click(function() {
            	$('body').addClass('modal-opened');
                $('.prd_map .map_container, .prd_map .map_background').addClass('action');

                initialize();resized();
                loadIniSchd();
                
                $('.prd_map .ico_close').click(function() {
                	$('body').removeClass('modal-opened');
                	$('.prd_map .map_container, .prd_map .map_background').removeClass('action');
                });
                
            });
         	
         // 필터 아이템 선택
         $('.spot_filter li.all').addClass('selected');
         $('.spot_filter li').click(function(e) {
        	 if($(this).parent('ul').hasClass('multi')) {
        		 $(this).toggleClass('selected');
        	 } else {
        		 $(this).toggleClass('selected').parent('ul').children('li').not($(this)).removeClass('selected');
                 if(!$(this).parent('ul').children('li').hasClass('selected')) {
                     $(this).parent('ul').find('.all').addClass('selected');
                 }; //if
        	 };
        	 
        	 var sltNum = $(this).closest('.panel').find('.selected:not(.all)').length,
        	 	 cntValue = $('.spot_filter .swiper-wrapper'),
                 cntArea = $('.spot_filter .item_count'),
                 resetBtn = $('.spot_filter .ico_reset p');
        	 if(sltNum > 0) {
        		 cntArea.text(sltNum).css('margin-left','3px');
                 cntValue.attr('data-count',sltNum);
                 resetBtn.css({'font-weight':'bold','color':'#3ad195'});
        	 } else {
        		 cntArea.text('').css('margin-left','0');
                 cntValue.attr('data-count','');
                 resetBtn.css({'font-weight':'normal','color':'#aeaeae'});
        	 }
        	 updateHTs();

         });
         $('.spot_filter .ico_reset').click(function() {
             $(this).children('p').css({'font-weight':'normal','color':'#aeaeae'});
             $('.spot_filter .opt_wrap').find('li').removeClass('selected');
             $('.spot_filter .opt_wrap').find('li.all').addClass('selected');
             $('.spot_filter .item_count').text('').css('margin-left','0');
             $('.spot_filter .swiper-wrapper').attr('data-count','');
         });

      	// 필터 On
        $('.spot_filter a.btn_more').click(function() {
            $('body').addClass('modal-opened');
            $('.spot_filter').addClass('action').find('.d-n').toggleClass('d-b d-n');
        });

        $('.spot_filter .ico_close, .spot_filter .btn_apply').click(function() {
            $('body').removeClass('modal-opened');
            $('.spot_filter').removeClass('action').find('.d-b').toggleClass('d-n d-b');
        });
        
     	// 투어시간(필터) 선택
        $('.time_filter .tab').click(function() {
            $('.time_filter .tab').not($(this)).removeClass('on');
            $(this).addClass('on');
        });
     	
     	// 달력 스와이핑
        $('.swp_month').each(function() {
        	var today = $(this).find('.today'),
        		past = today.prevAll('.swp_date'),
        		pos_today = today.offset().left - today.width() * 3;
        	today.children('p').text('오늘');
        	past.addClass('past');
        	$('.swp_calendar_wrap').animate({ scrollLeft : pos_today}, 0);
        	$('.swp_date').click(function() {
        		$('.swp_date').removeClass('on');
        		$(this).addClass('on');
        	});
        });

    	updateHTs();
        });
		
    	
   
        
	//	});//$(document).ready
    	
    	function updateAA_complete(){	
    		updateAACnt();
    		updateHTs();
    	}
    	
    	function updateAACnt(){
    		$("#AA_txt").html("객실x"+n_room+":성인"+n_adult+",아이"+n_child+" ");
    		console.log($(+n_room+n_adult+n_child));
    	}
    	
    	function load(id, cnt, btn) {
            console.log(cnt);
    		var contList = id + " .stu_js-load:not(.active)";
            var contLength = $(contList).length;
            var contTotal_cnt;
            if (cnt < contLength) {
                contTotal_cnt = cnt;
            } else {
                contTotal_cnt = contLength;
                $('.stu_js-btn').hide()
            }
            $(contList + ":lt(" + contTotal_cnt + ")").addClass("active");
            
    	}

    	var bucketlist="";
    	
    	var subcatelist="";

    	function toggleSubCate(id){
    		if($("#G"+id).children('.checkmark').hasClass('d-n')){
    			if(subcatelist=="")
    				subcatelist=id;
    			else
    				subcatelist+=","+id;
    			$("#G"+id).children('.checkmark').removeClass('d-n');
    			$("#G"+id).siblings('.txt-wrap').children('p').addClass('on');
    		} else {
    			subcatelist=","+subcatelist+",";
    			subcatelist=subcatelist.replace(","+id+",",",");
    			subcatelist=subcatelist.replace(",,",",");
    			if(subcatelist.substring(0,1)==",")
    				subcatelist=subcatelist.substring(1);
    			if(subcatelist.substring(subcatelist.length-1,subcatelist.length)==",")
    				subcatelist=subcatelist.substring(0,subcatelist.length-1);

    			if(subcatelist==",")
    				subcatelist="";

    		    $("#G"+id).children('.checkmark').addClass('d-n');
    		    $("#G"+id).siblings('.txt-wrap').children('p').removeClass('on');
    		}
    		
    		updateBuckets();

    	}// function toggleSubCate(id)
    	
    	function toggleBucket(id){
    		if($("#B"+id).hasClass('selected')==false)
    		{
    			if(bucketlist=="")
    				bucketlist=id;
    			else
    				bucketlist+=","+id;



    		}
    		else
    		{
    			bucketlist=","+bucketlist+",";
    			bucketlist=bucketlist.replace(","+id+",",",");
    			bucketlist=bucketlist.replace(",,",",");
    			if(bucketlist.substring(0,1)==",")
    				bucketlist=bucketlist.substring(1);
    			if(bucketlist.substring(bucketlist.length-1,bucketlist.length)==",")
    				bucketlist=bucketlist.substring(0,bucketlist.length-1);

    			if(bucketlist==",")
    				bucketlist="";

    		}
	
    		console.log(bucketlist);
    		updateHTs();

    	} //toggleBucket(id)
    	
    	function select_thema_code(c){
    		if(c!="204")
    			select_class('');

    		thema_code=c;
    		
    		updateHTs();
    	}
    	
    	function update_orderby(o){
    		orderby=o;
    		
    		updateHTs();
    	}
    	
 /*    	function updateTripwith(cur_page){
    		if(!cur_page)
    			cur_page="1";
    		Xthema_code="t";
    		
    		$.ajax({
    			url: '/api/guidetour/Get_Tripwith.asp?tripwith=&cate='+Xthema_code+'&subcate='+subcatelist+'&region=111031001&bucketlist='+bucketlist+"&orderby="+orderby+"&page="+cur_page,
               	dataType: 'json',
               	success : function(data){
               		if(data!=""){
               			thtml='';
               			$.each(data.list, function(i, item){
               				
               				thtml+='<li class="prd_item">';

               				thtml+='<a href="/crowd/detail.asp?serial='+item.serial+'&bucket_ids='+bucketlist+'&l=" class="prd outline lock-off">';

               				thtml+='<figure class="thumb">';
               				thtml+='<img class="fh lazyload"  data-src="'+item.imgurl+'" onerror="this.src=\''+item.imgurl.replace("_l.",".")+'\'"/>';
               				thtml+='</figure>';

               				thtml+='<div class="prd_info">';

               				thtml+='<div class="name">';
               				thtml+='<span>'+item.title+'</span>';
               				thtml+='</div>';
               				thtml+='<div class="score">';
               				thtml+='<span>'+item.reserver_cnt+'</span>';
               				thtml+='</div>';
               				thtml+='</div>';
               				thtml+='</a>';
               				thtml+='</li>';

               			});// each
          
    	
        $('.prd_count').text(data.totalcnt);

        $('.prd_list.paginated').each(function() {
        	var currentPage = 0;
        	var numPerPage = 12;
        	var $prd_list = $(this);
        	
        	$prd_list.bind('repaginate', function() {
        		 $prd_list.find('li.prd_item').hide()
                 .slice(currentPage * numPerPage,
                     (currentPage + 1) * numPerPage)
                 .show();
        	});
        	
        	var numRows = data.totalcnt;
            var numPages = Math.ceil(numRows / numPerPage);
            
            $('.pager').remove();
            
            var $pager = $('<div class="pager"></div>');

            for (var page = 0; page < numPages; page++) {
            	if(eval(page+1)==data.curpage)
            		$('<a href="javascript:updateBuckets('+eval(page+1)+')" class="page_number active"></a>').text(page + 1).appendTo($pager);
            	else
            		$('<a href="javascript:updateBuckets('+eval(page+1)+')" class="page_number"></a>').text(page + 1).appendTo($pager);
            }
            $pager.insertAfter($prd_list);
            if(parseInt($('a.page_number:last').text()) == 1) {
                $('.pager').hide();
            } else {
                $('.pager').show();
            };     
        });

			
			$("#tourlist").html(thtml);

			}
		}//success
	});
}//updateTripwith(cur_page)
 */
        
     

	

	var thema_code=204;

	var type="호텔";

	var orderby="dist";

	var curSLPList;

	
	function updateSLPs(cur_page){
		if(!cur_page)
			cur_page="1";

		$.ajax({
			url :'/stubbyPlanner/mb/get_list.jsp?&dep='+dep+'&des='+des+'city_id=${attr_list[0].city_id}&bucketlist='+bucketlist+"&roomtype="+thema_code+"&orderby="+orderby+"&page="+cur_page+"type="+type,
			dataType: 'json',
			success : function(data){
				if(data!=""){
					thtml='';
					$.each(data.recom_list, function(i, item){
						if((data.recom_list.length==1)||(data.recom_list.length==2&&i==1)||(data.recom_list.length==3&&i==1))
						{
							thtml+='<li class="prd_item">';

							if(item.is_like)
								thtml+='<div class="like active" id="'+item.serial+'"></div>';
							else
								thtml+='<div class="like" id="'+item.serial+'"></div>';

							thtml+='<a href="minbak_detail.asp?serial='+item.serial+'&bucket_ids='+bucketlist+'" class="prd outline lock-off">';

							thtml+='<figure class="thumb">';
							//thtml+='<img class="fh lazyload" data-src="'+item.imgurl+'" onerror="this.src=\''+item.imgurl.replace("_l.",".")+'\'"/>';
							thtml+='</figure>';
							thtml+='<div class="prd_info">';
							
							if(item.tourtype != 9){
								var tcomname=item.com_name;
								if(tcomname.length>20)
									tcomname=tcomname.substring(0,20)+"..";
								thtml+='<div class="cpn">';

								if(item.roomtype!='')
									thtml+='<span class="duration">'+item.roomtype+'</span>';

								thtml+='</div>';
							}
							
							thtml+='<div class="name">';
							thtml+='<span>'+tcomname+' '+item.title+'</span>';
							thtml+='</div>';
							thtml+='<div class="tag">';
							thtml+='<span>'+item.tag+'</span>';
							thtml+='</div>';
							thtml+='<div class="score">';
							thtml+='<span>'+item.dist+'km</span>';
							thtml+='</div>';
							thtml+='<div class="price">';
							thtml+='<span>'+item.price_currency+'</span> ';

							thtml+=item.price;
							thtml+='<span>/ 1박</span>';
							thtml+='</div>';

							thtml+='</div>';
							thtml+='</a>';
							thtml+='</li>';

						}
					}); // #.each
					
					$.each(data.list, function( i, item ){
						thtml+='<li class="prd_item">';
						
						if(item.is_like)
						 	thtml+='<div class="like active" id="'+item.serial+'"></div>';
						else
						 	thtml+='<div class="like" id="'+item.serial+'"></div>';

						thtml+='<a href="minbak_detail.asp?serial='+item.serial+'&bucket_ids='+bucketlist+'" class="prd outline lock-off">';

						thtml+='<figure class="thumb">';
						thtml+='<img class="fh lazyload" data-src="'+item.imgurl+'" onerror="this.src=\''+item.imgurl.replace("_l.",".")+'\'"/>';
						thtml+='</figure>';

						thtml+='<div class="prd_info">';

						if(item.tourtype!=9){
							var tcomname=item.com_name;
							if(tcomname.length>20)
								tcomname=tcomname.substring(0,20)+"..";
							thtml+='<div class="cpn">';

							if(item.roomtype!='')
								thtml+='<span class="duration">'+item.roomtype+'</span>';

							thtml+='</div>';
						}
						
						thtml+='<div class="name">';
						thtml+='<span>'+tcomname+' '+item.title+'</span>';
						thtml+='</div>';
						thtml+='<div class="tag">';
						thtml+='<span>'+item.tag+'</span>';
						thtml+='</div>';
						thtml+='<div class="score">';
						thtml+='<span>'+item.dist+'km</span>';
						thtml+='</div>';
						thtml+='<div class="price">';
						thtml+='<span>'+item.price_currency+'</span> ';
							
						thtml+=item.price;
						thtml+='<span>/ 1박</span>';
						thtml+='</div>';
						
						thtml+='</div>';
						thtml+='</a>';
						thtml+='</li>';
				
					});//$.each
					
					$("#tourlist").html(html);
					
					curSLPList=data.list;
					
					
					// 리스트 찜하기(토글)
			     	$('.prd_item .like').on('click', function() {
						id=$(this).attr("id");
						if('${authUser.member_id}'==''){
			     			alert("로그인 후 이용해주세요.");
			     		} else {
			     		var user_id = '${authUser.member_id}';
			     	
						$(this).toggleClass('active');
						
						$.ajax({
							//url: 'url: '/api/guidetour/toggle_slp_like.asp?slp_id='+tid+'&region=111031001',
							url:'/stubbyPlanner/mb/mb_like.jsp?city_id=${attr_list[0].city_id}&slp_id='+tid+'&user_id='+user_id,
							dataType: 'json',
							success : function(data){
								if(data!=""){
									thtml='';
								}
							}

						});//ajax
						
			     		}
			        last_hotel_ids=cur_hotel_ids;
			        });//$(prd_item . like)
					
			     	$('.prd_count').text(data.totalcnt);
			     	
			     	$('.prd_list.paginated').each(function() {
			     		var currentPage = 0;
			            var numPerPage = 12;
			            var $prd_list = $(this);
			            $prd_list.bind('repaginate', function() {
			            	$prd_list.find('li.prd_item').hide()
			            	.slice(currentPage * numPerPage,
			            		(currentPage + 1) * numPerPage).show();
			            }); //$prd_list.bind
			            
			            var numRows = data.totalcnt;
			            var numPages = Math.ceil(numRows / numPerPage);

			            $('.pager').remove();
			            
			            var $pager = $('<div class="pager"></div>');
			            for (var page = 0; page < numPages; page++) {
			            	if(eval(page+1)==data.curpage)
			            		$('<a href="javascript:updateSLPs('+eval(page+1)+')" class="page_number active"></a>').text(page + 1).appendTo($pager);
			            	else
			            		$('<a href="javascript:updateSLPs('+eval(page+1)+')" class="page_number"></a>').text(page + 1).appendTo($pager);
			            }
			            $pager.insertAfter($prd_list);
			            if(parseInt($('a.page_number:last').text()) == 1) {
			                $('.pager').hide();
			            } else {
			                $('.pager').show();
			            };
			            
			     	}); //$('.prd_list.paginated')
			     	

				}
			}// success
		});
	}
	//
	function setRecommend(tid,tprice,tprice_currency,tslpname,tlat,tlng,tlinkurl,timgurl){
		tmemo=$("#tmemo").val();
		$.ajax({
			url: '/api/guidetour/toggle_slp_like2.asp?slp_id='+tid+'&region=111031001',
			type: "POST",
			dataTyoe: 'json',
			data: {
				memo:tmemo,
				trip_id:'',
				r_id:'',
				price:tprice,
				slptype:'ht',
				lat:tlat,
				lng:tlng,
				linkurl:tlinkurl,
				imgurl:timgurl
			},
			
			
			
		});
		
		closeMyModal();
		
	}
	
	var HT_review_score="";
	var HT_class="";
	var last_hotel_ids="";
	var dep="";
	var des="";
	function select_review_score(c){
		HT_review_score=c;
		updateHTs();
	}
	
	function select_class(c){
		HT_class=c;
	}

	var roominfo='';

	
	//목록 업데이트
	function updateHTs(cur_page){
		var id = '${authUser.member_id}';
		nights=dateDiff(checkin, checkout);
		var sum = nights * 12123;

		if(!cur_page)
			cur_page="1";

	
	if(thema_code==0){
		thema_codeX="";
	} else if(thema_code==204) {
		thema_codeX="hotel,aparthotel,resort,condo";
	} else if(thema_code=='201,219') {
		thema_codeX="apartment,aparthotel,holiday-home,boat,condo,villa,lodge,cottage";
	} else if(thema_code==203) {
		thema_codeX="hostel";
	}
	
	thex=n_adult-n_room;

	if(n_room==1) {
		tttxt="";
		for(i=1;i<=n_adult;i++){
			if(tttxt=="")
				tttxt="A";
			else
				tttxt=tttxt+",A";
		}
		
		for(i=1;i<=n_child;i++){
			ageofchild=$("#ageofchild"+i).val();
			if(tttxt=="")
				tttxt=ageofchild;
			else
				tttxt=tttxt+","+ageofchild;
		}
		
		roominfo="room1="+tttxt;
	} else {
		for(i=1;i<=n_room;i++) {
			if(thex>0)
			{
				thex++;
				roominfo='room'+i+'=A';
			}
		}
	}
	tHT_class=HT_class;
	
	$.ajax({
		//url : '/stubbyPlanner/mb/get_searched_hoterls.jsp?tripwith='+tripwith+'&'+roominfo+'&check_in='+checkin+'&check_out='+checkout+'&dep='+dep+'&des='+des+'&cityserial=${param.city_id}&max_price='+max_price+'&min_price='+min_price+'&bucketlist='+bucketlist+'&property_type='+thema_codeX+'&stars='+tHT_class+'&min_review_score='+HT_review_score+'&orderby='+orderby+'&page='+cur_page+'&district_ids='+districts,
		//url : '/stubbyPlanner/mb/get.jsp?city_id=${param.city_id}&tour_id='+tid,
		url: '/stubbyPlanner/mb/get_list.jsp?city_id=${attr_list[0].city_id}&bucketlist='+bucketlist+'&roomtype='+thema_code+'&orderby='+orderby+'&max_price='+max_price+'&min_price='+min_price+'&page='+cur_page+'&review_score='+HT_review_score+'&grade='+HT_class+'&type='+type+'&id='+id,
		dataType: 'json',
		//console.log(url),
		success: function(data) {
			if(data!=""){
				thtml="";
				$.each(data.recom_list, function(i, item){
					if((data.recom_list.length==1)||(data.recom_list.length==2&&i==0)||(data.recom_list.length==3&&i==2)){
						
						stitle=item.title;
						if(stitle.length>19)
							stitle=stitle.substring(0,19)+"..";
						
						xlink=item.linkurl+'&checkin='+checkin+'&checkout='+checkout+'&group_adults='+n_adult+'&group_children='+n_child+'&no_rooms='+n_room+'&lang=ko';

						thtml+='<li class="prd_item">';

						if(item.is_like)
							thtml+='<div class="like active" id="'+item.hotel_id+'" style="cursor:pointer"></div>';
						else
							thtml+='<div class="like" id="'+item.hotel_id+'" style="cursor:pointer" ></div>';
							
						
						thtml+='<a id="hotel_link_'+item.hotel_id+'" href="'+item.linkurl+'&checkin='+checkin+'&checkout='+checkout+'&group_adults='+n_adult+'&group_children='+n_child+'&no_rooms='+n_room+'&lang=ko" target="_blank" class="prd outline lock-off">';
							

						thtml+='<figure class="thumb">';
						thtml+='<img class="fh lazyload" data-src="'+item.imgurl+'" onerror="this.src=\''+item.imgurl.replace("_l.",".")+'\'"/>';
						thtml+='</figure>';

						thtml+='<div class="prd_info">';
						thtml+='<div class="name">';
						thtml+='<span>  '+stitle+'</span>';
						thtml+='</div>';
						
						thtml+='<div class="tag" id="hotel_liveinfo_'+item.hotel_id+'" style="display:block">';
						thtml+='<span style="color:#c0c0c0"> <font style="font-weight:700;color:#3ad195"> '+tripwith_txt[tripwith]+' 선호 숙소</font></span>';
						thtml+='</div>';
						thtml+='<div class="score">';
						thtml+='<span style="font-weight:700">'+item.review_score+'</span> <font style="color:#c0c0c0;font-size:9pt">'+item.review+'개 리뷰</font>';
						thtml+='</div>';
						
						thtml+='<div class="price">';
						thtml+='<span>예상이동거리</span>'+item.dist+'km';
						thtml+='</div>';
						thtml+='</div>';
						thtml+='</a>';
						thtml+='</li>';

					}
				});
				
				var cur_hotel_ids='';

				$.each(data.list, function(i, item) {
					if(cur_hotel_ids=='')
						cur_hotel_ids=item.hotel_id;
					else
						cur_hotel_ids+=','+item.hotel_id;

					stitle=item.title;
					if(stitle.length>19)
						stitle=stitle.substring(0,19)+"..";

					xlink=item.linkurl+'&checkin='+checkin+'&checkout='+checkout+'&group_adults='+n_adult+'&group_children='+n_child+'&no_rooms='+n_room+'&lang=ko';

					thtml+='<li class="prd_item">';
					
					if(item.is_like)
					 	thtml+='<div class="like active" id="'+item.hotel_id+'" style="cursor:pointer"></div>';

					 	else
					 		thtml+='<div class="like" id="'+item.hotel_id+'" style="cursor:pointer" ></div>';

					thtml+='<a id="hotel_link_'+item.hotel_id+'" href="'+item.linkurl+'&checkin='+checkin+'&checkout='+checkout+'&group_adults='+n_adult+'&group_children='+n_child+'&no_rooms='+n_room+'&lang=ko" target="_blank" class="prd outline lock-off">';
					
					thtml+='<figure class="thumb">';
					thtml+='<img class="fh lazyload" data-src="'+item.imgurl+'" onerror="this.src=\''+item.imgurl.replace("_l.",".")+'\'"/>';
					thtml+='</figure>';

					thtml+='<div class="prd_info">';
					thtml+='<div class="name">';
					thtml+='<span>'+stitle+'</span>';
					thtml+='</div>';
					thtml+='<div class="tag" id="hotel_liveinfo_'+item.hotel_id+'" style="display:block">';
					thtml+='<span style="color:#c0c0c0"> <font style="font-weight:700;color:#3ad195">  '+formatMoney(item.price*(nights))+'원</font> / '+nights+'박</span>';
					thtml+='</div>';
					thtml+='<div class="score">';
					thtml+='<span style="font-weight:700">'+item.review_score+'</span> <font style="color:#c0c0c0;font-size:9pt">'+item.review+'개 리뷰</font>';
					thtml+='</div>';
					thtml+='<div class="price">';
					thtml+='<span>예상이동거리</span>'+item.dist+'km';
					thtml+='</div>';
					thtml+='</div>';
					thtml+='</a>';
					thtml+='</li>';

				}); //$each
				
				$("#tourlist").html(thtml);
				curSLPList=data.list;
				
				$('.stu_title').text(data.type);	
				
				$('.prd_count').text(formatMoney(data.totalcnt));
				//$('.prd_count').text(data.totalcnt);

				
				$('.prd_list.paginated').each(function(){
					var currentPage = 0;
		            var numPerPage = 12;
		            var $prd_list = $(this);

		            var numRows = data.totalcnt;
		            var numPages = Math.ceil(numRows / numPerPage);

		            $('.pager').remove();
		            	
		            var $pager = $('<div class="pager"></div>');
		            	
		            cPage=data.curpage;

		            sPage=5*parseInt((cPage-1)/5)+1;
					ePage=sPage+5;
					if(ePage>(numPages+1))
						ePage=numPages+1;

					if(sPage>5)
						$('<a href="javascript:updateHTs('+eval(sPage-5)+')" class="page_number"></a>').text("<").appendTo($pager);
					
					for (var page = sPage; page < ePage; page++) {
						if(eval(page)==data.curpage)
							$('<a href="javascript:updateHTs('+eval(page)+')" class="page_number active"></a>').text(page).appendTo($pager);
						else
							$('<a href="javascript:updateHTs('+eval(page)+')" class="page_number"></a>').text(page).appendTo($pager);
					}
					
					if(numPages>ePage)
						$('<a href="javascript:updateHTs('+eval(ePage)+')" class="page_number"></a>').text(">").appendTo($pager);

					$pager.insertAfter($prd_list);

					if(parseInt($('a.page_number:last').text()) == 1) {
					    $('.pager').hide();
					} else {
					    $('.pager').show();
					};
				});

					
			        // 리스트 찜하기(토글)
			        $('.prd_item .like').on('click', function() {
						tid=$(this).attr("id");
						if('${authUser.member_id}'==''){
			     			alert("로그인 후 이용해주세요.");
			     		} else {
			     		var user_id = '${authUser.member_id}';
			     	
						$(this).toggleClass('active');
						
						$.ajax({
							//url: 'url: '/api/guidetour/toggle_slp_like.asp?slp_id='+tid+'&region=111031001',
							url:'/stubbyPlanner/mb/mb_like.jsp?city_id=${attr_list[0].city_id}&slp_id='+tid+'&user_id='+user_id,
							dataType: 'json',
							success : function(data){
								if(data!=""){
									thtml='';
								}
							}

						});//ajax
						
			     		}
			        });//$(prd_item . like)
					
					
				
			}
		}//success
	});//ajax
}
	
/* function updateHTs2(cur_page){
		if(!cur_page)
			cur_page="i";
		
		$.ajax({
			//url: '/api/guidetour/get_hotellist.asp?dep='+dep+'&des='+des+'&region=111031001&bucketlist='+bucketlist+'&roomtype='+thema_code+'&class='+HT_class+'&review_score='+HT_review_score+'&orderby='+orderby+'&room1='+room1+'&page='+cur_page,
            url: '/stubbyPlanner/mb/get_list.jsp?&dep='+dep+'&des='+des+'city_id=${param.city_id}&bucketlist='+bucketlist+'&roomtype='+thema_code+'&class='+HT_class+'&review_score='+HT_review_score+'&orderby='+orderby+'&room1='+room1+'&page='+cur_page,
            dataType: 'json',
            success: function(data){
            	if(data!=""){
            		thtml='';
            		
            		var cur_hotel_ids='';
					$.each(data.list, function(i, item){
						if(cur_hotel_ids=='')
							cur_hotel_ids=item.hotel_id;
						else
							cur_hotel_ids+=','+item.hotel_id;


						stitle=item.title;
						if(stitle.length>19)
							stitle=stitle.substring(0,19)+"..";

						thtml+='<li class="prd_item">';
						
						thtml+='<div class="like"></div>';
					
						thtml+='<a id="hotel_link_'+item.hotel_id+'" href="'+item.deeplink+'" target="_blank" class="prd outline lock-off">';
					
						thtml+='<figure class="thumb">';
						thtml+='<img class="fh lazyload" data-src="'+item.imgurl+'" onerror="this.src=\''+item.imgurl.replace("_l.",".")+'\'"/>';
						thtml+='</figure>';

						thtml+='<div class="prd_info">';
						thtml+='<div class="name">';
						thtml+='<span>'+stitle+'</span>';
						thtml+='</div>';
						thtml+='<div class="tag" id="hotel_liveinfo_'+item.hotel_id+'" style="display:block">';
						thtml+='<span style="color:#c0c0c0">선택기간에 빈방없음</span>';
						thtml+='</div>';
						thtml+='<div class="score">';
						thtml+='<span style="font-weight:700">'+item.review_score+'</span> <font style="color:#c0c0c0;font-size:9pt">'+item.number_of_reviews+'개 리뷰</font>';
						thtml+='</div>';
						thtml+='<div class="price">';
						thtml+='<span>예상이동거리</span>'+item.dist+'km';
						thtml+='</div>';
						thtml+='</div>';
						thtml+='</a>';
						thtml+='</li>';

						
					});
					
					$("#tourlist").html(thtml);
					curSLPList=data.list;

					$('.prd_count').text(formatMoney(data.totalcnt));

					$('.prd_list.paginated').each(function(){
						var currentPage = 0;
			            var numPerPage = 12;
			            var $prd_list = $(this);

			            var numRows = data.totalcnt;
			            var numPages = Math.ceil(numRows / numPerPage);


			            $('.pager').remove();

			            var $pager = $('<div class="pager"></div>');

						cPage=data.curpage;

						sPage=5*parseInt((cPage-1)/5)+1;
						ePage=sPage+5;
						
						if(sPage>5)
      					   $('<a href="javascript:updateHTs('+eval(sPage-5)+')" class="page_number"></a>').text("<").appendTo($pager);

						for (var page = sPage; page < ePage; page++) {
							if(eval(page)==data.curpage)
				                $('<a href="javascript:updateHTs('+eval(page)+')" class="page_number active"></a>').text(page).appendTo($pager);
							else
								$('<a href="javascript:updateHTs('+eval(page)+')" class="page_number"></a>').text(page).appendTo($pager);
						}
						
						if(numPages>ePage)
      					   $('<a href="javascript:updateHTs('+eval(ePage)+')" class="page_number"></a>').text(">").appendTo($pager);

						$pager.insertAfter($prd_list);
    					if(parseInt($('a.page_number:last').text()) == 1) {
    					    $('.pager').hide();
    					} else {
    					    $('.pager').show();
    					};

    					gethotelliveinfo(cur_hotel_ids);
    					last_hotel_ids=cur_hotel_ids;


					});
            	}
            }// success
		});//ajax
	} */

function formatMoney(n, c, d, t) {
	  var c = isNaN(c = Math.abs(c)) ? 0 : c,
	    d = d == undefined ? "." : d,
	    t = t == undefined ? "," : t,
	    s = n < 0 ? "-" : "",
	    i = String(parseInt(n = Math.abs(Number(n) || 0).toFixed(c))),
	    j = (j = i.length) > 3 ? j % 3 : 0;

	  return s + (j ? i.substr(0, j) + t : "") + i.substr(j).replace(/(\d{3})(?=\d)/g, "$1" + t) + (c ? d + Math.abs(n - i).toFixed(c).slice(2) : "");
};


	
//일정계산
function dateDiff(_date1, _date2) {
    var diffDate_1 = _date1 instanceof Date ? _date1 : new Date(_date1);
    var diffDate_2 = _date2 instanceof Date ? _date2 : new Date(_date2);
 
    var diff = Math.abs(diffDate_2.getTime() - diffDate_1.getTime());
    diff = Math.ceil(diff / (1000 * 3600 * 24));
    return diff;
}


function gethotelliveinfo(cur_hotel_ids)
{
	$.ajax({
		url: '//www.stubbyplanner.com/api/booking/get_available_blocks.asp?check_in='+checkin+'&check_out='+checkout+'&hotel_ids='+cur_hotel_ids,
	    dataType: 'json',
	    success: function(data){
		if(data!="")
		{
			var cur_hotel_ids='';
			$.each(data.result, function( i, item ) {
				thtml='';

				xlink=item.hotel_url;
				xlink=xlink.replace("www.","sp.");

				xhotel_id=item.hotel_id;

				roomname=item.block[0].name;

				if(roomname.length>20)
					roomname=roomname.substring(0,19)+"..";

				thtml+='<div style="padding-top:2px;height:24px;overflow:hidden"><font style="font-size:13pt;font-weight:700;color:#3ad195">'+formatMoney(item.block[0].min_price.other_currency.price.toFixed(0))+'원</font> <font style="color:#c0c0c0;font-size:10pt;font-weight:600">'+nights+'박</font> <div style="float:right;display:inline-block;padding-top:4px;">'+roomname+'</div><div style="clear:both"></div></div>';
							
				$("#hotel_link_"+xhotel_id).attr("href",xlink);
				$("#hotel_liveinfo_"+xhotel_id).html(thtml);
			
				});
			}
		}
	});
} 

//구글맵 마커
function addMarker(t,lat,lng,img,se,sub_t){
	var title = t;
	var posn = new google.maps.LatLng(lat,lng);
	markerBounds.extend(posn);
	var imgurl = 'https://chart.apis.google.com/chart?chst=d_map_pin_icon&chld=accomm%7Cffffff';

	var zidx=80;
	
	var icoimg = {
			url: img,
			scaledSize: new google.maps.Size(36, 36),
			anchor: new google.maps.Point(4, 4)
	};
	
	var marker = new google.maps.Marker({
		icon:icoimg,
		shape:{coords:[18,18,18],type:'circle'},
		position: posn,
		map: map,
		title: t,
		zindex:zidx,
		optimized: false
	});

	google.maps.event.addListener(marker, 'click', function(){
		if(prv_infowindow)
			prv_infowindow.close();

		infowindow = new google.maps.InfoWindow();

		thtml='<div style="padding-top:10px;padding-bottom:5px;padding-left:10px;padding-right:10px;"><a href="'+se+'" target="_blank"><b>'+sub_t+'</b></a></div>';

		infowindow.setContent(thtml);
		infowindow.open(map,marker);

		prv_infowindow=infowindow;

	});
	markers.push(marker);

}
function clearMarkers() {
	for (var i = 0; i < markers.length; i++){
		markers[i].setMap(null);
	}
	markers=[];
	markerBounds= new google.maps.LatLngBounds();
}

var markers=[];
var prv_infowindow;
var markerBounds= new google.maps.LatLngBounds();

var curSLPList;
var curGuidebookList;
function loadIniSchd(){
	clearMarkers();

	if(curSLPList){
		$.each(curSLPList, function( i, item ){
			if(item.lat){
				xtitle=item.title;
				addMarker(xtitle,item.lat,item.lng, item.imgurl.replace("_l.","_m."),item.linkurl,item.title+'<b>'+item.review_score+'('+item.review+')</b>');
			}
		});
		map.fitBounds(markerBounds);

	}
}

var room1="A,A";

function selRoom1(rr){
	$(".rr").css("background","#f5f5f5");
	$(".rr").css("color","#8f8f8f");


	$("#rr_"+rr).css("background","#3ad195");
	$("#rr_"+rr).css("color","#fff");

	room1=rr.replace(/\_/g,',');
	
	updateHTs();
}

var max_price="";
var min_price="";


//가격대 검색 
function selPrice(mm){
	min_maxArr=mm.split("_");
	min_price=min_maxArr[0];
	max_price=min_maxArr[1];

	
	updateHTs();
}

var districts="";
function selDistrict(id){
	x=','+districts+',';
	if(x.indexOf(','+id+',')>-1){
		x=x.replace(','+id+',',',');

		x=x.substring(1);
		districts=x.substring(0,x.length-1);


		$("#dd_"+id).css("background","#f5f5f5");
		$("#dd_"+id).css("color","#8f8f8f");

	} else {
		if(districts=="")
			districts=id;
		else
			districts=districts+','+id;

		$("#dd_"+id).css("background","#3ad195");
		$("#dd_"+id).css("color","#fff");
	}
	
	
	updateHTs();
}
function setTerminal(id,t,depdes){
	if(depdes=="dep")
		dep=id;
	else
		des=id;
		
	$("#"+depdes+"_txt").html(t);
	if($("#"+depdes+"_txt").hasClass("selected")==false)
		$("#"+depdes+"_txt").addClass("selected");
	closeMyModal();
	
	updateHTs();
}


// 공항
function selTerminal(depdes){

	thtml='';





		terminal_serial=$("#desserial").val();
		if(terminal_serial=="11101100470008")
			selector_trs_class="selector_trs_selected";
		else
			selector_trs_class="selector_trs";

		thtml+='<div class="'+selector_trs_class+'" onclick="setTerminal(\'11101100470008\',\'파리-샤를드골 공항\',\''+depdes+'\')"><i class="fa fa-plane"></i> 파리-샤를드골 공항 </div>';
		

		terminal_serial=$("#desserial").val();
		if(terminal_serial=="11101100470009")
			selector_trs_class="selector_trs_selected";
		else
			selector_trs_class="selector_trs";

		thtml+='<div class="'+selector_trs_class+'" onclick="setTerminal(\'11101100470009\',\'파리-오를리 공항\',\''+depdes+'\')"><i class="fa fa-plane"></i> 파리-오를리 공항 </div>';
		

		terminal_serial=$("#desserial").val();
		if(terminal_serial=="11101100470010")
			selector_trs_class="selector_trs_selected";
		else
			selector_trs_class="selector_trs";

		thtml+='<div class="'+selector_trs_class+'" onclick="setTerminal(\'11101100470010\',\'파리-보베 공항\',\''+depdes+'\')"><i class="fa fa-plane"></i> 파리-보베 공항 </div>';
		

		terminal_serial=$("#desserial").val();
		if(terminal_serial=="11101100470002")
			selector_trs_class="selector_trs_selected";
		else
			selector_trs_class="selector_trs";

		thtml+='<div class="'+selector_trs_class+'" onclick="setTerminal(\'11101100470002\',\'리옹역\',\''+depdes+'\')"><i class="fa fa-train"></i> 리옹역 </div>';
		

		terminal_serial=$("#desserial").val();
		if(terminal_serial=="11101100470001")
			selector_trs_class="selector_trs_selected";
		else
			selector_trs_class="selector_trs";

		thtml+='<div class="'+selector_trs_class+'" onclick="setTerminal(\'11101100470001\',\'북역\',\''+depdes+'\')"><i class="fa fa-train"></i> 북역 </div>';
		

		terminal_serial=$("#desserial").val();
		if(terminal_serial=="11101100470005")
			selector_trs_class="selector_trs_selected";
		else
			selector_trs_class="selector_trs";

		thtml+='<div class="'+selector_trs_class+'" onclick="setTerminal(\'11101100470005\',\'몽빠르나스역\',\''+depdes+'\')"><i class="fa fa-train"></i> 몽빠르나스역 </div>';
		

		terminal_serial=$("#desserial").val();
		if(terminal_serial=="11101100470003")
			selector_trs_class="selector_trs_selected";
		else
			selector_trs_class="selector_trs";

		thtml+='<div class="'+selector_trs_class+'" onclick="setTerminal(\'11101100470003\',\'동역\',\''+depdes+'\')"><i class="fa fa-train"></i> 동역 </div>';
		

		terminal_serial=$("#desserial").val();
		if(terminal_serial=="11101100470006")
			selector_trs_class="selector_trs_selected";
		else
			selector_trs_class="selector_trs";

		thtml+='<div class="'+selector_trs_class+'" onclick="setTerminal(\'11101100470006\',\'오스텔리츠역\',\''+depdes+'\')"><i class="fa fa-train"></i> 오스텔리츠역 </div>';
		

		terminal_serial=$("#desserial").val();
		if(terminal_serial=="11101100470007")
			selector_trs_class="selector_trs_selected";
		else
			selector_trs_class="selector_trs";

		thtml+='<div class="'+selector_trs_class+'" onclick="setTerminal(\'11101100470007\',\'생 라자르역\',\''+depdes+'\')"><i class="fa fa-train"></i> 생 라자르역 </div>';
		

		terminal_serial=$("#desserial").val();
		if(terminal_serial=="11101100470004")
			selector_trs_class="selector_trs_selected";
		else
			selector_trs_class="selector_trs";

		thtml+='<div class="'+selector_trs_class+'" onclick="setTerminal(\'11101100470004\',\'베르시역\',\''+depdes+'\')"><i class="fa fa-train"></i> 베르시역 </div>';
		

		thtml+='<div class="selector_trs_selected" onclick="closeMyModal()"><i class="fa fa-times-circle"></i> 닫기 </div>';

	



	$("#mymodal_body").html(thtml);
	$("#mymodal").show();



}


	
function closeMyModal()
{

	$("#mymodal").hide();
}


//맨 위로 가기
$(window).scroll(function() {
		if($(this).scrollTop() > 600) {
			$('.stu_scroll_top').fadeIn().css('display','block');
	}
	else {
 		$('.stu_scroll_top').fadeOut();
 	}
 });
$('.stu_scroll_top').click(function() {
	$('html, body').animate({scrollTop : 0}, 400);
	return false;
});

	
	
	
</script>	

</body>
</html>