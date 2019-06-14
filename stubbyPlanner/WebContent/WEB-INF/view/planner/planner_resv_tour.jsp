<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
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
<meta property="og:url" content="http://www.stubbyplanner.com/plan/planner_schd.asp?trip_id=10289716" />
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

	<link rel="stylesheet" href="/stubbyPlanner/externalData/superguide/assets/css/headers/header-v4.css">


    <!-- CSS/JavaScript -->
    <link rel="stylesheet" type="text/css" href="/stubbyPlanner/externalData/market/css/swiper.min.css">
    <link rel="stylesheet" type="text/css" href="/stubbyPlanner/externalData/market/css/common.css">
    <link rel="stylesheet" type="text/css" href="/stubbyPlanner/externalData/market/css/region.css">
    <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>

    <!-- swiper.js : 이미지슬라이더 -->
    <script type="text/javascript" src="/stubbyPlanner/externalData/market/js/swiper.min.js"></script>

<script src="https://www.google.com/jsapi"></script>

<script>
 (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
 (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
 m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
 })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
 ga('create', 'UA-913663-1', 'auto');
 ga('send', 'pageview');
</script>
<script>
 google.load( "webfont", "1" );
 google.setOnLoadCallback(function() {
  WebFont.load({ custom: {
   families: [ "NanumGothic" ],
	urls: ['https://fonts.googleapis.com/earlyaccess/nanumgothic.css']
  }});
 });
</script>
<style>
.top_menu
{
	cursor:pointer;
	float:left;
	width:25%;
	text-align:center;
	padding-top:10px;
	padding-bottom:10px;
}
.top_menu:hover
{
	background:#08CE8F;
	border-bottom:5px solid gray;
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

a{text-decoration:none;}
.white_line_box
{margin-left:5px;margin-right:5px;margin-top:3px;margin-bottom:3px;background:#c4c4c4;padding-top:4px;padding-bottom:4px;text-align:center;font-size:25pt}

h1,h2,h3,h4,h5,p,b,i,div,span,a,td,li,i,font,small{font-family: 'Noto Sans', sans-serif;}
.menu-small{font-size:11pt}
.leftmenu
{

	font-size:13pt;
	padding-top:15px;
	padding-bottom:15px;	
	font-size:12pt;
	font-weight:bold;
	padding-left:17px;
	color:#c0c0c0;
	border-bottom:1px solid #efefef;
}
.leftsubmenu
{
	padding-left:15px;
	border-top:1px solid #efefef;
	font-size:10pt;
	color:#696969;
	padding-top:9px;	
	padding-bottom:9px;	
	font-weight:normal;

}
.check_date
{
	font-size:8pt;
	color:#c0c0c0;
	font-weight:normal;
}

canvas {
	-moz-user-select: none;
	-webkit-user-select: none;
	-ms-user-select: none;
}

.lmenu_title
{
	color:#696969;
}
.selected
{
	font-weight:bold;
	color:#696969;
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
<body id="body" data-spy="scroll" data-target=".one-page-header" class="demo-lightbox-gallery"   >

<script>



function gotoHome()
{
	if(confirm(' 이 페이지를 나가려고 합니다.'))
		window.location='/';	
}

function gotoResv()
{
	
			window.location='planner_resv.asp?trip_id='+trip_id;
		
}
</script>
<div style="padding-bottom:0px;background:#3ad195;">
	<div id="topControllerLeft" style="padding-top:5px;width:20%;float:left;">
		<div style="padding-left:15px;">
			<a href="javascript:gotoHome()"><img src="http://www.stubbyplanner.com/img_v11/logo_white.png" height="35px"></a>
		</div>
	</div>
	<div id="topControllerRight" style="width:80%;float:left;">
		<div class="top_menu" id="menu1" onclick="window.location='/planner/planner_rt.asp?trip_id=10289716'"><font style="color:#fff;font-size:12pt;">루트</font></div>
		<div class="top_menu"  id="menu2" onclick="window.location='/planner/planner_schd.asp?trip_id=10289716'" ><font style="font-size:12pt;color:#fff;">일정</font></div>
		<div class="top_menu"  id="menu3" onclick="gotoResv()" style="border-bottom:5px solid gray"><font style="font-size:12pt;color:#fff;"  >예약 <i class="fa fa-lock"></i></font></div>
		<div style="float:left;width:25%;text-align:center;padding-top:8px;">


				<div id="btnStart" style="display:inline-block;border-radius:5px;border:0px solid #fff;background:#ee685a;width:70%;text-align:center;padding-top:6px;padding-bottom:6px;cursor:pointer;text-decoration:none;color:#FFF;font-size:10pt;font-weight:bold"" onclick="complete();" > 작업완료 </div>

		</div>

<script>
var trip_id=10289716;
var is_TRMenu_displayed=0;
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
	window.location="/common/login.asp?h_url=%2Fplan%2Fplanner%5Frt4%2Easp%3Ftrip%5Fid%3D"+trip_id;
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

		<div style="clear:both"></div>
	</div>
	<div style="clear:both"></div>
</div>
<div>
	<div id="contentLeft" style="float:left;width:20%;padding-top:15px;overflow-y:auto">
		
		<div class="leftmenu">
			전체 
		</div>
		<div class="leftmenu">

			<a href="/stubbyPlanner/planner/planner_resv_air.do?trip_id=${param.trip_id }" class="lmenu_title "><i class="fa fa-plane"></i> 항공권 </a>
		</div>
		<div class="leftmenu">


			<a href="planner_resv_pass.asp?trip_id=10287774" class="lmenu_title "><i class="fa fa-ticket"></i> 유레일패스 </a>
		</div>
		<div class="leftmenu">
			<div style="padding-bottom:10px"><i class="fa fa-arrow-right"></i> 교통</div>
			
<c:forEach items="${routelist}" var="dto" varStatus="status">
<c:if test="${status.last eq false }">
			<div class="leftsubmenu">
	
				<a href="planner_resv_trs.do?trip_id=${param.trip_id }&ridx=${dto.ridx}&scity_id=${dto.scity_id}&ecity_id=${dto.ecity_id}">${dto.scity_name }~${dto.ecity_name } 
				<font class="check_date ">${dto.trs_date}</font>
				</a>	
			</div>
</c:if>			
</c:forEach>


		</div>

		<div class="leftmenu">
			<div style="padding-bottom:10px"><i class="fa fa-hotel"></i> 숙소</div>

<c:forEach  items="${routelist}" var="dto" varStatus="status" >
			<div class="leftsubmenu">
				<a href="planner_resv_slp.do?trip_id=${param.trip_id }&ridx=${dto.ridx}&scity_id=${route.scity_id}" class="lmenu_title ">${dto.scity_name } 
				<font class="check_date">${dto.arr_date}~${dto.trs_date}(${dto.rt_days}박)</font> </a>		
			</div>
</c:forEach>



		</div>

		<div class="leftmenu">
			<div style="padding-bottom:10px"><i class="fa fa-flag"></i> 투어 / 티켓</div>

<c:forEach  items="${routelist}" var="dto" varStatus="status" >
			<div class="leftsubmenu">
				<a href="planner_resv_tour.asp?trip_id=${param.trip_id }&ridx=${dto.ridx}" class="lmenu_title ">${dto.scity_name } 
				 <font class="check_date">${dto.arr_date}부터 ${dto.rt_days}박</font>
				 <c:if test="${status.count eq param.ridx }"><i class="fa fa-check-circle-o" aria-hidden="true"></i>
</c:if>	
				  </a>
			</div>
</c:forEach>

		</div>


	</div>
	<div id="contentRight" style="float:left;width:80%;padding-top:10px;">
		<div style="width:98%;margin-left:1%;;height:600px;border-left:1px solid #efefef">
<div style="padding-left:15px;padding-right:15px;">

<!-----팝업 시작 ---->


<div id="modal-resvinfo" class="modal fade">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
	<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
	 <h4 class="modal-title">예약정보&nbsp;&nbsp; <a href="http://search.naver.com/search.naver?where=nexearch&sm=ies_hty&ie=utf8&query=%ED%99%98%EC%9C%A8" target="_blank"  class="btn btn-u">환율계산기 &raquo;</a></h4> 
      </div>
      <div class="modal-body">
	 <iframe id="if_resv_info" frameborder="0" src="about:blank" width="100%" height="470px" scrolling="no"></iframe>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->



<script>
	function openResvinfo(rs)
	{

		var surl="if_resv_tour.asp?pl=10289716&rt=0&sr=111011004&startdate=2019-07-14&date_in=2019-07-14&date_out=2019-07-17";
		
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
<!-----팝업 끝---->


		<h3>${route.arr_date }~${route.trs_date }, ${route.scity_name } 투어/티켓</h3>     



              <div class="profile-body">
                    <!--Service Block v3-->
                    <div class="row margin-bottom-10">
                       <div class="col-sm-12 sm-margin-bottom-20">


                            <div class="service-block-v3 servive-block-u" style="background:#c0c0c0">


              	              <i class="fa fa-flag"></i>
			<span class="service-heading">나의 예약정보
				<a href="javascript:openResvinfo()" class="btn-u btn-u-lg btn-u-orange pull-right"><span class="fa fa-pencil"></span> 예약 정보 추가</a>
			</span>

<!---- 내 예약정보 시작--->


		<h4>파리 투어정보</h4>
		<div style="display:inline-block">
			<p >아직 입력하신 투어/티켓예약정보가 없습니다.</p>
		</div>
		
		
		<div class="clearfix"></div>
		<hr/>
		<h6>내 투어 예약정보를 입력해 이용할 수 있는 3가지 플래너 기능</h6>
		<span class="pull-right" ><a title="예약정보를 입력하시면 주요 여행경비와 총합을 한눈에 확인할 수 있습니다."><img src="/stubbyPlanner/externalData/img_v6/adresv_mngmoney70.png"></a></span>
		<span class="pull-right"><a title="예약정보를 입력하시면 스트리트뷰를 통해 투어/티켓장소와 주변환경을 미리 확인하실 수 있습니다."><img src="/stubbyPlanner/externalData/img_v6/adresv_preview70.png"></a></span>
		<span class="pull-right"><a title="예약정보를 입력하시면 내 투어/티켓 장소와 이용할 공항/역 그리고 주요관광지들이 함께 표시된 지도를 출력하실 수 있습니다."><img src="/stubbyPlanner/externalData/img_v6/adresv_withmap70.png"></a></span>
		<div class="clearfix"></div>


<!---내 예약정보 끝--->
		</div>

</div></div></div>




            <section class="stu_privateGuide">
                <h2 class="stu_h2_title">
                    최근에 좋은 평점을 받은 ${country_name } 상품
                </h2>
                <div class="stu_inner_wrap" style="min-width:700px">
                    <div class="swiper-container swiper2">
                        <ul class="swiper-wrapper">




<!-- 시작  -->
<c:forEach items="${tourList}" var="tourInfo">
                           <li class="swiper-slide">
                                   <a href="/guide/detail.asp?serial=1524" target="_blank">
                                    <div class="stu_band bg_lightblue">${tourInfo.city_name }</div>
                                    <div class="stu_thumbnail_img">
                                        <img src="${tourInfo.imgurl }" onerror="this.src='https://d3b39vpyptsv01.cloudfront.net/photo/1/2/951dddc4fdd177a23ca78762ab8edaf2.jpg'">
                                    </div>
                                    <div class="stu_caption">
                                        <span class="stu_company">${tourInfo.company }</span>
                                        <span class="stu_name">${tourInfo.title }</span>
                                    </div>
                                    <div class="stu_info">
                                        <div class="stu_review">


			<div class="stu_ratingBox">
<c:forEach begin="1" end="${tourInfo.avg}">
	                                            <span class="stu_icon max"></span>
</c:forEach>		
	<!--                                             <span class="stu_icon max"></span>
		
	                                            <span class="stu_icon max"></span>
		
	                                            <span class="stu_icon max"></span>
		
	                                            <span class="stu_icon max"></span>
		
	                                            <span class="stu_icon max"></span>
		 -->

			  </div>
                                        <div class="stu_total">
                                            <span>평점 ${tourInfo.avg } (${tourInfo.cnt }) </span>
                                        </div>


			<div class="stu_price">
	                                            <span></span>
                                        </div>


                                        </div>
                                    </div>
                                </a>
                            </li>
</c:forEach>
<!-- 끝 -->


<%--                            <li class="swiper-slide">
                                   <a href="/guide/detail.asp?serial=731" target="_blank">
                                    <div class="stu_band bg_lightblue">파리</div>
                                    <div class="stu_thumbnail_img">
                                        <img src="${tourInfo.imgurl }" onerror="this.src=' https://d3b39vpyptsv01.cloudfront.net/photo/1/2/930a3b04815cae826ab9d7ff7379b1db.jpg'">
                                    </div>
                                    <div class="stu_caption">
                                        <span class="stu_company">제이에스(J.Smart)</span>
                                        <span class="stu_name">몽생미셸(주/야간) + 에트르타 + 옹플뢰르 JS 야경투어</span>
                                    </div>
                                    <div class="stu_info">
                                        <div class="stu_review">


			<div class="stu_ratingBox">
<c:forEach begin="1" end="${tourInfo.avg}">
	                                            <span class="stu_icon max"></span>
</c:forEach>		
<!-- 	                                            <span class="stu_icon max"></span>
		
	                                            <span class="stu_icon max"></span>
		
	                                            <span class="stu_icon max"></span>
		
	                                            <span class="stu_icon max"></span>
		 -->

			  </div>
                                        <div class="stu_total">
                                            <span>평점 5 (1)</span>
                                        </div>


			<div class="stu_price">
	                                           <s>${tourInfo.price_ealybird }</s>  <span>${tourInfo.price }</span>
                                        </div>


                                        </div>
                                    </div>
                                </a>
                            </li>
 --%>

   <!--                         <li class="swiper-slide">
                                   <a href="/guide/detail.asp?serial=641" target="_blank">
                                    <div class="stu_band bg_lightblue">파리</div>
                                    <div class="stu_thumbnail_img">
                                        <img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/72c3f198ccef37de06f3f860f0723278_l.jpg" onerror="this.src='https://d3b39vpyptsv01.cloudfront.net/photo/1/2/72c3f198ccef37de06f3f860f0723278.jpg'">
                                    </div>
                                    <div class="stu_caption">
                                        <span class="stu_company">여행의신</span>
                                        <span class="stu_name">[파리시내_오전] 개선문에서 몽마르트까지, 셀럽감성 소수정예 투어</span>
                                    </div>
                                    <div class="stu_info">
                                        <div class="stu_review">


			<div class="stu_ratingBox">
	
	                                            <span class="stu_icon max"></span>
		
	                                            <span class="stu_icon max"></span>
		
	                                            <span class="stu_icon max"></span>
		
	                                            <span class="stu_icon max"></span>
		
	                                            <span class="stu_icon max"></span>
		

			  </div>
                                        <div class="stu_total">
                                            <span>평점 5 (4)</span>
                                        </div>


			<div class="stu_price">
	                                            <s>30,000원</s><span>25,000원</span>
                                        </div>


                                        </div>
                                    </div>
                                </a>
                            </li>


                           <li class="swiper-slide">
                                   <a href="/guide/detail.asp?serial=639" target="_blank">
                                    <div class="stu_band bg_lightblue">파리</div>
                                    <div class="stu_thumbnail_img">
                                        <img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/41bb624f47f35fbcc00b2f722b45ef2e_l.jpg" onerror="this.src='https://d3b39vpyptsv01.cloudfront.net/photo/1/2/41bb624f47f35fbcc00b2f722b45ef2e.jpg'">
                                    </div>
                                    <div class="stu_caption">
                                        <span class="stu_company">여행의신</span>
                                        <span class="stu_name">[파리시내_오후] 노트르담에서 에펠탑까지, 파리지앵 로컬 소수정예투어</span>
                                    </div>
                                    <div class="stu_info">
                                        <div class="stu_review">


			<div class="stu_ratingBox">
	
	                                            <span class="stu_icon max"></span>
		
	                                            <span class="stu_icon max"></span>
		
	                                            <span class="stu_icon max"></span>
		
	                                            <span class="stu_icon max"></span>
		
	                                            <span class="stu_icon max"></span>
		

			  </div>
                                        <div class="stu_total">
                                            <span>평점 5 (3)</span>
                                        </div>


			<div class="stu_price">
	                                            <span></span>
                                        </div>


                                        </div>
                                    </div>
                                </a>
                            </li>


                           <li class="swiper-slide">
                                   <a href="/guide/detail.asp?serial=83" target="_blank">
                                    <div class="stu_band bg_lightblue">파리</div>
                                    <div class="stu_thumbnail_img">
                                        <img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/69ff943c6dab38d32821405c0e82546b_l.jpg" onerror="this.src='https://d3b39vpyptsv01.cloudfront.net/photo/1/2/69ff943c6dab38d32821405c0e82546b.jpg'">
                                    </div>
                                    <div class="stu_caption">
                                        <span class="stu_company">Blue Bike Tours</span>
                                        <span class="stu_name">베르사유 자전거 투어</span>
                                    </div>
                                    <div class="stu_info">
                                        <div class="stu_review">


			<div class="stu_ratingBox">
	
	                                            <span class="stu_icon max"></span>
		
	                                            <span class="stu_icon max"></span>
		
	                                            <span class="stu_icon max"></span>
		
	                                            <span class="stu_icon max"></span>
		
	                                            <span class="stu_icon max"></span>		
		

			  </div>
                                        <div class="stu_total">
                                            <span>평점 4.5 (4)</span>
                                        </div>


			<div class="stu_price">
	                                            <span></span>
                                        </div>


                                        </div>
                                    </div>
                                </a>
                            </li>


                           <li class="swiper-slide">
                                   <a href="/guide/detail.asp?serial=61" target="_blank">
                                    <div class="stu_band bg_lightblue">파리</div>
                                    <div class="stu_thumbnail_img">
                                        <img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/d748dde074bdd706335c1c28101b08a5_l.jpg" onerror="this.src='https://d3b39vpyptsv01.cloudfront.net/photo/1/2/d748dde074bdd706335c1c28101b08a5.jpg'">
                                    </div>
                                    <div class="stu_caption">
                                        <span class="stu_company">이지고 프랑스</span>
                                        <span class="stu_name">몽생미셸 주-야경, 옹플뢰르, 에트르타/ 숙소 무료샌딩</span>
                                    </div>
                                    <div class="stu_info">
                                        <div class="stu_review">


			<div class="stu_ratingBox">
	
	                                            <span class="stu_icon max"></span>
		
	                                            <span class="stu_icon max"></span>
		
	                                            <span class="stu_icon max"></span>
		
	                                            <span class="stu_icon max"></span>
		
	                                            <span class="stu_icon half"></span>
		

			  </div>
                                        <div class="stu_total">
                                            <span>평점 4.4 (9)</span>
                                        </div>


			<div class="stu_price">
	                                            <span></span>
                                        </div>


                                        </div>
                                    </div>
                                </a>
                            </li>


                           <li class="swiper-slide">
                                   <a href="/guide/detail.asp?serial=55" target="_blank">
                                    <div class="stu_band bg_lightblue">파리</div>
                                    <div class="stu_thumbnail_img">
                                        <img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/2e535464041209877c8a7cc9372b673d_l.jpeg" onerror="this.src='https://d3b39vpyptsv01.cloudfront.net/photo/1/2/2e535464041209877c8a7cc9372b673d.jpeg'">
                                    </div>
                                    <div class="stu_caption">
                                        <span class="stu_company">아트인파리</span>
                                        <span class="stu_name">[7월오픈] 몽생미셸 스페셜 야경투어 (에트르타+옹플레흐+몽생미셸 주/야경)</span>
                                    </div>
                                    <div class="stu_info">
                                        <div class="stu_review">


			<div class="stu_ratingBox">
	
	                                            <span class="stu_icon max"></span>
		
	                                            <span class="stu_icon max"></span>
		
	                                            <span class="stu_icon max"></span>
		
	                                            <span class="stu_icon max"></span>
		
	                                            <span class="stu_icon half"></span>
		

			  </div>
                                        <div class="stu_total">
                                            <span>평점 4.4 (323)</span>
                                        </div>


			<div class="stu_price">
	                                            <span></span>
                                        </div>


                                        </div>
                                    </div>
                                </a>
                            </li> -->



                        </ul>
                        <!--Pagination-->
                        <div class="swiper-pagination swiper-pagination2"></div>
                    </div>

<!--
                    <div class="swiper-button-prev swiper-button-prev2"></div>
                    <div class="swiper-button-next swiper-button-next2"></div>
-->
                </div>
            </section>



</div>
		</div>
	</div>
	<div style="clear:both"></div>
</div>


<script src="/stubbyPlanner/externalData/superguide/One-Pages/assets/plugins/jquery/jquery.min.js"></script>
<script src="/stubbyPlanner/externalData/superguide/One-Pages/assets/plugins/jquery/jquery-migrate.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


<!-- JS Implementing Plugins -->
<script src="/stubbyPlanner/externalData/superguide/One-Pages/assets/plugins/smoothScroll.js"></script>
<script src="/stubbyPlanner/externalData/superguide/One-Pages/assets/plugins/jquery.easing.min.js"></script>


<!-- JS Page Level -->
<script src="/stubbyPlanner/externalData/superguide/One-Pages/assets/js/one.app.js"></script>

<script>

        $(document).ready(function() {
            var mySwiper = new Swiper ('.swiper1', {
                slidesPerView:'auto',
                slidesPerGroup:1,
                freeMode:true,
                direction:'horizontal',
                noSwiping:true,
                noSwipingClass:'swiper-slide',
                breakpoints: {
                    619: {
                        spaceBetween:16,
                        noSwiping:false
                    }
                }
            })
            var mySwiper = new Swiper ('.swiper2', {
                slidesPerView:'auto',
                freeMode:true,
                direction:'horizontal',
                navigation: {
                    nextEl: '.swiper-button-next2',
                    prevEl: '.swiper-button-prev2',
                },
                pagination: {
                    el: '.swiper-pagination2',
                },
            })
        })
</script>

</body>
</html>