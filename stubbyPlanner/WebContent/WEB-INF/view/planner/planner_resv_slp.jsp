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
<meta property="og:url" content="http://www.stubbyPlanner.com/plan/planner_schd.asp?trip_id=10287774" />
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
<body id="body" data-spy="scroll" data-target=".one-page-header" class="demo-lightbox-gallery" onload="initialize();"    >

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
			<a href="javascript:gotoHome()"><img src="http://www.stubbyPlanner.com/img_v11/logo_white.png" height="35px"></a>
		</div>
	</div>
	<div id="topControllerRight" style="width:80%;float:left;">
		<div class="top_menu" id="menu1" onclick="window.location='/planner/planner_rt.asp?trip_id=10287774'"><font style="color:#fff;font-size:12pt;">루트</font></div>
		<div class="top_menu"  id="menu2" onclick="window.location='/planner/planner_schd.asp?trip_id=10287774'" ><font style="font-size:12pt;color:#fff;">일정</font></div>
		<div class="top_menu"  id="menu3" onclick="gotoResv()" style="border-bottom:5px solid gray"><font style="font-size:12pt;color:#fff;"  >예약 <i class="fa fa-lock"></i></font></div>
		<div style="float:left;width:25%;text-align:center;padding-top:8px;">


				<div id="btnStart" style="display:inline-block;border-radius:5px;border:0px solid #fff;background:#ee685a;width:70%;text-align:center;padding-top:6px;padding-bottom:6px;cursor:pointer;text-decoration:none;color:#FFF;font-size:10pt;font-weight:bold"" onclick="complete();" > 작업완료 </div>

		</div>

<script>
var trip_id=10287774;
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
			<div class="leftsubmenu">
	
				<a href="planner_resv_trs.do?trip_id=${param.trip_id }&ridx=${dto.ridx}&scity_id=${dto.scity_id}&ecity_id=${dto.ecity_id}">${dto.scity_name }~${dto.ecity_name } 
				<font class="check_date ">${dto.trs_date}</font>
				</a>	
			</div>
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
	function addToTrip(s)
	{
		alert("이 기능은 현재 준비중입니다.");
	}

	function openResvinfo(rs)
	{

		
		var surl="if_resv_slp.asp?pl=10287774&rt=0&startdate=2019-07-11&sr=111011004&ci=2019-07-11&co=2019-07-14";
		
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

		
	<!-- 	<h3>7월 11일~14일, 파리3박</h3>   -->
		<h3>${route.arr_date }~${route.trs_date }, ${route.scity_name }${route.rt_days }박</h3>
		
<!---- 내 예약정보 시작--->
<c:if test="${resvResDto eq null}">


            <div class="profile-body">
                    <!--Service Block v3-->
                    <div class="row margin-bottom-10">
                       <div class="col-sm-12 sm-margin-bottom-20">
                            <div class="service-block-v3 servive-block-u" style="background:#c0c0c0">


              	              <i class="fa fa-arrow-right"></i>
			<span class="service-heading">나의 예약정보</span>

		<h4>${route.scity_name } 숙소정보</h4>
		<div style="display:inline-block">
			Check In:${route.arr_date }<br/>
			Check Out:  ${route.trs_date }
		</div>
	
		<a href="javascript:openResvinfo()" class="btn-u btn-u-orange btn-u-lg pull-right"><span class="fa fa-pencil"></span> 내 예약 정보 입력</a>
		<div class="clearfix"></div>

		<hr/>
		<h6>숙소 예약정보를 입력하면 이용할 수 있는 3가지 플래너 기능</h6>
		<span class="pull-right" ><a title="예약정보를 입력하시면 주요 여행경비와 총합을 한눈에 확인할 수 있습니다."><img src="/stubbyPlanner/externalData/img_v6/adresv_mngmoney70.png"></a></span>
		<span class="pull-right"><a title="예약정보를 입력하시면 스트리트뷰를 통해 숙소외관과 주변환경을 미리 확인하실 수 있습니다."><img src="/stubbyPlanner/externalData/img_v6/adresv_preview70.png"></a></span>
		<span class="pull-right"><a title="예약정보를 입력하시면 내 숙소와 이용할 공항/역 그리고 주요관광지들이 함께 표시된 지도를 출력하실 수 있습니다."><img src="/stubbyPlanner/externalData/img_v6/adresv_withmap70.png"></a></span>
		<div class="clearfix"></div>

	</div></div></div></div>

</c:if>	
<!-----내 예약정보 끝--->
<c:if test="${resvResDto ne null}">
<div class="service-block-v3 servive-block-u" style="background:#2ecc71">


              	              <i class="fa fa-arrow-right"></i>
			<span class="service-heading">나의 예약정보
	
				  <div class="btn-group pull-right">
			              <button type="button" class="btn-u btn-u-dark dropdown-toggle" data-toggle="dropdown">
              	              	<span class="fa fa-cog"></span> 관리
              	            		  <span class="fa fa-angle-down"></span>
              	          		</button>
              	          		<ul class="dropdown-menu" role="menu">
              	          		    <li><a href="javascript:openResvinfo('296933')">수정</a></li>
              	          		    <li><a href="asp/del_resv_info.asp?t=slp&amp;rs=296933&amp;s=296933&amp;ridx=0&amp;p=10288161">삭제</a></li>
              	          		</ul>
		                    	</div>
		
			</span>


                               <span class="counter">	[${resvResDto.a_room_type}]${resvResDto.a_name}
                               <a href="/wheretogo/streetview.asp?lat=48.882177100389804&amp;lng=2.344511591356536&amp;ht=%ED%8C%8C%EB%A6%AC%ED%8C%AC%EC%85%98" target="_blank">
                               <span class="label label-warning">PREVIEW</span></a>&nbsp;&nbsp;${resvResDto.a_price} ${resvResDto.a_currency}</span>                                
                                <div class="clearfix margin-bottom-10"></div>
                                <div class="row ">
                            	<div class="col-xs-12 service-in">

				<h4>체크인: ${route.arr_date }/ 체크아웃:${resvResDto.a_checkout} <small> ${route.rt_days }박</small></h4>


		<h4>${resvResDto.a_room_type} ${resvResDto.a_room_cnt}개</h4>

		<div style="padding-top:10px;">
		<p class="small"><span class="label label-default">ADDRESS</span> ${resvResDto.a_address}</p>
			
		<p></p>





<!---지도 시작---->

		<hr>
		<small>Location</small>
		<span class="pull-right">
			<span class="label label-dark">함께보기</span>
			 <select onchange="selectmap(this.value);" class="form-control">
				<option value="withmytrs">내가 이용할 역/공항</option>

				<option value="withsubway">가까운 지하철역</option>

				<option value="withbestsee">주요 관광지들</option>
				<option value="withbesttrs">주요 역/공항</option>
			</select>
			
		</span>

	<div id="withmytrs" class="" style="display: block;">
		<a href="/wheretogo/streetview.asp?lat=48.882177100389804&amp;lng=2.344511591356536&amp;ht=%ED%8C%8C%EB%A6%AC%ED%8C%AC%EC%85%98" target="_blank"><img src="http://maps.googleapis.com/maps/api/staticmap?size=430x160&amp;mobile=true&amp;markers=color:red|label:A|48.882177100389804,2.344511591356536&amp;zoom=13&amp;key=AIzaSyAlG3b7IeRzDZW46KIpOFPtiIxXt9MU46I"></a>
		<ul class="list-unstyled small">
			<li>A.내 숙소 </li>
			
		</ul>
	</div>
<script>
	var prv_id="withmytrs";
	function selectmap(id)
	{
		$("#"+prv_id).hide("slow");
		$("#"+id).show("slow");
		prv_id=id;
	}
</script>

<!--지도 지하철역 시작-->

	<div id="withsubway" style="display: none;">
		<a href="/wheretogo/streetview.asp?lat=48.882177100389804&amp;lng=2.344511591356536&amp;ht=%ED%8C%8C%EB%A6%AC%ED%8C%AC%EC%85%98" target="_blank"><img src="http://maps.googleapis.com/maps/api/staticmap?size=430x160&amp;mobile=true&amp;markers=color:red|label:A|48.882177100389804,2.344511591356536&amp;markers=color:blue|label:B|48.88227160921027,2.337566614151001&amp;markers=color:blue|label:C|48.88227160921027,2.337566614151001&amp;markers=color:blue|label:D|48.88301947310488,2.344851493835449&amp;key=AIzaSyAlG3b7IeRzDZW46KIpOFPtiIxXt9MU46I"></a>
		<ul class="list-unstyled small">
			<li>A.내 숙소</li>
			<li>B.<font color="#">■</font>Pigalle - 선() 숙소에서 1km</li><li>C.<font color="#">■</font>Pigalle - 선() 숙소에서 1km</li><li>D.<font color="#">■</font>Anvers - 선() 숙소에서 0km</li>
		</ul>
	</div>

<!--지도 지하철역 끝-->

<!--지도 주요관광지 시작-->

	<div id="withbestsee" style="display: none;">
		<a href="/wheretogo/streetview.asp?lat=48.882177100389804&amp;lng=2.344511591356536&amp;ht=%ED%8C%8C%EB%A6%AC%ED%8C%AC%EC%85%98" target="_blank"><img src="http://maps.googleapis.com/maps/api/staticmap?size=430x160&amp;mobile=true&amp;markers=color:red|label:A|48.882177100389804,2.344511591356536&amp;markers=color:blue|label:B|48.8866457488725,2.34121978282928&amp;markers=color:blue|label:C|48.8736774272086,2.29503750801086&amp;markers=color:blue|label:D|48.8616939112992,2.33648300170898&amp;markers=color:blue|label:E|48.8584822931665,2.29452252388&amp;markers=color:blue|label:F|48.8589552256979,2.3345947265625&amp;markers=color:blue|label:G|48.8720543863763,2.30049848556519&amp;key=AIzaSyAlG3b7IeRzDZW46KIpOFPtiIxXt9MU46I"></a>
		<ul class="list-unstyled small">
			<li>A.내 숙소</li>
			<li><a href="/wheretogo/11101100411004" target="_blank">B.몽마르뜨 언덕</a> (숙소에서 1km)</li><li><a href="/wheretogo/11101100411012" target="_blank">C.개선문</a> (숙소에서 4km)</li><li><a href="/wheretogo/11101100411017" target="_blank">D.루브르 박물관</a> (숙소에서 2km)</li><li><a href="/wheretogo/11101100411014" target="_blank">E.에펠탑</a> (숙소에서 5km)</li><li><a href="/wheretogo/11101100411001" target="_blank">F.세느 강</a> (숙소에서 3km)</li><li><a href="/wheretogo/11101100411015" target="_blank">G.샹젤리제 거리</a> (숙소에서 3km)</li>
		</ul>
	</div>


<!--지도 주요관광지 끝-->
<!--지도 주요교통 시작-->

	<div id="withbesttrs" style="display: none;">
		<a href="/wheretogo/streetview.asp?lat=48.882177100389804&amp;lng=2.344511591356536&amp;ht=%ED%8C%8C%EB%A6%AC%ED%8C%AC%EC%85%98" target="_blank"><img src="http://maps.googleapis.com/maps/api/staticmap?size=430x160&amp;mobile=true&amp;markers=color:red|label:A|48.882177100389804,2.344511591356536&amp;markers=color:blue|label:B|48.8866457488725,2.34121978282928&amp;markers=color:blue|label:C|48.8736774272086,2.29503750801086&amp;markers=color:blue|label:D|48.8616939112992,2.33648300170898&amp;markers=color:blue|label:E|48.8584822931665,2.29452252388&amp;markers=color:blue|label:F|48.8589552256979,2.3345947265625&amp;markers=color:blue|label:G|48.8720543863763,2.30049848556519&amp;key=AIzaSyAlG3b7IeRzDZW46KIpOFPtiIxXt9MU46I"></a>
		<ul class="list-unstyled small">
			<li>A.내 숙소</li>
			<li><a href="/wheretogo/11101100470008" target="_blank">B.파리-샤를드골 공항</a> (숙소에서 22km)</li><li><a href="/wheretogo/11101100470001" target="_blank">C.북역</a> (숙소에서 1km)</li><li><a href="/wheretogo/11101100470009" target="_blank">D.파리-오를리 공항</a> (숙소에서 18km)</li><li><a href="/wheretogo/11101100470002" target="_blank">E.리옹역</a> (숙소에서 5km)</li>
		</ul>
	</div>


<!--지도 주요관광지 끝-->


<!---지도 끝---->

	</div></div></div>

</div>

</c:if>
	<div class="clearfix"></div>








<hr>


	<h5 style="margin-bottom:2px;">동선의 효율성과 가성비를 중요하게 생각하는 스투비회원들은</h5>
	<h4>파리에서 다음 위치의 숙소를 선택했습니다.</h4>

		<div style="width:100%;margin-top:30px;margin-bottom:30px;">
			<div style="float:left;width:20%;padding-top:10px;padding-bottom:10px;text-align:center;border:1px solid #fff;background:#c0c0c0"><a href="/stubbyPlanner/planner/planner_resv_slp.do?trip_id=${param.trip_id }&ridx=${param.ridx}">전체</a></div>
			<div style="float:left;width:20%;padding-top:10px;padding-bottom:10px;;text-align:center;border:1px solid #fff;background:#efefef"><a href="/stubbyPlanner/planner/planner_resv_slp.do?trip_id=${param.trip_id }&ridx=${param.ridx}&slpType=호텔&scity_id=${route.scity_id}">호텔 (${slpRate[0].hotel})</a></div>
			<div style="float:left;width:20%;padding-top:10px;padding-bottom:10px;;text-align:center;border:1px solid #fff;background:#efefef"><a href="/stubbyPlanner/planner/planner_resv_slp.do?trip_id=${param.trip_id }&ridx=${param.ridx}&slpType=호스텔&scity_id=${route.scity_id}">호스텔 (${slpRate[1].hostel})</a></div>

		<%-- 	<div style="float:left;width:20%;padding-top:10px;padding-bottom:10px;;text-align:center;border:1px solid #fff;background:#efefef"><a href="/stubbyPlanner/planner/planner_resv_slp.do?trip_id=${param.trip_id }&ridx=${param.ridx}&slpType=민박&scity_id=${route.scity_id}">민박 (34.8%)</a></div> --%>
			<div style="float:left;width:20%;padding-top:10px;padding-bottom:10px;;text-align:center;border:1px solid #fff;background:#efefef"><a href="/stubbyPlanner/planner/planner_resv_slp.do?trip_id=${param.trip_id }&ridx=${param.ridx}&slpType=아파트&scity_id=${route.scity_id}">아파트 (${slpRate[2].apt})</a></div>
			<div style="clear:both"></div>
			<div id="map_canvas" style="height:450px;"></div>
		</div>

<div style="display:none;">
	<div id="mapControllerBottom" style="padding-top:5px;padding-right:5px;">
		<a href="http://www.booking.com/searchresults.html?aid=308767;label=10287774MHOT111011004;sid=56a741ee04e6421f7e89b295faf1fc82;checkin_monthday=11;checkin_year_month=2019-7;checkout_monthday=14;checkout_year_month=2019-7;city=-1456928;class_interval=1;order=popularity;radius=0;score_min=0;si=ai%2Cco%2Cci%2Cre%2Cdi;ss_all=0;;pr_cur_code=EUR;lang=ko;#map_opened-b_google_map_thumbnail" target="_blank" class="btn-u" style="background:#ee685a;padding-top:10px;padding-bottom:10px;">7월 11일부터 3박이 가능한<br>이 위치의 할인 숙소 찾기 <i class="fa fa-search"></i></a>
	</div>
</div>






<!-------------시작------------------------------------------------------------------------------>
	<div class="row" id="wrapper">
		<div class="col-sm-12 col-md-12">


<!-- AccomInfo 시작  -->
<c:forEach items="${accInfoList }" var="AccomInfo">
	<div class="row" style="margin-bottom:10px;">
		
		<div class="col-xs-12 col-md-4">
			<img src="${AccomInfo.image }" width="100%">
		</div>
		<div class="col-xs-12 col-md-8">
		
			<h2>A.${AccomInfo.title }</h2>
		<!-- 	<h5>파리 1존에 위치한 여성 전용 민박으로, 친절한 사장님이 직접 드라이브하는 야경 투어는 강추! 단, 별관에선 와이파이가 약하다.</h5> -->




		<span class="pull-left" style="margin-left:15px;margin-right:10px;">
			<a href="http://www.stubbyPlanner.com/trace" target="_blank"><img class="rounded-x" onerror="this.src='/stubbyPlanner/externalData/img_v6/img_pfnull.gif'" src="${AccomInfo.reviewMap.profile_pic }"></a>
		</span>
		<div>
	                 	<h4><a  target="_blank" href="/review/document.asp?serial=1000003669999">${AccomInfo.reviewMap.content }</a></h4>
       <div class="star-vote">
		
              		              <ul class="list-inline">
<c:forEach begin="1" end="5" step="1" varStatus="status">
<c:if test="${status.count <= AccomInfo.star }">
	                               <li><i class="color-green fa fa-star"></i></li>
</c:if>
<c:if test="${status.count > AccomInfo.star }">
 								 <li><i class="color-green fa fa-star-o"></i></li>
</c:if>
</c:forEach>				

		
	                             
		
		 </ul>

			</div>
		</div>

	<h5>최근 예약한 플래너들 <span class="label label-success">${AccomInfo.cnt }명</span> </h5>
	<div>
<c:forEach items="${AccomInfo.reserverList }" var="reserver">
		<a href="http://www.stubbyPlanner.com/${reserver.member_id }" target="_blank"><img width="35px" class="rounded-x" onerror="this.src='/stubbyPlanner/externalData/img_v6/img_pfnull.gif'" src="${reserver.profile_pic }"></a>
</c:forEach>		
	
	</div>


	<p align="right" style="padding-top:15px">
		<a href="/review/write.asp?region=111011004&spotname=&category=slp&spotserial=11101100420001" class="btn-u btn-u-default">리뷰쓰기 <span class="label label-default">+50마일</span></a>


		<a href="${AccomInfo.link}" target="_blank" class="btn-u btn-u-green">예약</a>
			
	</p>
	<hr>

		</div>
	</div>
</c:forEach>
<!-- AccomInfo 끝 -->









		</div>
	</div>
<!-------------끝-------------------------------------------------------------------------------->




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

<script type="text/javascript" src="https://maps.google.co.kr/maps/api/js?sensor=false&language=ko&key=AIzaSyAlG3b7IeRzDZW46KIpOFPtiIxXt9MU46I"></script>

<script>
var map;
var stockholm = new google.maps.LatLng('48.86110101269274','2.3421478271484375');
function initialize()
{
	var mapOptions = {
	      zoom: 13,
	      mapTypeId: google.maps.MapTypeId.ROADMAP,
	      center: stockholm,
	      streetViewControl: false,
	  mapTypeControl: true,
	  mapTypeControlOptions: {
	        position: google.maps.ControlPosition.RIGHT_TOP
	    },
	      panControl: true,
	  panControlOptions: {
	        position: google.maps.ControlPosition.RIGHT_TOP
	    },
	      zoomControl: true,
	    zoomControlOptions: {
	        style: google.maps.ZoomControlStyle.SMALL,
	        position: google.maps.ControlPosition.RIGHT_TOP
	    },
	      scaleControl: true
	};
 
 	map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);



	var mapControllerBottom=document.getElementById("mapControllerBottom");
	map.controls[google.maps.ControlPosition.BOTTOM].push(mapControllerBottom);


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
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#b7b7b7"
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
    "featureType": "administrative.land_parcel",
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
    "featureType": "administrative.land_parcel",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#dedede"
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
    "featureType": "administrative.locality",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#d6d6d6"
      },
      {
        "visibility": "on"
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
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#eeeeee"
      },
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "labels.icon",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "poi.attraction",
    "elementType": "labels.icon",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "poi.attraction",
    "elementType": "labels.text",
    "stylers": [
      {
        "color": "#cfcfcf"
      }
    ]
  },
  {
    "featureType": "poi.attraction",
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "color": "#ffffff"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#e5e5e5"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#dbdbdb"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "color": "#ffffff"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#ffffff"
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
    "featureType": "road.highway",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#dadada"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#616161"
      },
      {
        "visibility": "off"
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
    "featureType": "water",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#e8f7ff"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#9e9e9e"
      }
    ]
  }
];
	map.setOptions({styles: styles});


	var myLatlng = new google.maps.LatLng('48.86110101269274','2.3421478271484375');
	map.setCenter(myLatlng);


	addMarker('48.8866457488725','2.34121978282928','몽마르뜨 언덕',0,1,'');addMarker('48.8736774272086','2.29503750801086','개선문',0,1,'');addMarker('48.8616939112992','2.33648300170898','루브르 박물관',0,1,'');addMarker('48.8584822931665','2.29452252388','에펠탑',0,1,'');addMarker('48.8589552256979','2.3345947265625','세느 강',0,1,'');addMarker('48.8720543863763','2.30049848556519','샹젤리제 거리',0,1,'');addMarker('49.02287100000002','2.547128000000019','파리-샤를드골 공항',0,2,'');addMarker('48.88080407019765','2.35506534576416','북역',0,2,'');addMarker('48.72499800000001','2.368483000000001','파리-오를리 공항',0,2,'');addMarker('48.84485003383724','2.373969554901123','리옹역',0,2,'');addMarker('48.841896829886501','2.3302710056304901','Villa Luxembourg - 22.6',0,0,'Villa+Luxembourg');addMarker('48.8934213','2.325032599999986','Hotel avenir jonquiere - 8',1,0,'Hotel+avenir+jonquiere');addMarker('48.854433','2.2954819999999927','파리엘 에펠뷰하우스 - 7.4',1,0,'%ED%8C%8C%EB%A6%AC%EC%97%98+%EC%97%90%ED%8E%A0%EB%B7%B0%ED%95%98%EC%9A%B0%EC%8A%A4');addMarker('48.8551','2.33504','르 릴레 호텔 - 7.2',1,0,'%EB%A5%B4+%EB%A6%B4%EB%A0%88+%ED%98%B8%ED%85%94');addMarker('48.85617320000001','2.3579173000000537',' - 6.8',1,0,'');addMarker('48.8684632','2.3571340999999393','꽃보다 민박 - 4.7',1,0,'%EA%BD%83%EB%B3%B4%EB%8B%A4+%EB%AF%BC%EB%B0%95');addMarker('48.8188134','2.5415269999999736','파리 숙소 - 2.3',1,0,'%ED%8C%8C%EB%A6%AC+%EC%88%99%EC%86%8C');addMarker('48.8622','2.35732','트랜스페어런트 마레 - 30',0,0,'%ED%8A%B8%EB%9E%9C%EC%8A%A4%ED%8E%98%EC%96%B4%EB%9F%B0%ED%8A%B8+%EB%A7%88%EB%A0%88');addMarker('48.8351','2.38761','키리아드 호텔 파리 베르시 빌리지 - 3.5',1,0,'%ED%82%A4%EB%A6%AC%EC%95%84%EB%93%9C+%ED%98%B8%ED%85%94+%ED%8C%8C%EB%A6%AC+%EB%B2%A0%EB%A5%B4%EC%8B%9C+%EB%B9%8C%EB%A6%AC%EC%A7%80');addMarker('48.8414','2.30278','델로스 보지라르 - 4.6',1,0,'%EB%8D%B8%EB%A1%9C%EC%8A%A4+%EB%B3%B4%EC%A7%80%EB%9D%BC%EB%A5%B4');addMarker('48.8532144','2.2905459999999493','에펠탑 센느아파트 - 22',0,0,'%EC%97%90%ED%8E%A0%ED%83%91+%EC%84%BC%EB%8A%90%EC%95%84%ED%8C%8C%ED%8A%B8');addMarker('48.8730156','2.35865960000001','Hotel Est - 13.9',0,0,'Hotel+Est');addMarker('48.8735325','2.334494800000016',' - 15.8',0,0,'');addMarker('48.8551','2.33504','Bvj champs-elysees - 7.8',1,0,'Bvj+champs%2Delysees');addMarker('48.82725749999999','2.2850186000000576','ㅅㅎ - 4',1,0,'%E3%85%85%E3%85%8E');addMarker('48.8717','2.32814','MIJE - 3.7',1,0,'MIJE');addMarker('48.8688','2.36007','호텔 엑셀시어 - 23.1',0,0,'%ED%98%B8%ED%85%94+%EC%97%91%EC%85%80%EC%8B%9C%EC%96%B4');addMarker('48.8645574','2.2757219000000077','68 Avenue Henri Martin, Paris, Ile-de-France 75116, 프랑스 - 5.1',1,0,'68+Avenue+Henri+Martin%2C+Paris%2C+Ile%2Dde%2DFrance+75116%2C+%ED%94%84%EB%9E%91%EC%8A%A4');addMarker('48.8877772','2.252458199999978','노보텔 라데팡스  - 11.2',0,0,'%EB%85%B8%EB%B3%B4%ED%85%94+%EB%9D%BC%EB%8D%B0%ED%8C%A1%EC%8A%A4+');addMarker('48.8717','2.32814','오페라 - 4.6',1,0,'%EC%98%A4%ED%8E%98%EB%9D%BC');addMarker('48.86211582941375','2.356231131521554','메종마레 - 4.7',1,0,'%EB%A9%94%EC%A2%85%EB%A7%88%EB%A0%88');addMarker('48.8371688','2.350574800000004','hotel port royal - 9.1',1,0,'hotel+port+royal');addMarker('48.87219289999999','2.382600899999943',' - 4.7',1,0,'');addMarker('48.8552','2.29221','머큐어 파리 센터 투어 에펠 - 34.4',0,0,'%EB%A8%B8%ED%81%90%EC%96%B4+%ED%8C%8C%EB%A6%AC+%EC%84%BC%ED%84%B0+%ED%88%AC%EC%96%B4+%EC%97%90%ED%8E%A0');addMarker('48.8637976741569','2.3545989766717','플로르민박 - 12.5',0,0,'%ED%94%8C%EB%A1%9C%EB%A5%B4%EB%AF%BC%EB%B0%95');addMarker('48.8696054','2.354136100000005','파리넘버투 - 0.5',1,0,'%ED%8C%8C%EB%A6%AC%EB%84%98%EB%B2%84%ED%88%AC');addMarker('48.8551','2.33504',' - 3.4',1,0,'');addMarker('48.8760821','2.294960500000002','에투왈 파크 - 11.4',0,0,'%EC%97%90%ED%88%AC%EC%99%88+%ED%8C%8C%ED%81%AC');addMarker('48.8805465','2.3391966000000366','세인트 고게스 라파예테 - 11.2',0,0,'%EC%84%B8%EC%9D%B8%ED%8A%B8+%EA%B3%A0%EA%B2%8C%EC%8A%A4+%EB%9D%BC%ED%8C%8C%EC%98%88%ED%85%8C');addMarker('48.8383','2.3228','드봉 - 12',0,0,'%EB%93%9C%EB%B4%89');addMarker('48.8551','2.33504','밀레심 호텔 - 15',0,0,'%EB%B0%80%EB%A0%88%EC%8B%AC+%ED%98%B8%ED%85%94');addMarker('48.8791278','2.357829600000059',' - 4.2',1,0,'');addMarker('48.8515','2.29751','레지던스 샹 드 마르스  - 11.8',0,0,'%EB%A0%88%EC%A7%80%EB%8D%98%EC%8A%A4+%EC%83%B9+%EB%93%9C+%EB%A7%88%EB%A5%B4%EC%8A%A4+');addMarker('48.8435','2.29255','더 3 덕스 에펠 타워 바이 힙합호스텔스 - 6.1',1,0,'%EB%8D%94+3+%EB%8D%95%EC%8A%A4+%EC%97%90%ED%8E%A0+%ED%83%80%EC%9B%8C+%EB%B0%94%EC%9D%B4+%ED%9E%99%ED%95%A9%ED%98%B8%EC%8A%A4%ED%85%94%EC%8A%A4');addMarker('48.865918','2.3086809999999787','Adveniat - 5',1,0,'Adveniat');addMarker('48.8551','2.33504','로뎀의집 - 9.5',1,0,'%EB%A1%9C%EB%8E%80%EC%9D%98%EC%A7%91');addMarker('48.8382631','2.304004999999961','아꼬떼 에펠 - 5.3',1,0,'%EC%95%84%EA%BC%AC%EB%96%BC+%EC%97%90%ED%8E%A0');addMarker('48.8551','2.33504','파리화이트에펠 - 6.8',1,0,'%ED%8C%8C%EB%A6%AC%ED%99%94%EC%9D%B4%ED%8A%B8%EC%97%90%ED%8E%A0');addMarker('48.8717','2.32814','10 Rue du Jour 25, Premier Etage, Paris, Ile-de-France 75001, 프랑스 - 2.3',1,0,'10+Rue+du+Jour+25%2C+Premier+Etage%2C+Paris%2C+Ile%2Dde%2DFrance+75001%2C+%ED%94%84%EB%9E%91%EC%8A%A4');addMarker('48.8596745','2.38751579999996','파리쉐마망 - 4.1',1,0,'%ED%8C%8C%EB%A6%AC%EC%89%90%EB%A7%88%EB%A7%9D');addMarker('48.8839444','2.3443125999999666','Le Vilage Montmartre by Hiphophostel - 8.4',1,0,'Le+Vilage+Montmartre+by+Hiphophostel');addMarker('48.8532','2.36151','쁘띠 마레 - 4.6',1,0,'%EC%81%98%EB%9D%A0+%EB%A7%88%EB%A0%88');addMarker('48.8807','2.28427','하얏트 리젠시 파리 에투알 - 12.2',0,0,'%ED%95%98%EC%96%8F%ED%8A%B8+%EB%A6%AC%EC%A0%A0%EC%8B%9C+%ED%8C%8C%EB%A6%AC+%EC%97%90%ED%88%AC%EC%95%8C');addMarker('48.8567','2.30722','호텔 르 보장시 - 13.2',0,0,'%ED%98%B8%ED%85%94+%EB%A5%B4+%EB%B3%B4%EC%9E%A5%EC%8B%9C');addMarker('48.8435524','2.2925136999999722','3ducks - 5.8',1,0,'3ducks');addMarker('48.8975938','2.359826500000054',' - 4.6',1,0,'');addMarker('48.8021605','2.364808000000039','파리투어민박 - 3',1,0,'%ED%8C%8C%EB%A6%AC%ED%88%AC%EC%96%B4%EB%AF%BC%EB%B0%95');addMarker('48.8551','2.33504','파리엘에펠뷰 - 7.3',1,0,'%ED%8C%8C%EB%A6%AC%EC%97%98%EC%97%90%ED%8E%A0%EB%B7%B0');addMarker('48.8551','2.33504','파리엘에펠뷰  - 9.8',1,0,'%ED%8C%8C%EB%A6%AC%EC%97%98%EC%97%90%ED%8E%A0%EB%B7%B0+');addMarker('48.8597233','2.3084667000000536','에펠파리 - 20',0,0,'%EC%97%90%ED%8E%A0%ED%8C%8C%EB%A6%AC');addMarker('48.8669','2.30384','샹비쥬 엘리제 - 25.2',0,0,'%EC%83%B9%EB%B9%84%EC%A5%AC+%EC%97%98%EB%A6%AC%EC%A0%9C');addMarker('48.85984356086662','2.3738354711913416','내이름은파리 - 2.1',1,0,'%EB%82%B4%EC%9D%B4%EB%A6%84%EC%9D%80%ED%8C%8C%EB%A6%AC');addMarker('48.8717','2.32814','에어비앤비 - 4.9',1,0,'%EC%97%90%EC%96%B4%EB%B9%84%EC%95%A4%EB%B9%84');addMarker('48.89278340000001','2.3791403000000173','가즈아민박 - 8',1,0,'%EA%B0%80%EC%A6%88%EC%95%84%EB%AF%BC%EB%B0%95');addMarker('48.8612917','2.2847788000000264','파리 앙상블 - 13.6',0,0,'%ED%8C%8C%EB%A6%AC+%EC%95%99%EC%83%81%EB%B8%94');addMarker('48.8551','2.33504','Citadines tour eiffel paris - 26.8',0,0,'Citadines+tour+eiffel+paris');addMarker('48.8337692','2.344676199999981',' - 6.1',1,0,'');addMarker('48.8337692','2.344676199999981',' - 6.1',1,0,'');addMarker('48.8337692','2.344676199999981',' - 6.1',1,0,'');addMarker('48.8645751','2.355069100000037',' - 4.6',1,0,'');addMarker('48.8303','2.30195','이비스 파리 브랑시옹 파크 데젝스포지시옹 켕지엠므 - 12.9',0,0,'%EC%9D%B4%EB%B9%84%EC%8A%A4+%ED%8C%8C%EB%A6%AC+%EB%B8%8C%EB%9E%91%EC%8B%9C%EC%98%B9+%ED%8C%8C%ED%81%AC+%EB%8D%B0%EC%A0%9D%EC%8A%A4%ED%8F%AC%EC%A7%80%EC%8B%9C%EC%98%B9+%EC%BC%95%EC%A7%80%EC%97%A0%EB%AF%80');addMarker('48.85524179999999','2.34081070000002','citadines saint-germain-des-pres paris - 18.9',0,0,'citadines+saint%2Dgermain%2Ddes%2Dpres+paris');addMarker('48.8556','2.29256','풀만 파리 타워 에펠 - 52.7',0,0,'%ED%92%80%EB%A7%8C+%ED%8C%8C%EB%A6%AC+%ED%83%80%EC%9B%8C+%EC%97%90%ED%8E%A0');addMarker('48.8556','2.29256','풀만 파리 타워 에펠 - 52.7',0,0,'%ED%92%80%EB%A7%8C+%ED%8C%8C%EB%A6%AC+%ED%83%80%EC%9B%8C+%EC%97%90%ED%8E%A0');addMarker('48.85906','2.2974263999999494','에펠뷰, 지엘드파리 - 7.4',1,0,'%EC%97%90%ED%8E%A0%EB%B7%B0%2C+%EC%A7%80%EC%97%98%EB%93%9C%ED%8C%8C%EB%A6%AC');addMarker('48.8623047','2.3848421000000144','135 Rue du Chemin Vert, Paris, Ile-de-France 75011, 프랑스 - 8.9',1,0,'135+Rue+du+Chemin+Vert%2C+Paris%2C+Ile%2Dde%2DFrance+75011%2C+%ED%94%84%EB%9E%91%EC%8A%A4');addMarker('48.8467885','2.287742200000025','alize grenelle tour eiffel - 14.5',0,0,'alize+grenelle+tour+eiffel');addMarker('48.8755618','2.358541500000001','Ibis paris gare de l’est - 7',1,0,'Ibis+paris+gare+de+l%E2%80%99est');addMarker('48.8658','2.28615','호텔 팔레 드 샤이오 - 15.7',0,0,'%ED%98%B8%ED%85%94+%ED%8C%94%EB%A0%88+%EB%93%9C+%EC%83%A4%EC%9D%B4%EC%98%A4');addMarker('48.8351','2.38761','키리아드 호텔 파리 베르시 빌리지 - 14.6',0,0,'%ED%82%A4%EB%A6%AC%EC%95%84%EB%93%9C+%ED%98%B8%ED%85%94+%ED%8C%8C%EB%A6%AC+%EB%B2%A0%EB%A5%B4%EC%8B%9C+%EB%B9%8C%EB%A6%AC%EC%A7%80');addMarker('48.8654','2.33631','호텔 몰리에르 - 23.2',0,0,'%ED%98%B8%ED%85%94+%EB%AA%B0%EB%A6%AC%EC%97%90%EB%A5%B4');addMarker('48.8459044866906','2.30162400752306','에어비앤비 - 7.3',1,0,'%EC%97%90%EC%96%B4%EB%B9%84%EC%95%A4%EB%B9%84');addMarker('48.8495802253082','2.29833092540503','호텔 투어리즘 애비뉴 - 9.9',1,0,'%ED%98%B8%ED%85%94+%ED%88%AC%EC%96%B4%EB%A6%AC%EC%A6%98+%EC%95%A0%EB%B9%84%EB%89%B4');addMarker('48.8755617203838','2.35854148864746','Hotel Ibis Paris Gare de L\u0027Est - 7',1,0,'Hotel+Ibis+Paris+Gare+de+L%5Cu0027Est');addMarker('48.8807','2.28427','하얏트 리젠시 파리 에투알 - 20.2',0,0,'%ED%95%98%EC%96%8F%ED%8A%B8+%EB%A6%AC%EC%A0%A0%EC%8B%9C+%ED%8C%8C%EB%A6%AC+%EC%97%90%ED%88%AC%EC%95%8C');addMarker('48.8551','2.33504','행운민박 - 4.6',1,0,'%ED%96%89%EC%9A%B4%EB%AF%BC%EB%B0%95');addMarker('48.84627626483601','2.2768843173980713','에펠언니네 - 6.7',1,0,'%EC%97%90%ED%8E%A0%EC%96%B8%EB%8B%88%EB%84%A4');addMarker('48.8551','2.33504','드봉 한인민박 - 11.7',0,0,'%EB%93%9C%EB%B4%89+%ED%95%9C%EC%9D%B8%EB%AF%BC%EB%B0%95');addMarker('48.8718','2.34195','베스트 웨스턴 롱세라이 오페라 - 15.9',0,0,'%EB%B2%A0%EC%8A%A4%ED%8A%B8+%EC%9B%A8%EC%8A%A4%ED%84%B4+%EB%A1%B1%EC%84%B8%EB%9D%BC%EC%9D%B4+%EC%98%A4%ED%8E%98%EB%9D%BC');addMarker('48.86516530000001','2.3762713999999505','하이파리민박 - 3.3',1,0,'%ED%95%98%EC%9D%B4%ED%8C%8C%EB%A6%AC%EB%AF%BC%EB%B0%95');addMarker('48.8701296','2.3549434000000247','Number2Paris - 4',1,0,'Number2Paris');addMarker('48.8561','2.29417','레지덩스 샤를르 플로케 - 78.8',0,0,'%EB%A0%88%EC%A7%80%EB%8D%A9%EC%8A%A4+%EC%83%A4%EB%A5%BC%EB%A5%B4+%ED%94%8C%EB%A1%9C%EC%BC%80');addMarker('48.8556','2.29256','풀만 파리 타워 에펠 - 45.5',0,0,'%ED%92%80%EB%A7%8C+%ED%8C%8C%EB%A6%AC+%ED%83%80%EC%9B%8C+%EC%97%90%ED%8E%A0');addMarker('48.8763','2.29311','스텔라 에투알 - 24.6',0,0,'%EC%8A%A4%ED%85%94%EB%9D%BC+%EC%97%90%ED%88%AC%EC%95%8C');addMarker('48.8717','2.32814','파리에뚜알민박 - 20',0,0,'%ED%8C%8C%EB%A6%AC%EC%97%90%EB%9A%9C%EC%95%8C%EB%AF%BC%EB%B0%95');addMarker('48.8551','2.33504','에어비앤비 - 5.7',1,0,'%EC%97%90%EC%96%B4%EB%B9%84%EC%95%A4%EB%B9%84');addMarker('48.87','2.37901','레 피올 - 4.7',1,0,'%EB%A0%88+%ED%94%BC%EC%98%AC');addMarker('48.8189661','2.241090999999983',' - 11.7',0,0,'');addMarker('48.8603','2.34417','베스트 웨스턴 프리미어 딕 드 부르고뉴 - 30.5',0,0,'%EB%B2%A0%EC%8A%A4%ED%8A%B8+%EC%9B%A8%EC%8A%A4%ED%84%B4+%ED%94%84%EB%A6%AC%EB%AF%B8%EC%96%B4+%EB%94%95+%EB%93%9C+%EB%B6%80%EB%A5%B4%EA%B3%A0%EB%89%B4');addMarker('48.9011802','2.334040899999991','이비스 버짓 파리 포르트 드 몽마르트르 - 6.1',1,0,'%EC%9D%B4%EB%B9%84%EC%8A%A4+%EB%B2%84%EC%A7%93+%ED%8C%8C%EB%A6%AC+%ED%8F%AC%EB%A5%B4%ED%8A%B8+%EB%93%9C+%EB%AA%BD%EB%A7%88%EB%A5%B4%ED%8A%B8%EB%A5%B4');addMarker('48.8551','2.33504',' - 4.8',1,0,'');addMarker('48.8530731','2.2871231000000307','에펠탑민박 - 7',1,0,'%EC%97%90%ED%8E%A0%ED%83%91%EB%AF%BC%EB%B0%95');addMarker('48.8717','2.32814','꽃보다 민박 - 4.6',1,0,'%EA%BD%83%EB%B3%B4%EB%8B%A4+%EB%AF%BC%EB%B0%95');addMarker('48.8551','2.33504','꽃보다 민박 - 4.4',1,0,'%EA%BD%83%EB%B3%B4%EB%8B%A4+%EB%AF%BC%EB%B0%95');addMarker('48.8551','2.33504','로뎀의집 - 4.1',1,0,'%EB%A1%9C%EB%8E%80%EC%9D%98%EC%A7%91');addMarker('48.8515','2.29751','레지던스 샹 드 마르스  - 5.6',1,0,'%EB%A0%88%EC%A7%80%EB%8D%98%EC%8A%A4+%EC%83%B9+%EB%93%9C+%EB%A7%88%EB%A5%B4%EC%8A%A4+');addMarker('48.8434912815626','2.35183395445347','chambre d\u0027hotel avec  douche et toliettes partegees - 10.5',1,0,'chambre+d%5Cu0027hotel+avec++douche+et+toliettes+partegees');addMarker('48.8551','2.33504','코코파리 - 5.3',1,0,'%EC%BD%94%EC%BD%94%ED%8C%8C%EB%A6%AC');addMarker('48.8783','2.34754','파리 카톡 - 4',1,0,'%ED%8C%8C%EB%A6%AC+%EC%B9%B4%ED%86%A1');addMarker('48.86208209999999','2.3539654999999584','노틀담민박 - 12.6',0,0,'%EB%85%B8%ED%8B%80%EB%8B%B4%EB%AF%BC%EB%B0%95');

	
}
var prv_infowindow;

var myMarkers=[];

function addMarker(lat,lng,title,is_recomm,is_mine,encoded_title)
{
	var zidx=9;
	if(lat!="")
	{

		if(is_mine>0)
		{
				if(is_mine==2)
				{
					zidx=99;
					icoimg="http://www.stubbyPlanner.com/img_v8/marker_visited.png";
				}
				else
				{
					zidx=99;
					icoimg="http://www.stubbyPlanner.com/img_v8/marker_willgo.png";

				}

		}
		else
		{
			if(is_recomm)
			{
				zidx=10;
				icoimg="http://www.stubbyPlanner.com/img_v8/marker.png";


			}
			else
			{
				icoimg="http://www.stubbyPlanner.com/img_v8/selectcityICON_red.png";
			}
		}
		var myLatlng = new google.maps.LatLng(lat,lng);
		var marker = new google.maps.Marker({
		      icon:icoimg,
		      position: myLatlng,
		      map: map,
		      title: title,
		      zindex:zidx,
		    optimized: false
		});

		myMarkers.push(marker);

	
		google.maps.event.addListener(marker, 'click', function() {
			if(prv_infowindow)
				prv_infowindow.close();

			infowindow = new google.maps.InfoWindow();
				
			if(encoded_title=="")
				thtml=title;
			else
				thtml='<a href="http://www.booking.com/searchresults.html?aid=308767&label=DB111011004_recent&ss='+encoded_title+'&si=ho&checkin_monthday=11&checkin_year_month=2019-7&checkout_monthday=14&checkout_year_month=2019-7&city=-1456928" target="_blank" title="booking.com에서 이 숙소 찾기">'+title+' <i class="fa fa-search"></i></a>';

			infowindow.setContent(thtml);

			infowindow.open(map,marker);
			prv_infowindow=infowindow;
		});

		
	}
}
</script>

</body>
</html>