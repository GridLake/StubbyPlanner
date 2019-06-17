<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/include.jspf" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<link rel="image_src" href="" />
<meta property="og:title" content="프랑스 특가 - 스투비플래너" />


	 <title>프랑스 특가 - 스투비플래너</title>
	 
	 <!-- Favicon -->
    <link rel="shortcut icon" href="<%= contextPath %>/externalData/images2/common/favicon.ico">
    <link rel="icon" href="<%= contextPath %>/externalData/images2/common/favicon.png"> 
	 
	 
    <!-- meta -->
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimun-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
	
	<!-- CSS/JavaScript -->
    <link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/mb/css/swiper.min.css">
    <link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/css2/daterangepicker.css">
  	<link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/css2/common.css">
    <link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/market/css/countryEvent.css">
    <link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/market/css/exp.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
	<link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/css2/header_footer.css">

    <!-- lazysizes.min.js : 레이지로딩 -->
	<script src="<%= contextPath %>/externalData/market/js/lazysizes.min.js" type="text/javascript" async=""></script>
    <!-- swiper.min.js : 이미지슬라이더 -->
    <script src="<%= contextPath %>/externalData/js2/swiper.min.js" type="text/javascript"></script>
    <!-- daterangepicker.js : 달력 -->
    <script src="<%= contextPath %>/externalData/js2/moment.min.js" type="text/javascript"></script>
    <script src="<%= contextPath %>/externalData/js2/daterangepicker.js" type="text/javascript"></script>
	<style>
.stu_top_banner .btn { position:relative; width:auto; height:44px; margin:0 0 0 20px; padding:0 20px; -webkit-border-radius:2px; border-radius:2px; background:#ee685a; font-size:14px; line-height:44px; color:#fff; display:inline-block;}
.stu_selectCity li:before { pointer-events:none; }

/* 참여업체 */
.stu_supporters { padding:0; }
.stu_supporters .stu_inner_wrap { padding:40px 0 60px; }
.stu_supporters h3.stu_title { display:block; font-size:24px; line-height:32px; text-align:center; color:#08223b; }
.stu_supporters h3.stu_title span { display:block; font-size:20px; font-weight:300; color:#6b87a7; }
.stu_supporters ul { display:flex; flex-flow:row wrap; align-items:center; justify-content:center; max-width:400px; margin:0 auto; }
.stu_supporters li { margin:10px; }
.stu_supporters li img { height:40px; }


@media (min-width:620px){
.stu_supporters .stu_inner_wrap { padding:40px 20px; text-align:center; }
.stu_supporters h3.stu_title span { font-size:22px; }
.stu_supporters ul { max-width:640px; }
.stu_supporters li { margin:10px 18px; }
.stu_supporters li img { height:44px; }
}


@media (min-width:1025px){
.stu_supporters { margin:0; }
.stu_supporters ul { max-width:900px; }
.stu_supporters li { margin:0 20px 28px; }
.stu_supporters li img { height:50px; }
}

<%@include file="/WEB-INF/layout/css/header_large.css" %>
	</style>
</head>
<body>
	
	<div class="stu_wrap" >

<jsp:include page="/WEB-INF/layout/header_large.jsp"></jsp:include>
<script>
		var id = "#"+'${ lnb_item }';
		$(".lnb_item").removeClass("active");
		$(id).addClass("active");
	</script>
	


 <!--메인영역_Str-->
    <main class="stu_clearfix" >
    	<section class="stu_top_banner" >
            <ol class="loc">
                <li><a href="http://www.stubbyplanner.com/market/">투어 홈</a></li>
                <li><a href="#">프랑스</a></li>
            </ol>
            <div class="swiper-container swiper1">
                <ul class="swiper-wrapper">



                    <li class="swiper-slide">

                        <div class="stu_bg" style="background-image:url(https://d3b39vpyptsv01.cloudfront.net/0/0/15416724747651kIZqKiOoH.jpg);">

                            <div class="titArea">


                                <b class="current-city">파리 3박이상 여행자 필수<br/><span>몽생미셀투어 얼리버드</span><br/></b>
                                <a  class="btn" href="/market/group.asp?needlogin=&serial=1">⚡️ 특가보기</a>


                            </div>
                        </div>
                    </li>






                </ul>

            </div>
        </section>
    	
    	
    	<section class="stu_selectCity">
            <div class="stu_inner_wrap">
                <h3 class="stu_title">프랑스의 인기도시</h3>
                <!--Swiper Wrap-->
                <div class="swiper-container swiper2">
                    <ul class="swiper-wrapper">
	
                            <li class="swiper-slide" >
		<a href="/stubbyPlanner/market/index_city.do?city_id=1">
                                <div class="img-wrap" id="B7">
                                    <img class="lazyload fw" data-src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/8dd49e94be2f1f20057849442b8f5dbf_l.jpg">
                                 
                                </div>
                                <div class="txt-wrap">
                                    <p>파리</p>
                                </div>
		</a>
                            </li>
	
                            <li class="swiper-slide" >
		<a href="/market/index_city.asp?region=111011003">
                                <div class="img-wrap" id="B114">
                                    <img class="lazyload fw" data-src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/1436cec7ddf1a7c02e2290ad843a25b0_l.jpg">
                                 
                                </div>
                                <div class="txt-wrap">
                                    <p>니스</p>
                                </div>
		</a>
                            </li>
	
                            <li class="swiper-slide" >
		<a href="/market/index_city.asp?region=111011014">
                                <div class="img-wrap" id="B111">
                                    <img class="lazyload fw" data-src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/46b2ec81c2a59f4499e49e6776c804d0_l.jpg">
                                 
                                </div>
                                <div class="txt-wrap">
                                    <p>마르세유</p>
                                </div>
		</a>
                            </li>
	
                            <li class="swiper-slide" >
		<a href="/market/index_city.asp?region=111011010">
                                <div class="img-wrap" id="B60">
                                    <img class="lazyload fw" data-src="http://d3b39vpyptsv01.cloudfront.net/photo/1/2/dd4b3da056384f735f27bcdcea925541_l.jpg">
                                 
                                </div>
                                <div class="txt-wrap">
                                    <p>리옹</p>
                                </div>
		</a>
                            </li>
	
                            <li class="swiper-slide" >
		<a href="/market/index_city.asp?region=111011005">
                                <div class="img-wrap" id="B115">
                                    <img class="lazyload fw" data-src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/c8c39429f0c64820c471db99ed96ad29_l.jpg">
                                 
                                </div>
                                <div class="txt-wrap">
                                    <p>아비뇽</p>
                                </div>
		</a>
                            </li>
	
                            <li class="swiper-slide" >
		<a href="/market/index_city.asp?region=111011008">
                                <div class="img-wrap" id="B78">
                                    <img class="lazyload fw" data-src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/5d652048b89acad395d9f5c56c9dafed_l.jpg">
                                 
                                </div>
                                <div class="txt-wrap">
                                    <p>몽생미셸</p>
                                </div>
		</a>
                            </li>
	
                            <li class="swiper-slide" >
		<a href="/market/index_city.asp?region=111011143">
                                <div class="img-wrap" id="B31">
                                    <img class="lazyload fw" data-src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/98a6e3e5365928dd797a1160fdd47256_l.jpg">
                                 
                                </div>
                                <div class="txt-wrap">
                                    <p>지베르니</p>
                                </div>
		</a>
                            </li>
	
                            <li class="swiper-slide" >
		<a href="/market/index_city.asp?region=111011144">
                                <div class="img-wrap" id="B32">
                                    <img class="lazyload fw" data-src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/88e8076c582710ba69125245af92d78e_l.jpg">
                                 
                                </div>
                                <div class="txt-wrap">
                                    <p>오베르 쉬르 우아즈</p>
                                </div>
		</a>
                            </li>
	
                            <li class="swiper-slide" >
		<a href="/market/index_city.asp?region=111011141">
                                <div class="img-wrap" id="B33">
                                    <img class="lazyload fw" data-src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/d5c951a3138cb19d5df438c4069b4691_l.jpg">
                                 
                                </div>
                                <div class="txt-wrap">
                                    <p>퐁텐블로</p>
                                </div>
		</a>
                            </li>
	
                            <li class="swiper-slide" >
		<a href="/market/index_city.asp?region=111011120">
                                <div class="img-wrap" id="B60">
                                    <img class="lazyload fw" data-src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/b6a1d39cd644c5b629f1de97327e6451_l.jpg">
                                 
                                </div>
                                <div class="txt-wrap">
                                    <p>생 말로</p>
                                </div>
		</a>
                            </li>
	
                            <li class="swiper-slide" >
		<a href="/market/index_city.asp?region=111011126">
                                <div class="img-wrap" id="B61">
                                    <img class="lazyload fw" data-src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/b7be874504df6733d9992c3686246145_l.jpg">
                                 
                                </div>
                                <div class="txt-wrap">
                                    <p>옹플뢰르</p>
                                </div>
		</a>
                            </li>
	
                            <li class="swiper-slide" >
		<a href="/market/index_city.asp?region=111011161">
                                <div class="img-wrap" id="B63">
                                    <img class="lazyload fw" data-src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/d05aa827818d57021cc82be4fad4f679_l.jpg">
                                 
                                </div>
                                <div class="txt-wrap">
                                    <p>에트르타</p>
                                </div>
		</a>
                            </li>
	
                            <li class="swiper-slide" >
		<a href="/market/index_city.asp?region=111011098">
                                <div class="img-wrap" id="B69">
                                    <img class="lazyload fw" data-src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/f092d35b422af421a9465be23dc5b916_l.jpg">
                                 
                                </div>
                                <div class="txt-wrap">
                                    <p>루아르 계곡</p>
                                </div>
		</a>
                            </li>

                    </ul>
                   <div class="swiper-scrollbar"></div>
                </div>
	

            <div class="btn_spot_toggle">
                <button type="button"></button>
            </div>
	<div style="clear:both"></div>

	  <div class="btn_exp_all">
                    <a href="index_citylist.asp?region=11101" class="stu_btn bg_line" style="margin:5px 15px 15px 15px;">프랑스의 소도시 정보 ></i></a>
                </div>
            </div>

        </section>
    	
    	
    	
    	<section class="stu_prd_list stu_clearfix">
    		 <div class="stu_inner_wrap">
				<h3 class="stu_title">프랑스&nbsp;슈퍼 얼리버드 할인 <small style="font-size:8pt;color:#696969">최대 30% DOWN</small> </h3>
				<div class="swiper-container swiper3">
					<ul class="swiper-wrapper">
					
						<c:forEach items="${cityGuide.superealybird}" var="superealybird">
						<li class="prd_item swiper-slide">


                        <div class="like"></div>

                        <a href="/stubbyPlanner/guide/detail.do?needlogin=&serial=${cityGuide.guide_seq}" class="prd lock-off">



                            <figure class="thumb">
                                <img class="fw lazyload blur-up" src="${superealybird.mapImg}"/>

                                    <div class="band bg_red">⚡️${superealybird.coupon_txt}</div>

                            </figure>


                            <div class="prd_info" style="height:128px">

                                <div class="cpn">
			예술과여행
                                    <span class="duration">${superealybird.hours}</span>
		
                                </div>


                                <div class="name">
                                    <span>${superealybird.title} </span>
                                </div>

                                           

	<div class="score"><span>${superealybird.avg}</span></div>

                       

                                    <div class="price"  style="line-height:100%;text-align:right;right;right:2px;">
                                        ${superealybird.price}<span style="margin-right:0px"><br><font style="font-size:9pt;color:#ee685a;font-weight:700;">⚡️ 슈퍼얼리${superealybird.price_ealybird}~</font></span>
                                    </div>

                            </div>
                        </a>
                    </li>
					</c:forEach>

						
					</ul>
				    		 
    		 	</div>
    		 	<div class="swiper-button-prev swiper-button-prev3"></div>
                <div class="swiper-button-next swiper-button-next3"></div>
    		 	
    		 </div>
    		
    	</section>
    	
    	
    	
    	 <section class="stu_theme">
            <div class="stu_inner_wrap">
                <div class="theme-group stu_clearfix">
                    <h3 class="stu_title">예술과 역사가 공존하는 파리!</h3>


                        <ul >


                       <li class="col2-33s">
                             <a href="group.asp?needlogin=&serial=5">
                                <img src="http://d3b39vpyptsv01.cloudfront.net/0/0/1528694262028wW99k6WsDY.jpg" alt=""/>
                                <div class="titArea">
                                    <p class="type1">루브르 지식가이드</p>
                                    <p class="type2">14개 상품</p>
                                    <p class="type3">￦ 28,000~</p>
                                </div>
                            </a>
                        </li>


                       <li class="col2-33s">
                             <a href="group.asp?needlogin=&serial=6">
                                <img src="http://d3b39vpyptsv01.cloudfront.net/0/0/15286942628856OZD5kQwtx.jpg" alt=""/>
                                <div class="titArea">
                                    <p class="type1">오르세 미술관</p>
                                    <p class="type2">11개 상품</p>
                                    <p class="type3">￦ 19,000~</p>
                                </div>
                            </a>
                        </li>


                       <li class="col2-33s">
                             <a href="group.asp?needlogin=&serial=154">
                                <img src="http://d3b39vpyptsv01.cloudfront.net/0/0/1528694269215vQqrsvGo6u.jpg" alt=""/>
                                <div class="titArea">
                                    <p class="type1">오랑주리 미술관</p>
                                    <p class="type2">1개 상품</p>
                                    <p class="type3">￦ 38,000~</p>
                                </div>
                            </a>
                        </li>



                        </ul>
                    </div>
                </div>
            </section>
    	
    	
    	<section class="stu_theme">
            <div class="stu_inner_wrap">
                <div class="theme-group stu_clearfix">
                    <h3 class="stu_title">예술과 낭만의 도시 탐방</h3>


                        <ul >


                       <li class="col2-33s">
                             <a href="group.asp?needlogin=&serial=121">
                                <img src="http://d3b39vpyptsv01.cloudfront.net/0/0/1528694268260xQFocjZIMT.jpg" alt=""/>
                                <div class="titArea">
                                    <p class="type1">파리시내투어</p>
                                    <p class="type2">23개 상품</p>
                                    <p class="type3">￦ 13,000~</p>
                                </div>
                            </a>
                        </li>


                       <li class="col2-33s">
                             <a href="group.asp?needlogin=&serial=11">
                                <img src="http://d3b39vpyptsv01.cloudfront.net/0/0/15286942659390nI0pg3SUM.jpg" alt=""/>
                                <div class="titArea">
                                    <p class="type1">몽마르뜨</p>
                                    <p class="type2">9개 상품</p>
                                    <p class="type3">￦ 10,000~</p>
                                </div>
                            </a>
                        </li>


                       <li class="col2-33s">
                             <a href="group.asp?needlogin=&serial=236">
                                <img src="http://d3b39vpyptsv01.cloudfront.net/0/0/1551335286516royHQOwX6j.jpg" alt=""/>
                                <div class="titArea">
                                    <p class="type1">파리 필수 티켓</p>
                                    <p class="type2">10개 상품</p>
                                    <p class="type3">￦ 6,000~</p>
                                </div>
                            </a>
                        </li>


                       <li class="col2-33s">
                             <a href="group.asp?needlogin=&serial=4">
                                <img src="http://d3b39vpyptsv01.cloudfront.net/0/0/1528694261225eyDkjLrTPw.jpg" alt=""/>
                                <div class="titArea">
                                    <p class="type1">파리스냅</p>
                                    <p class="type2">5개 상품</p>
                                    <p class="type3">￦ 70,000~</p>
                                </div>
                            </a>
                        </li>


                       <li class="col2-33s">
                             <a href="group.asp?needlogin=&serial=237">
                                <img src="http://d3b39vpyptsv01.cloudfront.net/0/0/1551321273889LhjKde6CwL.jpg" alt=""/>
                                <div class="titArea">
                                    <p class="type1">파리 공항픽업/샌딩</p>
                                    <p class="type2">7개 상품</p>
                                    <p class="type3">￦ 49,000~</p>
                                </div>
                            </a>
                        </li>


                       <li class="col2-33s">
                             <a href="group.asp?needlogin=&serial=3">
                                <img src="http://d3b39vpyptsv01.cloudfront.net/0/0/1528694260116PbOlpZlxD8.jpg" alt=""/>
                                <div class="titArea">
                                    <p class="type1">파리 자전거투어</p>
                                    <p class="type2">2개 상품</p>
                                    <p class="type3">￦ 49,000~</p>
                                </div>
                            </a>
                        </li>


                       <li class="col2-33s">
                             <a href="group.asp?needlogin=&serial=327">
                                <img src="http://d3b39vpyptsv01.cloudfront.net/0/0/15573708510522atkdujtm3.jpg" alt=""/>
                                <div class="titArea">
                                    <p class="type1">파리 근교 아울렛 투어</p>
                                    <p class="type2">6개 상품</p>
                                    <p class="type3">￦ 93,000~</p>
                                </div>
                            </a>
                        </li>



                        </ul>
                    </div>
                </div>
            </section>
    	
    	
    
	</main>
	
<jsp:include page="/WEB-INF/layout/advertisement.jsp"></jsp:include>

<jsp:include page="/WEB-INF/layout/footer_large.jsp"></jsp:include>

<script>
$(document).ready(function() {
    // header 고정(슬라이드)
    var lastScrollTop = 0, delta = 15;
    $(window).scroll(function(event) {
        var st = $(this).scrollTop();
        var gnbHeight = $('.stu_gnb_container').outerHeight();
        if(Math.abs(lastScrollTop - st) <= delta)
            return;
        if((st > lastScrollTop) && (lastScrollTop > 48)) {
            $('.stu_gnb_container').css('top', - gnbHeight);
        } else {
            $('.stu_gnb_container').css('top', '0');
        }
        lastScrollTop = st;
    });







    // 추천경험 리스트
    var titles = [ '여자 혼자', '남자혼자', '커플/신혼','아이들과', '부모님과'];
    var exp = new Swiper ('.swiper-exp', { speed:0, centeredSlides:true, slidesPerView: 'auto', loop: true, pagination: { el: '.swiper-exp-pagination', clickable : true, renderBullet : function(index, className) { return '<span class="' + className + '">' + titles[index] + '</span>'; }, }, navigation: { nextEl: '.swiper-exp-next' }, breakpoints: { 620: { speed:200 },},});


    var cityList = new Swiper ('.swiper2', {
        direction:'horizontal',
        slidesPerView:'auto',
        freeMode:true,
        scrollbar: {
            el: '.swiper-scrollbar',
            hide:true,
        },
    });
    // 도시(필터) 펼치기
    $('.btn_spot_toggle').click(function() {
        $(this).children('button').toggleClass('on');
        $('.stu_selectCity .swiper-container').toggleClass('h-a');
    });

    var popItem = new Swiper ('.swiper3', {
        slidesPerView:'auto',
        slidesPerGroup:4,
        freeMode:true,
        direction:'horizontal',
        navigation: {
            nextEl: '.swiper-button-next3',
            prevEl: '.swiper-button-prev3',
        },
    });
    var specialBanner = new Swiper ('.swiper4', {
        slidesPerView: 1,
        loop: true,
        pagination: {
            el: '.swiper-pagination4',
            clickable: true,
        },
        navigation: {
            nextEl: '.swiper-button-next4',
            prevEl: '.swiper-button-prev4',
        },
    });
    // 리스트 찜하기(토글)
    $('.prd_item .like').on('click', function() {
        $(this).toggleClass('active');
    });

    // 숙소 선택 팝업
    $('.stu_bnb h3 span').on('click', function() {
        $('.bnb-modal-container').toggleClass('modal');
    });

    // 달력 선택 도구
    $('input[name="datefilter"]').daterangepicker({
        autoUpdateInput: false,
        opens: "center",
        locale: {
            format: 'M월 D일',
            separator: ' ~ ',
            applyLabel: '적용',
            cancelLabel: '초기화',
            daysOfWeek: [
            '일',
            '월',
            '화',
            '수',
            '목',
            '금',
            '토'
            ],
            monthNames: [
            '1월',
            '2월',
            '3월',
            '4월',
            '5월',
            '6월',
            '7월',
            '8월',
            '9월',
            '10월',
            '11월',
            '12월'
            ],
        },
    });
    $('input[name="datefilter"]').on('apply.daterangepicker', function(ev, picker) {
        $(this).val(picker.startDate.format('M월 D일') + ' ~ ' + picker.endDate.format('M월 D일'));
    });
    $('input[name="datefilter"]').on('cancel.daterangepicker', function(ev, picker) {
        $(this).val('');
    });
    // 날짜선택 팝업 On
    $('.stu_schedule input').click(function() {
        $('body').addClass('modal-opened');
        $('.daterangepicker').addClass('action');
        $('.daterangepicker').removeClass('d-n');
        // var inputTop = $('.stu_schedule').offset().top;
        // var datePos = $('.daterangepicker').css("top", "'inputTop' + 10");
        $('.daterangepicker').addClass('.stu_clearfix').appendTo('.stu_calendar');
    });
    // 날짜선택 팝업 Off
    $('.daterangepicker .stu_close, .daterangepicker .drp-buttons .btn').click(function() {
        $('body').removeClass('modal-opened');
        $('.daterangepicker').removeClass('action');
        $('.daterangepicker').addClass('d-n');
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


});

// 후기 더 불러오기
$(window).on('load', function () {

    load('#stu_js-load', '1');
    $(".stu_js-btn-wrap .stu_js-btn").on("click", function () {
        load('#stu_js-load', '3', '.stu_js-btn-wrap');
    })
});
function load(id, cnt, btn) {
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

</script>



</body>
</html>