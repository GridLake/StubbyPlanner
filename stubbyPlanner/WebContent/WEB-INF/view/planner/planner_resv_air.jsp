<%@page import="net.sf.json.JSON"%>
<%@page import="net.sf.json.JSONObject"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/include.jspf" %>
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
<meta property="og:url" content="http://www.stubbyplanner.com/plan/planner_schd.do?trip_id=10286056" />
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
<%--     <link rel="shortcut icon" href="<%=contextPath %>/externalData/images2/common/favicon.ico"> --%>
  <link rel="shortcut icon" href="externalData/images2/common/favicon.ico">

 	<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:400,300,700&amp;subset=cyrillic,latin">

	<!-- CSS Global Compulsory -->

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" href="<%=contextPath %>/externalData/superguide/One-Pages/assets/css/app.css">
	<link rel="stylesheet" href="<%=contextPath %>/externalData/superguide/One-Pages/assets/css/blocks.css">

	<!-- CSS Implementing Plugins -->
	<link rel="stylesheet" href="<%=contextPath %>/externalData/superguide/assets/plugins/animate.css">
	<link rel="stylesheet" href="<%=contextPath %>/externalData/superguide/assets/plugins/line-icons/line-icons.css">
	<link rel="stylesheet" href="<%=contextPath %>/externalData/superguide/assets/plugins/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="<%=contextPath %>/externalData/superguide/One-Pages/assets/plugins/owl-carousel2/assets/owl.carousel.css">



	<link rel="stylesheet" href="<%=contextPath %>/externalData/unpkg.com/flickity@2.0/dist/flickity.css" media="screen">
	<link rel="stylesheet" href="<%=contextPath %>/externalData/superguide/assets/css/headers/header-v4.css">
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
<body id="body" data-spy="scroll" data-target=".one-page-header" class="demo-lightbox-gallery"  >

<script>



function gotoHome()
{
	if(confirm(' 이 페이지를 나가려고 합니다.'))
		window.location='/stubbyPlanner/common/index.do';
}

function gotoResv()
{
	window.location='/stubbyPlanner/planner/planner_resv_air.do?trip_id='+trip_id;
}

function gotoRoute()
{
	window.location='/stubbyPlanner/planner/planner_rt.do?trip_id='+trip_id;
}

function gotoSchd()
{
	window.location='/stubbyPlanner/planner/planner_schd.do?trip_id='+trip_id;
}
</script>
<div style="padding-bottom:0px;background:#3ad195;">
	<div id="topControllerLeft" style="padding-top:5px;width:20%;float:left;">
		<div style="padding-left:15px;">
			<a href="javascript:gotoHome()"><img src="<%=contextPath %>/externalData/img_v11/logo_white.png" height="35px"></a>
		</div>
	</div>
	<div id="topControllerRight" style="width:80%;float:left;">
		<div class="top_menu" id="menu1" onclick="gotoRoute()"><font style="color:#fff;font-size:12pt;">루트</font></div>
		<div class="top_menu" id="menu2" onclick="gotoSchd()" ><font style="font-size:12pt;color:#fff;">일정</font></div>
		<div class="top_menu" id="menu3" onclick="gotoResv()" style="border-bottom:5px solid gray"><font style="font-size:12pt;color:#fff;" >예약 <i class="fa fa-lock"></i></font></div>
		<div style="float:left;width:25%;text-align:center;padding-top:8px;">


				<div id="btnStart" style="display:inline-block;border-radius:5px;border:0px solid #fff;background:#ee685a;width:70%;text-align:center;padding-top:6px;padding-bottom:6px;cursor:pointer;text-decoration:none;color:#FFF;font-size:10pt;font-weight:bold"" onclick="complete();" > 작업완료 </div>

		</div>

<script>
var trip_id=10286056; //
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
<%-- 미구현 기능
function login()
{
	window.location="'<%= contextPath %>'/common/login.do?h_url=%2Fplan%2Fplanner%5Frt4%2Easp%3Ftrip%5Fid%3D"+trip_id;
}
function register()
{
	window.location="/stubbyPlanner/common/register.do?h_url=%2Fplan%2Fplanner%5Frt4%2Easp%3Ftrip%5Fid%3D"+trip_id;
}
 --%>
function complete()
{
	window.location="/stubbyPlanner/planner/detail.do?tid="+trip_id;
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
<c:if test="${status.count eq param.ridx }">				
				<i class="fa fa-check-circle-o" aria-hidden="true"></i>
</c:if>			
			</div>
</c:forEach>



		</div>

		<div class="leftmenu">
			<div style="padding-bottom:10px"><i class="fa fa-flag"></i> 투어 / 티켓</div>

<c:forEach  items="${routelist}" var="dto" >
			<div class="leftsubmenu">
				<a href="planner_resv_tour.asp?trip_id=${param.trip_id }&ridx=${dto.ridx}" class="lmenu_title ">${dto.scity_name }  <font class="check_date">${dto.arr_date}부터 ${dto.rt_days}박</font> </a>
			</div>
</c:forEach>

		</div>


	</div>






	
	<div id="contentRight" style="float:left;width:80%;padding-top:10px;">
		<div style="width:98%;padding-left:20px;padding-right:20px;margin-left:1%;;height:600px;border-left:1px solid #efefef">

		<h4>내 항공권 


		<a href="javascript:openResvinfo()" style="border-radius:25px;" class="btn-u btn-u-green">내 항공권 정보 입력 <i class="fa fa-pencil"></i></a>

</h4>
	<div style="padding-left:15px;padding-right:15px;background:#efefef;padding-top:10px;padding-bottom:10px;">

		<!-- c:if test= -->
		<div style="padding-top:10px;">
			<div style="float:left;width:50%;">
				<div style="display:inline-block;padding-left:5px;padding-right:5px;padding-top:2px;padding-bottom:2px;margin-bottom:3px;background:#c0c0c0;color:#fff">출국편</div>
				<div>출발: 서울/인천 (${airInfo[0].date })</div>
				<div>도착: <b>${airInfo[0].scity_name }</b>, ${airInfo[0].country_name }</div>
			</div>
			<div style="float:left;width:50%;">
				<div style="display:inline-block;padding-left:5px;padding-right:5px;padding-top:2px;padding-bottom:2px;margin-bottom:3px;background:#c0c0c0;color:#fff">귀국편</div>
				<div>출발: <b>${airInfo[1].scity_name }</b>,  ${airInfo[1].country_name } (${airInfo[1].date })</div>
				<div>도착: 서울/인천</div>
			</div>
			<div style="clear:both"></div>
		</div>

		<hr style="border:1px solid #fff">
		<p>
		<!-- 날짜 변수 -->
			유럽항공권 가격비교 싸이트, 스카이스캐너에서 내 조건에 맞는 <a target="_blank" href="https://www.skyscanner.co.kr/transport/d/sela/2019-07-09/pari/lond/2019-07-15/sela?adults=1&children=0&adultsv2=1&childrenv2=&infants=0&cabinclass=economy&ref=day-view&associateid_proc=true&utm_campaign=flights&utm_medium=b2b&rtn=False&currency=KRW&ucy=KR&utm_source=StubbyPlanner&lang=ko&associateid=API_B2B_00175_00001#results" style="border-radius:20px;background:#ee685a" class="btn-u btn-u-dark">항공권 비교하기 <i class="fa fa-external-link" aria-hidden="true"></i></a>
		</p>
<!-- 
		<div style="padding-top:5px;padding-bottom:10px;font-size:14pt;font-weight:bold">
			대한항공&nbsp;&nbsp; 100만원
		</div>

		<div style="padding-top:10px;">
			<div style="float:left;width:50%;">
				<div style="display:inline-block;padding-left:5px;padding-right:5px;padding-top:2px;padding-bottom:2px;margin-bottom:3px;background:#c0c0c0;color:#fff">출국편</div>
				<div>출발: 인천국제공항 &nbsp;&nbsp;2019/7/11&nbsp;09:00</div>
				<div>도착: 파리-샤를드골 공항&nbsp;&nbsp;2019/7/11&nbsp;18:00</div>
			</div>
			<div style="float:left;width:50%;">
				<div style="display:inline-block;padding-left:5px;padding-right:5px;padding-top:2px;padding-bottom:2px;margin-bottom:3px;background:#c0c0c0;color:#fff">귀국편</div>
				<div>출발: 히드로 공항&nbsp;&nbsp;2019/7/17&nbsp;10:00</div>
				<div>도착: 인천국제공항 &nbsp;&nbsp;2019/7/17&nbsp;22:00</div>
			</div>
			<div style="clear:both"></div>
		</div>

		<hr style="border:1px solid #fff">
		<p>
			1111
		</p>
		 -->


	</div>
	

<!-----팝업 시작 ---->


<div id="modal-resvinfo"  class="modal fade bs-example-modal-lg">
  <div class="modal-dialog modal-lg">
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

		// 변수
		// var surl="/stubbyPlanner/model1/if_resv_air.jsp?pl=10286056&region=&1[1-4]startdate=2019-07-09";
		var surl="/stubbyPlanner/model1/if_resv_air.jsp";
		
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



<hr>
	<!-- 도시명 파라미터 -->
	<h5 style="margin-bottom:2px;">비행시간이 짧으면서 가격이 저렴한 항공권을 찾는 스투비회원들은</h5>
	<h4>	나와 동일한 조건(IN : ${airInfo[0].scity_name }/OUT : ${airInfo[1].scity_name })에서 
		다음과 같은 항공권을 선택했습니다.
	 </h4>



			


		<div style="width:95%;margin-top:30px;margin-bottom:30px;">
		
			<canvas id="canvas"></canvas>
		
		</div>


		


<hr>
	<h4 style="color:#c0c0c0">최근 유럽항공권 예약 트렌드&nbsp;&nbsp;<small style="color:#c0c0c0"> 최근 트렌드를 살펴보세요!</small></h4>
	<div class="row">
<c:forEach items="${reserverList }" var="reserver">
<div class="col-md-4"  style="margin-bottom:15px">
		<div class="media">
		<a class="pull-left" href="<%= contextPath %>/plan/profile.do?id=mimm98"><img class="media-object img-circle" width="45px" onerror="this.src='<%= contextPath %>/externalData/img_v6/img_pfnull.gif';" src="<%= contextPath %>/externalData/pfimg/7/5/mimm98_sq.jpg" border="0"></a>
		<div class="media-body">
			<!-- foreach -->
			<ul class="list-unstyled">
				<li  style="color:#c0c0c0">
					<!-- 정보 불러와야 -->
					<span class="badge" style="background:#c0c0c0;float:right">${reserver.flight_price }</span>
					${reserver.deptdate }
				</li>
				<li  style="color:#c0c0c0">
					<b>${reserver.airline_name }</b> ${reserver.in_city }IN/${reserver.out_city }OUT
				</li>
				<li  style="color:#c0c0c0">
					<span class="small" style="float:right">${reserver.ago }</span>
					<!--<a class="btn btn-default btn-xs" href="/supertrip/detail.asp?serial=10285547">관련 여행보기></a>-->
				</li>
			</ul>
		  </div>
	
		</div>
</div>
</c:forEach>




</div>

<div class="clearfix"></div>
</div>










	</div>
	






		</div>
	</div>
	<div style="clear:both"></div>
</div>


<script src="<%= contextPath %>/externalData/superguide/One-Pages/assets/plugins/jquery/jquery.min.js"></script>
<script src="<%= contextPath %>/externalData/superguide/One-Pages/assets/plugins/jquery/jquery-migrate.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


<!-- JS Implementing Plugins -->
<script src="<%= contextPath %>/externalData/superguide/One-Pages/assets/plugins/smoothScroll.js"></script>
<script src="<%= contextPath %>/externalData/superguide/One-Pages/assets/plugins/jquery.easing.min.js"></script>


<!-- JS Page Level -->
<script src="<%= contextPath %>/externalData/superguide/One-Pages/assets/js/one.app.js"></script>
<script src="<%= contextPath %>/externalData/chartjs/dist/2.7.2/Chart.bundle.js"></script>
<script src="<%= contextPath %>/externalData/chartjs/samples/latest/utils.js"></script>
<%


JSONObject json =(JSONObject) request.getAttribute("scatterInfoList");

%>




	<script>
		var color = Chart.helpers.color;
// 자바스크립트 array만들기 
	var jsonString1 = JSON.stringify(<%=json%>);
	//console.log(<%=json%>);
	
	
	var sets = <%=json%>.datasets;
	var datasets = new Array();
	for(var i=0; i<sets.length; i++) {
	    var airdata = new Object();
	    airdata.label = sets[i].label;
	    airdata.borderColor = window.chartColors.red;
	    airdata.backgroundColor = color(window.chartColors.red).alpha(0.2).rgbString();
	    var dotArr = new Array();
	    var dots = sets[i].data;
	    for (var j = 0; j < sets[i].data.length; j++) {
			dotArr.push(sets[i].data[j]);
		}
	    airdata.data = dotArr;
		datasets.push(airdata);
	}
	
		console.log(datasets);

		var scatterChartData = {
				datasets: datasets
					
					/* [

					{
						label: '아시아나항공(19%)',
						borderColor: window.chartColors.red,
						backgroundColor: color(window.chartColors.red).alpha(0.2).rgbString(),
						data: [{x: 24,y: 134.48},{x: 24,y: 90},{x: 34,y: 97.3},{x: 22,y: 101.82},{x: 25,y: 93.8},{x: 25,y: 95},{x: 36,y: 85},{x: 25,y: 95.838},{x: 25,y: 46.7},{x: 25,y: 97.5},{x: 24,y: 110},{x: 22,y: 106.9},{x: 24,y: 106},{x: 24,y: 114.03},]
					}
					
					] */
		/*
			datasets: [

			{
				label: '아시아나항공(19%)',
				borderColor: window.chartColors.red,
				backgroundColor: color(window.chartColors.red).alpha(0.2).rgbString(),
				data: [{x: 24,y: 134.48},{x: 24,y: 90},{x: 34,y: 97.3},{x: 22,y: 101.82},{x: 25,y: 93.8},{x: 25,y: 95},{x: 36,y: 85},{x: 25,y: 95.838},{x: 25,y: 46.7},{x: 25,y: 97.5},{x: 24,y: 110},{x: 22,y: 106.9},{x: 24,y: 106},{x: 24,y: 114.03},]
			},

			{
				label: '베트남항공(12%)',
				borderColor: window.chartColors.blue,
				backgroundColor: color(window.chartColors.blue).alpha(0.2).rgbString(),
				data: [{x: 42,y: 88.9},{x: 59,y: 80},{x: 48,y: 87},{x: 42,y: 148.9},{x: 42,y: 65.8},{x: 42,y: 68.2},{x: 49,y: 85},{x: 48,y: 137.2},{x: 63,y: 67.26},{x: 42,y: 68.6},{x: 42,y: 120},{x: 42,y: 68},]
			},

			{
				label: '대한항공(16%)',
				borderColor: window.chartColors.yellow,
				backgroundColor: color(window.chartColors.yellow).alpha(0.2).rgbString(),
				data: [{x: 24,y: 56.7},{x: 21,y: 119},{x: 25,y: 142.5},{x: 33,y: 95.84},{x: 22,y: 109},{x: 24,y: 95.2},{x: 24,y: 109.9},{x: 25,y: 116.5},{x: 24,y: 133},{x: 26,y: 108},{x: 24,y: 118.36},{x: 24,y: 115},{x: 25,y: 127},]
			},

			{
				label: '차이나에어(2%)',
				borderColor: window.chartColors.green,
				backgroundColor: color(window.chartColors.green).alpha(0.2).rgbString(),
				data: [{x: 39,y: 112},{x: 55,y: 104.4},]
			},

			{
				label: '중국남방항공(2%)',
				borderColor: window.chartColors.black,
				backgroundColor: color(window.chartColors.black).alpha(0.2).rgbString(),
				data: [{x: 20,y: 43.01},{x: 38,y: 87},]
			},

			{
				label: '러시아항공(3%)',
				borderColor: window.chartColors.purple,
				backgroundColor: color(window.chartColors.purple).alpha(0.2).rgbString(),
				data: [{x: 35,y: 291.6364},{x: 20,y: 93},{x: 40,y: 99.89},]
			},

			{
				label: '영국항공(4%)',
				borderColor: window.chartColors.orange,
				backgroundColor: color(window.chartColors.orange).alpha(0.2).rgbString(),
				data: [{x: 29,y: 92},{x: 53,y: 92},{x: 29,y: 162.06},{x: 54,y: 94},]
			},


			]
			*/
		};



		window.onload = function() {
			
			
			
			var ctx = document.getElementById('canvas').getContext('2d');
			window.myScatter = Chart.Scatter(ctx, {
				data: scatterChartData,
				options: {
					title: {
						display: true,
						text: '항공사별 왕복 합산 비행시간과 비용 비교 - (IN : ${airInfo[0].scity_name }/OUT : ${airInfo[1].scity_name })'
					},
 legend: {
            display: true,
          	position:'left'
        },

        scales: {
            xAxes: [{
                ticks: {
                    // Include a dollar sign in the ticks
                    callback: function(value, index, values) {
                        return '총 '+value+'시간';
                    }
                }
            }],
            yAxes: [{
                ticks: {
                    // Include a dollar sign in the ticks
                    callback: function(value, index, values) {
                        return value+'만원';
                    }
                }
            }]
        }


				}
			});
		};

		
	</script>

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
	$.ajax({
		  url: "/api/v5/planner/cal_route.jsp",
		 type: "GET",
		 dataType: 'json',
		 data: {
			y:y,
			m:m,
			trip_id:10286056
		  },
		  success: function( data ) {
				theIdx=0;
				theDispCityIdx=0;
				myroutes=data.data.routes;

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

				thtml+='<div style="float:left;width:25%"><a class="btn-u" style="border-radius:30px;background:#c8c8c8" href="javascript:movePrevMonth()"> < </a></div>';
				thtml+='<div style="float:left;width:50%" class="calendar_header_title">'+y+'년 '+m+'월</div>';
				thtml+='<div style="float:left;width:25%;text-align:right"><a class="btn-u" style="border-radius:30px;background:#c8c8c8" href="javascript:moveNextMonth()"> > </a></div>';
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

				for(i=0;i<dx.getDay();i++)
				{
					thtml=thtml+'<div class="calendar_day_nothing"><a>-</a></div>';
					pos++;
				}
				for(i=1;i<=max_mday;i++)
				{
					d_txt=i;
					if(i<10)
						d_txt='0'+i;
					thedate=y+'-'+m_txt+'-'+d_txt;
//					if(selected_date==thedate)
//					{
//						thtml=thtml+'<div style="width:14%;float:left"><div class="calendar_day_selected" id="cd_'+i+'" onclick="selDate(\''+thedate+'\',\''+i+'\')">'+i+'</div></div>';
//					}
//					else
					{

	
						if(myroutes)
						if(myroutes[theIdx])
						{

							
							if(myroutes[theIdx].date_in.m<parseInt(m)||(myroutes[theIdx].date_in.d<=i&&myroutes[theIdx].date_out.d>=i)||(myroutes[theIdx].date_in.d<=i&&myroutes[theIdx].date_out.m>parseInt(m)))
							{
								
								var thecolor;
								if(theDispCityIdx%2==1)
									thecolor="#24cf97";
								else
									thecolor="#ff6142";

								if(theIdx<myroutes.length-1&&myroutes[theIdx].date_out.d==i)
								{
									theDispCityIdx++;
									thtml+='<div style="width:14%;float:left"><div class="calendar_day" id="cd_'+i+'" onclick="selDate(\''+thedate+'\',\''+i+'\')"><div class="tday">'+i+'</div>';
									

									thtml+='<div style="clear:both"> </div>';
									local_idx=0;
									while(myroutes[theIdx]&&myroutes[theIdx].date_out.d==i)
									{
										local_idx++;
//										thtml+='<div style="position:relative;margin-left:50%;font-size:9pt;color:#c0c0c0;height:15px;"></font></div>';
										theIdx++;	
										
			
									}
									if(local_idx>1)
										thtml+='<div style="height:4px;padding-left:30%;padding-right:30%;"><div style="height:2px;background:#e8e8e8"> </div></div>';
									else
										thtml+='<div style="height:4px;"> </div>';

									if(thecolor=="#24cf97")
									{
										thtml+='<div style="width:50%;float:left;background:#24cf97;height:2px;"> </div>';
										thtml+='<div style="width:50%;float:left;background:#ff6142;height:2px;"> </div>';
									}
									else
									{
										thtml+='<div style="width:50%;float:left;background:#ff6142;height:2px;"> </div>';
										thtml+='<div style="width:50%;float:left;background:#24cf97;height:2px;"> </div>';
									}


									if(myroutes[theIdx])
									{
										if(myroutes[theIdx].title.length>6)
											thtml+='<div style="position:absolute;padding-left:39px;font-size:7pt;padding-top:2px;color:#9b9b9b;height:15px;">'+myroutes[theIdx].title+'</div></div></div>';
										else
											thtml+='<div style="position:absolute;padding-left:39px;font-size:8pt;color:#9b9b9b;height:15px;padding-top:2px;">'+myroutes[theIdx].title+'</div></div></div>';

									}

									thtml+='</div></div>';

								}
								else
								{
									thtml+='<div style="width:14%;float:left"><div class="calendar_day" id="cd_'+i+'" onclick="selDate(\''+thedate+'\',\''+i+'\')"><div class="tday">'+i+'</div>';
									thtml+='<div style="height:4px;"> </div>';

									thtml+='<div style="background:'+thecolor+';height:2px;"> </div>';
									if(myroutes[theIdx].date_in.d==i)
									{
										if(myroutes[theIdx].title.length>6)
											thtml+='<div style="position:absolute;margin-left:0%;font-size:7pt;color:#9b9b9b;height:15px;padding-top:2px;">'+myroutes[theIdx].title+'</div></div></div>';
										else
											thtml+='<div style="position:absolute;margin-left:0%;font-size:8pt;color:#9b9b9b;height:15px;padding-top:2px;">'+myroutes[theIdx].title+'</div></div></div>';
									}
									else
									{
										thtml+='<div style="position:absolute;margin-left:50%;font-size:9pt;color:#c0c0c0;height:15px;"></div></div></div>';
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
				id:id,
				trip_id:10286056
			  },
			success: function( data ) {
			
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

function selDate(thedate,idx)
{
	if(selected_date)
	{
		$("#cd_"+selected_date_idx).removeClass('calendar_day_selected');
		$("#cd_"+selected_date_idx).addClass('calendar_day');
	}
	selected_date=thedate;
	selected_date_idx=idx;
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
	y=xx.getFullYear();
	m=xx.getMonth()+1;
	d=xx.getDate();
	$("#header_title").html(m+'월 '+d+'일 <font style="font-size:9pt;">'+weekday[xx.getDay()]+'');
		
	$.ajax({
		  url: "/api/v5/planner/cal_day_schd.asp",
		 type: "GET",
		 dataType: 'json',
		 data: {
			y:y,
			m:m,
			d:d,
			trip_id:10286056
		  },
		  success: function( data ) {
			cityBlockArr=data.data.items;
			if(cityBlockArr)
			{

			thtml='';
			for(i=0;i<cityBlockArr.length;i++)
			{

if(cityBlockArr[i].item_type=="city_schd")
{
	thtml+='<div style="">';
	thtml+='<div style="border-top:0.5px solid #c8c8c8;border-bottom:0.5px solid #c8c8c8;margin-bottom:0px;padding-left:20px;padding-right:20px;padding-bottom:0px;padding-top:0px;">';
	thtml+='<div style="float:left;width:12%;border-right:0.5px solid #c8c8c8;height:55px;padding-top:7px;">';
	thtml+='<font style="font-size:19pt;color:#c8c8c8"><i class="fa fa-map-marker" aria-hidden="true"></i></font>';
	thtml+='</div>';
	thtml+='<div style="float:left;width:63%;padding-left:10px;height:55px;padding-top:7px;">';
	thtml+='<div><font style="font-size:11pt;color:#9b9b9b">'+cityBlockArr[i].city_name+'</font></div>';
	thtml+='<div style="padding-bottom:5px;"><font style="font-size:8pt;color:#9b9b9b">'+cityBlockArr[i].ctry_name+'</font></div>';
	thtml+='</div>';
	thtml+='<div style="float:left;width:25%;text-align:right;height:55px;padding-top:7px;">';
	thtml+='<font style="font-size:19pt;color:#c8c8c8"><i class="fa fa-pencil" aria-hidden="true"></i></font>';
	if(cityBlockArr[i].can_select_bucket)
		thtml+='&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:showBucketList(\''+cityBlockArr[i].city_name+'\',\''+cityBlockArr[i].city_id+'\',1)"><font style="font-size:19pt;color:#c8c8c8"><i class="fa fa-plus-circle" aria-hidden="true"></i></font></a>';
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
			for(j=0;j<cityBlockArr[i].buckets.length;j++)
			{
				if(cityBlockArr[i].buckets.length>6)
					thtml+='<div class="carousel-cell" ';
				else
					thtml+='<div ';

				thtml+=' style="float:left;width:70px;margin-right:5px;cursor:pointer" onclick="add_schd_bucket(\''+thedate+'\','+y+','+m+','+d+','+cityBlockArr[i].buckets[j].bucket_id+','+cityBlockArr[i].r_id+','+idx+')"><div style="border-radius:35px;width:70px;height:70px;position:relative;"><img src="'+cityBlockArr[i].buckets[j].img.url+'" style="width:70px;border-radius:35px"><div style="position:absolute;top:0px;left:0px;background:#000;opacity:0.5;width:70px;height:70px;border-radius:35px">&nbsp;</div><div style="position:absolute;top:0px;left:0px;font-size:30pt;text-align:center;color:#fff;width:70px;">+</div></div>';
				thtml+='<div style="text-align:center;font-size:8pt;color:#9b9b9b;padding-top:5px;">'+cityBlockArr[i].buckets[j].title+'</div></div>';
			}
			thtml+='<div style="clear:both"></div></div></div>';
		}
	}

	if(cityBlockArr[i].schedule)
	{
		if(cityBlockArr[i].schedule.length>0)
		{
			thtml+='<div  style="">';
			for(j=0;j<cityBlockArr[i].schedule.length;j++)
			{
				schd_stime=cityBlockArr[i].schedule[j].stime;
				if(!schd_stime)
					schd_stime="";
				schd_desc=cityBlockArr[i].schedule[j].desc;
				var schd_img;
				if(cityBlockArr[i].schedule[j].img)
					schd_img=cityBlockArr[i].schedule[j].img.url;
				if(schd_desc)
					schd_desc.replace("\n","<br>");


	
				thtml+='<div  style="border-bottom:0.5px solid #c8c8c8">';
				thtml+='<div style="float:left;width:15%;border-right:0.5px solid #c8c8c8;height:100px;padding-top:5px;">';
				thtml+=schd_stime;
				thtml+='</div>';
				thtml+='<div style="float:left;width:60%;padding-left:10px;height:100px;padding-top:15px;">';
				thtml+='<div><font style="font-size:10pt;color:#464646">'+cityBlockArr[i].schedule[j].title+'</font> <a href="javascript:del_schd(\''+thedate+'\',\''+cityBlockArr[i].schedule[j].schd_id+'\','+y+','+m+','+d+','+cityBlockArr[i].r_id+','+idx+')"><i class="fa fa-trash"></i></a></div>';
				thtml+='<font style="font-size:8pt;color:#c8c8c8">'+schd_desc+'</font>';
				thtml+='</div>';
				thtml+='<div style="float:left;width:25%;padding-top:15px;text-align:right">';
				if(schd_img)
					thtml+='<a href="javascript:showSchdDetail(\''+cityBlockArr[i].schedule[j].schd_id+'\',\''+cityBlockArr[i].schedule[j].title+'\')"><img src="'+schd_img+'" width="70px" style="border-radius:100px"></a>';
				thtml+='</div>';
				thtml+='<div style="clear:both"></div>';
				thtml+='</div>';
			}
			thtml+='</div>';

		}
		
	}
	thtml+='</div>';

}
else if(cityBlockArr[i].item_type=="city_move")
{
	thtml+='<div style="height:2px;background:#f0f0f0"></div>';
	thtml+='<div style="padding-left:20px;padding-right:20px;padding-top:15px;padding-bottom:15px;border-top:0.5px solid #c8c8c8;border-bottom:0.5px solid #c8c8c8">';
	thtml+='<a href="'+cityBlockArr[i].linkurl+'" target="_blank"><font style="font-size:10pt;color:#c8c8c8">'+cityBlockArr[i].dep_name+'~'+cityBlockArr[i].des_name+'</font></a>';
	thtml+='</div>';
	thtml+='<div style="height:2px;background:#f0f0f0"></div>';
	

}			}
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




	}

	});

	
	

}
function del_schd(thedate,schd_id,y,m,d,r_id,idx)
{
	$.ajax({
		  url: "/api/v5/planner/del_schd.asp",
		 type: "GET",
		 dataType: 'json',
		 data: {
			y:y,
			m:m,
			d:d,
			trip_id:10286056,
			schd_id:schd_id,
			r_id:r_id
		},

		  success: function( data ) {
			
			selDate(thedate,idx);

		}
	});
}
function add_schd_bucket(thedate,y,m,d,bucket_id,r_id,idx)
{
	$.ajax({
		  url: "/api/v5/planner/add_schd_bucket.asp",
		 type: "GET",
		 dataType: 'json',
		 data: {
			y:y,
			m:m,
			d:d,
			trip_id:10286056,
			bucket_id:bucket_id,
			r_id:r_id
		},

		  success: function( data ) {
			
			selDate(thedate,idx);

		}
	});
}
function openMyModal()
{

	$("#mymodal").show();
	$("body").addClass("modal-open");

	drawMonth('2019','7');
}
function closeMyModal()
{
	$("#mymodal").hide();
	$("body").removeClass("modal-open")

	
}

function showBucketList(cityname,city_id,hascityplanner)
{

		newMapWidth=eval($(window).width());
		newMapHeight=eval($(window).height()-3);
		$("#div_bucketlist").css("width",newMapWidth);
		$("#div_bucketlist").css("height",newMapHeight);
		bucketlist_inside_h=eval(newMapHeight-100);


if(hascityplanner==0)
{
		thtml='<div style="background:#ee685a"><div style="float:left;width:85%;font-size:11pt;color:#fff;padding-top:5px;"><b>'+cityname+'</b> 여행정보</div><div style="float:left;width:15%;cursor:pointer;text-align:right;padding-right:4px;" onclick="closeBucketlist()"><font style="font-size:23pt;color:#fff"><i class="fa fa-times-circle"></i></font></div><div style="clear:both"></div></div>';
		thtml+='<iframe frameborder="0" width="100%" height="'+(newMapHeight-50)+'px" src="/bucket_detail.asp?fromplanner=1&cityserial='+city_id+'"></iframe>';
		$("#div_bucketlist").html(thtml);
		$("#div_bucketlist").show();
}
else
{

		$("#div_bucketlist").html('<div style="padding-top:50px;text-align:center;">'+cityname+' 경험 로딩중...</div>');
		$("#div_bucketlist").show();

	             $.ajax({
	             	url: '/api/planning/bucket_list.asp?trip_id=10286056&region_id='+city_id,
	               	dataType: 'json',
	               	success: function(data){
					if(data!="")
					{
						thtml='<div style="background:#ee685a"><div style="float:left;width:85%;font-size:11pt;color:#fff;padding-top:5px;"><b>'+cityname+'</b>에서 경험하고 싶은 것들을 선택해 보세요.</div><div style="float:left;width:15%;cursor:pointer;text-align:right;padding-right:4px;" onclick="closeBucketlist()"><font style="font-size:23pt;color:#fff"><i class="fa fa-times-circle"></i></font></div><div style="clear:both"></div></div>';
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
		thtml+='<div  id="bucket_check_'+data.bucket_group[i].bucket_list[j].bucket_id+'" class="bk_selected selected_flag" onclick="'+t_select+'"><font style="color:#ee685a"><i class="fa fa-heart"></i></font></a></div>';
	}
	else
	{
		thtml+='<div id="bucket_bg_'+data.bucket_group[i].bucket_list[j].bucket_id+'"  class="bk_bg" style="border-radius:5px;position:absolute;bottom:0px;right:0px;;">&nbsp;</div>';
		thtml+='<div  id="bucket_check_'+data.bucket_group[i].bucket_list[j].bucket_id+'" class="bk" onclick="'+t_select+'"><i class="fa fa-check-circle"></i></a></div>';
	}
	thtml+='<div style="position:absolute;bottom:3px;right:10px;"><font style="color:#fff;font-size:8pt;"><i class="fa fa-star" aria-hidden="true"></i> '+data.bucket_group[i].bucket_list[j].planner_cnt+'</font></div>';

thtml+='</div>';

thtml+='<div style="position:relative;">';
thtml+='<div style="width:80%;float:left;padding-top:5px;padding-bottom:5px;">';
thtml+='<h5 style="padding-left:3px;line-height:100%;padding-bottom:0px;margin-bottom:0px;text-align:left;color:#fff;font-size:9pt;" ><a href="'+t_linkurl+'" style="color:#696969">'+data.bucket_group[i].bucket_list[j].title+'</a></h5>';
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

		setTimeout(function(){

			$("#bucket_bg_"+id).removeClass("bk_bg_selected");
			$("#bucket_bg_"+id).addClass("bk_bg");

			$("#bucket_check_"+id).addClass("bk");
			$("#bucket_check_"+id).removeClass("bk_selected");
		}, 1000);

		if(cur_r_id!="")
			delSchd(cur_r_id,"B"+id) ;
	}
	else
	{
		$("#bucket_bg_"+id).removeClass("bk_bg");
		$("#bucket_bg_"+id).addClass("bk_bg_selected");


		$("#bucket_check_"+id).removeClass("bk");
		$("#bucket_check_"+id).addClass("bk_selected");
		$("#bucket_check_"+id).addClass("selected_flag")


		$("#bucket_check_"+id).html('<font style="color:#ee685a"><i class="fa fa-heart"></i></font>');


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

		if(cur_r_id!="")
			addSchd(cur_r_id,"B"+id) ;

	}

}

function closeBucketlist()
{

	$("#div_bucketlist").hide();
	$("#cp_"+cur_r_id).css("background","#fff");
	$("#cp_"+cur_r_id).css("color","#696969");
	$("#cp_heart_"+cur_r_id).css("color","#3ad195");
	cur_r_id="";
}







var cur_year=2019;
var cur_month=7;
var cur_day=9;

$(function() {

	drawMonth(cur_year,cur_month,cur_day);
});
</script>

<div id="div_bucketlist" style="z-index:999;display:none;position:absolute;top:0px;left;0px;width:100%;height:590px;margin-left:0px;background:#fff;border:7px solid #ee685a;"></div>

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

<!--[if lt IE 10]>
	<script src="/superguide/One-Pages/assets/plugins/sky-forms-pro/skyforms/js/jquery.placeholder.min.js"></script>
<![endif]-->
</body>
</html>