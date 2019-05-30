<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
<link rel="image_src" href="http://d3b39vpyptsv01.cloudfront.net/photo/1/2/4626a514b253411bf9f105ac399fee65_l.jpg" />
<meta property="og:type" content="website">
<meta property="og:locale" content="ko_KR">
<meta property="fb:app_id" content="218650814915663">

<meta property="og:title" content="프랑스 포켓 가이드북 - 스투비플래너" />
<meta property="og:type" content="website" />
<meta property="og:url" content="http://www.stubbyplanner.com/exp/index.asp?region=11101" />
<meta property="og:image" content="http://d3b39vpyptsv01.cloudfront.net/photo/1/2/4626a514b253411bf9f105ac399fee65_l.jpg" />
<meta property="og:site_name" content="상상속 여행을 현실로, 스투비플래너" />
<meta property="og:description" content="프랑스의 예쁜마을, 음식, 쇼핑, 공연정보" />

<title>${country.country_name } 포켓 가이드북 - 스투비플래너</title>

<!-- Meta -->

    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="프랑스의 예쁜마을, 음식, 쇼핑, 공연정보">

    <!-- Favicon -->
    <link rel="shortcut icon" href="/favicon.ico">
    <link rel="icon" href="/favicon.png"> 
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

	<link rel="stylesheet" type="text/css" href="/stubbyPlanner/externalData/market/css/tourHome.css">
	<link rel="stylesheet" type="text/css" href="/stubbyPlanner/externalData/market/css/common.css">

	<link rel="stylesheet" href="https://unpkg.com/flickity@2.0/dist/flickity.css" media="screen">


<script src="http://www.google.com/jsapi"></script>

<script>
 (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
 (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
 m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
 })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
 ga('create', 'UA-913663-1', 'auto');
 ga('send', 'pageview');
 ga('send','event','exp','listview','11101');

</script>
<script>
 google.load( "webfont", "1" );
 google.setOnLoadCallback(function() {
  WebFont.load({ custom: {
   families: [ "NanumGothic" ],
	urls: ['http://fonts.googleapis.com/earlyaccess/nanumgothic.css']
  }});
 });
</script>

<link href='https://fonts.googleapis.com/css?family=Noto+Sans:400,700' rel='stylesheet' type='text/css'>

<!-- Core CSS file -->
<link rel="stylesheet" href="/stubbyPlanner/externalData/css/photoswipe.css"> 

<!-- Skin CSS file (styling of UI - buttons, caption, etc.)
     In the folder of skin CSS file there are also:
     - .png and .svg icons sprite, 
     - preloader.gif (for browsers that do not support CSS animations) -->
<link rel="stylesheet" href="http://photoswipe.com/dist/default-skin/default-skin.css?v=4.1.1-1.0.4"> 
<!-- Core JS file -->
<script src="/stubbyPlanner/externalData/js/photoswipe.min.js"></script> 
<!-- UI JS file -->
<script src="/stubbyPlanner/externalData/js/photoswipe-ui-default.min.js"></script> 

<style>

/* 이벤트 배너 */
.stu_event_banner { padding:20px 0; } .stu_event_banner .stu_inner_wrap { padding:0 12px; } .stu_event_banner .event_banner { padding:0 0 30px; } .stu_event_banner li { height:100px; background:#f3f3f3; text-align:left; overflow:hidden; } .stu_event_banner li a { position:relative; height:100%;display:block} .stu_event_banner .txtWrap { position:absolute; top:20px; left:20px; color:#333; white-space:nowrap; z-index:1; } .stu_event_banner .txtWrap p { display:block; font-size:18px; font-weight:400; color:#333; } .stu_event_banner .txtWrap b { font-size:22px; font-weight:bolder; } .stu_event_banner .txtWrap b span { margin-right:6px; color:#ee685a; } .stu_event_banner .imgWrap { float:right; position:relative; width:140px; height:84px; margin:8px 10px 0 0; background-position:50% 50%; background-size:cover; text-align:center; } .stu_event_banner .imgWrap b { position:absolute; top:50%; left:0; right:0; -webkit-transform:translateY(-50%); transform:translateY(-50%); font-size:20.5px; font-weight:bolder; color:#333; } .stu_event_banner .imgWrap b span { display:block; font-size:12px; color:#72bbff; } .stu_event_banner .swiper-container-horizontal > .swiper-pagination-bullets { bottom:0; } .stu_event_banner .swiper-pagination-bullet-active { background:gray; } .stu_event_banner .swiper-button-prev, .stu_event_banner .swiper-button-next { display:none; } @media (min-width:620px){ .stu_event_banner .stu_inner_wrap { padding:0 20px; } .stu_event_banner li { height:110px; } .stu_event_banner .txtWrap { top:50%; left:50%; -webkit-transform:translate(-100%, -50%); transform:translate(-100%, -50%); margin-left:-5%; } .stu_event_banner .txtWrap p { margin:0 0 4px; font-size:22px; font-weight:300; } .stu_event_banner .txtWrap b { font-size:28px; } .stu_event_banner .imgWrap { float:left; width:216px; height:129.6px; margin:10px 0 0 55%; } .stu_event_banner .imgWrap b { margin:-4px 0 0; font-size:28px; } .stu_event_banner .imgWrap b span { margin:0 0 -2px; font-size:13px; } .stu_event_banner .swiper-button-prev, .stu_event_banner .swiper-button-next { display:block; width:46.5px; height:62px; margin:-44px 0 0; background-image:url(/images/common/stu_icon.png); background-repeat:no-repeat; background-size:496px; vertical-align:middle; } .stu_event_banner .swiper-button-prev { background-position:0 -124px; } .stu_event_banner .swiper-button-next { background-position:-46.5px -124px; }} @media (min-width:1025px){ .stu_event_banner { margin:0; padding:30px 0; } .stu_event_banner .stu_inner_wrap { padding:0; } .stu_event_banner li { height:120px; } .stu_event_banner .txtWrap { left:60%; } .stu_event_banner .txtWrap p { display:inline-block; margin:0 8px 0 0; font-size:28px; } .stu_event_banner .txtWrap b {  } .stu_event_banner .txtWrap b span { font-size:34px; } .stu_event_banner .imgWrap { width:245px; height:147px; margin:10px 0 0 64%; } .stu_event_banner .imgWrap b { font-size:34px; } .stu_event_banner .imgWrap b span { font-size:14px; }}

.schd_panel
{
	float:left;
	width:33%;
}
.schd_desc
{
	padding-top:5px;
	height:160px;
}

.schd_panel_inside
{
	background:#efefef;
	margin-left:3px;
	margin-right:3px;
	padding-top:7px;
	padding-bottom:7px;
}
.schd_title
{
	padding-top:7px;
	font-size:12pt;
	font-weight:bold;
	font-color:#5b5b5b;
}
.schd_subtitle
{
	padding-left:10px;
	padding-right:10px;
	height:25px;
	padding-top:3px;
	padding-bottom:10px;
	font-size:9pt;
	font-color:#5b5b5b;
}
.day_small
{
	margin-left:30px;
	margin-right:30px;
	padding-top:1px;
	padding-bottom:1px;
	margin-bottom:3px;
	border-bottom:1px solid #c0c0c6;
	text-align:center;
	font-size:7pt;
	font-family:tahoma;
	color:#707070 
}
.p_schd{
	line-height:110%;
	margin-top:0px;
	margin-bottom:0px;
	padding-top:7px;
	padding-bottom:0px;
}
.btn_red
{
	cursor:pointer;
	margin-left:7px;
	margin-right:7px;
	background:#ff6142;
	padding-top:8px;
	padding-bottom:8px;
	font-size:13pt;
	color:#fff
}
.btn_red a
{
	color:white;
}


</style>
<style>
.plus{color:#696969;}
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
{padding-left:10px;padding-right:10px}
.menu
{
	float:left;
	color:#c0c0c0;
	font-size:10pt;
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
	font-weight:600;
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
	font-weight:600;
	cursor:pointer;
}
.thema_icon_menu
{
	padding-top:5px;
	padding-bottom:3px;
	border-left: 1px solid #efefef;
	border-right: 0px solid #efefef;
	font-size:8pt;color:gray;
	font-weight:600;
	cursor:pointer;
}
.thema_icon_menu_selected
{
	color:#27ae60;
}


.owl-prev
{
	position: absolute;
	top: 150px;
	height: 30px;
	width:30px;
	color:#fff;
	padding-top:5px;
	padding-left:10px;

	margin: auto !important;
	background:#696969;
	z-index:999;
}

.owl-next {
	position: absolute;
	top: 150px;
	width:30px;
	height: 30px;
	color:#fff;
	padding-top:5px;
	padding-left:10px;
	margin: auto !important;
	background:#696969;
	z-index:999;
}


.owl-prev {
	left: -10px;
}

.owl-next {
	right: -10px;
}

</style>




	<!-- CSS Header and Footer -->
	<link rel="stylesheet" href="/stubbyPlanner/externalData/superguide/assets/css/headers/header-v4.css">

</head>	
<body id="body" data-spy="scroll" data-target=".one-page-header" class="demo-lightbox-gallery" >

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

<!--=== Header v4 ===-->
<jsp:include page="/WEB-INF/layout/header-v4.jsp"></jsp:include> 
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
		
		thtml='<div style="overflow-x:auto;">';
		thtml+='<div style="float:left;width:20%;"><div style="padding-top:4px;padding-bottom:5px;"><b>새 플래너 시작</b></div><div style="margin-right:10px;height:220px;border:1px solid #efefef;text-align:center;background:#efefef;padding-top:50px;cursor:pointer" onclick="window.location=\'/planner/planner_rt.asp\'"><font style="font-size:49pt"><i class="fa fa-plus-circle" aria-hidden="true"></i></font></div>빈 플래너</div>';
		thtml+='<div style="float:left;width:80%;"><div style="padding-top:4px;padding-bottom:5px;"><b>인기루트로 시작</b></div>';
			thtml+='<div style="float:left;width:25%;"><div style="margin-right:10px;height:160px;"><a href="/planner/planner_rt.asp?tripgene=111031001:3:X:0,111011004:3:0:0,111041006:1:5:0,111041003:1:1:0,111041004:3:1:0"><img  width="100%"  src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/636c475c3ce6932a35fadb740f63bf74_l.jpg" width="100%"></a><br>서유럽 단기</div></div>';
			thtml+='<div style="float:left;width:25%;"><div style="margin-right:10px;height:160px;"><a href="/planner/planner_rt.asp?tripgene=111031001,111011004,111021002,111041006,111041003,111041004"><img  width="100%"  src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/c04eadc3c03e90ca9c25d825120ed706_l.jpg" width="100%"></a><br>서유럽 핵심</div></div>';
			thtml+='<div style="float:left;width:25%;"><div style="margin-right:10px;height:160px;"><a href="/planner/planner_rt.asp?tripgene=131011001,131011003,131041002,131041032,131041001,131021001"><img  width="100%"  src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/467ff806c2e8d1d75abfe661f238595b_l.jpg" width="100%"></a><br>동유럽 단기</div></div>';
			thtml+='<div style="float:left;width:25%;"><div style="margin-right:10px;height:160px;"><a href="/planner/planner_rt.asp?tripgene=121011002,121011001,121011048,121011005,121011057,121011007,121021001,121021041,121011003,121011004,121011008,121011003"><img  width="100%"  src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/41f99a5e1fef95c038f585bc77f827e5_l.jpg" width="100%"></a><br>스페인+포르투갈</div></div>';
			thtml+='<div style="clear:both"></div>';
		thtml+='</div>';


		thtml+='<div style="clear:both"></div>';
		thtml+='</div>';

		
		

		

		$("#header_plannerlist").html(thtml);
		$("#header_plannerlist").show();

		

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






	<!-- Discount Section -->

	<div class="g-heading-v8" id="Subscribe" style="padding-left:0px;padding-right:0px;padding-bottom:0px;padding-top:50px;position:relative">
		<div class="container" style="padding-bottom:0px;padding-left:0px;padding-right:0px;">




	

			<div style="position:relative;height:525px;overflow:hidden;">
				    <div  style="position:relative;height:500px;overflow:hidden;">
						<img style="position:relative;top:-100px;" width="100%" src="${country.img_url}.jpg">
				</div>


		<div style="position:relative;top:-350px;text-align:center;z-index:9">
			<img src="${country.img_label}" width="45%">
		</div>
	

<div style="position:absolute;left:30px;top:30px;;z-index:9999">
	<a href="list.do"><div style="inline-block;padding-top:3px;border-radius:23px;padding-left:20px;padding-right:20px;background:#c0c0c0;font-size:19pt;color:#fff;"><i class="fa fa-chevron-left" aria-hidden="true"></i></div></a>
</div>
		
	</div>



<main class="wrapper" style="padding-top:10px;">

<!--  지역(테마) 시작  -->
<c:forEach items="${cityMap}" var="entry">
<c:if test="${entry.value ne null}">

<!-- 1 -->
	<div style="clear:both"></div>

<!-- 2 -->
	<div style="margin-bottom:10px;padding-left:16px;"><a id="a_thema_1" name="a_thema_1"><font style="font-size:14pt;color:#696969">${entry.key}</font></a></div>
	<div>
	<div style="margin-bottom:15px;padding-left:12px"  class="main-carousel">

<!-- city(attr) 시작   -->


<c:forEach items="${entry.value}" var="city">
<div style="float:left;margin-bottom:17px;margin-top:0px;width:190px;cursor:pointer;" class="carousel-cell">
	<div style="margin-left:5px;margin-right:5px;">
	<div style="height:350px;overflow:hidden">

	<div style="position:relative;">
		<a href="${city.bucketcity_id!=0?'index_majorcity.do?city=':'attr_detail.do?attr='}${city.city_id}"><img src="${city.city_img}"  style="border-radius:5px;width:100%;" onerror="this.src='/img_v12/img_er.gif'"></a>
 
		<div style="border-radius:5px;position:absolute;bottom:0px;right:0px;width:100%;height:30px;background:linear-gradient(to bottom, rgba(0,0,0,0), rgba(0,0,0,5));">&nbsp;</div>
		<div style="position:absolute;bottom:3px;right:10px;"><font style="color:#fff;font-size:12pt;"><i class="fa fa-star" aria-hidden="true"></i> ${city.c_favorite}</font></div>
	</div>
	<div style="position:relative;top:0px;height:60px;background:#fff;border:0px solid #e8e8e8"></div>
	<div style="position:relative;top:-65px;padding-top:7px">


		<div style="padding-top:3px;padding-bottom:0px;">
			<p style="padding-bottom:0px;margin-bottom:2px;padding-left:3px;margin-top:5px;font-size:8pt;text-align:left">
				<a href="index_majorcity.asp?region=${city.city_id}"><font style="line-height:100%;padding-bottom:0px;margin-bottom:0px;color:#696969;font-size:12pt;font-weight:600" >${city.city_name}</font>
				<br><font style="color:#a9a9a9;font-size:10pt">${city.city_info}</font></a></p>

		</div>




		</div>
</div>
</div>
</div>
<!-- city(attr) 끝   -->
</c:forEach>
	<div style="clear:both"></div>
	</div></div>
<!--  지역 끝  -->
</c:if>
</c:forEach>





	

<script>
function chgColor(id,thecolor)
{
$("#"+id).css("color",thecolor);
}
</script>



	</div>



		





		</div>
	</div>


	<!-- End Discount Section -->




<script>
function logging(a,p)
{
	
	$.ajax({
		  url: "/api/logging.asp?p="+p+"_pc&a="+a,
	
		  success: function( data ) {
					
		}
	});
	
}
</script>

        <section class="stu_event_banner" style="padding-top:0px;margin-top:0px;margin-bottom: 50px;">
            <div class="stu_inner_wrap">
                <div class="event_banner2" style="background:#f3f3f3;height:120px;overflow:hidden;">
                   
                            <a href="http://www.stubbyplanner.com/consulting/index.asp" target="_blank">
                                <div class="txtWrap">
                                    <p>첫 유럽여행이라면 </p>
                                    <b style="font-size:22pt">전문가의 도움을 받아보세요.</b>
                                </div>
                                <div class="imgWrap" style="background-image:url(/img_v15/back_private.png);">
                                    <b><span>전문가 유럽계획 의뢰</span>￦ 99,000</b>
                                </div>
                            </a>
		<div style="clear:both"></div>
                </div>
            </div>
        </section>
</main>

  <jsp:include page="/WEB-INF/layout/footer_small.jsp"></jsp:include> 
  
  
  
  
  
            <section class="stu_md-background" style="z-index:999">
                <div class="md-container" style="z-index:999">
                    <div class="md-header" style="background:#00A572">
                        <a href="#stu_md-close" class="ico_back"></a>
                        <div class="md-searchWrap">
                          



                                <fieldset>
                                    <input type="search" name="search" autocorrect="off" autosave="off" class="md-search-input" placeholder="도시 또는 국가로 검색하세요." value>
                                </fieldset>
    





                        </div>
                    </div>
                    <div class="md-content">
                        <div class="md-section">
                            <div class="content-header ico_country">서유럽 국가</div>
                            <ul class="content-list">
                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=11101">
                                        <div class="value">
                                            <b class="name">프랑스</b>
                                        </div>
                                        <div class="count">
                                            <span class="num">103</span>개
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=11104">
                                        <div class="value">
                                            <b class="name">이탈리아</b>
                                        </div>
                                        <div class="count">
                                            <span class="num">86</span>개 
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=11102">
                                        <div class="value">
                                            <b class="name">스위스</b>
                                        </div>
                                        <div class="count">
                                            <span class="num">92</span>개
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=11103">
                                        <div class="value">
                                            <b class="name">영국/아일랜드</b>
                                        </div>
                                        <div class="count">
                                            <span class="num">82</span>개
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=11106">
                                        <div class="value">
                                            <b class="name">독일</b>
                                        </div>
                                        <div class="count">
                                            <span class="num">67</span>개
                                        </div>
                                    </a>
                                </li>


                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=11108">
                                        <div class="value">
                                            <b class="name">벨기에</b>
                                        </div>
                                        <div class="count">
                                            <span class="num">25</span>개
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=11107">
                                        <div class="value">
                                            <b class="name">네덜란드</b>
                                        </div>
                                        <div class="count">
                                            <span class="num">28</span>개
                                        </div>
                                    </a>
                                </li>

                            </ul>
                        </div>
                        <div class="md-section">
                            <div class="content-header ico_country">지중해 국가</div>
                            <ul class="content-list">
                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=12101">
                                        <div class="value">
                                            <b class="name">스페인</b>
                                        </div>
                                        <div class="count">
                                            <span class="num">97</span>개
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=12102">
                                        <div class="value">
                                            <b class="name">포르투갈</b>
                                        </div>
                                        <div class="count">
                                            <span class="num">38</span>개
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=12103">
                                        <div class="value">
                                            <b class="name">그리스</b>
                                        </div>
                                        <div class="count">
                                            <span class="num">52</span>개
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=12104">

                                        <div class="value">
                                            <b class="name">터키</b>
                                        </div>
                                        <div class="count">
                                            <span class="num">38</span>개
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=17103">

                                        <div class="value">
                                            <b class="name">모로코</b>
                                        </div>
                                        <div class="count">
                                            <span class="num">25</span>개
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="md-section">
                            <div class="content-header ico_country">동유럽 국가</div>
                            <ul class="content-list">
                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=13">

                                        <div class="value">
                                            <b class="name">체코</b>
                                        </div>
                                        <div class="count">
                                            <span class="num">42</span>개
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=13">
                                        <div class="value">
                                            <b class="name">헝가리</b>
                                        </div>
                                        <div class="count">
                                            <span class="num">42</span>개
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=13">
                                        <div class="value">
                                            <b class="name">오스트리아</b>
                                        </div>
                                        <div class="count">
                                            <span class="num">42</span>개
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=13">
                                        <div class="value">
                                            <b class="name">폴란드</b>
                                        </div>
                                        <div class="count">
                                            <span class="num">42</span>개
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=13">
                                        <div class="value">
                                            <b class="name">슬로베니아</b>
                                        </div>
                                        <div class="count">
                                            <span class="num">42</span>개
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=13">
                                        <div class="value">
                                            <b class="name">루마니아</b>
                                        </div>
                                        <div class="count">
                                            <span class="num">42</span>개
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=13">
                                        <div class="value">
                                            <b class="name">불가리아</b>
                                        </div>
                                        <div class="count">
                                            <span class="num">42</span>개
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=13106">
                                        <div class="value">
                                            <b class="name">크로아티아</b>
                                        </div>
                                        <div class="count">
                                            <span class="num">37</span>개
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="md-section">
                            <div class="content-header ico_country">북유럽 국가</div>
                            <ul class="content-list">
                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=14107">
                                        <div class="value">
                                            <b class="name">아이슬란드</b>
                                        </div>
                                        <div class="count">
                                            <span class="num">39</span>개
                                        </div>
                                    </a>
                                </li>
                           <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=14105">
                                        <div class="value">
                                            <b class="name">스웨덴</b>
                                        </div>
                                        <div class="count">
                                            <span class="num">39</span>개
                                        </div>
                                    </a>
                                </li>          
		    <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=14103">
                                        <div class="value">
                                            <b class="name">덴마크</b>
                                        </div>
                                        <div class="count">
                                            <span class="num">45</span>개
                                        </div>
                                    </a>
                                </li>           
                              <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=14102">
                                        <div class="value">
                                            <b class="name">핀란드</b>
                                        </div>
                                        <div class="count">
                                            <span class="num">26</span>개
                                        </div>
                                    </a>
                                </li>           
	                     <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=14104">
                                        <div class="value">
                                            <b class="name">노르웨이</b>
                                        </div>
                                        <div class="count">
                                            <span class="num">47</span>개
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                     <a href="/exp/index.asp?needlogin=&region=14101">
                                        <div class="value">
                                            <b class="name">러시아</b>
                                        </div>
                                        <div class="count">
                                            <span class="num">37</span>개
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                      <a href="/exp/index.asp?needlogin=&region=14106">
                                        <div class="value">
                                            <b class="name">발트3국</b>
                                        </div>
                                        <div class="count">
                                            <span class="num">14</span>개
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="md-section">
                            <div class="content-header ico_theme">도시</div>
                            <ul class="content-list">
                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=111011004">
                                        <div class="value">
                                            <b class="name">파리</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                        <div class="count">
                                            <span class="num">107</span>개 경험
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=111031001">
                                        <div class="value">
                                            <b class="name">런던</b>
                                            <i class="category">영국</i>
                                        </div>
                                        <div class="count">
                                            <span class="num">59</span>개 경험
                                        </div>
                                    </a>
                                </li>


                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=111071001">
                                        <div class="value">
                                            <b class="name">암스테르담</b>
                                            <i class="category">네덜란드</i>
                                        </div>
                                        <div class="count">
                                            <span class="num">49</span>개 경험
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=111081001">
                                        <div class="value">
                                            <b class="name">브뤼셀</b>
                                            <i class="category">벨기에</i>
                                        </div>
                                        <div class="count">
                                            <span class="num">34</span>개 경험
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=111061006">
                                        <div class="value">
                                            <b class="name">프랑크푸르트</b>
                                            <i class="category">독일</i>
                                        </div>
                                        <div class="count">
                                            <span class="num">37</span>개 경험
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=111061008">
                                        <div class="value">
                                            <b class="name">베를린</b>
                                            <i class="category">독일</i>
                                        </div>
                                        <div class="count">
                                            <span class="num">43</span>개 경험
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=111061005">
                                        <div class="value">
                                            <b class="name">뮌헨</b>
                                            <i class="category">독일</i>
                                        </div>
                                        <div class="count">
                                            <span class="num">35</span>개 경험
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=111101001">
                                        <div class="value">
                                            <b class="name">더블린</b>
                                            <i class="category">아일랜드</i>
                                        </div>
                                        <div class="count">
                                            <span class="num">24</span>개 경험
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=131011001">
                                        <div class="value">
                                            <b class="name">프라하</b>
                                            <i class="category">체코</i>
                                        </div>
                                        <div class="count">
                                            <span class="num">60</span>개 경험
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=131041001">
                                        <div class="value">
                                            <b class="name">비엔나</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                        <div class="count">
                                            <span class="num">68</span>개 경험
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=131021001">
                                        <div class="value">
                                            <b class="name">부다페스트</b>
                                            <i class="category">헝가리</i>
                                        </div>
                                        <div class="count">
                                            <span class="num">44</span>개 경험
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=131061001">
                                        <div class="value">
                                            <b class="name">두브로브니크</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                        <div class="count">
                                            <span class="num">28</span>개 경험
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=111041004">
                                        <div class="value">
                                            <b class="name">로마</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                        <div class="count">
                                            <span class="num">55</span>개 경험
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=111041003">
                                        <div class="value">
                                            <b class="name">피렌체</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                        <div class="count">
                                            <span class="num">46</span>개 경험
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=111041006">
                                        <div class="value">
                                            <b class="name">베니스</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                        <div class="count">
                                            <span class="num">54</span>개 경험
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=111021002">
                                        <div class="value">
                                            <b class="name">인터라켄</b>
                                            <i class="category">스위스</i>
                                        </div>
                                        <div class="count">
                                            <span class="num">32</span>개 경험
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/exp/index.asp?needlogin=&region=121011002">
                                        <div class="value">
                                            <b class="name">바르셀로나</b>
                                            <i class="category">스페인</i>
                                        </div>
                                        <div class="count">
                                            <span class="num">52</span>개 경험
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                     <a href="/exp/index.asp?needlogin=&region=121011003">
                                        <div class="value">
                                            <b class="name">마드리드</b>
                                            <i class="category">스페인</i>
                                        </div>
                                        <div class="count">
                                            <span class="num">50</span>개 경험
                                        </div>
                                    </a>
                                </li>


                                <li class="content-item">
                                     <a href="/exp/index.asp?needlogin=&region=121021001">
                                        <div class="value">
                                            <b class="name">리스본</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                        <div class="count">
                                            <span class="num">38</span>개 경험
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                     <a href="/exp/index.asp?needlogin=&region=121031001">
                                        <div class="value">
                                            <b class="name">아테네</b>
                                            <i class="category">그리스</i>
                                        </div>
                                        <div class="count">
                                            <span class="num">32</span>개 경험
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                     <a href="/exp/index.asp?needlogin=&region=121041001">
                                        <div class="value">
                                            <b class="name">이스탄불</b>
                                            <i class="category">터키</i>
                                        </div>
                                        <div class="count">
                                            <span class="num">46</span>개 경험
                                        </div>
                                    </a>
                                </li>


                                <li class="content-item">
                                     <a href="/exp/index.asp?needlogin=&region=141051001">
                                        <div class="value">
                                            <b class="name">스톡홀름</b>
                                            <i class="category">스웨덴</i>
                                        </div>
                                        <div class="count">
                                            <span class="num">26</span>개 경험
                                        </div>
                                    </a>
                                </li>


                                <li class="content-item">
                                     <a href="/exp/index.asp?needlogin=&region=141031001">
                                        <div class="value">
                                            <b class="name">코펜하겐</b>
                                            <i class="category">덴마크</i>
                                        </div>
                                        <div class="count">
                                            <span class="num">33</span>개 경험
                                        </div>
                                    </a>
                                </li>


                                <li class="content-item">
                                     <a href="/exp/index.asp?needlogin=&region=141021001">
                                        <div class="value">
                                            <b class="name">헬싱키</b>
                                            <i class="category">핀란드</i>
                                        </div>
                                        <div class="count">
                                            <span class="num">24</span>개 경험
                                        </div>
                                    </a>
                                </li>


                                <li class="content-item">
                                     <a href="/exp/index.asp?needlogin=&region=141041002">
                                        <div class="value">
                                            <b class="name">오슬로</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                        <div class="count">
                                            <span class="num">31</span>개 경험
                                        </div>
                                    </a>
                                </li>






                            </ul>
                        </div>


                </div>
            </section>
            <!--// 모달 영역 -->  

<!-- JS Global Compulsory -->

<script src="/stubbyPlanner/externalData/superguide/One-Pages/assets/plugins/jquery/jquery.min.js"></script>
<script src="/stubbyPlanner/externalData/superguide/One-Pages/assets/plugins/jquery/jquery-migrate.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


<!-- JS Implementing Plugins -->
<script src="/stubbyPlanner/externalData/superguide/One-Pages/assets/plugins/smoothScroll.js"></script>
<script src="/stubbyPlanner/externalData/superguide/One-Pages/assets/plugins/jquery.easing.min.js"></script>
<script src="/stubbyPlanner/externalData/superguide/One-Pages/assets/plugins/owl-carousel2/owl.carousel.min.js"></script>

<!-- JS Page Level -->
<script src="/stubbyPlanner/externalData/superguide/One-Pages/assets/js/one.app.js"></script>
<script src="/stubbyPlanner/externalData/superguide/One-Pages/Travel/assets/js/plugins/owl-carousel2.js"></script>

<script src="https://unpkg.com/flickity@2.0/dist/flickity.pkgd.min.js"></script>




<script>
var weekday = new Array(7);
 weekday[0]=  "<b>일</b>";
 weekday[1] = "월";
 weekday[2] = "화";
 weekday[3] = "수";
 weekday[4] = "목";
 weekday[5] = "금";
 weekday[6] = "<b>토</b>";

var cityname =[];

cityname["111011004"]="파리";
cityname["111031001"]="런던";
cityname["111021005"]="취리히";
cityname["111041004"]="로마";
cityname["111041006"]="베니스";
cityname["111041003"]="피렌체";
cityname["111071001"]="암스테르담";
cityname["111081001"]="브뤼셀";
cityname["111061006"]="프랑크푸르트";
cityname["111061005"]="뮌헨";
cityname["111061008"]="베를린";
cityname["111101001"]="더블린";
cityname["121011002"]="바르셀로나";
cityname["121011003"]="마드리드";
cityname["121021001"]="리스본";
cityname["121041001"]="이스탄불";
cityname["121031001"]="아테네";
cityname["131011001"]="프라하";
cityname["131041001"]="비엔나";
cityname["131021001"]="부다페스트";
cityname["131061001"]="두브로브니크";
cityname["141051001"]="스톡홀름";
cityname["141031001"]="코펜하겐";
cityname["141021001"]="헬싱키";
cityname["141041002"]="오슬로";
cityname["111011003"]="니스";
cityname["111031008"]="에든버러";
cityname["111041001"]="밀라노";
cityname["111021008"]="제네바";
cityname["131061008"]="자그레브";
cityname["121011001"]="그라나다";
cityname["121011007"]="세비야";
cityname["141071003"]="레이캬비크";
cityname["141061001"]="탈린";



function getFlightPriceList(citycode)
{
	xcityname=cityname[citycode];
	$("#btn-flight").html(xcityname+' <span class="caret"></span>');

	$.ajax({	
	  url: "/api/v4/flight/getList.asp",
	  data: {
		citycode:citycode
	  },
	  success: function( data ) {
		if(data!="")
		{
		
			thtml='';

			RSArr=data.split("|");

			thtml+='<div style="font-size:10pt;font-weight:bold">출국 날짜별 최저가</div>';
			thtml+='<div style="width:100%;overflow:auto">';
			thtml+='<div style="width:'+eval(32*RSArr.length+17*4)+'px">';

			for(i=0;i<RSArr.length;i++)
			{
				ColArr=RSArr[i].split(","); //0:DD,1:minp

				var d = new Date(ColArr[0]);
				var weekDayTxt = weekday[d.getDay()]; 

				minP=Math.round(parseInt(ColArr[1])/10000)

				if(d.getDate()==1)
					thtml+='<div style="float:left;margin-left:2px;width:15px;background:#efefef;text-align:center;font-size:8pt;height:130px">'+eval(d.getMonth()+1)+'<br>월</div>';


				thtml+='<div style="float:left;margin-left:2px;width:30px;">';
					thtml+='<div class="fgraph1"  id="fg1_'+ColArr[0]+'" style="height:100px;background:#c0c0c0;cursor:pointer" onclick="getFlightPrice(\''+ColArr[0]+'\',\''+citycode+'\',\'fg1_'+ColArr[0]+'\')">';
						thtml+='<div style="height:'+eval(85-minP)+'px;background:#fff;cursor:default"></div>';
						thtml+='<div style="height:15px;background:#fff;font-size:7pt;text-align:center">'+minP+'만~</div>';
					thtml+='</div>';


					thtml+='<div style="height:15px;font-size:7pt;text-align:center">'+d.getDate()+'</div>';
					thtml+='<div style="height:15px;font-size:7pt;text-align:center">'+weekDayTxt+'</div>';
				thtml+='</div>';




			}
			thtml+='<div style="clear:both"></div>';


			thtml+='</div>';
			thtml+='</div>';

	
			$("#div_flight").html(thtml);	
		}
	}
	});
	
}
function getFlightPrice(date_in,citycode,id)
{
	$(".fgraph1").css("background","#c0c0c0");
	$("#"+id).css("background","red");

	$.ajax({
		dataType: 'json',
		  url: "/api/v4/flight/getListByDateIN.asp",
		  data: {
		    DateIN:date_in,
		   citycode:citycode
		  },
		  success: function( data ) {
			if(data!="")
			{
				prv_m=-1;

				thtml='<div style="margin-top:15px;font-size:9pt;font-weight:bold">귀국일별 최저가 <span class="label label-default"><font style="font-size:8pt">출국일:'+date_in+'</font></span></div>';
				thtml+='<div style="width:100%;overflow:auto">';
				thtml+='<div style="width:'+parseInt(32*data.data.items.length+17*4)+'px">';
				$.each(data.data.items, function( i, item ) {

					minP=Math.round(item.MinPrice/10000);
					dateOUT=item.DateOUT;
				


				
				var d = new Date(dateOUT);
				var weekDayTxt = weekday[d.getDay()]; 

				if(d.getMonth()!=prv_m)
				{
					thtml+='<div style="float:left;margin-left:2px;width:15px;background:#efefef;text-align:center;font-size:8pt;height:185px">'+eval(d.getMonth()+1)+'<br>월</div>';
					prv_m=d.getMonth();
				}
				
				thtml+='<div style="float:left;margin-left:2px;width:30px;">';
					thtml+='<div class="fgraph2"  id="fg2_'+dateOUT+'" style="height:140px;background:#c0c0c0;cursor:pointer" onclick="flightLink(\''+date_in+'\',\''+dateOUT+'\',\''+citycode+'\',\'fg2_'+dateOUT+'\')">';
						thtml+='<div style="height:'+eval(125-minP)+'px;background:#fff;cursor:default"></div>';
						thtml+='<div style="height:15px;background:#fff;font-size:7pt;text-align:center">'+minP+'만</div>';
					thtml+='</div>';


					thtml+='<div style="height:15px;font-size:7pt;text-align:center">'+d.getDate()+'</div>';
					thtml+='<div style="height:15px;font-size:7pt;text-align:center">'+weekDayTxt+'</div>';
					dd=mydiff(date_in,dateOUT,"days");
					thtml+='<div style="height:15px;font-size:7pt;text-align:center;background:#efefef">D+'+dd+'</div>';

				thtml+='</div>';


				});

				thtml+='<div style="clear:both"></div>';
				thtml+='</div>';
				thtml+='</div>';

				$("#div_flight_rt").html(thtml);

				toY=eval($("#a_thema_6").position().top)+80;
				$("body").scrollTop(toY);

			}

		}
	});
	ga('send','event','exp','flightCheckIn',citycode+':'+date_in);
}
function flightLink(dateIn,dateOut,cityCode,id)
{
	$(".fgraph2").css("background","#c0c0c0");
	$("#"+id).css("background","red");

	dateIn=dateIn.replace(/-/gi,"");
	dateOut=dateOut.replace(/-/gi,"");

	ga('send','event','exp','flightCheckOut',cityCode+':'+dateIn+'_'+dateOut);

	turl="http://www.stubbyplanner.com/plan/trs_deeplink.asp?lang=ko&date_all="+dateIn+"&rt_date_all="+dateOut+"&TRSType=5&depserial=161031001&desserial="+cityCode;
	window.open(turl);

}
function mydiff(date1,date2,interval) {
    var second=1000, minute=second*60, hour=minute*60, day=hour*24, week=day*7;
    date1 = new Date(date1);
    date2 = new Date(date2);
    var timediff = date2 - date1;
    if (isNaN(timediff)) return NaN;
    switch (interval) {
        case "years": return date2.getFullYear() - date1.getFullYear();
        case "months": return (
            ( date2.getFullYear() * 12 + date2.getMonth() )
            -
            ( date1.getFullYear() * 12 + date1.getMonth() )
        );
        case "weeks"  : return Math.floor(timediff / week);
        case "days"   : return Math.floor(timediff / day); 
        case "hours"  : return Math.floor(timediff / hour); 
        case "minutes": return Math.floor(timediff / minute);
        case "seconds": return Math.floor(timediff / second);
        default: return undefined;
    }
}
function scrollToAnchor(id)
{
	toY=eval($("#"+id).position().top)-165;

	$("body").scrollTop(toY);
}
$(function() {
	



            // 모달창 열기/닫기
            $('.stu_search').click(function() {
	
                $('body').addClass('modal-opened');
                $('.stu_md-background').addClass('on');
                $('.md-searchWrap input.md-search-input').focus();
            });
            $('.md-header a.ico_back').click(function() {
                $('body').removeClass('modal-opened');
                $('.stu_md-background').removeClass('on');
            });



            // 검색기능
            $('.md-search-input').keyup(function() {
                var k = $(this).val();
                $('.md-section, .md-section > .content-list > .content-item').hide();
                var temp = $(".md-content > .md-section > .content-list .value:contains('" + k + "'), .md-content > .md-section > .content-list .md-product:contains('" + k + "')");
                $(temp).parents('.md-section').show();
                $(temp).closest('li').show();
            });



	$('.owl-carousel').owlCarousel({
	    loop:true,
	    items:1,
	    margin:0,
	    nav:false,
	    dots:true
	});


	$('.main-carousel').flickity({
	  // options
	  cellAlign: 'left',
	contain: true,
	imagesLoaded: true,
	pageDots: false,
	dragThreshold: 20


	});




	$('.market_banner').owlCarousel({
	    loop:true,

	    items:6,

	    margin:7,
	    nav:true,
    navText: [
      "<i class='fa fa-chevron-left'></i>",
      "<i class='fa fa-chevron-right'></i>"
    ],
	    dots:true
	});


	$('.market_banner7').owlCarousel({
	    loop:true,

	    items:7,

	    margin:10,
	    nav:true,
    navText: [
      "<i class='fa fa-chevron-left'></i>",
      "<i class='fa fa-chevron-right'></i>"
    ],
	    dots:true
	});






});


function showAlbum(se)
{

		curBucketSerial=se;
		var pswpElement = document.querySelectorAll('.pswp')[0];

		// build items array
	        $.ajax({
			url: '/api/v4/exp/getBucketAlbum.asp?bucketserial='+se,
			dataType: 'json',
			success: function(data){
			if(data!="")
			{
				var xitems = [];
			
				$.each(data.data.items, function( i, item ){
				
					if(item.imgurl!=""&&item.imgurl!=null)
					{
						xitems[i]=[];
						xitems[i]["src"]=item.imgurl;
						w=item.img_w;
						h=item.img_h;
						if(w==""||w==0||w==null)
						{
							xitems[i]["w"]="1024";
							xitems[i]["h"]="1024";
						}
						else
						{
							xitems[i]["w"]=w;
							xitems[i]["h"]=h;
						}
						thtml="";
						

						xitems[i]["title"]=item.title;
					}
	
				});
	
	
				// define options (if needed)
				var options = {
				    // optionName: 'option value'
				    // for example:
				    index: 0 // start at first slide
				};
				var gallery = new PhotoSwipe( pswpElement, PhotoSwipeUI_Default, xitems, options);
				gallery.init();


			}
		       }
		});

}



</script>
</body>
</html>