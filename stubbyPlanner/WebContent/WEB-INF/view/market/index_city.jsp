<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/include.jspf" %>

<!DOCTYPE html>
<html>
<head>
<head>
<link rel="image_src" href="" />
<meta property="og:title" content="투어 상품 - 스투비 플래너" />

<script src="https://www.google.com/jsapi"></script>

<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	 (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	 m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	 })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
	 ga('create', 'UA-913663-1', 'auto');
	 ga('send', 'pageview');
	ga('send','event','tour','city', '${tourtype[0].city_id}');
</script>


</script>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimun-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">


<title> 투어 상품 - 스투비 플래너 </title>

<!-- Favicon -->
    <link rel="shortcut icon" href="<%= contextPath %>/externalData/images2/common/favicon.ico">
    <link rel="icon" href="<%= contextPath %>/externalData/images2/common/favicon.png"> 



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

header .stu_gnb_container .stu_gnb_wrap li#ico_search:after {
	content: "검색";
	font-size: 15px;
	font-weight: 300;
	color: #666;
	cursor: text;
}

header .stu_gnb_container .stu_gnb_wrap li#ico_planner {
	display: none;
}

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
	header .stu_gnb_container .stu_gnb_wrap li a {
		position: absolute;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
	}
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

</head>

<body>
	<div class="stu_wrap">
	
	<jsp:include page="/WEB-INF/layout/header_large.jsp"></jsp:include>

	
	
	

		<!--메인영역_Str-->
		<main class="stu_clearfix">


		<section class="stu_top_banner">
			<div class="stu_bg">
				<div class="titArea">
					<b class="loc"> <a href="/market/index_city.do?city_id=1101">프랑스</a>
					</b> <b class="current-city" id="current-city">파리
						<div class="popover-wrap" id="popover-wrap-city">
							<ul>
								<li><a href="#" class="current">파리</a></li>



								<li><a
									href="/market/index_city.asp?region=111011008&tripwith=">몽생미셸</a></li>

								<li><a
									href="/market/index_city.asp?region=111011143&tripwith=">지베르니</a></li>

								<li><a
									href="/market/index_city.asp?region=111011144&tripwith=">오베르
										쉬르 우아즈</a></li>

								<li><a
									href="/market/index_city.asp?region=111011141&tripwith=">퐁텐블로</a></li>

								<li><a
									href="/market/index_city.asp?region=111011010&tripwith=">리옹</a></li>

								<li><a
									href="/market/index_city.asp?region=111011120&tripwith=">생
										말로</a></li>

								<li><a
									href="/market/index_city.asp?region=111011126&tripwith=">옹플뢰르</a></li>

								<li><a
									href="/market/index_city.asp?region=111011161&tripwith=">에트르타</a></li>

								<li><a
									href="/market/index_city.asp?region=111011098&tripwith=">루아르
										계곡</a></li>




							</ul>
						</div>
					</b> <b class="current-city" id="current-menu">투어/일정
						<div class="popover-wrap" id="popover-wrap-menu">
							<ul>
								<li><a href="#" class="current">투어/일정</a></li>
								<li><a href="<%= contextPath %>/mb/index_city.do?l=&city_id=${tourtype[0].city_id}" class="">숙소</a></li>

							</ul>
						</div>
					</b>

				</div>



				<div class="stu_trip-type">
					<div class="selectBtn">

						<p>누구와 함께하는 여행인가요?</p>
					</div>
					<div class="selectBox">
						<p>누구와 함께하는 여행인가요?</p>
						<i class="close"></i>
						<ul>
							<li id="T1"><i> <img class="fw"
									src="https://www.stubbyplanner.com/img_v14/tripwith/TW_1_1.png">
							</i> <span>여자혼자</span></li>
							<li id="T2"><i> <img class="fw"
									src="https://www.stubbyplanner.com/img_v14/tripwith/TW_1_2.png">
							</i> <span>남자혼자</span></li>
							<li id="T3"><i> <img class="fw"
									src="https://www.stubbyplanner.com/img_v14/tripwith/TW_1_3.png">
							</i> <span>커플/신혼</span></li>
							<li id="T4"><i> <img class="fw"
									src="https://www.stubbyplanner.com/img_v14/tripwith/TW_2_1.png">
							</i> <span>여자끼리</span></li>
							<li id="T5"><i> <img class="fw"
									src="https://www.stubbyplanner.com/img_v14/tripwith/TW_2_2.png">
							</i> <span>남자끼리</span></li>
							<li id="T6"><i> <img class="fw"
									src="https://www.stubbyplanner.com/img_v14/tripwith/TW_2_3.png">
							</i> <span>남녀함께</span></li>
							<li id="T7"><i> <img class="fw"
									src="https://www.stubbyplanner.com/img_v14/tripwith/TW_3_1.png">
							</i> <span>아이들과</span></li>
							<li id="T8"><i> <img class="fw"
									src="https://www.stubbyplanner.com/img_v14/tripwith/TW_3_2.png">
							</i> <span>부모님과</span></li>
							<li id="T9"><i> <img class="fw"
									src="https://www.stubbyplanner.com/img_v14/tripwith/TW_3_3.png">
							</i> <span>부모님끼리</span></li>
						</ul>
					</div>
				</div>

			</div>
		</section>


















 
<!-- 
		<section class="stu_prd_category">
			<div class="stu_inner_wrap">
				<div class="swiper-container swiper-category">
					<ul class="swiper-wrapper stu_tabArea">
						전체(all),오전(am),오후(pm),야간(night),전일(oneDay)
						<li class="swiper-slide all on"><a
							href="javascript:chgTimeOption('','');"><span>전체</span></a></li>
						<li class="swiper-slide am"><a
							href="javascript:chgTimeOption('05001200','00000400');"><span>오전</span></a></li>
						<li class="swiper-slide pm"><a
							href="javascript:chgTimeOption('11001700','00000400');"><span>오후</span></a></li>
						<li class="swiper-slide night"><a
							href="javascript:chgTimeOption('17002400','00000400');"><span>야간</span></a></li>
						<li class="swiper-slide oneDay"><a
							href="javascript:chgTimeOption('00002400','03609999');"><span>1DAY</span></a></li>
					</ul>
				</div>
			</div>
		</section>
  -->



		<section class="spot_filter stu_clearfix" style="background: #fff">
			<div class="stu_inner_wrap">

				<div class="filter-header">
				<!-- 	
                    <h3 class="stu_title">투어시간 선택</h3>
		<div style="margin-bottom:15px;font-size:11pt">

			<input style="width:25px;" type="radio" name="tourtime" onclick="chgTimeOption('','');" checked> 전체
&nbsp;
			<input style="width:25px;" type="radio" name="tourtime" onclick="chgTimeOption('05001200','00000400');"> 오전
&nbsp;
			<input style="width:25px;" type="radio" name="tourtime" onclick="chgTimeOption('11001700','00000400');"> 오후
&nbsp;
			<input style="width:25px;" type="radio" name="tourtime" onclick="chgTimeOption('17002400','00000400');"> 야간
&nbsp;
			<input style="width:25px;" type="radio" name="tourtime" onclick="chgTimeOption('00002400','03609999');"> 1DAY
		</div>
 -->
					<h3 class="stu_title">
						투어 종류 선택<font style="font-size: 9pt;"></font> <span
							class="spot_count"></span>
					</h3>
					<!--
		<a class="stu_reset">선택 취소</a>
-->
				</div>
				<div class="filter-container">
					<!--Swiper Wrap-->
					<div class="swiper-container swiper1">
						<ul class="swiper-wrapper">
							<!--Swiper Item List-->

							<c:forEach items="${tourtype}" var="tourtype">
							<li class="swiper-slide">
								<div class="img-wrap" id="B${tourtype.tourtype_id}" style="border-radius: 5px;"
									onclick="toggleBucket('${tourtype.tourtype_id}')">
									<img class="lazyload fh"
										data-src="${tourtype.img}" src="${tourtype.img}"> 
									<div class="checkmark draw d-n"></div>
								</div>
								<div class="txt-wrap">
									<p>${tourtype.attr_name}</p>
								</div>
							</li>
							</c:forEach>
						</ul>
						<!--scrollbar-->
						<div class="swiper-scrollbar"></div>
					</div>
				</div>

				<div class="filter-footer">
					<div class="btn_apply">
						<button type="button">확인</button>
					</div>
					<div class="btn_spot_toggle">
						<button type="button"></button>
					</div>
				</div>


			</div>
		</section>





		<section class="prd_filter">
			<div class="stu_inner_wrap">




				<div class="btn_prd_filter">

					<button type="button">
						필터 <span class="select_count"></span>
					</button>


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

								<li class="filter-list table">
									<div class="filter-item" onclick="update_orderby('recom')">추천순</div>
								</li>
								<li class="filter-list table  default on ">
									<div class="filter-item" onclick="update_orderby('hot')">인기순</div>
								</li>
								<li class="filter-list table">
									<div class="filter-item" onclick="update_orderby('review')">후기순</div>
								</li>

							</ul>
						</li>

						<li class="filter-section">
							<h4 class="stu_title">상품 카테고리</h4>
							<ul class="filter-wrap category">
								<li class="filter-list default on">
									<div class="filter-item" onclick="select_thema_code(0)">전체</div>
								</li>
								<li class="filter-list">
									<div class="filter-item" onclick="select_thema_code('시내투어')">시내투어</div>
								</li>
								<li class="filter-list">
									<div class="filter-item" onclick="select_thema_code('근교투어')">근교투어</div>
								</li>
								<li class="filter-list">
									<div class="filter-item" onclick="select_thema_code('액티비티')">액티비티</div>
								</li>
								<li class="filter-list">
									<div class="filter-item" onclick="select_thema_code('스냅촬영')">스냅촬영</div>
								</li>
								<li class="filter-list">
									<div class="filter-item" onclick="select_thema_code('티켓/교통패스')">티켓/교통패스</div>
								</li>
								<li class="filter-list">
									<div class="filter-item" onclick="select_thema_code('여행편의')">여행편의</div>
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


		<section class="stu_prd_list  stu_clearfix">
			<div class="stu_inner_wrap">
				<div class="filter_header">
					<div class="titArea">
						<h3 class="stu_title">상품</h3>


						<span class="prd_count"></span>


					</div>
				</div>

				<ul class="prd_list stu_clearfix paginated" id="tourlist">


				</ul>
			</div>


		</section>



 
		</main>
		<!--//메인영역_End-->
		   <jsp:include page="/WEB-INF/layout/advertisement.jsp"></jsp:include>

		<jsp:include page="/WEB-INF/layout/footer_large.jsp"></jsp:include>
    
	
	</div>

<script>
//스크롤 이동(포함사항)
function fnMove(seq) {
    var posPrice = $('.stu_s' + seq).offset();
    $('html, body').animate({scrollTop : posPrice.top - menuHeight}, 400);
}


	$(document).ready(function() {
		
		var member_id = '${authUser.member_id}';
		
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
	 	
	 	
	 	
	 	// 여행 타입 선택
	    $('.stu_trip-type .selectBtn').click(function() {
            $(this).next('.selectBox').addClass('on');
        });

        $('.selectBox li').click(function() {
	 	window.location=""+$(this).attr("id").replace("T","")+"&l=";

        });

        $('.selectBox .close').click(function() {
            $(this).parent('.selectBox').removeClass('on');
        });//
        
        //
        $(document).click(function() {
            $('.popover-wrap, .set_time').removeClass('on');
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
	
	function updateTripwith(cur_page){
		if(!cur_page) cur_page="1"
		Xthema_code="r"
		$.ajax({
			url:'/stubbyPlanner/market/get_list.jsp?city_id=${tourtype[0].city_id}&orderby='+orderby,
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
	
	

	var thema_code=0;	
	
	var orderby = 'hot';
	
	function updateBuckets(cur_page){
		if(!cur_page)
			cur_pager="1";
		Xthema_code="r";
		
		$.ajax({
			url:'/api/planning/GetBucketRecomms2.asp?tripwith=&cate='+Xthema_code+'&subcate='+subcatelist+'&city_id=${tourtype[0].city_id}&bucketlist='+bucketlist+"&orderby="+orderby+"&page="+cur_page,
			dataType:'json',
			success: function(data){
				if(data!=""){
					thtml='';
					
					$.each(data.list, function( i, item ) {
						thtml+='<li class="prd_item">';

						thtml+='	<a href="" class="prd out line lock-off">';

						thtml+='		<figure class="thumb">';
						//thtml+='			<img class="fh lazyload"  data-src="'" onerror=""/>';
						thtml+='		</figure>';

						thtml+='		<div class="prd_info">';

						thtml+='			<div class="name">';
						thtml+='				<span>'+item.title+'</span>';
						thtml+='			</div>';
						thtml+='			<div class="tag">';
						thtml+='				<span> </span>'; //+item.sdesc+
						thtml+='			</div>';
						thtml+='			<div class="score">';
						thtml+='				<span>'+item.hot+'</span>';
						thtml+='			</div>';
						thtml+='		</div>';
						thtml+='	</a>';
						
						if (item.stimelist) {
							thtml+='<ul class="prd_info_bottom outline">';
							thtml+='<li class="start">';
							thtml+='<span>09:00</span>';
							thtml+='<div class="set_time">';
							thtml+='<ul>';
							
							for(i=0;i<item.stimelist.length;i++)
								thtml+='<li class="current"> </li>';//+item.stimelist[i].stime+
							
							thtml+='</ul>';
							thtml+='</div>';
							thtml+='</li>';
							thtml+='<li class="duration">';
							thtml+='<span>20 H</span>';
						    thtml+='<div class="set_time">';
						    thtml+='<ul>';
						    thtml+='<li class="current">16 H</li>';
						    thtml+='<li>18 H</li>';
						    thtml+='<li>20 H</li>';
						    thtml+='<li>22 H</li>';
						    thtml+='</ul>';
						    thtml+='</div>';
							thtml+='</li>';
							thtml+='<li class="plus">';
							thtml+='<span>담기<i></i></span>';
							thtml+='</li>';
							thtml+='</ul>';
						}//if (item.stimelist)

						thtml+='</li>';
					});//$.each
					
					$("#tourlist").html(thtml);
					
					curGuidebookList=data.list;

					$('.prd_count').text(data.totalcnt);
					
					// Item 시간 선택(토글)
					$('.prd_item .prd_info_bottom li:not(.plus) span').click(function(event) {
			            event.stopPropagation();
			            $('.set_time').not($(this).next()).removeClass('on');
			            $(this).next().toggleClass('on');
			        });//	$('.prd_item .prd_info_bottom li:not(.plus) span').click(function(event)
					
					$('.prd_list.paginated').each(function(){
						var currentPage = 0;
			            var numPerPage = 12;
			            var $prd_list = $(this);
			            $prd_list.bind('repaginate', function() {
			                $prd_list.find('li.prd_item').hide()
			                .slice(currentPage * numPerPage,
			                    (currentPage + 1) * numPerPage)
			                .show();

						}); //$prd_list.bind('repaginate', function()
						
			            var numRows = data.totalcnt;
			            var numPages = Math.ceil(numRows / numPerPage);
			            
			            $('.pager').remove();

			            var $pager = $('<div class="pager"></div>');
			            
			            for (var page = 0; page < numPages; page++) {
			            	if(eval(page+1)==data.curpage)
			            		$('<a href="javascript:updateBuckets('+eval(page+1)+')" class="page_number active"></a>').text(page + 1).appendTo($pager);
			            	else
			            		$('<a href="javascript:updateBuckets('+eval(page+1)+')" class="page_number active"></a>').text(page + 1).appendTo($pager);
			            	
			            }//for
			            $pager.insertAfter($prd_list);
			            if(parseInt($('a.page_number:last').text()) == 1){
			            	$('.pager').hide();
			            } else {
			            	$('.pager').show();
			            }

					}); //$('.prd_list.paginated').each(function()
				
				}//if(data!=)
			}//success
		
		});// ajax
	}//function updateBuckets(cur_page)

	

	

	function updateTours(cur_page) {
		var id = '${authUser.member_id}';
		if (!cur_page)
			cur_page = "1";
		
		$.ajax({
					url :'/stubbyPlanner/market/get_list.jsp?city_id=${tourtype[0].city_id}&bucketlist='+ bucketlist +'&orderby='+orderby+'&page='+cur_page+'&thema_code='+thema_code+'&id='+id,
					dataType : 'json',
					success : function(data) {
						if (data != "") {
							thtml = '';
							$.each(data.list, function( i, item ) {
								thtml+='<li class="prd_item">';
								if(item.is_like)
								 	thtml+='<div class="like active" id="'+item.serial+'"></div>';
								else
								 	thtml+='<div class="like" id="'+item.serial+'"></div>';

								if(item.useoutlink==1)
									thtml+='<a href="'+item.linkurl+'" target="_blank" class="prd outline lock-off">';
								else
									thtml+='<a href="/stubbyPlanner/guide/detail.do?needlogin=&serial='+item.serial+'"class="prd outline lock-off">';


									thtml+='<figure class="thumb">';
									thtml+='<img class="fh lazyloaded" src="'+item.imgurl+'">';
									
								
								if(item.coupon_txt!="")
									thtml+='<div class="band bg_red">'+item.coupon_txt+'</div>';
								
								if(item.useoutlink==0) {
										if(item.is_lowest_price==1)
										{	
											thtml+='<div class="band2 bg_orange" style="font-size:9pt;padding-left:7px;padding-right:7px;padding-top:7px;padding-bottom:7px;">최저가 보장제</div>';
										}
									} else {
										
										thtml+='<div class="band2 bg_gray"><p></p>제휴예약</div>';
									}

								
								
								tcomname=item.com_name;
								if(tcomname.length>17)
									tcomname=tcomname.substring(0,17)+'..';

								thtml+='</figure>';

								thtml+='<div class="prd_info" style="height:97px">';
								thtml+='<div class="cpn">';
								thtml+='<span>'+tcomname+'</span>';
					            thtml+='</div>';
					            thtml+='<div class="name">';
					            
					            thtml+='<span>'+item.title+'</span>';
					            
					            thtml+='</div>';
					            thtml+='<div class="tag">';
					            //thtml+='<span>'+item.sale_tag+'</span>';
					            thtml+='</div>';
					            
					            if(item.useoutlink==1){
					        		thtml+='<div style="display: inline-block;position: absolute; left: 14px;bottom: 10px;line-height: 18px;">';

					        		thtml+='<span>'+item.review+'</span><span  class="buy">&nbsp;&nbsp;'+item.review_cnt+'개 리뷰</span></div>';
					        	} else {
					        			if(item.review_cnt>0&&item.review>3.9){
					        			 	thtml+='<div class="score">';
					        				thtml+='<span>'+item.review+'</span><span  class="buy">&nbsp;&nbsp;'+item.hot+'명 예약</span></div>';
					        			} else {
					        					thtml+='<div style="display: inline-block;position: absolute; left: 14px;bottom: 10px;line-height: 18px;">';
					        					if(item.planner_cnt>0)
					        					thtml+='❤️<span style="color:#8f8f8f;font-size:9pt">최근 플래너 '+item.planner_cnt+'명 선택</span>';
					        					thtml+='</div>';
					        			}// else	
					        	}
					        	if(!item.price_sale)
					        		item.price_sale="";
					        	

								thtml+='<div class="price" style="text-align:right;line-height:13px">KRW '+item.price_sale + '원'
								if(item.price_ealybird&&item.price_ealybird!="")
								thtml+='<span style="margin-right:0px"><br><font style="font-size:9pt;color:#3ad195">⚡️ 얼리버드 '+item.price_ealybird+'~</font></span>';

					        	thtml+='</div>';
								
					            thtml+='</div>';

					            thtml+='</a>';
					           	
					            if(item.stimelist){
					            	thtml+='<ul class="prd_info_bottom outline">';
					          	  	thtml+='<li class="start" style="width:50%">';
					          	  	
					          	  if(item.stimelist.length==1){
					          		if(item.stimelist[0].stime=="99:99")
					        			thtml+='<div style="font-size:15px;font-weight:400;line-height:28px;color:#4a4a4a;cursor:pointer">자유</div>';
					        		else
					        			thtml+='<div style="font-size:15px;font-weight:400;line-height:28px;color:#4a4a4a;cursor:pointer">'+item.stimelist[0].stime+'</div>';
					          	  } else if (item.stimelist.length>0) {
					          			thtml+='<span>선택가</span>';
					          	  } else {
					          			thtml+='<div style="font-size:15px;font-weight:400;line-height:28px;color:#4a4a4a;cursor:pointer">자유</div>';
					          	  }
					          	  
					          	  if(item.stimelist.length>1){
					          		 thtml+='<div class="set_time">';
					          		 thtml+='<ul>';
					          		 
					          		 for(i=0;i<item.stimelist.length;i++)
					          			thtml+='<li class="current">'+item.stimelist[i].stime+'</li>';
					          			
					          		 thtml+='</ul>';
					          	 	 thtml+='</div>';
					          	  }
					          	thtml+='</li>';
					      	  	thtml+='<li class="duration" style="width:50%">';
					      	  	
					      	  	if(item.stimelist.length==1)
					      	  		thtml+='<div style="font-size:15px;font-weight:400;line-height:28px;color:#4a4a4a;cursor:pointer">'+item.stimelist[0].duration+'</div>';

					      	 	else if(item.stimelist.length>0)
					      			thtml+='<span>'+item.stimelist[0].duration+'</span>';
					      	 	else
					      			thtml+='<div style="font-size:15px;font-weight:400;line-height:28px;color:#4a4a4a;cursor:pointer">자유</div>';
								
					      		if(item.stimelist.length>1) {
					      			thtml+='<div class="set_time">';
					                thtml+='<ul>';

					                for(i=0;i<item.stimelist.length;i++)
					                	thtml+='<li class="current">'+item.stimelist[i].duration+'</li>';

					              	 	thtml+='</ul>';
					            	  	thtml+='</div>';

					      		}
					      		thtml+='</li>';
					      		
					      		thtml+='</ul>';

					            }//if(item.stimelist)
					            else{
					            	thtml+='<ul class="prd_info_bottom outline">';
					          	  	
					            	thtml+='<li class="start" style="width:50%">';
					          	  	thtml+='<div style="font-size:15px;font-weight:400;line-height:28px;color:#4a4a4a;cursor:pointer">'+item.stime+'</div>';
					          	  	thtml+='</li>';
					          	  	
					          	  	thtml+='<li class="duration" style="width:50%">';
					          	  	thtml+='<span>'+item.duration+'</span>';
					          	  	thtml+='</li>';
					          	  	
					          	  	thtml+='</li>';
						      		thtml+='</ul>';
					            }

					            	
					            thtml+='</li>';

							}); //$.each(data.list, function( i, item )
									
							

							$("#tourlist").html(thtml);


					        // Item 시간 선택(토글)
					        $('.prd_item .prd_info_bottom li:not(.plus) span').click(function(event) {
					            event.stopPropagation();
					            $('.set_time').not($(this).next()).removeClass('on');
					            $(this).next().toggleClass('on');
					        });
					        

					     	// 리스트 찜하기(토글)
					     	$('.prd_item .like').on('click', function(){
					     		tid=$(this).attr("id");
					     		if('${authUser.member_id}'==''){
					     			alert("로그인 후 이용해주세요.");
					     		} else{
					     			var user_id = '${authUser.member_id}';
					     			
					     		$(this).toggleClass('active');
					     		
					     		$.ajax({
					     			url: '/stubbyPlanner/market/tour_like.jsp?city_id=${tourtype[0].city_id}&tour_id='+tid+'&user_id='+user_id,
					     			dataType: 'json',
					     			success: function(data){
					     				if(data!=""){
					     					thtml='';
					     				}
					     			}
					     		});

					     		}
					     	});
					     	
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
					             
					             cPage=data.curpage;
					             
					             sPage=5*parseInt((cPage-1)/5)+1;
					             
					             ePage=sPage+5;
									if(ePage>(numPages+1))
										ePage=numPages+1;
								if(sPage>5)
									 $('<a href="javascript:updateTours('+eval(sPage-5)+')" class="page_number"></a>').text("<").appendTo($pager);
								
								for (var page = sPage; page < ePage; page++) {
									if(eval(page)==data.curpage)
										$('<a href="javascript:updateTours('+eval(page)+')" class="page_number active"></a>').text(page).appendTo($pager);
									else
										$('<a href="javascript:updateTours('+eval(page)+')" class="page_number"></a>').text(page).appendTo($pager);
								}
								if(numPages>ePage)
									 $('<a href="javascript:updateTours('+eval(ePage)+')" class="page_number"></a>').text(">").appendTo($pager);
								$pager.insertAfter($prd_list);
								
								if(parseInt($('a.page_number:last').text()) == 1) {
            					    $('.pager').hide();
            					} else {
            					    $('.pager').show();
            					};

					     	});
						} //if(data)
							
					}//success
				});//ajax
	}//function
			
	function formatNumber(num) {
		  return num.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,')
	}


</script>


</body>
</html>