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
<meta property="og:url" content="http://www.stubbyplanner.com/planner/planner_resv_trs.asp?trip_id=10286783" />
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
.lmenu_title
{
	color:#696969;
}
.selected
{
	font-weight:bold;
	color:#696969;
}
canvas {
	-moz-user-select: none;
	-webkit-user-select: none;
	-ms-user-select: none;
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
		<div class="top_menu" id="menu1" onclick="window.location='/planner/planner_rt.asp?trip_id=10286783'"><font style="color:#fff;font-size:12pt;">루트</font></div>
		<div class="top_menu"  id="menu2" onclick="window.location='/planner/planner_schd.asp?trip_id=10286783'" ><font style="font-size:12pt;color:#fff;">일정</font></div>
		<div class="top_menu"  id="menu3" onclick="gotoResv()" style="border-bottom:5px solid gray"><font style="font-size:12pt;color:#fff;"  >예약 <i class="fa fa-lock"></i></font></div>
		<div style="float:left;width:25%;text-align:center;padding-top:8px;">


				<div id="btnStart" style="display:inline-block;border-radius:5px;border:0px solid #fff;background:#ee685a;width:70%;text-align:center;padding-top:6px;padding-bottom:6px;cursor:pointer;text-decoration:none;color:#FFF;font-size:10pt;font-weight:bold"" onclick="complete();" > 작업완료 </div>

		</div>

<script>
var trip_id=10286783;
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


			<a href="planner_resv_pass.asp?trip_id=10286783" class="lmenu_title "><i class="fa fa-ticket"></i> 유레일패스 </a>
		</div>
		<div class="leftmenu">
			<div style="padding-bottom:10px"><i class="fa fa-arrow-right"></i> 교통</div>

<c:forEach items="${routelist}" var="dto" varStatus="status">
			<div class="leftsubmenu">
	
				<a href="planner_resv_trs.do?trip_id=${param.trip_id }&ridx=${dto.ridx}&scity_id=${dto.scity_id}&ecity_id=${dto.ecity_id}">${dto.scity_name }~${dto.ecity_name } 
				<font class="check_date ">${dto.trs_date}</font>
				</a>
<c:if test="${status.count eq param.ridx }">				
				<i class="fa fa-check-circle-o" aria-hidden="true"></i>
</c:if>				
			</div>
</c:forEach>

		</div>

		<div class="leftmenu">
			<div style="padding-bottom:10px"><i class="fa fa-hotel"></i> 숙소</div>

<c:forEach  items="${routelist}" var="dto" >
			<div class="leftsubmenu">
				<a href="planner_resv_slp.do?trip_id=${param.trip_id }&ridx=${dto.ridx}" class="lmenu_title ">${dto.scity_name } 
				<font class="check_date">${dto.arr_date}~${dto.trs_date}(${dto.rt_days}박)</font> </a>
			</div>
</c:forEach>
<!-- 			<div class="leftsubmenu">
				<a href="planner_resv_slp.asp?trip_id=10286783&ridx=1" class="lmenu_title ">런던 <font class="check_date">7월 13일~7월 16일(3박)</font> </a>

			</div> -->


		</div>

		<div class="leftmenu">
			<div style="padding-bottom:10px"><i class="fa fa-flag"></i> 투어 / 티켓</div>

<c:forEach  items="${routelist}" var="dto" >
			<div class="leftsubmenu">
				<a href="planner_resv_tour.asp?trip_id=${param.trip_id }&ridx=${dto.ridx}" class="lmenu_title ">${dto.scity_name }  <font class="check_date">${dto.arr_date}부터 ${dto.rt_days}박</font> </a>
			</div>
</c:forEach>
<!-- 			<div class="leftsubmenu">
				<a href="planner_resv_tour.asp?trip_id=10286783&ridx=1" class="lmenu_title ">런던 <font class="check_date">7월 13일부터 3박</font> </a>
			</div> -->


		</div>


	</div>
	<div id="contentRight" style="float:left;width:80%;padding-top:10px;">
		<div style="width:98%;height:600px;border-left:1px solid #efefef">
		<div style="padding-left:20px;padding-right:20px;">






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

		
		var surl="if_resv_trs.asp?pl=10286783&rt=1&startdate=2019-07-10&dep=111011004&des=111031001&dd=2019-07-13&slp=&prvrt=";
		
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

<!-- 		<h2>7월 13일, 파리 -> 런던 <small>342km</small></h2>      -->
<h2>${route.trs_date }, ${route.scity_name } -> ${route.ecity_name} <small>342km</small></h2>      


              <div class="profile-body">
                    <!--Service Block v3-->
                    <div class="row margin-bottom-10">




<!-----내 예약정보 표시 시작----->
<c:if test="${resTransInfo eq null}">

                       <div class="col-sm-12 sm-margin-bottom-20">
                       <div class="service-block-v3 servive-block-u" style="background:#c0c0c0">
			<i class="fa fa-arrow-right"></i>
			<span class="service-heading">나의 예약정보</span>

                                <span class="counter" style="font-size:19pt">아직 예약정보가 입력되지 않았습니다.</span>                                
                                <div class="clearfix margin-bottom-10"></div>
                                <div class="row margin-bottom-20">
                            	<div class="col-xs-12 service-in">
				<h4>${route.scity_name } - ${route.ecity_name} 이동정보</h4>
				<small>이동일: ${route.trs_date } </small>
				 


				<a href="javascript:openResvinfo()" class="btn-u btn-u-orange btn-u-lg pull-right"><span class="fa fa-pencil"></span> 내 예약 정보 입력</a>
				<div class="clearfix"></div>
				<hr/>
				<p>
					
					<h6>예약정보를 입력하면 이용할 수 있는 3가지 플래너 기능</h6>
					<span class="pull-right" ><img src="/stubbyPlanner/externalData/img_v6/adresv_mngmoney70.png"></span>
					<span class="pull-right"><img src="/stubbyPlanner/externalData/img_v6/adresv_preview70.png"></span>
					<span class="pull-right"><img src="/stubbyPlanner/externalData/img_v6/adresv_withmap70.png"></span>
					<div class="clearfix"></div>
				</p>


			</div>
		</div>
	</div>
	</div>
</c:if>	

<!-----내 예약정보 표시 끝------->
<c:if test="${resTransInfo ne null}">
<div class="col-sm-12 sm-margin-bottom-20">
                            <div class="service-block-v3 servive-block-u" style="background:#2ecc71">
              	              <i class="fa fa-arrow-right"></i>
			<span class="service-heading">나의 예약정보
			
				<div class="btn-group pull-right">
			              <button type="button" class="btn-u btn-u-dark dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
              	              	<span class="fa fa-cog"></span> 관리
              	            		  <span class="fa fa-angle-down"></span>
              	          		</button>
              	          		<ul class="dropdown-menu" role="menu">
              	          		    <li><a href="javascript:openResvinfo('296195')">수정</a></li>
              	          		    <li><a href="asp/del_resv_info.asp?t=trs&amp;rs=296195&amp;s=296195&amp;ridx=1&amp;p=10287025">삭제</a></li>
              	          		</ul>
		                    	</div>
			
			</span>

                                <span class="counter">${resTransInfo.tr_trans} &nbsp; ${resTransInfo.tr_price} 만원</span>                                
                                <div class="clearfix margin-bottom-10"></div>
                                <div class="row ">
                            	<div class="col-xs-12 service-in">
				<h5><span class="label label-default">출발</span> &nbsp;&nbsp;<small>${resTransInfo.tr_deptcity }(${route.scity_name })</small></h5>
				<h5><span class="label label-default">도착</span> &nbsp;&nbsp;<small>${resTransInfo.tr_arrcity }(${route.ecity_name})</small></h5>

				<br>

				
				<p></p>
	


				<p><select class="form-control" name="selstation" onchange="selectstation(this.value)">
					<option value="depstations">출발 터미널 위치 (${resTransInfo.tr_deptcity })</option>
					<option value="desstations">도착 터미널 위치 (${resTransInfo.tr_arrcity })</option>
				</select></p>
			</div>
		</div>

<script>
function selectstation(id)
{
	if(id=="depstations")
	{
		$("#desstations").hide("slow");
		$("#depstations").show("slow");
	}
	else
	{
		$("#depstations").hide("slow");
		$("#desstations").show("slow");
	}
}
</script>
<div id="depstations">

	<div><a title="지도 크게보기" href="/wheretogo/index.asp?tbl=map&amp;srcserial=11101100470006"><img class="img-responsive" src="https://maps.google.com/maps/api/staticmap?maptype=mobile&amp;markers=color:red|label:A|48.843141327377744,2.365107536315918&amp;markers=color:green|label:B|48.8866457488725,2.34121978282928&amp;markers=color:green|label:C|48.8736774272086,2.29503750801086&amp;markers=color:green|label:D|48.8616939112992,2.33648300170898&amp;markers=color:green|label:E|48.8584822931665,2.29452252388&amp;markers=color:green|label:F|48.8589552256979,2.3345947265625&amp;&amp;visible=48.86110101269274,2.3421478271484375&amp;size=430x170&amp;sensor=false&amp;key=AIzaSyAlG3b7IeRzDZW46KIpOFPtiIxXt9MU46I"></a></div>
	<blockquote><ul class="list-unstyled small"><li><b>A.오스텔리츠역</b></li><li><a href="/wheretogo/11101100411004" target="_blank">B.몽마르뜨 언덕</a> <font style="font-size:9pt">거리:5km</font></li><li><a href="/wheretogo/11101100411012" target="_blank">C.개선문</a> <font style="font-size:9pt">거리:6km</font></li><li><a href="/wheretogo/11101100411017" target="_blank">D.루브르 박물관</a> <font style="font-size:9pt">거리:3km</font></li><li><a href="/wheretogo/11101100411014" target="_blank">E.에펠탑</a> <font style="font-size:9pt">거리:5km</font></li><li><a href="/wheretogo/11101100411001" target="_blank">F.세느 강</a> <font style="font-size:9pt">거리:3km</font></li></ul></blockquote>

</div>
<div id="desstations" style="display:none">

	<div><a title="지도 크게보기" href="/wheretogo/index.asp?tbl=map&amp;srcserial=11103100170036"><img class="img-responsive" src="https://maps.google.com/maps/api/staticmap?maptype=mobile&amp;markers=color:red|label:A|51.5281488,-0.13389680000000226&amp;markers=color:green|label:B|51.5194253280819,-0.127115249633789&amp;markers=color:green|label:C|51.5007553776491,-0.143251419067383&amp;markers=color:green|label:D|51.5032798740094,-0.119991302490234&amp;markers=color:green|label:E|51.5055638216429,-0.0754129886627197&amp;markers=color:green|label:F|51.5080613409367,-0.0761747360229492&amp;&amp;visible=51.5000874980771,-0.126256942749023&amp;size=430x170&amp;sensor=false&amp;key=AIzaSyAlG3b7IeRzDZW46KIpOFPtiIxXt9MU46I"></a></div>
	<blockquote><ul class="list-unstyled small"><li><b>A.유스턴 기차역</b></li><li><a href="/wheretogo/11103100111001" target="_blank">B.대영 박물관</a>  <font style="font-size:9pt">거리:1km</font></li><li><a href="/wheretogo/11103100111007" target="_blank">C.버킹검궁</a>  <font style="font-size:9pt">거리:3km</font></li><li><a href="/wheretogo/11103100111010" target="_blank">D.런던 아이</a>  <font style="font-size:9pt">거리:3km</font></li><li><a href="/wheretogo/11103100111016" target="_blank">E.타워 브릿지</a>  <font style="font-size:9pt">거리:5km</font></li><li><a href="/wheretogo/11103100111011" target="_blank">F.런던 타워</a>  <font style="font-size:9pt">거리:5km</font></li></ul></blockquote>

</div>

	</div></div>


<!-----내 예약정보 표시 끝 2 ------->
</c:if>
    	</div> 


                    </div><!--/end row-->
                    <!--End Service Block v3-->

<hr/>



                    <!-- Pie Charts v1 -->


                  <div class="row pie-progress-charts margin-bottom-60">
<c:forEach items="${trsMapList}" var="trsMap" varStatus="status">

                        <div class="inner-pchart col-md-3  col-xs-6">
                                                    <span style="display: none;" id="percent-${status.count}" >${trsMap.pnt}</span>
                            <div class="circle" id="circles-${status.count}"></div>
                            
                            <h3 class="circle-title">
			${trsMap.trastype_name }<br/>
			<span class="label check_train_div" style="width:50px;margin-top:2px;margin-bottom:2px;padding-left:2px;padding-right:2px;padding-top:4px;padding-bottom:4px;background:#696969;text-align:center">
			<a title=" You can check available trains." class="check_train" href="javascript:trslink('1','111011004','111031001')" style="color:#ffffff">&nbsp;
			<i class="fa fa-search"></i>가격/시간표 검색</a></span>
		</h3>

		
		
			
				<p>
				${trsMap.traveltime }
				</p>
				<p><span class="label label-default">출발</span><a href="/wheretogo/index.asp?tbl=map&srcserial=11101100470001" target="_blank" title="지도에서보기"><font color=#408095>${trsMap.dep }</font></a>  </p>
				<p><span class="label label-default">도착</span><a href="/wheretogo/index.asp?tbl=map&srcserial=11103100170009" target="_blank" title="지도에서보기"><font color=#408095>${trsMap.des }</font></a> </p>

</div>
</c:forEach>					
			
			
			
			
			
			
<!--                         <div class="inner-pchart col-md-3  col-xs-6">
                            <div class="circle" id="circles-2"></div>
                            <h3 class="circle-title">
			항공<br/>
			<span class="label check_air_div" style="width:50px;margin-top:2px;margin-bottom:2px;padding-left:2px;padding-right:2px;padding-top:4px;padding-bottom:4px;background:#696969;text-align:center"><a title=" You can check available flights." class="check_air" href="javascript:trslink('3','111011004','111031001')" style="color:#fff">&nbsp;<i class="fa fa-search"></i>가격/시간표 검색</a></span>
		</h3>
			
				<p>
				1시간
				</p>
				<p><span class="label label-default">출발</span> <a href="/wheretogo/index.asp?tbl=map&srcserial=11101100470008" target="_blank" title="지도에서보기"><font color=#408095>파리-샤를드골 공항</font></a> </p>
				<p><span class="label label-default">도착</span> <a href="/wheretogo/index.asp?tbl=map&srcserial=11103100170001" target="_blank" title="지도에서보기"><font color=#408095>히드로 공항</font></a> </p>
			


                        </div>

                        <div class="inner-pchart col-md-3  col-xs-6">
                            <div class="circle" id="circles-3"></div>
                            <h3 class="circle-title">버스<br>
			<span class="label check_train_div" style="width:50px;margin-top:2px;margin-bottom:2px;padding-left:2px;padding-right:2px;padding-top:4px;padding-bottom:4px;background:#696969;text-align:center"><a title="" class="check_bus" href="javascript:trslink('2','111011004','111031001')" style="color:#ffffff">&nbsp;<i class="fa fa-search"></i>가격/시간표 검색</a></span>
			</h3>
			
                        </div>

                        <div class="inner-pchart col-md-3  col-xs-6">
                            <div class="circle" id="circles-4"></div>
                            <h3 class="circle-title">페리,렌트카등..</h3>
			
                        </div> -->
                    </div>    
                    <!-- End Pie Charts v1 -->

	<hr/>
<!-------------지식 시작------------------->
<script>
function trslink(trstype,dep,des)
{
	var thedate="2019-07-13";
	thedate_nobar=thedate.replace("-","").replace("-","");
	window.open('/plan/trs_deeplink.asp?lang=ko&date_all='+thedate_nobar+'&TRSType='+trstype+'&depserial='+dep+'&desserial='+des);
}

</script>



	<div style="padding:0px">
                       <div class="panel panel-dark">
                            <div class="panel-heading">
                                <h3 class="panel-title">파리 -> 런던  구간 이동방법 <a href="http://www.stubbyplanner.com/transit/searchintercity.asp?dep=%ED%8C%8C%EB%A6%AC&des=%EB%9F%B0%EB%8D%98&depserial=111011004&desserial=111031001&mode=edit&FN=KBHTG" class="btn-u btn-u-xs pull-right" target="_blank">내용업데이트</a></h3>
                            </div>
                            <div class="panel-body">
              
${trsInfoMap.trsdesc }	
  
  
  
  
<br type="\&quot;\" />
<br type="\&quot;\" /></p>
			<hr style="margin-bottom:0px">
			<table width="100%"><tr><td align="right" style="padding-bottom:0px">
				<table style="width:220px"><tr >
					<td colspan="2" style="padding-bottom:0px"><span class="label label-default">마지막 편집</span></td>
				</tr>
				<tr>
				<td  style="padding-top:0px;padding-bottom:0px;">
					<a href="/plan/profile.asp?id=clonycat"><img  width="48px" onerror="this.src='/stubbyPlanner/externalData/img_v6/img_pfnull.gif';" src="/pfimg/2/6/clonycat_sq.jpg" border="0" id="img_pf"></a>
				</td>
				<td  style="padding-top:10px">
					<ul class="list-unstyled">
						<li> <a href="/plan/profile.asp?id=clonycat" target="_blank"><h5 style="line-height:170%;margin-top:0px;margin-bottom:0px;"><b>${trsInfoMap.member_id }</b></h5></li>
						<li><font class="small">${trsInfoMap.write_date } </font></li>
					</ul>
				</td></tr>
				</table>
			</td></tr></table>
	
		
                            </div>
                        </div>	
	</div>
	


<!-------------지식 끝------------------->
<hr/>
		
	<h4>최근예약&nbsp;&nbsp;<small> 최근 트렌드를 살펴보세요!</small></h4>
	<div class="row">
<c:forEach items="${resTransList}" var="resTrans">
<div class="col-md-4">

		<div class="media">
		<a class="pull-left" href="/plan/profile.asp?id=ggplay1"><img class="media-object img-circle" width="45px" onerror="this.src='/stubbyPlanner/externalData/img_v6/img_pfnull.gif';" src="/pfimg/4/4/ggplay1_sq.jpg" border="0"></a>
		<div class="media-body">

			<ul class="list-unstyled">
				<li>
					<span class="badge" style="float:right"></span>
					${resTrans.tr_trans }이동 <b></b>
				</li>
				<li>
					출발: ${resTrans.tr_deptcity }&nbsp;<i class="fa fa-clock-o"></i>${resTrans.tr_depttime }
				</li>
				<li>
					도착:  ${resTrans.tr_arrcity }&nbsp;<i class="fa fa-clock-o"></i>${resTrans.tr_arrtime }
				</li>
				
				<li>
					<span class="small" style="float:right">${resTrans.tr_res_date }</span>
<!--
					<a class="btn btn-default btn-xs" href="/supertrip/detail.asp?serial=10286351">관련 여행보기></a>
-->
				</li>
			</ul>
		  </div>
	
		</div>
</div>
</c:forEach>

<!-- 
<div class="col-md-4">

		<div class="media">
		<a class="pull-left" href="/plan/profile.asp?id=skyblue6627"><img class="media-object img-circle" width="45px" onerror="this.src='/stubbyPlanner/externalData/img_v6/img_pfnull.gif';" src="/pfimg/1/6/skyblue6627_sq.jpg" border="0"></a>
		<div class="media-body">

			<ul class="list-unstyled">
				<li>
					<span class="badge" style="float:right">7.4만원</span>
					기차이동 <b></b>
				</li>
				<li>
					출발: 북역&nbsp;<i class="fa fa-clock-o"></i>18:13
				</li>
				<li>
					도착: 세인트 판크라스&nbsp;<i class="fa fa-clock-o"></i>19:39
				</li>
				
				<li>
					<span class="small" style="float:right">4일전</span>

					<a class="btn btn-default btn-xs" href="/supertrip/detail.asp?serial=10284286">관련 여행보기></a>

				</li>
			</ul>
		  </div>
	
		</div>
</div>

<div class="col-md-4">

		<div class="media">
		<a class="pull-left" href="/plan/profile.asp?id=roberry98"><img class="media-object img-circle" width="45px" onerror="this.src='/stubbyPlanner/externalData/img_v6/img_pfnull.gif';" src="/pfimg/9/8/roberry98_sq.jpg" border="0"></a>
		<div class="media-body">

			<ul class="list-unstyled">
				<li>
					<span class="badge" style="float:right"></span>
					기차이동 <b></b>
				</li>
				<li>
					출발: 북역&nbsp;<i class="fa fa-clock-o"></i>18:00
				</li>
				<li>
					도착: 세인트 판크라스&nbsp;<i class="fa fa-clock-o"></i>19:39
				</li>
				
				<li>
					<span class="small" style="float:right">4일전</span>

					<a class="btn btn-default btn-xs" href="/supertrip/detail.asp?serial=10284285">관련 여행보기></a>

				</li>
			</ul>
		  </div>
	
		</div>
</div>
<div class="clearfix"></div>
<div class="col-md-4">

		<div class="media">
		<a class="pull-left" href="/plan/profile.asp?id=mhjh1106"><img class="media-object img-circle" width="45px" onerror="this.src='/stubbyPlanner/externalData/img_v6/img_pfnull.gif';" src="/pfimg/7/4/mhjh1106_sq.jpg" border="0"></a>
		<div class="media-body">

			<ul class="list-unstyled">
				<li>
					<span class="badge" style="float:right">25.2만원</span>
					현지/저가항공이동 <b></b>
				</li>
				<li>
					출발: 파리-샤를드골 공항&nbsp;<i class="fa fa-clock-o"></i>08:55
				</li>
				<li>
					도착: 루튼 공항&nbsp;<i class="fa fa-clock-o"></i>09:10
				</li>
				
				<li>
					<span class="small" style="float:right">4일전</span>

					<a class="btn btn-default btn-xs" href="/supertrip/detail.asp?serial=10280862">관련 여행보기></a>

				</li>
			</ul>
		  </div>
	
		</div>
</div>

<div class="col-md-4">

		<div class="media">
		<a class="pull-left" href="/plan/profile.asp?id=4574jsh"><img class="media-object img-circle" width="45px" onerror="this.src='/stubbyPlanner/externalData/img_v6/img_pfnull.gif';" src="/pfimg/0/9/4574jsh_sq.jpg" border="0"></a>
		<div class="media-body">

			<ul class="list-unstyled">
				<li>
					<span class="badge" style="float:right"></span>
					기차이동 <b></b>
				</li>
				<li>
					출발: 파리&nbsp;
				</li>
				<li>
					도착: 런던&nbsp;
				</li>
				
				<li>
					<span class="small" style="float:right">6일전</span>

					<a class="btn btn-default btn-xs" href="/supertrip/detail.asp?serial=10246493">관련 여행보기></a>

				</li>
			</ul>
		  </div>
	
		</div>
</div>

<div class="col-md-4">

		<div class="media">
		<a class="pull-left" href="/plan/profile.asp?id=ejp0312"><img class="media-object img-circle" width="45px" onerror="this.src='/stubbyPlanner/externalData/img_v6/img_pfnull.gif';" src="/pfimg/3/5/ejp0312_sq.jpg" border="0"></a>
		<div class="media-body">

			<ul class="list-unstyled">
				<li>
					<span class="badge" style="float:right">9.2만원</span>
					기차이동 <b></b>
				</li>
				<li>
					출발: 북역&nbsp;<i class="fa fa-clock-o"></i>11:13
				</li>
				<li>
					도착: 킹스크로스역&nbsp;<i class="fa fa-clock-o"></i>12:47
				</li>
				
				<li>
					<span class="small" style="float:right">7일전</span>

					<a class="btn btn-default btn-xs" href="/supertrip/detail.asp?serial=10269663">관련 여행보기></a>

				</li>
			</ul>
		  </div>
	
		</div>
</div>
<div class="clearfix"></div>
<div class="col-md-4">

		<div class="media">
		<a class="pull-left" href="/plan/profile.asp?id=sseryun2"><img class="media-object img-circle" width="45px" onerror="this.src='/stubbyPlanner/externalData/img_v6/img_pfnull.gif';" src="/pfimg/1/1/sseryun2_sq.jpg" border="0"></a>
		<div class="media-body">

			<ul class="list-unstyled">
				<li>
					<span class="badge" style="float:right">11.2만원</span>
					기차이동 <b></b>
				</li>
				<li>
					출발: 북역&nbsp;<i class="fa fa-clock-o"></i>13:13
				</li>
				<li>
					도착: 세인트 판크라스&nbsp;<i class="fa fa-clock-o"></i>16:39
				</li>
				
				<li>
					<span class="small" style="float:right">7일전</span>

					<a class="btn btn-default btn-xs" href="/supertrip/detail.asp?serial=10280330">관련 여행보기></a>

				</li>
			</ul>
		  </div>
	
		</div>
</div>

<div class="col-md-4">

		<div class="media">
		<a class="pull-left" href="/plan/profile.asp?id=angelwh77"><img class="media-object img-circle" width="45px" onerror="this.src='/stubbyPlanner/externalData/img_v6/img_pfnull.gif';" src="/pfimg/1/7/angelwh77_sq.jpg" border="0"></a>
		<div class="media-body">

			<ul class="list-unstyled">
				<li>
					<span class="badge" style="float:right">22.3만원</span>
					기차이동 <b></b>
				</li>
				<li>
					출발: 북역&nbsp;<i class="fa fa-clock-o"></i>11:28
				</li>
				<li>
					도착: 세인트 판크라스&nbsp;<i class="fa fa-clock-o"></i>13:09
				</li>
				
				<li>
					<span class="small" style="float:right">9일전</span>

					<a class="btn btn-default btn-xs" href="/supertrip/detail.asp?serial=10258432">관련 여행보기></a>

				</li>
			</ul>
		  </div>
	
		</div>
</div>

<div class="col-md-4">

		<div class="media">
		<a class="pull-left" href="/plan/profile.asp?id=jdr00707"><img class="media-object img-circle" width="45px" onerror="this.src='/stubbyPlanner/externalData/img_v6/img_pfnull.gif';" src="/pfimg/5/2/jdr00707_sq.jpg" border="0"></a>
		<div class="media-body">

			<ul class="list-unstyled">
				<li>
					<span class="badge" style="float:right">8.4만원</span>
					기차이동 <b></b>
				</li>
				<li>
					출발: 북역&nbsp;<i class="fa fa-clock-o"></i>12:13
				</li>
				<li>
					도착: 세인트 판크라스&nbsp;<i class="fa fa-clock-o"></i>13:30
				</li>
				
				<li>
					<span class="small" style="float:right">10일전</span>

					<a class="btn btn-default btn-xs" href="/supertrip/detail.asp?serial=10214416">관련 여행보기></a>

				</li>
			</ul>
		  </div>
	
		</div>
</div>
<div class="clearfix"></div>
</div>
<div class="clearfix"></div> -->
<hr/>

		</div>
		</div>
	</div>
	<div style="clear:both"></div>
</div>


<script src="/stubbyPlanner/externalData/superguide/One-Pages/assets/plugins/jquery/jquery.min.js"></script>
<script src="/stubbyPlanner/externalData/superguide/One-Pages/assets/plugins/jquery/jquery-migrate.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="/stubbyPlanner/externalData/assets/plugins/circles-master/circles.js"></script>

<!-- JS Implementing Plugins -->
<script src="/stubbyPlanner/externalData/superguide/One-Pages/assets/plugins/smoothScroll.js"></script>
<script src="/stubbyPlanner/externalData/superguide/One-Pages/assets/plugins/jquery.easing.min.js"></script>


<!-- JS Page Level -->
<script src="/stubbyPlanner/externalData/superguide/One-Pages/assets/js/one.app.js"></script>

<script type="text/javascript">

var percent1 = $('#percent-1').html();
console.log(percent1);
var percent2 = $('#percent-2').html();
var percent3 = $('#percent-3').html();
var percent4 = $('#percent-4').html();

var CirclesMaster = function () {

    return {

        //Circles Master v1
        initCirclesMaster1: function () {
        	//Circles 1
		    Circles.create({
		        id:         'circle-1',
		        percentage: 79.4,
		        radius:     80,
		        width:      8,
		        number:     79.4,
		        text:       '%',
		        colors:     ['#eee', '#72c02c'],
		        duration:   2000
		    })

        	//Circles 2
		    Circles.create({
		        id:         'circle-2',
		        percentage: 11.9,
		        radius:     80,
		        width:      8,
		        number:     11.9,
		        text:       '%',
		        colors:     ['#eee', '#72c02c'],
		        duration:   2000
		    })

        	//Circles 3
		    Circles.create({
		        id:         'circle-3',
		        percentage: 8.1,
		        radius:     80,
		        width:      8,
		        number:     8.1,
		        text:       '%',
		        colors:     ['#eee', '#72c02c'],
		        duration:   2000
		    })

		    //Circles 4
		    Circles.create({
		        id:         'circle-4',
		        percentage: 69,
		        radius:     35,
		        width:      2,
		        number:     69,
		        text:       '%',
		        colors:     ['#eee', '#72c02c'],
		        duration:   2000
		    })

		    //Circles 5
		    Circles.create({
		        id:         'circle-5',
		        percentage: 82,
		        radius:     35,
		        width:      2,
		        number:     82,
		        text:       '%',
		        colors:     ['#eee', '#9B6BCC'],
		        duration:   2000
		    })

		    //Circles 6
		    Circles.create({
		        id:         'circle-6',
		        percentage: 87,
		        radius:     80,
		        width:      3,
		        number:     87,
		        text:       '%',
		        colors:     ['#eee', '#72c02c'],
		        duration:   2000
		    })

        	//Circles 7
		    Circles.create({
		        id:         'circle-7',
		        percentage: 74,
		        radius:     80,
		        width:      3,
		        number:     74,
		        text:       '%',
		        colors:     ['#eee', '#72c02c'],
		        duration:   2000
		    })

        	//Circles 8
		    Circles.create({
		        id:         'circle-8',
		        percentage: 65,
		        radius:     80,
		        width:      3,
		        number:     65,
		        text:       '%',
		        colors:     ['#eee', '#72c02c'],
		        duration:   2000
		    })

		    //Circles 9
		    Circles.create({
		        id:         'circle-9',
		        percentage: 91,
		        radius:     80,
		        width:      3,
		        number:     91,
		        text:       '%',
		        colors:     ['#eee', '#72c02c'],
		        duration:   2000
		    })
        },
        
        //Circles Master v2
        initCirclesMaster2: function () {
		    var colors = [
		        ['#D3B6C6', '#9B6BCC'], ['#C9FF97', '#72c02c'], ['#BEE3F7', '#3498DB'], ['#FFC2BB', '#E74C3C']
		    ];

		    for (var i = 1; i <= 4; i++) {
		        var child = document.getElementById('circles-' + i);
			if(i==1)
			{percentage = percent1;}
			else if(i==2)
			            percentage = percent2;
			else if(i==3)
			            percentage = percent3;
			else if(i==4)
			            percentage = percent4;
		            
		        Circles.create({
		            id:         child.id,
		            percentage: percentage,
		            radius:     70,
		            width:      2,
		            number:     percentage / 1,
		            text:       '%',
		            colors:     colors[i - 1],
		            duration:   2000,
		        });
		    }	    
        }

    };
    
}();
   jQuery(document).ready(function() {
     CirclesMaster.initCirclesMaster1();
     CirclesMaster.initCirclesMaster2();
   });
</script>

</body>
</html>

