<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta http-equiv="Content-Language" content="ko">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title> - </title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" type="text/css" href="/stubbyPlanner/externalData/market/css/common4.css">

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">

    <!-- Web Fonts -->
    <link rel='stylesheet' type='text/css' href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

    <!-- CSS Global Compulsory -->
    <link rel="stylesheet" href="/stubbyPlanner/externalData/chn/assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/stubbyPlanner/externalData/chn/assets/css/shop.style.css">

    <!-- CSS Header and Footer -->
    <link rel="stylesheet" href="/stubbyPlanner/externalData/chn/assets/css/headers/header-v5.css">
    <link rel="stylesheet" href="/stubbyPlanner/externalData/chn/assets/css/footers/footer-v4.css">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="/stubbyPlanner/externalData/chn/assets/plugins/animate.css">    
    <link rel="stylesheet" href="/stubbyPlanner/externalData/chn/assets/plugins/line-icons/line-icons.css">
    <link rel="stylesheet" href="/stubbyPlanner/externalData/chn/assets/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="/stubbyPlanner/externalData/chn/assets/plugins/sky-forms-pro/skyforms/css/sky-forms.css">
    <link rel="stylesheet" href="/stubbyPlanner/externalData/chn/assets/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css">
    <!--[if lt IE 9]><link rel="stylesheet" href="/chn/assets/plugins/sky-forms-pro/skyforms/css/sky-forms-ie8.css"><![endif]-->


<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">


    <!-- CSS/JavaScript -->
    <link rel="stylesheet" type="text/css" href="/stubbyPlanner/externalData/market/css/md-search.css">
<!--     <link rel="stylesheet" type="text/css" href="/stubbyPlanner/externalData/market/css/reservation.css"> -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


	<link rel="stylesheet" href="/stubbyPlanner/externalData/superguide/assets/css/headers/header-v4.css">
	<link rel="stylesheet" href="/stubbyPlanner/externalData/css/stubbynew_topmenu.css">

<script src="http://www.google.com/jsapi"></script>
<script>
 google.load( "webfont", "1" );
 google.setOnLoadCallback(function() {
  WebFont.load({ custom: {
   families: [ "NanumGothic" ],
	urls: ['http://fonts.googleapis.com/earlyaccess/nanumgothic.css']
  }});
 });
</script>

    <!-- CSS Customization -->
    <link rel="stylesheet" href="/stubbyPlanner/externalData/chn/assets/css/custom.css">

</head>	

<body class="header-fixed">
<div class="wrapper">
    <!--=== Header v5 ===-->

		<!--=== Header v4 ===-->
		<div id="header" class="header-v4" style="position:fixed;left:0;right: 0;top: 0;background:#fff">
			<!-- Navbar -->
			<div class="navbar navbar-default" role="navigation" >	


				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-responsive-collapse" >
<div style="background:#fff">
					<div class="container" style="padding-top:5px;padding-bottom:5px;">


						<div class="row">
							<div class="col-md-2" style="padding-top:7px;width:17%;padding-left:0px">
								<a  href="/" style="">
									<img width="160px" id="logo-header" src="/stubbyPlanner/externalData/img_v9/logo_s.png" alt="Logo">
								</a>
							</div>
							<div class="col-md-10" style="width:83%;padding-right:0px;text-align:right">

<!-- 
<div style="float:left;cursor:pointer;margin-top:5px;margin-right:0px;padding: 0 52px 0 30px;display:inline-block;border-radius:18px!important;border:1px solid #e5e5e5;background: #f5f5f5;line-height: 34px;" onclick="window.location='/market/index.asp'">
<button style="border:0px;background: #f5f5f5;display:inline-block;width: 30px;height: 30px;background-position: -60px -30px;background-size: 240px;opacity: .6;background-image: url(/market/images/common/stu_icon.png);background-repeat: no-repeat;cursor: pointer;vertical-align: middle;"></button>
<font style="font-size: 15px;font-weight: 300;color: rgb(102, 102, 102);cursor:pointer;">유럽도시 또는 국가로 검색해보세요.</font>
</div>



						<ul class="nav navbar-nav" style="float:right">



							<li   style="border:0px;color:#696969">
								<a href="/planner/" style="padding-left:13px;padding-right:20px;">
									 <font style="font-size:12pt;color:#222;font-weight:600;outline: none;font-family: 'Noto Sans KR','dotum','돋움','verdana','snas-serif';letter-spacing: -1px;line-height: 1.4;"> 플래너</font>
								</a>
							</li>

							<li   style="border:0px;color:#696969">
								<a href="/exp/list.asp" style="padding-left:13px;padding-right:20px;">
									 <font style="font-size:11pt;color:#222;font-weight:500;font-family: 'Noto Sans KR','dotum','돋움','verdana','snas-serif';letter-spacing: -1px;line-height: 1.4;"> 여행지</font>
								</a>
							</li>

							<li   style="border:0px;color:#696969">
								<a href="/market/" style="padding-left:13px;padding-right:20px;">
									 <font style="font-size:11pt;color:#222;font-weight:500;font-family: 'Noto Sans KR','dotum','돋움','verdana','snas-serif';letter-spacing: -1px;line-height: 1.4;"> 투어/일정</font>
								</a>
							</li>
							<li   style="border:0px;color:#696969">
								<a href="/mb/" style="padding-left:13px;padding-right:20px;">
									 <font style="font-size:11pt;color:#222;font-weight:500;font-family: 'Noto Sans KR','dotum','돋움','verdana','snas-serif';letter-spacing: -1px;line-height: 1.4;"> 숙소</font>
								</a>
							</li>

							<li style="border:0px">
								<a href="/guide/reservation.asp" style="padding-left:13px;padding-right:13px;">
									<font style="font-size:10pt;color:#222;font-family: 'Noto Sans KR','dotum','돋움','verdana','snas-serif';letter-spacing: -1px;line-height: 1.4;"> 내 예약</font> 


    
								</a>
							</li>

							<li style="border:0px">
								<a href="/coupon/index.asp" style="padding-left:13px;padding-right:13px;">
									<font style="font-size:10pt;color:#222;font-family: 'Noto Sans KR','dotum','돋움','verdana','snas-serif';letter-spacing: -1px;line-height: 1.4;"> 쿠폰함</font> 
								</a>
							</li>





							<li class="dropdown" style="border:0px;">
								<a href="javascript:window.location='/market/'" class="dropdown-toggle" data-toggle="dropdown" style="padding-left:13px;padding-right:30px">
									 <font style="font-size:15pt;color:#696969"><i class="fa fa-user" aria-hidden="true"></i></font>
								</a>
								<ul class="dropdown-menu" style="margin-left:-150px">

								<li><a href="/rlrlghk">마이페이지(rlrlghk)</a></li>

								<li><a href="/common/memberinfo.asp">회원정보변경</a></li>
								<li><a href="/common/logout.asp">로그아웃</a></li>



								<li><a href="/square/"><b>광장</b></a></li>

								<li><a href="/selfguide/"><b>프리미엄</b></a></li>
								<li><a href="/crowd/tripwith.asp"><b>동행</b></a></li>
								<li><a href="/qa/">문의</a></li>
								</ul>
							</li>



						</ul>

-->

							</div>
						</div>






					</div><!--/end container-->
</div>
<div style="padding-top:0px;padding-bottom:0px;" class="container"><div id="header_plannerlist" style="display:none;border-top:1px solid #efefef;margin-top:5px;padding-top:5px;padding-bottom:10px;"></div></div>


				</div><!--/navbar-collapse-->
			</div>
			<!-- End Navbar -->


		</div>
		<!--=== End Header v4 ===-->


<script>
var is_displayed_header_plannerlist=0;
function togglePlannerList()
{

	if(is_displayed_header_plannerlist)
	{
		is_displayed_header_plannerlist=0;
		$("#header_plannerlist").html('');
		$("#header_plannerlist").hide();
	}
	else
	{

		is_displayed_header_plannerlist=1;
		
		thtml='<div style="height:210px;padding-top:50px;text-align:center;color:#696969;">내 플래너 정보 가져오는중...</div>';
		$("#header_plannerlist").html(thtml);
		$("#header_plannerlist").show();

		$.ajax({
			  url: "/api/v5/planner/tripsX.asp",
			 type: "GET",
			 dataType: 'json',
			 data: {

			  },
			success: function( data ) {





				thtml='<div >';
				thtml+='<div style="float:left;width:20%;"><b>새 플래너 시작</b><div style="margin-right:10px;height:215px;border:1px solid #efefef;text-align:center;background:#efefef;padding-top:50px;cursor:pointer" onclick="window.location=\'/planner/planner_rt.asp\'"><font style="font-size:49pt"><i class="fa fa-plus-circle" aria-hidden="true"></i></font></div></div>';

				if(data.data.trips)
				{
					thtml+='<div style="float:left;width:80%;padding-bottom:5px;"><b>내 플래너 수정</b><span style="display:inline-block;float:right;margin-right:10px;"><b><a href="/rlrlghk" style="color:#696969;font-size:9pt"><u>모두보기</u></a></b></span><div>';

					var maxI=data.data.trips.length;
					if(maxI>3)
						maxI=4;
					
					for(i=0;i<maxI;i++)
					{
						thetrip=data.data.trips[i];

						if(thetrip.ver==2)
							thtml+='<div style="float:left;width:25%;cursor:pointer" onclick="window.location=\'/planner/detail.asp?tid='+thetrip.trip_id+'\'"><div style="margin-right:10px;border:1px solid #efefef;position:relative;"><img width="100%" src="'+thetrip.img.url+'">';
						else
							thtml+='<div style="float:left;width:25%;cursor:pointer" onclick="window.location=\'/supertrip/detail.asp?planserial='+thetrip.trip_id+'\'"><div style="margin-right:10px;border:1px solid #efefef;position:relative;"><img width="100%" src="'+thetrip.img.url+'">';

						if(thetrip.lastupdate)
							thtml+='<div style="position:absolute;display:inline-block;top:13px;left:0px;padding-top:3px;padding-bottom:3px;padding-left:7px;padding-right:7px;background:#c0c0c0;color:#fff;font-size:9pt">'+thetrip.lastupdate+'</div>';
						if(thetrip.term)
							thtml+='<div style="position:absolute;display:inline-block;top:13px;right:7px;background:#fff;border:1px solid #efefef;text-align:center;padding-top:7px;width:45px;height:45px;border-radius:25px;color:#696969;font-size:15pt;-webkit-box-shadow: 1px 1px 1px 0px rgba(153,153,153,1);-moz-box-shadow: 1px 1px 1px 0px rgba(153,153,153,1);box-shadow: 1px 1px 1px 0px rgba(153,153,153,1)">'+thetrip.term+'<font style="font-size:10pt">일</font></div>';


						thtml+='</div>';
						thtml+='<div style="text-align:left;padding-top:3px;padding-bottom:3px;padding-left:5px;padding-right:15px;">'+thetrip.title+' <span style="display:inline-block;background:#efefef;border-radius:10px;padding-left:5px;padding-right:5px;font-size:8pt;float:right;">'+thetrip.schd_cnt+'개 일정</span></div></div>';

					}
					thtml+='<div style="clear:both"></div></div>';


				}


				thtml+='</div><div style="clear:both"></div>';
				$("#header_plannerlist").html(thtml);
				$("#header_plannerlist").show();

			}
		});
		

	}
}
function initializeCart()
{
}

function closeModal(id)
{
	$(".modal.in").modal('hide');
}
function login()
{
	closeModal();
	
	var surl="/planner/if_login.asp?h_url="+escape(document.URL);
	document.getElementById("if_login").src=surl;

	$('#modal-login').modal({
		keyboard: true,
		backdrop: 'static',
		show:true
	});
}
function showASSD()
{
	closeModal();
	$('#modal-assd').modal({
		keyboard: true,
		backdrop: 'static',
		show:true
	});
}
</script>



        <div id="modal-login" class="modal fade bs-example-modal-lg">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">

            <div class="modal-header">
	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>

              <h3></h3>
            </div>
            <div class="modal-body">
              <iframe id="if_login" frameborder="0" src="about:blank" width="100%" height="400px" scrolling="no"></iframe>
            </div>
</div>
</div>
          </div>
<script>

function shownotifylist()
{
	var surl="/planner/if_notifylist.asp";
	document.getElementById("if_notifydetail").src=surl;
	$("#notifydetail_title").html("Notifications");
	$('#modal-notifydetail').modal({
		keyboard: true,
		backdrop: 'static',
		show:true
	});
}
function closeModal(id)
{
	$(".modal.in").modal('hide');
}
function login()
{
	closeModal();
	
	var surl="/planner/if_login.asp?h_url="+escape(document.URL);
	document.getElementById("if_login").src=surl;

	$('#modal-login').modal({
		keyboard: true,
		backdrop: 'static',
		show:true
	});
}
function shownotifydetail(t,s,ns)
{

		var surl="/planner/if_notifydetail.asp?ns="+ns+"&t="+t+"&s="+s;
		document.getElementById("if_notifydetail").src=surl;
		if(t=="plan")
			$("#notifydetail_title").html("플래너 댓글");
		else
			$("#notifydetail_title").html("NEWS FEED");
		$('#modal-notifydetail').modal({
			keyboard: true,
			backdrop: 'static',
			show:true
		});
}

function openTourMap(srcserial,ds,mapid)
{
	if(ds)
	{
		if(mapid)
		{
			bindex=mapid.indexOf("b");
			cid=mapid.substring(1,bindex);
			bid=mapid.substring(bindex+1);

			NewWin=window.open("/tourmap/tourmap.asp?ds="+ds+"&bid="+bid+"&cid="+cid, "map", "width=1000,height=710,toolbar=No,location=No,scrollbars=no,status=No,resizable=yes"); 
			NewWin.moveTo(0,0);
			NewWin.focus();
		}
		else
		{
			NewWin=window.open("/tourmap/tourmap.asp?ds="+ds, "map", "width=1000,height=710,toolbar=No,location=No,scrollbars=no,status=No,resizable=yes"); 
			NewWin.moveTo(0,0);
			NewWin.focus();
		}
	}
	else
	{
		NewWin=window.open("/tourmap/tourmap.asp?SrcSerial="+srcserial, "map", "width=1000,height=710,toolbar=No,location=No,scrollbars=no,status=No,resizable=yes"); 
		NewWin.moveTo(0,0);
		NewWin.focus();
	}
}

function showASSD()
{
	closeModal();
	$('#modal-assd').modal({
		keyboard: true,
		backdrop: 'static',
		show:true
	});
	
	
}

</script>




        <div id="modal-notifydetail" class="modal fade bs-example-modal-lg"  tabindex="-1"  >

  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">

            <div class="modal-header">
	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
             <h3 id="notifydetail_title"></h3>
            </div>
            <div class="modal-body">
              <iframe id="if_notifydetail" frameborder="0" src="about:blank" width="100%" height="400px" scrolling="no"></iframe>
            </div>
</div>
</div>

          </div>

        <div id="modal-login" class="modal fade bs-example-modal-lg">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">

            <div class="modal-header">
	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>

              <h3></h3>
            </div>
            <div class="modal-body">
              <iframe id="if_login" frameborder="0" src="about:blank" width="100%" height="400px" scrolling="no"></iframe>
            </div>
</div>
</div>
          </div>


<script src="https://www.google.com/jsapi"></script>




<!-- Global site tag (gtag.js) - Google Ads: 787954214 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-787954214"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'AW-787954214');
</script>


<script>
 (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
 (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
 m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
 })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
 ga('create', 'UA-913663-1', 'auto');
 ga('send', 'pageview');

</script>
<!-- Facebook Pixel Code -->
<script>
!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
document,'script','https://connect.facebook.net/en_US/fbevents.js');

fbq('init', '597062987120795');

fbq('track', 'ViewContent');
</script>
<noscript><img height="1" width="1" style="display:none"
src="https://www.facebook.com/tr?id=597062987120795&ev=PageView&noscript=1"
/></noscript>
<!-- End Facebook Pixel Code -->

    <!--=== End Header v5 ===-->
    <div class="container">

<script>
function FSubmit()
{

	var f=document.form;
	if(f.password.value=="")
	{
		alert("현재의 비밀번호를 입력하셔야 수정됩니다.");
		f.password.focus();
		return;
	}
	
	if(f.password.value!='${authUser.password}')
	{
		alert("비밀번호가 틀렸습니다.");
		f.password.focus();
		return;
	}
/* 
	var letters = 'ghijklabvwxyzABCDEFef)_+|<>?:mnQRSTU~!@#$%^VWXYZ`1234567opGHIJKLu./;'+"'"+'[]MNOP890-='+'\\'+'&*("{},cdqrst'+"\n";
	var split = letters.split("");var num = '';var c = '';
	var encrypted = '';
	var it = f.password.value;
	var b = '0';var chars = it.split("");while(b<it.length){c = '0';while(c<letters.length){if(split[c] == chars[b]){if(c == "0") { c = ""; }if(eval(c+10) >= letters.length){num = eval(10-(letters.length-c));encrypted += split[num];}else{num = eval(c+10);encrypted += split[num];}}c++;}b++;}f.password.value = encrypted;encrypted = '';

	console.log(f.password.value);
 */
	f.submit();
 	alert("회원 탈퇴가 완료되었습니다.");
}

</script>


<div class="container content" style="margin-top:100px" id=divX>

<form name="form" action="/stubbyPlanner/common/exit.do" method="post">

<h2>회원탈퇴하기</h2>
<input name="member_id" type="hidden" value="${authUser.member_id}"/>
<h4 style="color:darkred">탈퇴시 유의사항</h4>
<p><font style="font-size:9pt" face="돋움" color="darkred">
1. 탈퇴하시면 지금까지 작성하신 여행계획에 단 댓글은 자동으로 삭제됩니다.<br>
2. 작성하신 여행계획은 자동으로 삭제됩니다.<br>
3. 광장에 쓰신 글들과 댓글은 자동으로  삭제됩니다.<br>
4. 여행정보와 현지교통과 관련해 집필하신 지식글들은 자동으로 삭제되지 않습니다.</font>
</p>
<hr>
<div style="padding-bottom:10px;">비밀번호 : <input class="input" class="form-control" style="border:1px solid #696969; max-width: 200px" type=password size=25 name="password" maxlength="29" ></div>
<input style="max-width: 150px" class="btn-u btn-u-lg btn-u-dark" type="button" onclick="FSubmit();" value="탈퇴하기"> 
<input style="max-width: 150px" class="btn-u btn-u-lg btn-u-default" type="button" value=" 취소 " onclick="window.history.go(-1);">

</form>
</div>
<!--오른쪽 프레임 끝-->


    <!--=== Footer v4 ===-->
	

    <!--=== Footer v4 ===-->

<!-- 

    <div class="footer-v4" >

        <div class="copyright" style="background:#191919;padding-top:15px;">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">                     
		<p style="text-align:left;color:#fff">
			<b>(주)스투비플래너</b>  사업자번호: 220-88-67466 /  대표: 백주흠<br/>
			<font style="color:#efefef;font-size:8pt">서울특별시 관악구 남부순환로 1837 샤론빌딩 4층 (스투비플래너)<br/>
			대표번호 : +82-2-886-0982 |  대표이메일 : stubbyteam@gmail.com <br/> 
			운영시간(한국) 11:00 ~ 19:00, 주말/공휴일은 제외.</font><br/>
		
		<font style="color:#efefef;font-size:8pt">스투비플래너는 광고서비스 제공자/예약 시스템의 공급자이며 통신판매의 당사자가 아닙니다.
		따라서 스투비플래너는 상품·거래정보 및 거래에 대하여 책임을 지지 않습니다.</font>
		<br>
		2014 &copy; STUBBYPLANNER. ALL Rights Reserved. 


		<a href="https://docs.google.com/forms/d/e/1FAIpQLSdEGNceBzh0dJAaY5oF74W6z9Er9_M7ZMcv2xqvOWMcArKbsA/viewform" style="color:#efefef;font-size:8pt" target="_blank"><u>광고/제휴 문의</u></a> &nbsp;&nbsp;&nbsp;	
		<a href="/qa/" style="color:#efefef;font-size:8pt"><u>서비스 문의</u></a> &nbsp;&nbsp;&nbsp;
		<a href="/personalinfo.asp" style="color:#efefef;font-size:8pt" target="_blank"><u>개인정보 취급방침</u></a> &nbsp;&nbsp;&nbsp;
		<a href="http://www.stubbyplanner.com/common/usercontract.html" style="color:#efefef;font-size:8pt" target="_blank"><u>이용약관</u></a>&nbsp;&nbsp;&nbsp;
		<a href="/common/adserviceinfo.asp" style="color:#efefef;font-size:8pt" target="_blank"><u>광고서비스 이용약관</u></a>


		<br>



                        </p>
                    </div>

                </div>
            </div> 
        </div>/copyright 
    </div>
    === End Footer v4 ===
 -->  
 </div>
        <footer>
            <div class="stu_inner_wrap">
                <div class="stu_footerMenu">
                    <!--유틸메뉴-->
                    <img src="/stubbyPlanner/externalData/market/images/footLogo.png" alt="스투비플래너">
                    <ul class="stu_utilMenu">
                        <li><a href="https://docs.google.com/forms/d/e/1FAIpQLSdEGNceBzh0dJAaY5oF74W6z9Er9_M7ZMcv2xqvOWMcArKbsA/viewform" target="_blank">광고/제휴문의</a></li>
                        <li><a href="http://www.stubbyplanner.com/qa/"  target="_blank">서비스문의</a></li>
                        <li><a href="http://www.stubbyplanner.com/personalinfo.asp" target="_blank">개인정보 취급방침</a></li>
                        <li><a href="http://www.stubbyplanner.com/common/usercontract.html" target="_blank">이용약관 </a></li>
                        <li><a href="http://www.stubbyplanner.com/common/adserviceinfo.asp" target="_blank">광고서비스 이용약관 </a></li>
                        <li><a href="http://www.stubbyplanner.com/common/guidecontract.html" target="_blank">가이드 약관 </a></li>
                    </ul>
                    <!--sns-->
                    <ul class="stu_snsShare">
                        <li id="stu_sns1"><a href="http://www.facebook.com/stubbyplanner/" target="_blank" title="페이스북">페이스북</a></li>
                        <li id="stu_sns2"><a href="https://www.instagram.com/stubbyplanner/" target="_blank" title="인스타그램">인스타그램</a></li>
                    </ul>
                </div>
                <div class="stu_footerInfo">
                    <address>
                        <b>서비스제공</b>&nbsp;&nbsp;스투비` │ 대표 백주흠 │ 사업자등록번호 220-88-67466 │ 서울특별시 관악구 남부순환로 1837 샤론빌딩 402 <br/>
  <b>가이드상품중개</b>&nbsp;&nbsp;스투비익스피어리언스 │ 대표 백주흠 │ 사업자등록번호 635-81-01124 │ 서울특별시 관악구 남부순환로 1837 샤론빌딩 402 <br/>
                        통신판매업 신고 : 2018-서울관악-1368호 | 대표번호 02-886-0982 │  고객문의  stubbyteam@gmail.com │  운영시간(한국) 11:00 ~ 19:00, 주말 / 공휴일은 제외<br/>
스투비익스피어리언스는 통신판매중개자이며 통신판매의 당사자가 아닙니다. 따라서 스투비익스피어리언스는 상품·거래정보 및 거래에 대하여 책임을 지지 않습니다.<br/>
자사는 서울특별시관광협회 공제영업보증보험에 가입이 되어 있습니다.
                    </address>
                </div>
            </div>
        </footer>
 
 
 
    <!--=== End Footer v4 ===-->
</div><!--/wrapper-->

<!-- JS Global Compulsory -->
<script src="/stubbyPlanner/externalData/chn/assets/plugins/jquery/jquery.min.js"></script>
<script src="/stubbyPlanner/externalData/chn/assets/plugins/jquery/jquery-migrate.min.js"></script>
<script src="/stubbyPlanner/externalData/chn/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- JS Implementing Plugins -->

<!-- JS Customization -->
<script src="/stubbyPlanner/externalData/chn/assets/js/custom.js"></script>
<!-- JS Page Level -->
<script src="/stubbyPlanner/externalData/chn/assets/js/shop.app.js"></script>

<script>
    jQuery(document).ready(function() {
        App.init();
$("#join_pin").keyup(function(event){
    if(event.keyCode == 13){
        FSubmit();
    }
});
        LoginForm.initLoginForm();

	initializeCart();

});
</script>
<!--[if lt IE 9]>
    <script src="/chn/assets/plugins/respond.js"></script>
    <script src="/chn/assets/plugins/html5shiv.js"></script>
    <script src="/chn/assets/js/plugins/placeholder-IE-fixes.js"></script>
    <script src="/chn/assets/plugins/sky-forms-pro/skyforms/js/sky-forms-ie8.js"></script>
<![endif]-->
<!--[if lt IE 10]>
    <script src="/chn/assets/plugins/sky-forms-pro/skyforms/js/jquery.placeholder.min.js"></script>
<![endif]-->  
</body>
</html> 