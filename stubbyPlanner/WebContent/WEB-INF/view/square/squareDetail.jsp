<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/include.jspf" %>

<!DOCTYPE html>
<html>
<head>

<script src="https://www.google.com/jsapi"></script>

<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	 (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	 m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	 })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
	 ga('create', 'UA-913663-1', 'auto');
	 ga('send', 'pageview');
	ga('send','event','tour','city', '${param.city_id}');
</script>


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

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimun-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">


<title>jsp/servlet class - (2019. 5. 28.-오전 10:43:57)</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- CSS/JavaScript -->
<link rel="stylesheet" type="text/css"
	href="/stubbyPlanner/externalData/market/css/swiper.min.css">
<link rel="stylesheet" type="text/css"
	href="/stubbyPlanner/externalData/market/css/daterangepicker.css">
<link rel="stylesheet" type="text/css"
	href="/stubbyPlanner/externalData/css2/common.css">


<link rel="stylesheet" type="text/css"
	href="/stubbyPlanner/externalData/market/css/cityHome9.css">


<link rel="stylesheet" type="text/css"
	href="/stubbyPlanner/externalData/market/css/itemStyle.css">



<link rel="stylesheet" type="text/css"
	href="/stubbyPlanner/externalData/css2/header_footer.css">


<link rel="stylesheet"
	href="/stubbyPlanner/externalData/superguide/One-Pages/assets/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="/stubbyPlanner/externalData/superguide/assets/css/headers/header-v4.css">
<link rel="stylesheet"
	href="/stubbyPlanner/externalData/css/stubbynew_topmenu.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<link rel="stylesheet" href="/stubbyPlanner/externalData/mypage/css/bootstrap.min.css">
<script src="/stubbyPlanner/externalData/mypage/js/bootstrap.min.js"></script>

   <!-- CSS/JavaScript -->
<%--     <link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/market/css/swiper.min.css"> --%>
<%--     <link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/market/css/common11.css"> --%>
<%--     <link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/market/css/header_footer11.css"> --%>
<%--     <link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/market/css/md_select_group.css"> --%>
<%--     <link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/market/css/tourHome11.css"> --%>



<style>
	#insert:hover{
		background-color: gray;
		color:white;
		border: none;
	}
</style>
<style>
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

.like {
	background-image: url(<%= contextPath %>/externalData/images2/common/stu_icon.png);
	background-repeat: no-repeat;
	vertical-align: middle;
}
</style>


<style>
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
	border: 3px solid #fff;
	border-radius: 50px;
}

/* 헤더영역 */
header .stu_gnb_container {
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	height: 50px;
	border-bottom: 1px solid #e5e5e5;
	background: rgba(255, 255, 255, .95);
	line-height: 50px;
	z-index: 10;
	-webkit-transition: top .3s ease;
	-moz-transition: top .3s ease;
	-o-transition: top .3s ease;
	transition: top .3s ease;
}

header .stu_gnb_container .stu_inner_wrap {
	padding: 0 16px;
}

header .stu_gnb_container .stu_logo {
	float: left;
	position: relative;
	top: 8px;
	height: 34px;
}

header .stu_gnb_container .stu_gnb_wrap {
	float: right;
	display: inline-block;
}

header .stu_gnb_container .stu_gnb_wrap li {
	display: inline-block;
	position: relative;
}

header .stu_gnb_container .stu_gnb_wrap li+li {
	margin-left: 6px;
}

header .stu_gnb_container .stu_gnb_wrap li p {
	display: none;
}

header .stu_gnb_container .stu_gnb_wrap li#ico_search {
	padding: 0 20px 0 5px;
	-webkit-border-radius: 18px;
	border-radius: 18px;
	border: 1px solid #e5e5e5;
	background: #f5f5f5;
	line-height: 34px;
}

/* header .stu_gnb_container .stu_gnb_wrap li#ico_search:after { */
/* 	content: "검색"; */
/* 	font-size: 15px; */
/* 	font-weight: 300; */
/* 	color: #666; */
/* 	cursor: text; */
/* } */

/* header .stu_gnb_container .stu_gnb_wrap li#ico_planner { */
/* 	display: none; */
/* } */

header .stu_gnb_container button {
	margin-top: -2px;
}

header .stu_gnb_container button.ico_search {
	display: inline-block;
	width: 30px;
	height: 30px;
	background-position: -60px -30px;
	background-size: 240px;
	opacity: .6;
}

header .stu_gnb_container button.ico_booking {
	display: inline-block;
	width: 34px;
	height: 34px;
	background: url(../images/common/stu_icon.png) 0 -204px no-repeat;
	background-size: 272px;
}

header .stu_gnb_container button.ico_planner {
	display: none;
}

@media ( min-width :620px) {
	/* 헤더영역 */
	header .stu_gnb_container {
		position: relative;
		top: 0 ! important;
		height: 56px;
		line-height: 56px;
	}
	header .stu_gnb_container .stu_inner_wrap {
		padding: 0 20px;
	}
	header .stu_gnb_container .stu_logo {
		top: 11px;
	}
	header .stu_gnb_container .stu_gnb_wrap li+li {
		margin-left: 32px;
	}
	header .stu_gnb_container .stu_gnb_wrap li:after {
		display: inline-block;
		font-size: 16px;
		font-weight: 400;
		color: #222;
	}
/* 	header .stu_gnb_container .stu_gnb_wrap li a { */
/* 		position: absolute; */
/* 		top: 0; */
/* 		left: 0; */
/* 		width: 100%; */
/* 		height: 100%; */
/* 	} */
	header .stu_gnb_container .stu_gnb_wrap li#ico_search {
		padding: 0 32px 0 10px;
	}
	header .stu_gnb_container .stu_gnb_wrap li#ico_search:after {
		content: "투어 또는 국가 검색";
		font-size: 14px;
	}
	header .stu_gnb_container .stu_gnb_wrap li#ico_booking:after {
		content: "내 예약";
	}
	header .stu_gnb_container .stu_gnb_wrap li#ico_planner {
		display: inline-block;
	}
	header .stu_gnb_container .stu_gnb_wrap li#ico_planner:after {
		content: "플래너";
	}
	header .stu_gnb_container button.ico_booking {
		display: none;
	}
}

 @media ( min-width :1025px) {
	/* 헤더영역 */
	header .stu_gnb_container .stu_inner_wrap {
		padding: 0;
	}
	header .stu_gnb_container .stu_gnb_wrap li+li {
		margin-left: 40px;
	}
	header .stu_gnb_container .stu_gnb_wrap li#ico_search {
		padding: 0 32px 0 12px;
	}
	header .stu_gnb_container .stu_gnb_wrap li#ico_search:after {
		content: "투어 또는 국가로 검색하세요";
	}
} 
<%@include file="/WEB-INF/layout/css/header_large.css" %>

</style>
<!-- 갤러리 -->
<style type="text/css">

.snip1384:hover {
  color: #ffffff; 
  text-align: left;
  font-size: 16px;
  background-color: #000000; 
}
.snip1384 * {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-transition: all 0.35s ease;
  transition: all 0.35s ease;
}
.snip1384 img {
  max-width: 100%;
  backface-visibility: hidden;
  vertical-align: top;
}
.snip1384:after,
.snip1384 figcaption {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
}
.snip1384:after {
  content: '';
  background-color: rgba(0, 0, 0, 0.65);
  -webkit-transition: all 0.35s ease;
  transition: all 0.35s ease;
  opacity: 0;
}
.snip1384 figcaption {
  z-index: 1;
  padding: 20px;
}
.snip1384 h2,
.snip1384 .links {
  width: 100%;
  margin: 5px 0;
  padding: 0;
}
.snip1384 h2 {
  line-height: 1.1em;
  font-weight: 700;
  font-size: x-large;
  text-transform: uppercase;
  opacity: 0;
}
.snip1384 p {
  font-size: large;
  font-weight: 300;
/*   letter-spacing: 1px; */
  opacity: 0;
  top: 50%;
  -webkit-transform: translateY(40px);
  transform: translateY(40px);
}
.snip1384 i {
  position: absolute;
  bottom: 10px;
  right: 10px;
  padding: 20px 25px;
  font-size: 34px;
  opacity: 0;
  -webkit-transform: translateX(-10px);
  transform: translateX(-10px);
}
.snip1384 a {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  z-index: 1;
}
.snip1384:hover img,
.snip1384.hover img {
  zoom: 1;
  filter: alpha(opacity=50);
  -webkit-opacity: 0.5;
  opacity: 0.5;
}
.snip1384:hover:after,
.snip1384.hover:after {
  opacity: 1;
  position: absolute;
  top: 10px;
  bottom: 10px;
  left: 10px;
  right: 10px;
}
.snip1384:hover h2,
.snip1384.hover h2,
.snip1384:hover p,
.snip1384.hover p,
.snip1384:hover i,
.snip1384.hover i {
  -webkit-transform: translate(0px, 0px);
  transform: translate(0px, 0px);
  opacity: 1;
}
</style>

<style type="text/css">

/* .stu_prd_category .swiper-wrapper { transform:translate3d(0px, 0px, 0px)! important; } */
.stu_prd_category .stu_tabArea li { height:52px; }
.stu_prd_category .stu_tabArea li a { line-height:52px; }
.stu_prd_category .stu_tabArea li.on a { height:100% }
.stu_prd_category .stu_tabArea li span:before { display:inline-block; margin:-2px 4px 0 0; }
.stu_prd_category .stu_tabArea li.on span:before { margin:-2px 4px 0 0; }
</style>


<style>

table.type09 {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
    width: 98%;
    margin: 0 auto;

}
table.type09 thead th {
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #369;
    border-bottom: 3px solid #036;
    text-align: center;
}

table.type09 tbody th {
    width: 10%;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    background: #f3f6f7;
    text-align: center;
}
table.type09 td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    text-align: center;
}
table.type09 td.title{
	text-align: left; width: 35%;
}
table.type09 tbody tr:hover{
	background: #f3f6f7;
}
table.type09 tbody td:hover{
	background: #f3f6f7;
}
table.type09 tbody td.ct{
    padding: 10px;
    font-weight: bold;
    vertical-align: middle;
    color: #369;
/*     border-bottom: 3px solid #036; */
    text-align: center;
}
table.type09 tbody td.love{
    padding: 10px;
    font-weight: bold;
    vertical-align: middle;
    color: #369;
/*     border-bottom: 3px solid #036; */
    text-align: center;
}
table.type09 tbody td.comment{
    padding: 10px;
    font-weight: bold;
    vertical-align: middle;
    color: #369;
/*     border-bottom: 3px solid #036; */
    text-align: center;
}

.stu_recent-offer .score { display:none; }
.stu_recent-offer .score i { display:inline-block; width:15.12px; height:14.4px; margin:0 2px 0 0; background-position:0 -129.6px; background-size:230.4px; vertical-align:-1.5px; }
.stu_recent-offer .score span.buy { margin:0 0 0 8px; font-weight:normal; color:#8f8f8f; }
.stu_recent-offer .score { display:inline-block; position:absolute; left:12px; bottom:8px; font-size:13px; font-weight:bold; color:#222; }




</style>



</head>

<body>
	<div class="stu_wrap">
	
	<jsp:include page="/WEB-INF/layout/header_large.jsp"></jsp:include>

	
	
	

		<!--메인영역_Str-->
		<main class="stu_clearfix">


		<section class="stu_top_banner">
		
			<div class="stu_bg">
				<div class="titArea">
					<b class="loc"> <a><strong style="color: #666;"><b>광장</b></strong></a>
					</b> <b>공지사항
<!-- 						<div class="popover-wrap" id="popover-wrap-menu">
							<ul>
								<li><a href="#" class="current">투어/일정</a></li>
								<li><a href="/mb/index_city.asp?region=111011004" class="">숙소</a></li>

							</ul>
						</div> -->
					</b>

				</div>



				<div class="stu_trip-type">
					<div class="selectBtn">
						<spans class="write" style="float:left;"><p style="height: 30px; margin-top: 9px;">게시글 작성</p></spans>
					  <select  id ="write" style="width: 15px; border: none; float: rigth">
						<option value="none"></option>
						<option value="board">게시판</option>
						<option value="planner">플래너공유</option>
						<option value="party">동행찾기</option>
						<option value="gallery">갤러리</option>
					  </select>
						
					</div>
				</div>

			</div>
			
			
			<div style="text-align: left; padding-left: 20%; padding-top: 10px;">
			<ul>
			
			   <h2 style="font-size:10pt;font-weight:700; color: gray; padding-top: 15px;">
                  	  -스투비 광장은 여행의 정보와 이야기를 자유롭게 공유하는 공간입니다.
               </h2>
               <h2 style="font-size:10pt;font-weight:700; color: gray; padding-top: 5px;">
                  	  -광장에서 다른 회원들과 소통하며 다양한 마일리지 혜택들도 받을 수 있습니다.
               </h2>
               <h2 style="font-size:10pt;font-weight:700; color: gray; padding-top: 5px;">
                  	  -게시물 작성시 내용 및 첨부파일에 <strong style="font-size:10pt;font-weight:700; color: red">부적절한 내용</strong>이 들어있을 경우 게시물이 삭제 처리 될 수 있습니다.
               </h2>
			</div>
			
			
		</section>





		<section class="stu_prd_category">
			<div class="stu_inner_wrap">
				<div class="swiper-container swiper-category">
					<ul class="swiper-wrapper stu_tabArea">
						<!--전체(all),오전(am),오후(pm),야간(night),전일(oneDay)-->
						<li class="swiper-slide all on"><a
							href="javascript:getTotal();"><span>전체</span></a></li>
						<li class="swiper-slide board"><a
							href="javascript:getBoard();"><span>게시판</span></a></li>
						<li class="swiper-slide planner"><a
							href="javascript:getBoard();"><span>플래너공유</span></a></li>
						<li class="swiper-slide party"><a
							href="javascript:getParty();"><span>동행찾기</span></a></li>
						<li class="swiper-slide gallery"><a
							href="javascript:getGallery();"><span>갤러리</span></a></li>
					</ul>
				</div>
			</div>
		</section>


		<section class="prd_filter">
		
            	   
			<div class="stu_inner_wrap">




<!-- 				<div class="btn_prd_filter"> -->

<!-- 					<button type="button"> -->
<!-- 						필터 <span class="select_count"></span> -->
<!-- 					</button> -->


<!-- 				</div> -->






<!-- 				<div class="filter-header"> -->
<!-- 					<h3 class="stu_title"></h3> -->
<!-- 					<a class="stu_reset">모두 지우기</a> -->
<!-- 				</div> -->
				
				
				<div class="filter-container">
					<ul>
					<li class="filter-section stu_clearfix" style="padding-top: 20px;">
		          	 <div class="stu_square_search" style=" bottom:0; height: 40px; width: 200px;">   
		         	 <input class="search_input" id="search_input" placeholder="제목, 내용, 작성자로 검색" style="border: solid 1px gray; width: 68%;">

		          	  <select  id ="a_such" style="width: 10%;" onchange="document.getElementById('search_input').placeholder =this.options[this.selectedIndex].value">
						<option id="subject" value="제목">제목</option>
						<option id="content" value="내용">내용</option>
						<option id="member_id" value="작성자">작성자</option>
					  </select>
									  
		         	 <input type="button" value="검색" id="search" onclick="" style="width: 18%;"/>
            	 	 </div>
            	 	</li>
						<li class="filter-section stu_clearfix">
							<h4 class="stu_title">상품 정렬</h4>
							<ul class="filter-wrap sorting">

								<li class="filter-list table  default on ">
									<div class="filter-item" onclick="update_orderby('recom')">최신순</div>
								</li>
								<li class="filter-list table">
									<div class="filter-item" onclick="update_orderby('hot')">추천순</div>
								</li>
								<li class="filter-list table">
									<div class="filter-item" onclick="update_orderby('review')">댓글순</div>
								</li>

							</ul>
						</li>

<!-- 						<li class="filter-section"> -->
<!-- 							<h4 class="stu_title">상품 카테고리</h4> -->
<!-- 							<ul class="filter-wrap category"> -->
<!-- 								<li class="filter-list default on"> -->
<!-- 									<div class="filter-item" onclick="select_thema_code(0)">전체</div> -->
<!-- 								</li> -->
<!-- 								<li class="filter-list"> -->
<!-- 									<div class="filter-item" onclick="select_thema_code('시내투어')">시내투어</div> -->
<!-- 								</li> -->
<!-- 								<li class="filter-list"> -->
<!-- 									<div class="filter-item" onclick="select_thema_code('근교투어')">근교투어</div> -->
<!-- 								</li> -->
<!-- 								<li class="filter-list"> -->
<!-- 									<div class="filter-item" onclick="select_thema_code('액티비티')">액티비티</div> -->
<!-- 								</li> -->
<!-- 								<li class="filter-list"> -->
<!-- 									<div class="filter-item" onclick="select_thema_code('스냅촬영')">스냅촬영</div> -->
<!-- 								</li> -->
<!-- 								<li class="filter-list"> -->
<!-- 									<div class="filter-item" onclick="select_thema_code('티켓/교통패스')">티켓/교통패스</div> -->
<!-- 								</li> -->
<!-- 								<li class="filter-list"> -->
<!-- 									<div class="filter-item" onclick="select_thema_code('여행편의')">여행편의</div> -->
<!-- 								</li> -->


<!-- 							</ul> -->
<!-- 						</li> -->


					</ul>
				</div>
				<div class="filter-footer">
					<div class="btn_apply">
						<button type="button">확인</button>
					</div>
				</div>
			</div>
		</section>







		<section class="stu_prd_list  stu_clearfix" style="width: 950px; padding-top: 10px;">
			<div class="stu_inner_wrap">
		<!-- 	
				<div class="filter_header">
					<div class="titArea">
						<h3 class="stu_title">게시물</h3>


						<span class="prd_count"></span>


					</div>
				</div>
 -->
 				<ul class="prd_list stu_clearfix paginated" id="tourlist">




       <section class="stu_regions">
                <div class="stu_inner_wrap" style="">

<!--        <li class="swiper-slide"> -->
               <h2 style="font-size:18pt;font-weight:700;">
                  	  최근 플래너
               </h2>
<!--        </li> -->

                

                        <div class="swiper-container swiper4">
                            <ul class="swiper-wrapper" style="padding: 5px;">


                                <li class="swiper-slide" style="width: 150px; height: 150px; padding: 5px;">
                                	<!-- 경로 & 파라미터 변경 필요 -->
                                    <a href="http://www.stubbyplanner.com/planner/planner_rt.do?tripgene=111031001:3:X:0,111011004:3:0:0,111041006:1:5:0,111041003:1:1:0,111041004:3:1:0">
                                        <img class="fw" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/636c475c3ce6932a35fadb740f63bf74_l.jpg">
                                        <div class="tone-down"></div>
                                    </a>
                                </li>


                                <li class="swiper-slide" style="width: 150px; height: 150px; padding:5px;">
                                  <!-- 경로 & 파라미터 변경 필요 -->
                                  <a href="http://www.stubbyplanner.com/planner/planner_rt.do?tripgene=131011001:2:X:0,131011003:1:2:0,131041002:0:0:0,131041032:1:1:0,131041001:1:1:0,131021001:1:1:0">
                                        <img class="fw" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/467ff806c2e8d1d75abfe661f238595b_l.jpg">
                                        <div class="tone-down"></div>
                                    </a>
                                </li>

                                <li class="swiper-slide" style="width: 150px; height: 150px;">
                                 <!-- 경로 & 파라미터 변경 필요 -->
								 <a href="http://www.stubbyplanner.com/planner/planner_rt.do?tripgene=121011002:3:X:0,121011001:1:1:0,121011048:0:2:0,121011005:1:2:0,121011057:1:2:0,121011007:1:0:0,121021001:2:0:0,121021041:1:0:0,121011003:1:0:0,121011004:0:2:0,121011008:0:0:0,121011003:3:0:0">
                                        <img class="fw" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/41f99a5e1fef95c038f585bc77f827e5_l.jpg">
                                        <div class="tone-down"></div>
                                    </a>
                                </li>

                                <li class="swiper-slide" style="width: 150px; height: 150px;">
                                 <!-- 경로 & 파라미터 변경 필요 -->
								 <a href="http://www.stubbyplanner.com/planner/planner_rt.do?tripgene=121041001:3:X:0,121041035:1:0:0,121041006:1:0:0,121041003:2:0:0,121041030:1:0:0,121041004:1:0:0,121031002:2:0:0,121031001:2:0:0,121041001:1:5:0">
                                        <img class="fw" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/684a6760ae74e6e614c6b24f7b4d2337_l.jpg">
                                        <div class="tone-down"></div>
                                    </a>
                                </li>


                                <li class="swiper-slide" style="width: 150px; height: 150px;">
                                	<!-- 경로 & 파라미터 변경 필요 -->
                                    <a href="http://www.stubbyplanner.com/planner/planner_rt.do?tripgene=111031001:3:X,121011003:2:X,121011004:0:X,121011003:1:X,121011002:3:X,111041004:3:X,111041003:1:X,111041006:1:X,111061005:1:X,131041002:1:X,131041032:1:X,131041001:2:X,131021001:1:X,131011001:3:X,111061006:1:X,111011004:4:X">
                                        <img class="fw" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/5bf452c02b7c792e6cbda09451d2f523_l.jpg">
                                        <div class="tone-down"></div>
                                    </a>
                                </li>

                            </ul>
                        </div>

					</div>
            </section>

				
       <section class="stu_swiper-section stu_recent-offer" >
            <div class="stu_inner_wrap" style="padding-right: 5%;">
                <div class="titArea" style="display: inline-block; padding-top: 20px;">
               <h2 style="font-size:18pt;font-weight:700;">
                  	  최근 게시판
               </h2>
                </div>
                
	
<!--                 <div class="swiper-container swiper-items"> -->
<!--                     <ul class="swiper-wrapper"> -->

<table class="type09">
         <caption>테이블 설명</caption>
        <thead>
            <tr>
            	<th scope="cols">글번호</th>
                <th scope="cols">아이디</th>
                <th scope="cols">제목</th>
                <th scope="cols">날짜</th>
                <th scope="cols">조회</th>
                <th scope="cols">추천</th>
            </tr>
        </thead>
        <tbody>
        <c:set var="boardEmpty" value="false"/>
        <c:forEach var="boardList" items="${boardList}" varStatus="status">
        	<c:if test="${not boardEmpty}">
        		<c:if test="${status.last}">
        			<c:set var="boardEmpty" value="true"/>
        		</c:if>      		
        		<c:if test="${status.count==5}">
        			<c:set var="boardEmpty" value="true"/>
        		</c:if>    
            <tr name="noshow">
                <th scope="row">${boardList.post_seq}</th>
                <td>${boardList.member_id}</td>
                <td class="title">${boardList.post_subject}</td>
                <td>${boardList.post_regdate}</td>
                <td>${boardList.post_hits}</td>
                <td>${boardList.post_like}</td>
            </tr>
            <tr class="con" style="display: none"><td class="ct">내용</td><td colspan="4">${boardList.post_content}</td><td></td></tr>
            <tr class="con" style="display: none"><td></td><td colspan="3"><input placeholder="댓글을 작성하세요" type="text" name="text" size="20" style="width:100%;"></td><td class="love">추천</td><td class="comment">댓글▼</td></tr>
        	</c:if>
        </c:forEach>
        </tbody>
    </table>

<!--                     </ul>
                </div> -->
            </div>
        </section>
        


 <section class="stu_swiper-section stu_recent-offer"">
            <div class="stu_inner_wrap">
                <div class="titArea" style="display: inline-block;  padding-top: 20px; ">
               <h2 style="font-size:18pt;font-weight:700;">
                  	  최근 동행 찾기
               </h2>
                </div>

                <div class="swiper-container stu_tagArea"">
                    <ul class="swiper-wrapper">


                        <li class="swiper-slide prd_item"  style="width: 17%; margin-bottom: 0px;">
                            <a href="<%= contextPath %>/square/index.do" style="width:100%; height: 100%;">
                                <figure class="thumb">
                                        <c:if test="${!empty partyList[0].profile_pic }">
                                            <img class="fh" src="${partyList[0].profile_pic}" alt="프로필 사진"/>
                                        </c:if>
                                        <c:if test="${empty partyList[0].profile_pic }">
                                            <img class="fh" src="/stubbyPlanner/externalData/img_v9/img_pfnull.jpg" alt="프로필 사진"/>
                                        </c:if>
                                </figure>
                                
                                <figcaption class="prd_info">
                                    <div class="cpn">
                                    </div>
                                    <div class="name">
                                        <span>${partyList[0].party_content}</span>
                                    </div>

                             		<div class="price"  style="line-height:100%;text-align:right;2px;">
                                        ${partyList[0].member_id}
                                    </div>
                                    
                                    <div class="score" style="display:inline-block">
                                        <span>${partyList[0].party_like}</span>
                                    </div>
                   			   </figcaption>
                            </a>
                        </li>

        <li class="swiper-slide prd_item" style="width: 17%; margin-bottom: 0px;">
                            <a href="<%= contextPath %>/square/index.do" style="width:100%; height: 100%;">
                                <figure class="thumb">
                                        <c:if test="${!empty partyList[1].profile_pic }">
                                            <img class="fh" src="${partyList[1].profile_pic}" alt="프로필 사진"/>
                                        </c:if>
                                        <c:if test="${empty partyList[1].profile_pic }">
                                            <img class="fh" src="/stubbyPlanner/externalData/img_v9/img_pfnull.jpg" alt="프로필 사진"/>
                                        </c:if>
                                </figure>
                                
                                <figcaption class="prd_info">
                                    <div class="cpn">
                                    </div>
                                    <div class="name">
                                        <span>${partyList[1].party_content}</span>
                                    </div>

                             		<div class="price"  style="line-height:100%;text-align:right;2px;">
                                        ${partyList[1].member_id}
                                    </div>
                                    
                                    <div class="score" style="display:inline-block">
                                        <span>${partyList[1].party_like}</span>
                                    </div>
                   			   </figcaption>
                            </a>
                        </li>

        <li class="swiper-slide prd_item" style="width: 17%; margin-bottom: 0px;">
                            <a href="<%= contextPath %>/square/index.do" style="width:100%; height: 100%;">
                                <figure class="thumb">
                                        <c:if test="${!empty partyList[2].profile_pic }">
                                            <img class="fh" src="${partyList[2].profile_pic}" alt="프로필 사진"/>
                                        </c:if>
                                        <c:if test="${empty partyList[2].profile_pic }">
                                            <img class="fh" src="/stubbyPlanner/externalData/img_v9/img_pfnull.jpg" alt="프로필 사진"/>
                                        </c:if>
                                </figure>
                                
                                <figcaption class="prd_info">
                                    <div class="cpn">
                                    </div>
                                    <div class="name">
                                        <span>${partyList[2].party_content}</span>
                                    </div>

                             		<div class="price"  style="line-height:100%;text-align:right;2px;">
                                        ${partyList[2].member_id}
                                    </div>
                                    
                                    <div class="score" style="display:inline-block">
                                        <span>${partyList[2].party_like}</span>
                                    </div>
                   			   </figcaption>
                            </a>
                        </li>

        <li class="swiper-slide prd_item" style="width: 17%; margin-bottom: 0px;">
                            <a href="<%= contextPath %>/square/index.do" style="width:100%; height: 100%;">
                                <figure class="thumb">
                                        <c:if test="${!empty partyList[3].profile_pic }">
                                            <img class="fh" src="${partyList[3].profile_pic}" alt="프로필 사진"/>
                                        </c:if>
                                        <c:if test="${empty partyList[3].profile_pic }">
                                            <img class="fh" src="/stubbyPlanner/externalData/img_v9/img_pfnull.jpg" alt="프로필 사진"/>
                                        </c:if>
                                </figure>
                                
                                <figcaption class="prd_info">
                                    <div class="cpn">
                                    </div>
                                    <div class="name">
                                        <span>${partyList[3].party_content}</span>
                                    </div>

                             		<div class="price"  style="line-height:100%;text-align:right;2px;">
                                        ${partyList[3].member_id}
                                    </div>
                                    
                                    <div class="score" style="display:inline-block">
                                        <span>${partyList[3].party_like}</span>
                                    </div>
                   			   </figcaption>
                            </a>
                        </li>

        <li class="swiper-slide prd_item" style="width: 17%; margin-bottom: 0px;">
                            <a href="<%= contextPath %>/square/index.do" style="width:100%; height: 100%;">
                                <figure class="thumb">
                                        <c:if test="${!empty partyList[4].profile_pic }">
                                            <img class="fh" src="${partyList[4].profile_pic}" alt="프로필 사진"/>
                                        </c:if>
                                        <c:if test="${empty partyList[4].profile_pic }">
                                            <img class="fh" src="/stubbyPlanner/externalData/img_v9/img_pfnull.jpg" alt="프로필 사진"/>
                                        </c:if>
                                </figure>
                                
                                <figcaption class="prd_info">
                                    <div class="cpn">
                                    </div>
                                    <div class="name">
                                        <span>${partyList[4].party_content}</span>
                                    </div>

                             		<div class="price"  style="line-height:100%;text-align:right;2px;">
                                        ${partyList[4].member_id}
                                    </div>
                                    
                                    <div class="score" style="display:inline-block">
                                        <span>${partyList[4].party_like}</span>
                                    </div>
                   			   </figcaption>
                            </a>
                        </li>

                </div>
            </div>
        </section>



    <section class="stu_regions";">
                <div class="stu_inner_wrap" style="padding-top: 20px;">

<!--        <li class="swiper-slide"> -->
               <h2 style="font-size:18pt;font-weight:700;">
                  	  최근 갤러리
               </h2>
<!--        </li> -->

                

                        <div class="swiper-container swiper3">
                            <ul class="swiper-wrapper" style="padding: 5px;">


                                <li class="swiper-slide" style="width: 150px; height: 150px; padding: 5px;">
                                	<!-- 경로 & 파라미터 변경 필요 -->
                                    <a href="http://www.stubbyplanner.com/planner/planner_rt.do?tripgene=111031001:3:X:0,111011004:3:0:0,111041006:1:5:0,111041003:1:1:0,111041004:3:1:0">
                                        <img class="fw" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/636c475c3ce6932a35fadb740f63bf74_l.jpg">
                                    </a>
                                </li>


                                <li class="swiper-slide" style="width: 150px; height: 150px; padding:5px;">
                                  <!-- 경로 & 파라미터 변경 필요 -->
                                  <a href="http://www.stubbyplanner.com/planner/planner_rt.do?tripgene=131011001:2:X:0,131011003:1:2:0,131041002:0:0:0,131041032:1:1:0,131041001:1:1:0,131021001:1:1:0">
                                        <img class="fw" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/467ff806c2e8d1d75abfe661f238595b_l.jpg">
                                        <div class="tone-down"></div>
                                    </a>
                                </li>

                                <li class="swiper-slide" style="width: 150px; height: 150px;">
                                 <!-- 경로 & 파라미터 변경 필요 -->
								 <a href="http://www.stubbyplanner.com/planner/planner_rt.do?tripgene=121011002:3:X:0,121011001:1:1:0,121011048:0:2:0,121011005:1:2:0,121011057:1:2:0,121011007:1:0:0,121021001:2:0:0,121021041:1:0:0,121011003:1:0:0,121011004:0:2:0,121011008:0:0:0,121011003:3:0:0">
                                        <img class="fw" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/41f99a5e1fef95c038f585bc77f827e5_l.jpg">
                                        <div class="tone-down"></div>
                                    </a>
                                </li>

                                <li class="swiper-slide" style="width: 150px; height: 150px;">
                                 <!-- 경로 & 파라미터 변경 필요 -->
								 <a href="http://www.stubbyplanner.com/planner/planner_rt.do?tripgene=121041001:3:X:0,121041035:1:0:0,121041006:1:0:0,121041003:2:0:0,121041030:1:0:0,121041004:1:0:0,121031002:2:0:0,121031001:2:0:0,121041001:1:5:0">
                                        <img class="fw" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/684a6760ae74e6e614c6b24f7b4d2337_l.jpg">
                                        <div class="tone-down"></div>
                                    </a>
                                </li>


                                <li class="swiper-slide" style="width: 150px; height: 150px;">
                                	<!-- 경로 & 파라미터 변경 필요 -->
                                    <a href="http://www.stubbyplanner.com/planner/planner_rt.do?tripgene=111031001:3:X,121011003:2:X,121011004:0:X,121011003:1:X,121011002:3:X,111041004:3:X,111041003:1:X,111041006:1:X,111061005:1:X,131041002:1:X,131041032:1:X,131041001:2:X,131021001:1:X,131011001:3:X,111061006:1:X,111011004:4:X">
                                        <img class="fw" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/5bf452c02b7c792e6cbda09451d2f523_l.jpg">
                                        <div class="tone-down"></div>
                                    </a>
                                </li>

                            </ul>
                        </div>

					</div>
            </section>



				</ul>
			</div>


		</section>



		<div style="clear: both"></div>

		</main>
		<!--//메인영역_End-->
		
		<jsp:include page="/WEB-INF/layout/advertisement.jsp"></jsp:include>

	</div>

<script>


	$(document).ready(function() {
		
		
		var i =2;
		$('#galleryPlus').click(function(){
			$('#writeGallery').after('<input type="file" class="writeGallery" name="writeGallery'+i+'" style="border: none;"/><br />');
			i++;
		});
		
		//게시물 내용 출력
		$('tr').click(function(){
			if($(this).attr('name')=='noshow'){
				$('.con').css({display:'none'});
				$(this).next().css({display:''});
				$(this).next().next().css({display:''});
				$(this).attr('name','show');
			}
			else if($(this).attr('name')=='show'){
				$(this).next().css({display:'none'});
				$(this).next().next().css({display:'none'});
				$(this).attr('name','noshow');
			}
		});
		
		//게시물 작성
		$('.write').click(function(){
			
		if($('#write option:selected').val()=='board'){
			$('#write_board_Modal').modal();
			}else if($('#write option:selected').val()=='party'){
			$('#write_party_Modal').modal();	
			}else if($('#write option:selected').val()=='gallery'){
			$('#write_gallery_Modal').modal();
			}
		});
		
		//게시판
		   $('#insert_form_board').on('submit',function(event){
				  var board_code = $('#write_category option:selected').attr('id');
				  if($('#writeSubject').val()=='')
				 {
				 $('#writeSubject').focus();
				 alert("제목을 입력해주세요");
				 }else if($('#writeContent').val()=='')
				 {
				 alert("내용을 입력해주세요");
				 }else if(board_code==null){
				 alert("카테고리를 선택해주세요");	 
				 }else{
				  var content =$('textarea#writeContent').val();
				  var subject =$('input#writeSubject').val();
				  writeBoard('${authUser.member_id}',content,subject,board_code);
				  }
		   })
		   
		   //동행 찾기
		   $('#insert_form_party').on('submit',function(	event){
				  if($('#writeParty').val()=='')
					 {
					 $('#writeParty').focus();
					 alert("내용을 입력해주세요");
					 }else{
						  var content =$('textarea#writeParty').val();
						  writeParty('${authUser.member_id}',content);
						  }
		   })	
		
		   //갤러리
		   $('#insert_form_gallery').on('submit',function(event){
					   event.preventDefault();
					   
				 if($('#gallerySubject').val()=='')
				 {
				 $('#gallerySubject').focus();
				 alert("제목을 입력해주세요");
				 }else if($('#writeGallery').val()==''){
				 alert("사진을 선택해주세요");
				 }else{					 
// 					   var form = $('#writeGallery')[0];
// 					   for (var i = 0; i < 2 ; i++) {
// 					   }
					   var formData = new FormData();
					   formData.append("subject",$('#gallerySubject').val());
					   for (var i = 1; i <= $('input[class=writeGallery]').length ; i++) {
					   formData.append("picture"+i+"",$('input[name=writeGallery'+i+']')[0].files[0]);
					   }
// 					   var subject =$('input#gallerySubject').val();
                     
// 						 var formData = new FormData();
			         
// 					    for(var i=0; i<$('#writeGallery')[0].files.length; i++){
// 					        formData.append('writeGallery', $('#writeGallery')[0].files[i]);
// 					    }

					   var member_id = '${authUser.member_id}';
					   $.ajax({
 				            url: '/stubbyPlanner/api/square/set_writeGallery.jsp?member_id='+member_id,
				            type: "POST",
				            enctype: 'multipart/form-data',
				            data:formData,
				            processData: false,
				            contentType: false,
				            cache: false,
//		 		            timeout: 600000,
				            success: function (data) {
				                alert("갤러리 작성이 완료되었습니다.");
				                $('#gallerySubject').val(null);
				                $('#writeGallery').val(null);
				                $('#write_gallery_Modal').modal("hide");
				            },
				            error: function (e) {
				                alert("갤러리 작성이 실패하였습니다.");
				            }
				        });
					 }
				  });	   		   
		   

		//검색
		$('#search').click(function(event){
			var option = $('#a_such option:selected').attr('id');
			var search = $('#search_input').val();
			if(search==''){
				alert("검색어를 입력해주세요.");
			}
			else if($('.swiper-slide.all').hasClass('on')) getSearchAll(option,search);
			else if($('.swiper-slide.board').hasClass('on')) getSearchBoard(option,search);
			else if($('.swiper-slide.planner').hasClass('on')) getSearchPlanner(option,search);
			else if($('.swiper-slide.party').hasClass('on')) getSearchParty(option,search);
			else if($('.swiper-slide.gallery').hasClass('on')) getSearchGallery(option,search);
			$('#search_input').val(null);
		});
		
		   
/*  */		   
		// 도시 이동 메뉴(토글)
	    $('#current-city').click(function(event) {
	        event.stopPropagation();
	        $(this).toggleClass('on');
	        $('#popover-wrap-city').toggleClass('on');
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
	 	
		 // 도시(필터) 팝업
        $('.spot_filter .stu_more, .spot_filter .stu_title, .spot_filter .btn_apply').click(function() {
            $('body').toggleClass('modal-opened');
            $('.spot_filter').toggleClass('action');
        });

        // 도시(필터) 펼치기
        $('.btn_spot_toggle').click(function() {
            $(this).children('button').toggleClass('on');
            $('.spot_filter .swiper-container').toggleClass('h-a');
        });

		// 상품(필터) 팝업
	    $('.btn_prd_filter button, .prd_filter .stu_title, .prd_filter .btn_apply').click(function() {
	        $('body').toggleClass('modal-opened');
	        $('.prd_filter').toggleClass('action');
	    });
		
	 // 상품(필터) 선택 - 카테고리
        $('.category .filter-list').on('click', function() {
            $('.category .filter-list').removeClass('on');
            $(this).addClass('on');
        });

/*  */	 
	 
	 
        //메인 카테고리
        $('.stu_prd_category .swiper-slide').on('click', function() {
            $('.stu_prd_category .swiper-slide').removeClass('on');
            $(this).addClass('on');
			if($('.swiper-slide.planner').hasClass('on')){
				$('#a_such').children('#subject').show();
				$('#a_such').children('#content').hide();
				$('#a_such').children('#member_id').show();
			}else if($('.swiper-slide.party').hasClass('on')){
				$('#a_such').children('#subject').hide();
				$('#a_such').children('#content').show();
				$('#a_such').children('#member_id').show();
			}else if($('.swiper-slide.gallery').hasClass('on')){
				$('#a_such').children('#subject').show();
				$('#a_such').children('#content').hide();
				$('#a_such').children('#member_id').show();				
			}else{
				$('#a_such').children('#subject').show();
				$('#a_such').children('#content').show();
				$('#a_such').children('#member_id').show();						
			}
        });

/*  */

        // 상품(필터) 선택 - 테마
        $('.theme .filter-list').on('click', function() {
            $(this).toggleClass('on');
        });

        // 상품(필터) 선택 - 진행방식
        $('.process .filter-list').on('click', function() {
            $('.process .filter-list').removeClass('on');
            $(this).addClass('on');
        });

        // 상품(필터) 선택 초기화
        $('.prd_filter a.stu_reset').click(function() {
            $('.filter-list').removeClass('on');
            $('.sorting .filter-list:first, .category .filter-list:first, .process .filter-list:first').addClass('on');
        });

        // 상품(필터) 카운팅
        $('.prd_filter .filter-list, .prd_filter a.stu_reset').on('click', function() {
            $('.select_count').text($('.prd_filter .filter-wrap').children('li.on').not('li.default.on').length);
            if(parseInt($('.select_count').text()) == 0) {
                $('.select_count').css({background:'none', color:'rgba(58,209,149,0)'});
            } else {
                $('.select_count').css({background:'#fff', color:'rgba(58,209,149,1)'});
            };
        });

        // 상품 리스트 카운팅
		$('.prd_count').text($('.prd_list').children('li.prd_item').length);
	 	
		// 도시(필터) 선택 초기화
        $('.spot_filter a.stu_reset, .stu_prd_list a.stu_reset').click(function() {
            $('.checkmark').addClass('d-n');
            $('.txt-wrap').children('p').removeClass('on');
        });

        // 도시(필터) 카운팅
        $('.spot_filter .img-wrap, .spot_filter a.stu_reset, .stu_prd_list a.stu_reset').on('click', function() {
            $('.spot_count').text($('.txt-wrap').children('p.on').length);
            if(parseInt($('.spot_count').text()) == 0) {
                $('.spot_count').css({background:'none', color:'rgba(255,255,255,0)'});
            } else {
                $('.spot_count').css({background:'#3ad195', color:'rgba(255,255,255,1)'});
            }
        });

        
		 // 상품(필터) 선택 - 정렬
	    $('.sorting .filter-list').on('click', function() {
	        $('.sorting .filter-list').removeClass('on');
	        $(this).addClass('on');
	    });
		 
	 	// 상품(필터) 선택 - 카테고리
	    $('.category .filter-list').on('click', function() {
	        $('.category .filter-list').removeClass('on');
	        $(this).addClass('on');
	    });
	 	
	 	
        
        // 맨 위로 가기
        $(window).scroll(function() {
            if($(this).scrollTop() > 600) {
                $('.stu_top_wrap').fadeIn();
            } else {
                $('.stu_top_wrap').fadeOut();
            }
        });
        $('.stu_top').click(function() {
            $('html, body').animate({scrollTop : 0}, 400);
            return false;
        });

        // 아코디언 메뉴(토글)
        $('.tb-wrap').addClass('d-n');
        $('.tb-title').click(function() {
            $(this).children('.stu_h4_title').toggleClass('on');
            $(this).next('.tb-wrap').toggleClass('d-n');
        });
        $('.toggle #fold').addClass('on');
        $('.step .desc').addClass('d-n');
        $('.toggle #fold').click(function() {
            $(this).addClass('on');
            $('.step .desc').addClass('d-n');
            $('.toggle #push-up').removeClass('on');
        });
        $('.toggle #push-up').click(function() {
            $(this).addClass('on');
            $('.step .desc').removeClass('d-n');
            $('.toggle #fold').removeClass('on');
        });


        updateTours();

	 	
	});//ready(function() 
	 	
	
			
	var bucketlist="";


	var subcatelist="";
	
	
	function toggleSubCate(id){
		if($("#G"+id).children('.checkmark').hasClass('d-n')){		
			$('.checkmark').addClass('d-n');
					$('.txt-wrap').children('p').removeClass('on');
		
					if (subcatelist == "")
						subcatelist = id;
					else
						subcatelist += "," + id;
		
					$("#G" + id).children('.checkmark').removeClass('d-n');
					$("#G" + id).siblings('.txt-wrap').children('p').addClass('on');
		
					subcatelist = id;
		}//if(checkmark투어종류선택)
		else {
			subcatelist = "," + subcatelist + ",";
			subcatelist = subcatelist.replace("," + id + ",", ",");
			subcatelist = subcatelist.replace(",,", ",");
			if (subcatelist.substring(0, 1) == ",")
				subcatelist = subcatelist.substring(1);
			if (subcatelist.substring(subcatelist.length - 1,
					subcatelist.length) == ",")
				subcatelist = subcatelist.substring(0, subcatelist.length - 1);

			if (subcatelist == ",")
				subcatelist = "";

			$("#G" + id).children('.checkmark').addClass('d-n');
			$("#G" + id).siblings('.txt-wrap').children('p').removeClass('on');
			subcatelist = "";
		}//else
			updateBuckets();
	}//function toggleSubCate
	
	function toggleBucket(id){
		if ($("#B" + id).children('.checkmark').hasClass('d-n')) {
				$('.checkmark').addClass('d-n');
				$('.txt-wrap').children('p').removeClass('on');
				if (bucketlist == "")
					bucketlist = id;
				else
					bucketlist += "," + id;
	
				$("#B" + id).children('.checkmark').removeClass('d-n');
				$("#B" + id).siblings('.txt-wrap').children('p').addClass('on');
				bucketlist = id;
			}//if 
		else {
				bucketlist = "," + bucketlist + ",";
				bucketlist = bucketlist.replace("," + id + ",", ",");
				bucketlist = bucketlist.replace(",,", ",");
				if (bucketlist.substring(0, 1) == ",")
					bucketlist = bucketlist.substring(1);
				if (bucketlist.substring(bucketlist.length - 1, bucketlist.length) == ",")
					bucketlist = bucketlist.substring(0, bucketlist.length - 1);
	
				if (bucketlist == ",")
					bucketlist = "";
	
				$("#B" + id).children('.checkmark').addClass('d-n');
				$("#B" + id).siblings('.txt-wrap').children('p').removeClass('on');
				bucketlist = "";
			}//else
	
			updateTours();
	
			ga('send', {
				hitType : 'event',
				eventCategory : 'market',
				eventAction : 'tour_bucket_select',
				eventLabel : id
			});

	}// togglebucket
	
	function select_thema_code(c){
		/* if(c!="204")
			select_class('');
 */
		thema_code=c;
		console.log(thema_code)
		updateTours();

	}// function select_thema_code
	
	function update_orderby(o) {
		orderby = o;
		console.log(orderby)
		updateTours();

	}//function update_orderby
/* 	
	function updateTripwith(cur_page){
		if(!cur_page) cur_page="1"
		Xthema_code="r"
		$.ajax({
			url:'/stubbyPlanner/market/get_list.jsp?city_id=${param.city_id}&orderby='+orderby,
			dataType:'json',
			success:function(data){
				if(data!=""){
					thtml='';
					$.each(data.list, function(i, item){

						thtml+='<li class="prd_item">';

							thtml+='<a href="/crowd/detail.asp?serial='+'&bucket_ids='+'&l=" class="prd outline lock-off">';

							thtml+='<figure class="thumb">';
							thtml+='<img class="fh lazyload"  data-src="'+'" onerror="this.src=\'/>';
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

					});//$.each
					
					$("#tourlist").html(thtml);

			        $('.prd_count').text(data.totalcnt);

			        $('.prd_list.paginated').each(function(){
			        	var currentPage = 0;
			            var numPerPage = 12;
			            var $prd_list = $(this);
			            
			            $prd_list.bind('repaginate', function(){
			            	$prd_list.find('li.prd_item').hide()
			            	.slice(currentPage * numPerPage, (currentPage + 1) * numPerPage).show
			            });//$('.prd_list.paginated').each
			        	
			            var numRows = data.totalcnt;
			            var numPages = Math.ceil(numRows / numPerPage);
			            
			         $('.pager').remove();
			         
			         	var $pager = $('<div class="pager"></div>');
			         	for (var page = 0; page < numPages; page++){
			         		if(eval(page+1)==data.curpage)
			         			$('<a href="javascript:updateBuckets('+eval(page+1)+')" class="page_number active"></a>').text(page + 1).appendTo($pager);
			         		else
			         			$('<a href="javascript:updateBuckets('+eval(page+1)+')" class="page_number"></a>').text(page + 1).appendTo($pager);
			         		
			         	}// for문
			         	$pager.insertAfter($prd_list);
			         	if(parseInt($('a.page_number:last').text()) == 1) {
			         		$('.pager').hide();
			         	} else {
			         		$('.pager').show();
			         	}
			       }); //$.each
				} // if(data!="")
			}//success:function(data)
		});//ajax
	} //function updateTripwith(cur_page)
	
	 */

// 	var thema_code=0;	
	
// 	var orderby = 'hot';
	
// 	function updateBuckets(cur_page){
// 		if(!cur_page)
// 			cur_pager="1";
// 		Xthema_code="r";
		
// 		$.ajax({
// 			url:'/api/planning/GetBucketRecomms2.asp?tripwith=&cate='+Xthema_code+'&subcate='+subcatelist+'&city_id=${param.city_id}&bucketlist='+bucketlist+"&orderby="+orderby+"&page="+cur_page,
// 			dataType:'json',
// 			success: function(data){
// 				if(data!=""){
// 					thtml='';
					
// 					$.each(data.list, function( i, item ) {
// 						thtml+='<li class="prd_item">';

// 						thtml+='	<a href="" class="prd out line lock-off">';

// 						thtml+='		<figure class="thumb">';
// 						//thtml+='			<img class="fh lazyload"  data-src="'" onerror=""/>';
// 						thtml+='		</figure>';

// 						thtml+='		<div class="prd_info">';

// 						thtml+='			<div class="name">';
// 						thtml+='				<span>'+item.title+'</span>';
// 						thtml+='			</div>';
// 						thtml+='			<div class="tag">';
// 						thtml+='				<span> </span>'; //+item.sdesc+
// 						thtml+='			</div>';
// 						thtml+='			<div class="score">';
// 						thtml+='				<span>'+item.hot+'</span>';
// 						thtml+='			</div>';
// 						thtml+='		</div>';
// 						thtml+='	</a>';
						
// 						if (item.stimelist) {
// 							thtml+='<ul class="prd_info_bottom outline">';
// 							thtml+='<li class="start">';
// 							thtml+='<span>09:00</span>';
// 							thtml+='<div class="set_time">';
// 							thtml+='<ul>';
							
// 							for(i=0;i<item.stimelist.length;i++)
// 								thtml+='<li class="current"> </li>';//+item.stimelist[i].stime+
							
// 							thtml+='</ul>';
// 							thtml+='</div>';
// 							thtml+='</li>';
// 							thtml+='<li class="duration">';
// 							thtml+='<span>20 H</span>';
// 						    thtml+='<div class="set_time">';
// 						    thtml+='<ul>';
// 						    thtml+='<li class="current">16 H</li>';
// 						    thtml+='<li>18 H</li>';
// 						    thtml+='<li>20 H</li>';
// 						    thtml+='<li>22 H</li>';
// 						    thtml+='</ul>';
// 						    thtml+='</div>';
// 							thtml+='</li>';
// 							thtml+='<li class="plus">';
// 							thtml+='<span>담기<i></i></span>';
// 							thtml+='</li>';
// 							thtml+='</ul>';
// 						}//if (item.stimelist)

// 						thtml+='</li>';
// 					});//$.each
					
// 					$("#tourlist").html(thtml);
					
// 					curGuidebookList=data.list;

// 					$('.prd_count').text(data.totalcnt);
					
// 					// Item 시간 선택(토글)
// 					$('.prd_item .prd_info_bottom li:not(.plus) span').click(function(event) {
// 			            event.stopPropagation();
// 			            $('.set_time').not($(this).next()).removeClass('on');
// 			            $(this).next().toggleClass('on');
// 			        });//	$('.prd_item .prd_info_bottom li:not(.plus) span').click(function(event)
					
// 					$('.prd_list.paginated').each(function(){
// 						var currentPage = 0;
// 			            var numPerPage = 12;
// 			            var $prd_list = $(this);
// 			            $prd_list.bind('repaginate', function() {
// 			                $prd_list.find('li.prd_item').hide()
// 			                .slice(currentPage * numPerPage,
// 			                    (currentPage + 1) * numPerPage)
// 			                .show();

// 						}); //$prd_list.bind('repaginate', function()
						
// 			            var numRows = data.totalcnt;
// 			            var numPages = Math.ceil(numRows / numPerPage);
			            
// 			            $('.pager').remove();

// 			            var $pager = $('<div class="pager"></div>');
			            
// 			            for (var page = 0; page < numPages; page++) {
// 			            	if(eval(page+1)==data.curpage)
// 			            		$('<a href="javascript:updateBuckets('+eval(page+1)+')" class="page_number active"></a>').text(page + 1).appendTo($pager);
// 			            	else
// 			            		$('<a href="javascript:updateBuckets('+eval(page+1)+')" class="page_number active"></a>').text(page + 1).appendTo($pager);
			            	
// 			            }//for
// 			            $pager.insertAfter($prd_list);
// 			            if(parseInt($('a.page_number:last').text()) == 1){
// 			            	$('.pager').hide();
// 			            } else {
// 			            	$('.pager').show();
// 			            }

// 					}); //$('.prd_list.paginated').each(function()
				
// 				}//if(data!=)
// 			}//success
		
// 		});// ajax
// 	}//function updateBuckets(cur_page)

	

	

// 	function updateTours(cur_page) {

// 		if (!cur_page)
// 			cur_page = "1";
// 		$.ajax({
// 					url :'/stubbyPlanner/market/get_list.jsp?city_id=${param.city_id}&bucketlist='+ bucketlist +'&orderby='+orderby+'&page='+cur_page+'&thema_code='+thema_code,
// 					dataType : 'json',
// 					success : function(data) {
// 						if (data != "") {
// 							thtml = '';
// 							$.each(data.list, function( i, item ) {
// 								thtml+='<li class="prd_item">';
// 								if(item.is_like)
// 								 	thtml+='<div class="like active" id="'+item.serial+'"></div>';
// 								else
// 								 	thtml+='<div class="like" id="'+item.serial+'"></div>';

// 								if(item.useoutlink==1)
// 									thtml+='<a href="'+item.linkurl+'" target="_blank" class="prd outline lock-off">';
// 								else
// 									thtml+='<a href="/guide/detail.asp?needlogin=&serial='+item.serial+'" class="prd outline lock-off">';


// 									thtml+='<figure class="thumb">';
// 									thtml+='<img class="fh lazyloaded" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/2e535464041209877c8a7cc9372b673d_l.jpeg">';
									
								
// 								if(item.coupon_txt!="")
// 									thtml+='<div class="band bg_red">'+item.coupon_txt+'</div>';
								
// 								if(item.useoutlink==0) {
// 										if(item.is_lowest_price==1)
// 										{	
// 											thtml+='<div class="band2 bg_orange" style="font-size:9pt;padding-left:7px;padding-right:7px;padding-top:7px;padding-bottom:7px;">최저가 보장제</div>';
// 										}
// 									} else {
										
// 										thtml+='<div class="band2 bg_gray"><p></p>제휴예약</div>';
// 									}

								
								
// 								tcomname=item.com_name;
// 								if(tcomname.length>17)
// 									tcomname=tcomname.substring(0,17)+'..';

// 								thtml+='</figure>';

// 								thtml+='<div class="prd_info" style="height:97px">';
// 								thtml+='<div class="cpn">';
// 								thtml+='<span>'+tcomname+'</span>';
// 					            thtml+='</div>';
// 					            thtml+='<div class="name">';
					            
// 					            thtml+='<span>'+item.title+'</span>';
					            
// 					            thtml+='</div>';
// 					            thtml+='<div class="tag">';
// 					            //thtml+='<span>'+item.sale_tag+'</span>';
// 					            thtml+='</div>';
					            
// 					            if(item.useoutlink==1){
// 					        		thtml+='<div style="display: inline-block;position: absolute; left: 14px;bottom: 10px;line-height: 18px;">';

// 					        		thtml+='<span>'+item.review+'</span><span  class="buy">&nbsp;&nbsp;'+item.review_cnt+'개 리뷰</span></div>';
// 					        	} else {
// 					        			if(item.review_cnt>0&&item.review>3.9){
// 					        			 	thtml+='<div class="score">';
// 					        				thtml+='<span>'+item.review+'</span><span  class="buy">&nbsp;&nbsp;'+item.hot+'명 예약</span></div>';
// 					        			} else {
// 					        					thtml+='<div style="display: inline-block;position: absolute; left: 14px;bottom: 10px;line-height: 18px;">';
// 					        					if(item.planner_cnt>0)
// 					        					thtml+='??<span style="color:#8f8f8f;font-size:9pt">최근 플래너 '+item.planner_cnt+'명 선택</span>';
// 					        					thtml+='</div>';
// 					        			}// else	
// 					        	}
// 					        	if(!item.price_sale)
// 					        		item.price_sale="";
					        		
// 					        	thtml+='<div class="price"><span>KRW</span> '+ item.price_sale;
					        		
// 					        	thtml+='</div>';
// 					            thtml+='</div>';

// 					            thtml+='</a>';
					           	
// 					            if(item.stimelist){
// 					            	thtml+='<ul class="prd_info_bottom outline">';
// 					          	  	thtml+='<li class="start" style="width:50%">';
					          	  	
// 					          	  if(item.stimelist.length==1){
// 					          		if(item.stimelist[0].stime=="99:99")
// 					        			thtml+='<div style="font-size:15px;font-weight:400;line-height:28px;color:#4a4a4a;cursor:pointer">자유</div>';
// 					        		else
// 					        			thtml+='<div style="font-size:15px;font-weight:400;line-height:28px;color:#4a4a4a;cursor:pointer">'+item.stimelist[0].stime+'</div>';
// 					          	  } else if (item.stimelist.length>0) {
// 					          			thtml+='<span>선택가</span>';
// 					          	  } else {
// 					          			thtml+='<div style="font-size:15px;font-weight:400;line-height:28px;color:#4a4a4a;cursor:pointer">자유</div>';
// 					          	  }
					          	  
// 					          	  if(item.stimelist.length>1){
// 					          		 thtml+='<div class="set_time">';
// 					          		 thtml+='<ul>';
					          		 
// 					          		 for(i=0;i<item.stimelist.length;i++)
// 					          			thtml+='<li class="current">'+item.stimelist[i].stime+'</li>';
					          			
// 					          		 thtml+='</ul>';
// 					          	 	 thtml+='</div>';
// 					          	  }
// 					          	thtml+='</li>';
// 					      	  	thtml+='<li class="duration" style="width:50%">';
					      	  	
// 					      	  	if(item.stimelist.length==1)
// 					      	  		thtml+='<div style="font-size:15px;font-weight:400;line-height:28px;color:#4a4a4a;cursor:pointer">'+item.stimelist[0].duration+'</div>';

// 					      	 	else if(item.stimelist.length>0)
// 					      			thtml+='<span>'+item.stimelist[0].duration+'</span>';
// 					      	 	else
// 					      			thtml+='<div style="font-size:15px;font-weight:400;line-height:28px;color:#4a4a4a;cursor:pointer">자유</div>';
								
// 					      		if(item.stimelist.length>1) {
// 					      			thtml+='<div class="set_time">';
// 					                thtml+='<ul>';

// 					                for(i=0;i<item.stimelist.length;i++)
// 					                	thtml+='<li class="current">'+item.stimelist[i].duration+'</li>';

// 					              	 	thtml+='</ul>';
// 					            	  	thtml+='</div>';

// 					      		}
// 					      		thtml+='</li>';
					      		
// 					      		thtml+='</ul>';

// 					            }//if(item.stimelist)
// 					            else{
// 					            	thtml+='<ul class="prd_info_bottom outline">';
					          	  	
// 					            	thtml+='<li class="start" style="width:50%">';
// 					          	  	thtml+='<div style="font-size:15px;font-weight:400;line-height:28px;color:#4a4a4a;cursor:pointer">'+item.duration+'</div>';
// 					          	  	thtml+='</li>';
					          	  	
// 					          	  	thtml+='<li class="duration" style="width:50%">';
// 					          	  	thtml+='<span>'+item.duration+'</span>';
// 					          	  	thtml+='</li>';
					          	  	
// 					          	  	thtml+='</li>';
// 						      		thtml+='</ul>';
// 					            }

					            	
// 					            thtml+='</li>';

// 							}); //$.each(data.list, function( i, item )

// 							$("#tourlist").html(thtml);


// 					        // Item 시간 선택(토글)
// 					        $('.prd_item .prd_info_bottom li:not(.plus) span').click(function(event) {
// 					            event.stopPropagation();
// 					            $('.set_time').not($(this).next()).removeClass('on');
// 					            $(this).next().toggleClass('on');
// 					        });
					        

// 					     	// 리스트 찜하기(토글)
// 					     	$('.prd_item .like').on('click', function(){
// 					     		tid=$(this).attr("id");
// 					     		$(this).toggleClass('active');
// 					     		console.log(tid);
// 					     		$.ajax({
// 					     			url: '/stubbyPlanner/market/tour_like.jsp?city_id=${param.city_id}&tour_id='+tid,
					             	

// 					     			dataType: 'json',
// 					     			success: function(data){
// 					     				if(data!=""){
// 					     					thtml='';
// 					     				}
// 					     			}
// 					     		});

// 					     	});
					     	
// 					     	$('.prd_count').text(data.totalcnt);
					     	
// 					     	$('.prd_list.paginated').each(function() {
// 					     		 var currentPage = 0;
// 					             var numPerPage = 12;
// 					             var $prd_list = $(this);
// 					             $prd_list.bind('repaginate', function() {
// 					            	 $prd_list.find('li.prd_item').hide()
// 					            	 .slice(currentPage * numPerPage,
// 					            			 (currentPage + 1) * numPerPage)
// 					                         .show();
// 					             });
					             
// 					             var numRows = data.totalcnt;
// 					             var numPages = Math.ceil(numRows / numPerPage);
								
// 					             $('.pager').remove();
					             
// 					             var $pager = $('<div class="pager"></div>');
					             
// 					             cPage=data.curpage;
					             
// 					             sPage=5*parseInt((cPage-1)/5)+1;
					             
// 					             ePage=sPage+5;
// 									if(ePage>(numPages+1))
// 										ePage=numPages+1;
// 								if(sPage>5)
// 									 $('<a href="javascript:updateTours('+eval(sPage-5)+')" class="page_number"></a>').text("<").appendTo($pager);
								
// 								for (var page = sPage; page < ePage; page++) {
// 									if(eval(page)==data.curpage)
// 										$('<a href="javascript:updateTours('+eval(page)+')" class="page_number active"></a>').text(page).appendTo($pager);
// 									else
// 										$('<a href="javascript:updateTours('+eval(page)+')" class="page_number"></a>').text(page).appendTo($pager);
// 								}
// 								if(numPages>ePage)
// 									 $('<a href="javascript:updateTours('+eval(ePage)+')" class="page_number"></a>').text(">").appendTo($pager);
// 								$pager.insertAfter($prd_list);
								
// 								if(parseInt($('a.page_number:last').text()) == 1) {
//             					    $('.pager').hide();
//             					} else {
//             					    $('.pager').show();
//             					};

// 					     	});
// 						} //if(data)
							
// 					}//success
// 				});//ajax
// 	}//function
			
	function formatNumber(num) {
		  return num.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,')
	}


</script>

<!-- getParty() -->
<script type="text/javascript">


function writeBoardComment(id,post_seq,cmt_detail)
{
	var member_id = id;
	var post_seq = post_seq;
	var cmt_detail = cmt_detail;
    $.ajax({
   	 
     	url: '/stubbyPlanner/api/square/set_writeBoardComment.jsp?member_id='+member_id+'&post_seq='+post_seq+'&cmt_detail='+cmt_detail,
       	dataType: 'json',
       	cache:false,
       	success: function(data){
// 			alert("댓글 작성 완료");
		}
	});
}	


function writeBoard(id,content,subject,board_code)
{
var post_content = content.replace(/(\n|\r\n)/g, '<br>');	 
var member_id = id;
var post_subject = subject;
// var post_content = content;
var board_code = board_code;
	             $.ajax({
	 
	             	url: '/stubbyPlanner/api/square/set_writeBoard.jsp?member_id='+member_id+'&post_subject='+post_subject+'&post_content='+post_content+'&board_code='+board_code,
	               	dataType: 'json',
	               	cache:false,
	               	success: function(data){
						alert("게시글 작성 완료")
			}
		});
}

function writeParty(id,content)
{
	 
var member_id = id;
var party_content = content;
	             $.ajax({
	 
	             	url: '/stubbyPlanner/api/square/set_writeParty.jsp?member_id='+member_id+'&party_content='+party_content,
	               	dataType: 'json',
	               	cache:false,
	               	success: function(data){
						alert("게시글 작성 완료")
			}
		});
}	


// function getTotal()
function getSearchAll(option,search){
	var option = option;
	var search = search;
	$.ajax({
     	url: '/stubbyPlanner/api/square/get_search.jsp?category='+category+'&option='+option+'&search='+search,
       	dataType: 'json',
       	cache:false,
       	success: function(data){
       	//	alert(data.list);
		if(data!="")
		{					
			thtml='<section class="stu_swiper-section stu_recent-offer" ><div class="stu_inner_wrap" style="padding-right: 5%;"><div class="titArea" style="display: inline-block; padding-top: 20px;"><h2 style="font-size:18pt;font-weight:700;">일반 게시판</h2></div>';
			thtml+='<div style="display: inline-block" style="font-size:10pt;color:#696969;" ><a href="javascript:getBoard()"><b> 전체 .</b></a></div>';
			thtml+='<div style="display: inline-block" style="font-size:10pt;color:#696969;" ><a href="javascript:getCommon(1)"><b> 일반 .</b></a></div>';
			thtml+='<div style="display: inline-block" style="font-size:10pt;color:#696969;" ><a href="javascript:getQuestion(2)"><b> 질문 .</b></a></div>';
			thtml+='<div style="display: inline-block" style="font-size:10pt;color:#696969;" ><a href="javascript:getInformation(3)"><b> 여행정보 	</b></a></div>';
			thtml+='<table class="type09"><caption>테이블 설명</caption><thead><tr><th scope="cols">글번호</th><th scope="cols">아이디</th><th scope="cols">제목</th><th scope="cols">날짜</th><th scope="cols">조회</th><th scope="cols">추천</th></tr></thead>';					
			thtml+='<tbody>';
			
			$.each(data.list, function( i, item ) {
				thtml+='<tr name="noshow"><th scope="row">'+item.post_seq+'</th><td>'+item.member_id+'</td><td class="title">'+item.post_subject+'</td>';
				thtml+='<td>'+(item.post_regdate).substring(0, 10)+'</td>';
				thtml+='<td>'+item.post_hits+'</td><td>'+item.post_like+'</td></tr>';
				thtml+='<tr style="display: none"><td class="ct">내용</td><td></td><td colspan="3">'+item.post_content+'</td><td></td></tr>';
				thtml+='<tr style="display: none"><td></td><td colspan="3"><input placeholder="댓글을 작성하세요" type="text" name="text" size="20" style="width:100%;"></td><td class="love">추천</td><td class="comment">댓글▼</td></tr>';
			});
			
			thtml+='</tbody></table></div></section>';
			$('#tourlist').html(thtml)
			
			//게시물 내용 출력
			$('tr').click(function(){
				if($(this).attr('name')=='noshow'){
					$(this).next().css({display:''});
					$(this).next().next().css({display:''});
					$(this).attr('name','show');
				}
				else if($(this).attr('name')=='show'){
					$(this).next().css({display:'none'});
					$(this).next().next().css({display:'none'});
					$(this).attr('name','noshow');
				}
			});
			
		}
	}
 });
}


function getSearchBoard(option,search){
	var option = option;
	var search = search;
	$.ajax({
     	url: '/stubbyPlanner/api/square/get_searchBoard.jsp?search='+search+'&option='+option,
       	dataType: 'json',
       	cache:false,
       	success: function(data){
       	//	alert(data.list);
       	if(!data){
			thtml=' <section class="stu_regions"><div style="text-align: left"><h3 style="text-align: center;"><b>검색 결과가 없습니다.</b></h3></div></section>';
			$("#tourlist").html(thtml);
       	}else if(data!="")
		{			
			thtml='<section class="stu_swiper-section stu_recent-offer" ><div class="stu_inner_wrap" style="padding-right: 5%;"><div class="titArea" style="display: inline-block; padding-top: 20px;"><h2 style="font-size:18pt;font-weight:700;">검색 결과</h2></div>';
// 			thtml+='<div style="display: inline-block" style="font-size:10pt;color:#696969;" ><a href="javascript:getBoard()"><b> 전체 .</b></a></div>';
// 			thtml+='<div style="display: inline-block" style="font-size:10pt;color:#696969;" ><a href="javascript:getCommon(1)"><b> 일반 .</b></a></div>';
// 			thtml+='<div style="display: inline-block" style="font-size:10pt;color:#696969;" ><a href="javascript:getQuestion(2)"><b> 질문 .</b></a></div>';
// 			thtml+='<div style="display: inline-block" style="font-size:10pt;color:#696969;" ><a href="javascript:getInformation(3)"><b> 여행정보 	</b></a></div>';
			thtml+='<table class="type09"><caption>테이블 설명</caption><thead><tr><th scope="cols">글번호</th><th scope="cols">아이디</th><th scope="cols">제목</th><th scope="cols">날짜</th><th scope="cols">조회</th><th scope="cols">추천</th></tr></thead>';					
			thtml+='<tbody>';
		if(option=='content'){
			$.each(data.listContent, function( i, item ) {
				thtml+='<tr name="noshow"><th scope="row">'+item.post_seq+'</th><td>'+item.member_id+'</td><td class="title">'+item.post_subject+'</td>';
				thtml+='<td>'+(item.post_regdate).substring(0, 10)+'</td>';
				thtml+='<td>'+item.post_hits+'</td><td>'+item.post_like+'</td></tr>';
				thtml+='<tr style="display: none"><td class="ct">내용</td><td></td><td colspan="3">'+item.post_content+'</td><td></td></tr>';
				thtml+='<tr style="display: none"><td></td><td colspan="3"><input placeholder="댓글을 작성하세요" type="text" name="text" size="20" style="width:100%;"></td><td class="love">추천</td><td class="comment">댓글▼</td></tr>';
			});
		}else if(option=='subject'){
			$.each(data.listSubject, function( i, item ) {
				thtml+='<tr name="noshow"><th scope="row">'+item.post_seq+'</th><td>'+item.member_id+'</td><td class="title">'+item.post_subject+'</td>';
				thtml+='<td>'+(item.post_regdate).substring(0, 10)+'</td>';
				thtml+='<td>'+item.post_hits+'</td><td>'+item.post_like+'</td></tr>';
				thtml+='<tr style="display: none"><td class="ct">내용</td><td></td><td colspan="3">'+item.post_content+'</td><td></td></tr>';
				thtml+='<tr style="display: none"><td></td><td colspan="3"><input placeholder="댓글을 작성하세요" type="text" name="text" size="20" style="width:100%;"></td><td class="love">추천</td><td class="comment">댓글▼</td></tr>';
			});
		}else{
			$.each(data.listId, function( i, item ) {
				thtml+='<tr name="noshow"><th scope="row">'+item.post_seq+'</th><td>'+item.member_id+'</td><td class="title">'+item.post_subject+'</td>';
				thtml+='<td>'+(item.post_regdate).substring(0, 10)+'</td>';
				thtml+='<td>'+item.post_hits+'</td><td>'+item.post_like+'</td></tr>';
				thtml+='<tr style="display: none"><td class="ct">내용</td><td></td><td colspan="3">'+item.post_content+'</td><td></td></tr>';
				thtml+='<tr style="display: none"><td></td><td colspan="3"><input placeholder="댓글을 작성하세요" type="text" name="text" size="20" style="width:100%;"></td><td class="love">추천</td><td class="comment">댓글▼</td></tr>';
			});
		}	
			
			thtml+='</tbody></table></div></section>';
			$('#tourlist').html(thtml)
			
			//게시물 내용 출력
			$('tr').click(function(){
				if($(this).attr('name')=='noshow'){
					$(this).next().css({display:''});
					$(this).next().next().css({display:''});
					$(this).attr('name','show');
				}
				else if($(this).attr('name')=='show'){
					$(this).next().css({display:'none'});
					$(this).next().next().css({display:'none'});
					$(this).attr('name','noshow');
				}
			});
			
		}
	}
});
}
                                                                                                                               

function getSearchParty(option,search){
	var option = option;
	var search = search;
	$.ajax({
     	url: '/stubbyPlanner/api/square/get_searchParty.jsp?search='+search+'&option='+option,
       	dataType: 'json',
       	cache:false,
       	success: function(data){
       	if(!data){
    		thtml=' <section class="stu_regions"><div style="text-align: left"><h3 style="text-align: center;"><b>검색 결과가 없습니다.</b></h3></div></section>';
    		$("#tourlist").html(thtml);
        }else if(data!="")
		{					
			thtml='<section class="stu_swiper-section stu_recent-offer"">                                ';
			thtml+='   <div class="stu_inner_wrap">                                                      ';
			thtml+='       <div class="titArea" style="display: inline-block;  padding-top: 20px;">      ';
			thtml+='      <h2 style="font-size:18pt;font-weight:700;">동행 찾기</h2>                     ';
			thtml+='       </div>                                                                        ';
			thtml+='                                                                                     ';
			thtml+='       <div class="swiper-container stu_tagArea"">                                   ';
			thtml+='           <ul class="swiper-wrapper">                                               ';
		if(option=='content'){
			$.each(data.listContent, function( i, item ) {
				if(i%5==0){
					thtml+='</ul><br/><ul class="swiper-wrapper">';	
					}
					thtml+=' <li class="swiper-slide prd_item"  style="width: 17%; margin-bottom: 0px;">                                 ';
					thtml+='     <a href="#" style="width:100%; height: 100%;">                                                           ';
					thtml+='         <figure class="thumb" style="height:70px;">                                                          ';
					if(item.profile_pic==''){
					thtml+='                     <img class="fh" src="/stubbyPlanner/externalData/img_v9/img_pfnull.jpg" alt="프로필 사진"/> ';
					}else{
					thtml+='                     <img class="fh" src="'+item.profile_pic+'" alt="프로필 사진"/>                   ';
					}                                                                                  
					thtml+='         </figure>                                                                                           ';
					thtml+='         <figcaption class="prd_info"><div class="cpn"></div>';
					thtml+='             <div class="name"><span>'+item.party_content+'}</span></div>';
					thtml+='      		<div class="price"  style="line-height:100%;text-align:right;2px;">'+item.member_id+'</div>';
					thtml+='             <div class="score" style="display:inline-block"><span>'+item.party_like+'</span></div></figcaption></a></li>';
			});
		}else{
			$.each(data.listId, function( i, item ) {
				if(i%5==0){
					thtml+='</ul><br/><ul class="swiper-wrapper">';	
					}
					thtml+=' <li class="swiper-slide prd_item"  style="width: 17%; margin-bottom: 0px;">                                 ';
					thtml+='     <a href="#" style="width:100%; height: 100%;">                                                           ';
					thtml+='         <figure class="thumb" style="height:70px;">                                                          ';
					if(item.profile_pic==''){
					thtml+='                     <img class="fh" src="/stubbyPlanner/externalData/img_v9/img_pfnull.jpg" alt="프로필 사진"/> ';
					}else{
					thtml+='                     <img class="fh" src="'+item.profile_pic+'" alt="프로필 사진"/>                   ';
					}                                                                                  
					thtml+='         </figure>                                                                                           ';
					thtml+='         <figcaption class="prd_info"><div class="cpn"></div>';
					thtml+='             <div class="name"><span>'+item.party_content+'}</span></div>';
					thtml+='      		<div class="price"  style="line-height:100%;text-align:right;2px;">'+item.member_id+'</div>';
					thtml+='             <div class="score" style="display:inline-block"><span>'+item.party_like+'</span></div></figcaption></a></li>';
			});
		}	
			
		thtml+='</div></div></section>';
		$('#tourlist').html(thtml)
			
		}
	}
});
}


function getGallery(){
	$.ajax({
     	url: '/stubbyPlanner/api/square/get_gallery.jsp',
       	dataType: 'json',
       	cache:false,
       	success: function(data){
		if(data!="")
		{					
			thtml='<section class="stu_regions";"><div class="stu_inner_wrap" style="padding-top: 20px;">';
			thtml+='<h2 style="font-size:18pt;font-weight:700;">갤러리</h2><div class="swiper-container swiper3"><ul class="swiper-wrapper" style="padding: 5px;">';
			$.each(data.list, function( i, item ) {
				if(i%4==0){
				thtml+='</ul><br/><ul class="swiper-wrapper">';	
				}
				thtml+=' <li class="swiper-slide snip1384" style="width: 200px; height: 200px; margin: 5px;">';
				thtml+='<a href="http://www.stubbyplanner.com" style="width:100%; height:100%;">';                                                          
// 				thtml+='<img src="/stubbyPlanner/square/gallery/'+item.gal_pic_path+'" style="width:100%; height:100%;"></a></li>';
				thtml+='<img src="/stubbyPlanner/square/gallery/'+item.gal_pic_path+'" style="width:100%; height:100%;">';
				thtml+='<figcaption><h2 style="color:white;">'+item.member_id+'.</h2><p style="color:white; text-align:left;">'+item.gal_subject+'</p><i class="ion-ios-arrow-right"><div class="score" style="display:inline-block; color:white;"><span>♥ '+item.post_like+'</span></div></i></figcaption>';
				thtml+='</a></li>';
			});
			thtml+='</ul></div></div></section>';
			$('#tourlist').html(thtml);
		}
	}
});
}





function getParty(){
//		var board_code = code;
		$.ajax({
         	url: '/stubbyPlanner/api/square/get_party.jsp',
           	dataType: 'json',
           	cache:false,
           	success: function(data){
           	//	alert(data.list);
			if(data!="")
			{					
				thtml='<section class="stu_swiper-section stu_recent-offer"">                                ';
				thtml+='   <div class="stu_inner_wrap">                                                      ';
				thtml+='       <div class="titArea" style="display: inline-block;  padding-top: 20px;">      ';
				thtml+='      <h2 style="font-size:18pt;font-weight:700;">동행 찾기</h2>                     ';
				thtml+='       </div>                                                                        ';
				thtml+='                                                                                     ';
				thtml+='       <div class="swiper-container stu_tagArea"">                                   ';
				thtml+='           <ul class="swiper-wrapper">                                               ';
				
				$.each(data.list, function( i, item ) {
					if(i%5==0){
					thtml+='</ul><br/><ul class="swiper-wrapper">';	
					}
					thtml+=' <li class="swiper-slide prd_item"  style="width: 17%; margin-bottom: 0px;">                                 ';
					thtml+='     <a href="#" style="width:100%; height: 100%;">                                                           ';
					thtml+='         <figure class="thumb" style="height:70px;">                                                          ';
					if(item.profile_pic==''){
					thtml+='                     <img class="fh" src="/stubbyPlanner/externalData/img_v9/img_pfnull.jpg" alt="프로필 사진"/> ';
					}else{
					thtml+='                     <img class="fh" src="'+item.profile_pic+'" alt="프로필 사진"/>                   ';
					}                                                                                  
					thtml+='         </figure>                                                                                           ';
					thtml+='         <figcaption class="prd_info"><div class="cpn"></div>';
					thtml+='             <div class="name"><span>'+item.party_content+'}</span></div>';
					thtml+='      		<div class="price"  style="line-height:100%;text-align:right;2px;">'+item.member_id+'</div>';
					thtml+='             <div class="score" style="display:inline-block"><span>'+item.party_like+'</span></div></figcaption></a></li>';
				});
				
				thtml+='</div></div></section>';
				$('#tourlist').html(thtml)
				
			}
	}
});
}

	function getBoard(){
// 		var board_code = code;
			$.ajax({
             	url: '/stubbyPlanner/api/square/get_board.jsp',
               	dataType: 'json',
               	cache:false,
               	success: function(data){
               	//	alert(data.list);
				if(data!="")
				{					
					thtml='<section class="stu_swiper-section stu_recent-offer" ><div class="stu_inner_wrap" style="padding-right: 5%;"><div class="titArea" style="display: inline-block; padding-top: 20px;"><h2 style="font-size:18pt;font-weight:700;">전체 게시판</h2></div>';
					thtml+='<div style="display: inline-block" style="font-size:10pt;color:#696969;" ><a href="javascript:getBoard()"><b> 전체 .</b></a></div>';
					thtml+='<div style="display: inline-block" style="font-size:10pt;color:#696969;" ><a href="javascript:getCommon(1)"><b> 일반 .</b></a></div>';
					thtml+='<div style="display: inline-block" style="font-size:10pt;color:#696969;" ><a href="javascript:getQuestion(2)"><b> 질문 .</b></a></div>';
					thtml+='<div style="display: inline-block" style="font-size:10pt;color:#696969;" ><a href="javascript:getInformation(3)"><b> 여행정보 	</b></a></div>';
					thtml+='<table class="type09"><caption>테이블 설명</caption><thead><tr><th scope="cols">글번호</th><th scope="cols">아이디</th><th scope="cols">제목</th><th scope="cols">날짜</th><th scope="cols">조회</th><th scope="cols">추천</th></tr></thead>';					
					thtml+='<tbody>';
					
					$.each(data.list, function( i, item ) {
						thtml+='<tr name="noshow"><th scope="row">'+item.post_seq+'</th><td>'+item.member_id+'</td><td class="title">'+item.post_subject+'</td>';
						thtml+='<td>'+(item.post_regdate).substring(0, 10)+'</td>';
						thtml+='<td>'+item.post_hits+'</td><td><div class="like'+item.post_seq+'">'+item.post_like+'</div></td></tr>';
						thtml+='<tr class="con" style="display: none"><td class="ct">내용</td><td></td><td colspan="3">'+item.post_content+'</td><td></td></tr>';
						thtml+='<tr class="con '+item.post_seq+'" style="display: none"><td></td><td colspan="3"><div id="'+item.post_seq+'"><input id="getComment" class="getComment" placeholder="댓글을 작성하세요" type="text" name="text" size="20" style="width:90%;"><input type="button" value="작성" class="setComment" style="width: 10%;"/></div></td><td class="love" id="'+item.post_seq+'" name="'+item.post_like+'">추천</td><td class="comment" id="'+item.post_seq+'">댓글▼</td></tr>';
					});
					
					thtml+='</tbody></table></div></section>';
					$('#tourlist').html(thtml);
					
					
					//댓글 작성
// 					$("#comments").on("click",function(){
					$('.setComment').click(function(){
						var post_seq = $(this).parent().attr('id');
						var cmt_detail =  $(this).prev().val();
						if(cmt_detail==''){
							alert("댓글을 입력해주세요.");
						}else{
							writeBoardComment('${authUser.member_id}',post_seq,cmt_detail);
							$(this).prev().val(null);
							alert("댓글 작성 완료");
						}
							boardComment(post_seq);
					});
					
					
					//댓글 출력
					$('.comment').click(function(){
						var post_seq = $(this).attr('id');
						if($(this).parent().next().hasClass('com')){
							$(this).text("댓글▼");
							$('.com').remove('.com');
						} 
						else {
						$(this).text("댓글▲");
						boardComment(post_seq);
						}
					});
					
					
					//추천수 증가
					$('.love').click(function(){
						var post_seq = $(this).attr('id');
						var post_like = Number($(this).attr('name'));
						$.ajax({
			             	url: '/stubbyPlanner/api/square/set_like.jsp?post_seq='+post_seq,
			               	dataType: 'json',
			               	cache:false,
			               	success: function(data){
					               		if(data!="")
					    				{			
					               				alert("come here");
					    					$('.like'+post_seq+'').html(post_like+1);
					    				}
			               	}
						});
					});
					
					
					
					//게시물 내용 출력
					$('tr').click(function(){
						if($(this).attr('name')=='noshow'){
							$('.con').css({display:'none'});
							$(this).next().css({display:''});
							$(this).next().next().css({display:''});
							$(this).attr('name','show');
							
							
						}
						else if($(this).attr('name')=='show'){
							$('.con').css({display:'none'});
							$(this).next().css({display:'none'});
							$(this).next().next().css({display:'none'});
							$(this).attr('name','noshow');
						}
					});
					
				}
		}
	});
}


//게시판 댓글
function boardComment(post_seq)
{
	var post_seq = post_seq;	
	$.ajax({
     	url: '/stubbyPlanner/api/square/get_boardComment.jsp?post_seq='+post_seq,
       	dataType: 'json',
       	cache:false,
       	success: function(data){
		if(data!="")
		{							
       		thtml='';
			$.each(data.list, function( i, item ) {
				thtml+='<tr class="con com"><td></td><td>└'+item.member_id+'</td><td colspan="2">'+item.cmt_detail+'</td><td>'+(item.cmt_regdate).substring(0, 10)+'</td><td></td></tr>';
			});
			$('.com').remove('.com');
			$('.'+post_seq+'').after(thtml);
			
		}
	}
 });
}			
			
			
	function getCommon(code){
 		var board_code = code;
			$.ajax({
             	url: '/stubbyPlanner/api/square/get_common.jsp?board_code='+board_code,
               	dataType: 'json',
               	cache:false,
               	success: function(data){
               	//	alert(data.list);
				if(data!="")
				{					
					thtml='<section class="stu_swiper-section stu_recent-offer" ><div class="stu_inner_wrap" style="padding-right: 5%;"><div class="titArea" style="display: inline-block; padding-top: 20px;"><h2 style="font-size:18pt;font-weight:700;">일반 게시판</h2></div>';
					thtml+='<div style="display: inline-block" style="font-size:10pt;color:#696969;" ><a href="javascript:getBoard()"><b> 전체 .</b></a></div>';
					thtml+='<div style="display: inline-block" style="font-size:10pt;color:#696969;" ><a href="javascript:getCommon(1)"><b> 일반 .</b></a></div>';
					thtml+='<div style="display: inline-block" style="font-size:10pt;color:#696969;" ><a href="javascript:getQuestion(2)"><b> 질문 .</b></a></div>';
					thtml+='<div style="display: inline-block" style="font-size:10pt;color:#696969;" ><a href="javascript:getInformation(3)"><b> 여행정보 	</b></a></div>';
					thtml+='<table class="type09"><caption>테이블 설명</caption><thead><tr><th scope="cols">글번호</th><th scope="cols">아이디</th><th scope="cols">제목</th><th scope="cols">날짜</th><th scope="cols">조회</th><th scope="cols">추천</th></tr></thead>';					
					thtml+='<tbody>';
					
					$.each(data.listTotal, function( i, item ) {
						thtml+='<tr name="noshow"><th scope="row">'+item.post_seq+'</th><td>'+item.member_id+'</td><td class="title">'+item.post_subject+'</td>';
						thtml+='<td>'+(item.post_regdate).substring(0, 10)+'</td>';
						thtml+='<td>'+item.post_hits+'</td><td>'+item.post_like+'</td></tr>';
						thtml+='<tr style="display: none"><td class="ct">내용</td><td></td><td colspan="3">'+item.post_content+'</td><td></td></tr>';
						thtml+='<tr style="display: none"><td></td><td colspan="3"><input placeholder="댓글을 작성하세요" type="text" name="text" size="20" style="width:100%;"></td><td class="love">추천</td><td class="comment">댓글▼</td></tr>';
					});
					
					thtml+='</tbody></table></div></section>';
					$('#tourlist').html(thtml)
					
					//게시물 내용 출력
					$('tr').click(function(){
						if($(this).attr('name')=='noshow'){
							$(this).next().css({display:''});
							$(this).next().next().css({display:''});
							$(this).attr('name','show');
						}
						else if($(this).attr('name')=='show'){
							$(this).next().css({display:'none'});
							$(this).next().next().css({display:'none'});
							$(this).attr('name','noshow');
						}
					});
					
				}
		}
	});
}	
	
	
	function getQuestion(code){
 		var board_code = code;
			$.ajax({
             	url: '/stubbyPlanner/api/square/get_question.jsp?board_code='+board_code,
               	dataType: 'json',
               	cache:false,
               	success: function(data){
				if(data!="")
				{					
					thtml='<section class="stu_swiper-section stu_recent-offer" ><div class="stu_inner_wrap" style="padding-right: 5%;"><div class="titArea" style="display: inline-block; padding-top: 20px;"><h2 style="font-size:18pt;font-weight:700;">질문 게시판</h2></div>';
					thtml+='<div style="display: inline-block" style="font-size:10pt;color:#696969;" ><a href="javascript:getBoard()"><b> 전체 .</b></a></div>';
					thtml+='<div style="display: inline-block" style="font-size:10pt;color:#696969;" ><a href="javascript:getCommon(1)"><b> 일반 .</b></a></div>';
					thtml+='<div style="display: inline-block" style="font-size:10pt;color:#696969;" ><a href="javascript:getQuestion(2)"><b> 질문 .</b></a></div>';
					thtml+='<div style="display: inline-block" style="font-size:10pt;color:#696969;" ><a href="javascript:getInformation(3)"><b> 여행정보 	</b></a></div>';
					thtml+='<table class="type09"><caption>테이블 설명</caption><thead><tr><th scope="cols">글번호</th><th scope="cols">아이디</th><th scope="cols">제목</th><th scope="cols">날짜</th><th scope="cols">조회</th><th scope="cols">추천</th></tr></thead>';					
					thtml+='<tbody>';
					
					$.each(data.listTotal, function( i, item ) {
						thtml+='<tr name="noshow"><th scope="row">'+item.post_seq+'</th><td>'+item.member_id+'</td><td class="title">'+item.post_subject+'</td>';
						thtml+='<td>'+(item.post_regdate).substring(0, 10)+'</td>';
						thtml+='<td>'+item.post_hits+'</td><td>'+item.post_like+'</td></tr>';
						thtml+='<tr style="display: none"><td class="ct">내용</td><td></td><td colspan="3">'+item.post_content+'</td><td></td></tr>';
						thtml+='<tr style="display: none"><td></td><td colspan="3"><input placeholder="댓글을 작성하세요" type="text" name="text" size="20" style="width:100%;"></td><td class="love">추천</td><td class="comment">댓글▼</td></tr>';
					});
					
					thtml+='</tbody></table></div></section>';
					$('#tourlist').html(thtml)
					
					//게시물 내용 출력
					$('tr').click(function(){
						if($(this).attr('name')=='noshow'){
							$(this).next().css({display:''});
							$(this).next().next().css({display:''});
							$(this).attr('name','show');
						}
						else if($(this).attr('name')=='show'){
							$(this).next().css({display:'none'});
							$(this).next().next().css({display:'none'});
							$(this).attr('name','noshow');
						}
					});
					
				}
		}
	});
}

	
	function getInformation(code){
 		var board_code = code;
			$.ajax({
             	url: '/stubbyPlanner/api/square/get_information.jsp?board_code='+board_code,
               	dataType: 'json',
               	cache:false,
               	success: function(data){
				if(data!="")
				{					
					thtml='<section class="stu_swiper-section stu_recent-offer" ><div class="stu_inner_wrap" style="padding-right: 5%;"><div class="titArea" style="display: inline-block; padding-top: 20px;"><h2 style="font-size:18pt;font-weight:700;">여행정보 게시판</h2></div>';
					thtml+='<div style="display: inline-block" style="font-size:10pt;color:#696969;" ><a href="javascript:getBoard()"><b> 전체 .</b></a></div>';
					thtml+='<div style="display: inline-block" style="font-size:10pt;color:#696969;" ><a href="javascript:getCommon(1)"><b> 일반 .</b></a></div>';
					thtml+='<div style="display: inline-block" style="font-size:10pt;color:#696969;" ><a href="javascript:getQuestion(2)"><b> 질문 .</b></a></div>';
					thtml+='<div style="display: inline-block" style="font-size:10pt;color:#696969;" ><a href="javascript:getInformation(3)"><b> 여행정보 	</b></a></div>';
					thtml+='<table class="type09"><caption>테이블 설명</caption><thead><tr><th scope="cols">글번호</th><th scope="cols">아이디</th><th scope="cols">제목</th><th scope="cols">날짜</th><th scope="cols">조회</th><th scope="cols">추천</th></tr></thead>';					
					thtml+='<tbody>';
					
					$.each(data.listTotal, function( i, item ) {
						thtml+='<tr name="noshow"><th scope="row">'+item.post_seq+'</th><td>'+item.member_id+'</td><td class="title">'+item.post_subject+'</td>';
						thtml+='<td>'+(item.post_regdate).substring(0, 10)+'</td>';
						thtml+='<td>'+item.post_hits+'</td><td>'+item.post_like+'</td></tr>';
						thtml+='<tr style="display: none"><td class="ct">내용</td><td></td><td colspan="3">'+item.post_content+'</td><td></td></tr>';
						thtml+='<tr style="display: none"><td></td><td colspan="3"><input placeholder="댓글을 작성하세요" type="text" name="text" size="20" style="width:100%;"></td><td class="love">추천</td><td class="comment">댓글▼</td></tr>';
					});
					
					thtml+='</tbody></table></div></section>';
					$('#tourlist').html(thtml)
					
					//게시물 내용 출력
					$('tr').click(function(){
						if($(this).attr('name')=='noshow'){
							$(this).next().css({display:''});
							$(this).next().next().css({display:''});
							$(this).attr('name','show');
						}
						else if($(this).attr('name')=='show'){
							$(this).next().css({display:'none'});
							$(this).next().next().css({display:'none'});
							$(this).attr('name','noshow');
						}
					});
					
				}
		}
	});
}

</script>
<div id="write_board_Modal" class="modal fade">
	<div class="modal-dialog">

		<div class="modal-content">
			<div class="modal-header" style="text-align: center; background: black; color:white; padding: 10px;height: 60px;">
		<h3>게시판 작성</h3>
			</div>
<!-- 모달 바디 -->
			<div class="modal-body">
			<form method="post" id="insert_form_board">
				<select  id ="write_category" style="width: 15px; border: none; float: rigth">
						<option value="none"></option>
						<option id="1" value="common">일반</option>
						<option id="2" value="question">질문</option>
						<option id="3" value="information">여행정보</option>
				</select>
			<label>제목</label>
			<input type="text" name="writeSubject" id="writeSubject" class="form-control" />
			<br />
			<label>내용</label>
			<textarea name="writeContent" id="writeContent" class="form-control" ></textarea>
			<br />
			<input type="submit" name ="insert" id="insert" value="작성" class="btn btn-success" />
			</form>
			</div>
<!-- 모달 풋터 -->
		<div class="modal-footer">
			<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
		</div>
		
		</div>
	</div>
</div>

<div id="write_party_Modal" class="modal fade">
	<div class="modal-dialog">

		<div class="modal-content">
			<div class="modal-header" style="text-align: center; background: black; color:white; padding: 10px;height: 60px;">
		<h3>동행 찾기 작성</h3>
			</div>
<!-- 모달 바디 -->
			<div class="modal-body">
			<form method="post" id="insert_form_party">
			<label>내용</label>
			<br />
			<textarea name="writeParty" id="writeParty" class="form-control" ></textarea>
			<br />
			<input type="submit" name ="insert" id="insert" value="작성" class="btn btn-success" />
			</form>
			</div>
<!-- 모달 풋터 -->
		<div class="modal-footer">
			<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
		</div>
		
		</div>
	</div>
</div>


<div id="write_gallery_Modal" class="modal fade">
	<div class="modal-dialog">

		<div class="modal-content">
			<div class="modal-header" style="text-align: center; background: black; color:white; padding: 10px;height: 60px;">
		<h3>갤러리 작성</h3>
			</div>
<!-- 모달 바디 -->
			<div class="modal-body">
			<form method="post" enctype="multipart/form-data" id="insert_form_gallery">
			<label><b>제목</b></label>
			<input type="text" name="gallerySubject" id="gallerySubject" class="form-control" />
			<br />
			<label style="float:left; margin-top: 15px;"><b>사진</b></label><a id="galleryPlus" style="float: right; margin: 15px; ">+사진 추가</a>
			<input type="file" id="writeGallery" class="writeGallery" name="writeGallery1" style="border: none;"/>
			<br />
			<input type="submit" name ="insert" id="insert" value="작성" class="btn btn-success" />
			</form>
			</div>
<!-- 모달 풋터 -->
		<div class="modal-footer">
			<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
		</div>
		
		</div>
	</div>
</div>


</body>
</html>