<%@page import="stbplanner.square.dao.SquareDAO"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/include.jspf"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
<link rel="image_src" href="" />
<meta property="og:type" content="website">
<meta property="og:locale" content="ko_KR">
<meta property="fb:app_id" content="218650814915663">

<meta property="og:title" content="유럽 투어 예약 - 스투비플래너" />
<meta property="og:type" content="website" />
<meta property="og:url" content="http://www.stubbyplanner.com/exp/list.asp" />
<meta property="og:image" content="" />
<meta property="og:site_name" content="스투비플래너" />
<meta property="og:description" content="상상속 유럽여행을 현실로, 스투비플래너" />

<title>광장 - 스투비플래너</title>
<!-- Meta -->
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />


    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimun-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">


    <!-- Favicon -->
    <link rel="shortcut icon" href="<%= contextPath %>/externalData/images2/common/favicon.ico">
    <link rel="icon" href="<%= contextPath %>/externalData/images2/common/favicon.png"> 





    <!-- CSS/JavaScript -->
    <link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/market/css/swiper.min.css">
    <link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/market/css/common11.css">
    <link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/market/css/header_footer11.css">
    <link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/market/css/md_select_group.css">
    <link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/market/css/tourHome11.css">
<!--     <link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/market/css/tourHome.css"> -->
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- swiper.js : 이미지슬라이더 -->
    <script type="text/javascript" src="<%= contextPath %>/externalData/market/js/swiper.min.js"></script>
    <!-- header/footer -->
	
<script src="<%= contextPath %>/externalData/js2/header_footer3.js" type="text/javascript"></script>
    <!-- md-select_group -->
    <script type="text/javascript" src="<%= contextPath %>/externalData/market/js/md_select_group.js"></script>




<script src="http://www.google.com/jsapi"></script>

<script>
 (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
 (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
 m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
 })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
 ga('create', 'UA-913663-1', 'auto');
 ga('send', 'pageview');
 ga('send','event','exp','listview','');
</script>


<style>
/* 유럽 인기여행지 */
.stu_regions { padding:40px 0; }
.stu_category { margin:25px auto 0; }
.stu_category li { height:48px; padding:0 30px; -webkit-border-radius:24px; border-radius:24px; font-size:16px; line-height:48px; }
.stu_tab-content .swiper-container { margin:20px 0 0; }
.stu_tab-content .swiper-slide { flex-basis:18.4%; padding-top:18.4%; margin:0 0.8%; }
.stu_tab-content .swiper-slide:first-child { margin-left:0.8%; }
.stu_tab-content .swiper-slide:last-child { margin-right:0.8%; }
.stu_tab-content .swiper-slide .stu_titleArea { font-size:24px; }
.stu_tab-content .swiper-slide .stu_titleArea .type2 { font-size:18px; }
.stu_tab-content .swiper-button-prev, .stu_tab-content .swiper-button-next { display:block; transform:translateY(50%); }
.stu_tab-content .swiper-button-prev { left:-62px; }
.stu_tab-content .swiper-button-next { right:-62px; }

</style>




<style>
.stu_tagArea .stu_tag_on
{
	background:#696969;
	color:#fff;
	padding:10px 10px;
}
.stu_tagArea .stu_tag_off
{
	padding:10px 10px;
}
.stu_searchArea .stu_search-input:before
{
	display:none;
}
.md-header .md-searchWrap { display:inline-block; position:relative; width:calc(100% - 50px);width:-moz-calc(100% - 50px);width:-webkit-calc(100% - 50px); height:46px; padding:0 18px; -webkit-border-radius:3px; border-radius:3px; background:#fafafa; vertical-align:middle; }

.stu_category li
{
	-webkit-border-radius: 22px;
	  border-radius: 22px;
}
.stu_tab-content .swiper-slide
{

    padding-top: 12.4%;

}

<%@include file="/WEB-INF/layout/css/header_large.css" %>

</style>
</head>	
<body >
    <div class="stu_wrap">


<jsp:include page="/WEB-INF/layout/header_large.jsp"></jsp:include>

	<script>
		var id = "#"+'${ lnb_item }';
		$(".lnb_item").removeClass("active");
		$(id).addClass("active");
	</script>


<main  class="stu_clearfix" >



        <section class="stu_md_select_group">
            <div class="stu_md_background"></div>
            <div class="stu_md_container md_citylist">
                <div class="stu_md_head">
                    <a>
                        <i class="ico_close"></i>
                    </a>
                    <p>전체 여행지</p>
                </div>
                <div class="stu_md_body">
                    <ul class="tabArea stu_clearfix">
                        <li class="tabItem current">
                            <button type="button" class="tab1">서유럽</button>
                        </li>
                        <li class="tabItem">
                            <button type="button" class="tab2">지중해</button>
                        </li>
                        <li class="tabItem">
                            <button type="button" class="tab3">동유럽</button>
                        </li>
                        <li class="tabItem">
                            <button type="button" class="tab4">북유럽</button>
                        </li>
                    </ul>
                    <ul class="contArea tab1">
                       

		 <li>
                            <div class="c_left">
                            <!-- 경로 재설정 필요 -->
                                <a href="<%= contextPath %>/market/index_ctry.do?region=11101">프랑스</a>
                            </div>
                            <div class="c_right">


<!-- line 374 ~ 926 경로 확인: ? 뒤 체크 -->
<a href="<%= contextPath %>/market/index_city.do?region=111011004">파리</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=111011010">리옹</a>

		<a href="<%= contextPath %>/market/index_city.do?region=111011008">몽셍미셸</a>

		<a href="<%= contextPath %>/market/index_city.do?region=111011143">지베르니</a>

		<a href="<%= contextPath %>/market/index_city.do?region=111011144">오베르 쉬르 우와즈</a>

		<a href="<%= contextPath %>/market/index_city.do?region=111011141">퐁텐블로</a>

		<a href="<%= contextPath %>/market/index_city.do?region=111011003">니스</a>

		<a href="<%= contextPath %>/market/index_city.do?region=111011120">생 말로</a>

		<a href="<%= contextPath %>/market/index_city.do?region=111011126">옹플뢰르</a>

		<a href="<%= contextPath %>/market/index_city.do?region=111011161">에트르타</a>

		<a href="<%= contextPath %>/market/index_city.do?region=111011098">투르</a>
                               

                            </div>
                        </li>

		 <li>
                            <div class="c_left">
                                <a href="<%= contextPath %>/market/index_ctry.do?region=11104">이탈리아</a>
                            </div>
                            <div class="c_right">


	
<a href="<%= contextPath %>/market/index_city.do?region=111041004">로마</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=111041006">베니스</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=111041003">피렌체</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=111041123">친퀘테레</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=111041036">베로나</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=111041016">볼로냐</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=111041026">팔레르모</a>

		<a href="<%= contextPath %>/market/index_city.do?region=111041064">아말피</a>

		<a href="<%= contextPath %>/market/index_city.do?region=111041011">나폴리</a>

		<a href="<%= contextPath %>/market/index_city.do?region=111041161">키안티</a>

		<a href="<%= contextPath %>/market/index_city.do?region=111041130">산 지미냐노</a>

		<a href="<%= contextPath %>/market/index_city.do?region=111041012">피사</a>

		<a href="<%= contextPath %>/market/index_city.do?region=111041133">시칠리아</a>

		<a href="<%= contextPath %>/market/index_city.do?region=111041009">아시시</a>

		<a href="<%= contextPath %>/market/index_city.do?region=111041056">오르비에토</a>

		<a href="<%= contextPath %>/market/index_city.do?region=111041010">카프리 섬</a>

		<a href="<%= contextPath %>/market/index_city.do?region=111041005">폼페이</a>
                               

                            </div>
                        </li>

		 <li>
                            <div class="c_left">
                            <!-- 경로 재설정 필요 -->
                                <a href="<%= contextPath %>/market/index_ctry.do?region=11102">스위스</a>
                            </div>
                            <div class="c_right">


	
<a href="<%= contextPath %>/market/index_city.do?region=111021002">인터라켄</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=111021009">라우터브룬넨</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=111021001">루체른</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=111021005">취리히</a>

		<a href="<%= contextPath %>/market/index_city.do?region=111021086">뮈렌</a>

		<a href="<%= contextPath %>/market/index_city.do?region=111021031">몽트뢰</a>

		<a href="<%= contextPath %>/market/index_city.do?region=111021035">샤프하우젠</a>

		<a href="<%= contextPath %>/market/index_city.do?region=111021102">라보지구</a>
                               

                            </div>
                        </li>

		 <li>
                            <div class="c_left">
                                <a href="<%= contextPath %>/market/index_ctry.do?region=11103">영국</a>
                            </div>
                            <div class="c_right">


	
<a href="<%= contextPath %>/market/index_city.do?region=111031001">런던</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=111031008">에든버러</a>

		<a href="<%= contextPath %>/market/index_city.do?region=111031197">코츠월드</a>

		<a href="<%= contextPath %>/market/index_city.do?region=111031004">옥스퍼드</a>

		<a href="<%= contextPath %>/market/index_city.do?region=111031187">세븐 시스터즈</a>

		<a href="<%= contextPath %>/market/index_city.do?region=111031184">스톤헨지</a>

		<a href="<%= contextPath %>/market/index_city.do?region=111031195">라이</a>

		<a href="<%= contextPath %>/market/index_city.do?region=111031003">윈저</a>

		<a href="<%= contextPath %>/market/index_city.do?region=111031006">바스</a>
                               

                            </div>
                        </li>

		 <li>
                            <div class="c_left">
                                <a href="<%= contextPath %>/market/index_ctry.do?region=11106">독일</a>
                            </div>
                            <div class="c_right">


	
<a href="<%= contextPath %>/market/index_city.do?region=111061006">프랑크푸르트</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=111061005">뮌헨</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=111061008">베를린</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=111061001">하이델베르크</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=111061003">퓌센</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=111061004">드레스덴</a>
                               

                            </div>
                        </li>

		 <li>
                            <div class="c_left">
                                <a href="<%= contextPath %>/market/index_ctry.do?region=11107">네덜란드</a>
                            </div>
                            <div class="c_right">


	
<a href="<%= contextPath %>/market/index_city.do?region=111071001">암스테르담</a>

		<a href="<%= contextPath %>/market/index_city.do?region=111071002">잔세스칸스</a>
                               

                            </div>
                        </li>

		 <li>
                            <div class="c_left">
                                <a href="<%= contextPath %>/market/index_ctry.do?region=11108">벨기에</a>
                            </div>
                            <div class="c_right">


	
<a href="<%= contextPath %>/market/index_city.do?region=111081001">브뤼셀</a>

		<a href="<%= contextPath %>/market/index_city.do?region=111081002">브뤼헤</a>

		<a href="<%= contextPath %>/market/index_city.do?region=111081006">겐트</a>
                               

                            </div>
                        </li>

		 <li>
                            <div class="c_left">
                                <a href="<%= contextPath %>/market/index_ctry.do?region=11110">아일랜드</a>
                            </div>
                            <div class="c_right">


	
<a href="<%= contextPath %>/market/index_city.do?region=111101001">더블린</a>
                               

                            </div>
                        </li>

                    
                    </ul>
                    <ul class="contArea tab2 d-n">


		 <li>
                            <div class="c_left">
                                <a href="<%= contextPath %>/market/index_ctry.do?region=12101">스페인</a>
                            </div>
                            <div class="c_right">


	
<a href="<%= contextPath %>/market/index_city.do?region=121011002">바르셀로나</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=121011003">마드리드</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=121011004">톨레도</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=121011001">그라나다</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=121011007">세비야</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=121011005">말라가</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=121011028">테네리페</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=121011057">론다</a>

		<a href="<%= contextPath %>/market/index_city.do?region=121011104">몬세라트</a>

		<a href="<%= contextPath %>/market/index_city.do?region=121011016">헤로나</a>

		<a href="<%= contextPath %>/market/index_city.do?region=121011070">시체스</a>

		<a href="<%= contextPath %>/market/index_city.do?region=121011008">세고비아</a>

		<a href="<%= contextPath %>/market/index_city.do?region=121011100">콘수에그라</a>
                               

                            </div>
                        </li>

		 <li>
                            <div class="c_left">
                                <a href="<%= contextPath %>/market/index_ctry.do?region=12102">포르투갈</a>
                            </div>
                            <div class="c_right">


	
<a href="<%= contextPath %>/market/index_city.do?region=121021001">리스본</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=121021008">포르투</a>

		<a href="<%= contextPath %>/market/index_city.do?region=121021004">카스카이스</a>

		<a href="<%= contextPath %>/market/index_city.do?region=121021002">로카 곶</a>

		<a href="<%= contextPath %>/market/index_city.do?region=121021003">신트라</a>
                               

                            </div>
                        </li>

		 <li>
                            <div class="c_left">
                                <a href="<%= contextPath %>/market/index_ctry.do?region=12103">그리스</a>
                            </div>
                            <div class="c_right">


	
<a href="<%= contextPath %>/market/index_city.do?region=121031001">아테네</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=121031002">산토리니</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=121031021">자킨토스</a>

		<a href="<%= contextPath %>/market/index_city.do?region=121031011">케팔로니아 섬</a>

		<a href="<%= contextPath %>/market/index_city.do?region=121031052">메테오라</a>

		<a href="<%= contextPath %>/market/index_city.do?region=121031036">델포이</a>

		<a href="<%= contextPath %>/market/index_city.do?region=121031024">이라클리온</a>
                               

                            </div>
                        </li>

		 <li>
                            <div class="c_left">
                                <a href="<%= contextPath %>/market/index_ctry.do?region=12104">터키</a>
                            </div>
                            <div class="c_right">


	
<a href="<%= contextPath %>/market/index_city.do?region=121041001">이스탄불</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=121041003">카파도키아</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=121041028">페티예</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=121041008">보드룸</a>

		<a href="<%= contextPath %>/market/index_city.do?region=121041030">파묵칼레</a>

		<a href="<%= contextPath %>/market/index_city.do?region=121041007">안탈리아</a>
                               

                            </div>
                        </li>

		 <li>
                            <div class="c_left">
                                <a href="<%= contextPath %>/market/index_ctry.do?region=12107">몰타</a>
                            </div>
                            <div class="c_right">


	
<a href="<%= contextPath %>/market/index_city.do?region=121071009">몰타</a>
                               

                            </div>
                        </li>


                    </ul>
                    <ul class="contArea tab3 d-n">


		 <li>
                            <div class="c_left">
                                <a href="<%= contextPath %>/market/index_ctry.do?region=13101">체코</a>
                            </div>
                            <div class="c_right">


	
<a href="<%= contextPath %>/market/index_city.do?region=131011001">프라하</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=131011003">체스키크롬로프</a>
                               

                            </div>
                        </li>

		 <li>
                            <div class="c_left">
                                <a href="<%= contextPath %>/market/index_ctry.do?region=13104">오스트리아</a>
                            </div>
                            <div class="c_right">


	
<a href="<%= contextPath %>/market/index_city.do?region=131041001">비엔나</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=131041002">잘츠부르크</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=131041032">할슈타트</a>
                               

                            </div>
                        </li>

		 <li>
                            <div class="c_left">
                                <a href="<%= contextPath %>/market/index_ctry.do?region=13102">헝가리</a>
                            </div>
                            <div class="c_right">


	
<a href="<%= contextPath %>/market/index_city.do?region=131021001">부다페스트</a>
                               

                            </div>
                        </li>

		 <li>
                            <div class="c_left">
                                <a href="<%= contextPath %>/market/index_ctry.do?region=13106">크로아티아</a>
                            </div>
                            <div class="c_right">


	
<a href="<%= contextPath %>/market/index_city.do?region=131061001">두브로브니크</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=131061002">스플리트</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=131061008">자그레브</a>

		<a href="<%= contextPath %>/market/index_city.do?region=131061009">플리트비체</a>

		<a href="<%= contextPath %>/market/index_city.do?region=131061028">라스토케</a>

		<a href="<%= contextPath %>/market/index_city.do?region=131141002">모스타르</a>

		<a href="<%= contextPath %>/market/index_city.do?region=131221002">코토르 지역의 자연 및 역사문화 유적지</a>
                               

                            </div>
                        </li>

                    </ul>
                    <ul class="contArea tab4 d-n">
   

		 <li>
                            <div class="c_left">
                                <a href="<%= contextPath %>/market/index_ctry.do?region=14107">아이슬란드</a>
                            </div>
                            <div class="c_right">


	
<a href="<%= contextPath %>/market/index_city.do?region=141071003">레이캬비크</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=141071022">굴포스</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=141071019">스카프타펠</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=141071044">요쿨살론</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=141071010">후사비크</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=141071001">아퀴레이리</a>

		<a href="<%= contextPath %>/market/index_city.do?region=141071027">블루라군</a>

		<a href="<%= contextPath %>/market/index_city.do?region=141071020">싱벨리르 국립공원</a>

		<a href="<%= contextPath %>/market/index_city.do?region=141071021">게이시르</a>

		<a href="<%= contextPath %>/market/index_city.do?region=141071033">셀라란즈포스</a>

		<a href="<%= contextPath %>/market/index_city.do?region=141071042">스코가포스</a>

		<a href="<%= contextPath %>/market/index_city.do?region=141071005">비크</a>

		<a href="<%= contextPath %>/market/index_city.do?region=141071043">바트나요쿨</a>

		<a href="<%= contextPath %>/market/index_city.do?region=141071026">데티포스</a>

		<a href="<%= contextPath %>/market/index_city.do?region=141071024">고다포스</a>

		<a href="<%= contextPath %>/market/index_city.do?region=141071037">스나이펠스요쿨 국립공원</a>
                               

                            </div>
                        </li>

		 <li>
                            <div class="c_left">
                                <a href="<%= contextPath %>/market/index_ctry.do?region=14104">노르웨이</a>
                            </div>
                            <div class="c_right">


	
<a href="<%= contextPath %>/market/index_city.do?region=141041002">오슬로</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=141041002">오슬로</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=141041011">뤼세 피오르드</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=141041011">스타방에르</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=141041012">트롬쇠</a>

		<a href="<%= contextPath %>/market/index_city.do?region=141041071">프레이케스톨렌</a>

		<a href="<%= contextPath %>/market/index_city.do?region=141041125">쉐락볼튼</a>
                               

                            </div>
                        </li>

		 <li>
                            <div class="c_left">
                                <a href="<%= contextPath %>/market/index_ctry.do?region=14103">덴마크</a>
                            </div>
                            <div class="c_right">


	
<a href="<%= contextPath %>/market/index_city.do?region=141031001">코펜하겐</a>
                               

                            </div>
                        </li>

		 <li>
                            <div class="c_left">
                                <a href="<%= contextPath %>/market/index_ctry.do?region=14102">핀란드</a>
                            </div>
                            <div class="c_right">


	
<a href="<%= contextPath %>/market/index_city.do?region=141021001">헬싱키</a>
                               

                            </div>
                        </li>

		 <li>
                            <div class="c_left">
                                <a href="<%= contextPath %>/market/index_ctry.do?region=14105">스웨덴</a>
                            </div>
                            <div class="c_right">


	
<a href="<%= contextPath %>/market/index_city.do?region=141051001">스톡홀름</a>
                               

                            </div>
                        </li>

		 <li>
                            <div class="c_left">
                                <a href="<%= contextPath %>/market/index_ctry.do?region=14101">러시아</a>
                            </div>
                            <div class="c_right">


	
<a href="<%= contextPath %>/market/index_city.do?region=141011001">모스크바</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=141011002">상트페테르부르크</a>
	
<a href="<%= contextPath %>/market/index_city.do?region=141011008">블라디보스톡</a>
                               

                            </div>
                        </li>

		 <li>
                            <div class="c_left">
                                <a href="<%= contextPath %>/market/index_ctry.do?region=14106">에스토니아</a>
                            </div>
                            <div class="c_right">


	
<a href="<%= contextPath %>/market/index_city.do?region=141061001">탈린</a>
                               

                            </div>
                        </li>

                    </ul>
                </div>
            </div>
        </section>



        <section class="stu_top_banner">
            <div class="swiper-container swiper-top_banner">
<!--                 <ul class="swiper-wrapper"> -->

                    <li class="swiper-slide">
                        <a href="#">
                            <div class="stu_bg" style="background-image:url(<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/square.jpg);">
                                <div class="stu_tone"></div>
                                <div class="stu_inner_wrap">
                                    <div class="titArea" style="text-shadows:3px 4px 5px #000;">
                                      
                                        <b class="title" style="color:yellow"><h1>유럽여행 만남의 공간</h1></b>
                                        <p >자신만의 여행정보를 공유하세요!</p>

                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
<%-- 
<!--
                    <li class="swiper-slide">
                        <a href="<%= contextPath %>/market/index_ctry.do?region=14107">
                            <div class="stu_bg" style="background-image:url(<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1557200068405fXpJZvHbLv.jpg);">
                                <div class="stu_tone"></div>
                                <div class="stu_inner_wrap">
                                    <div class="titArea">
                                        <b class="type" style="color:#ffec95;">한여름의 아이슬란드</b>
                                        <b class="title">13만원 할인 쿠폰</b>
                                        <p>현지 NO.1 업체들과의 직거래!</p>
			 <span>할인상품들 보기<i></i></span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
-->
<!-- 
                    <li class="swiper-slide">
                        <a href="<%= contextPath %>/market/index_ctry.do?region=13106">
                            <div class="stu_bg" style="background-image:url(<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1557200073282p7xDARFqSW.jpg);">
                                <div class="stu_tone"></div>
                                <div class="stu_inner_wrap">
                                    <div class="titArea">
                                        <b class="type" style="color:#ffec95;">크로아티아의 재발견</b>
                                        <b class="title"> 얼리버드 SALE중</b>
                                        <p>현지 NO.1 업체들과의 직거래!</p>
			 <span>할인상품들 보기<i></i></span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
 -->                    
                    
<!---
                    <li class="swiper-slide">
                        <a href="/coupon/winter_coupon.asp">
                            <div class="stu_bg" style="background-image:url(<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1548143509681qeUESXqBuF.jpg);">
                                <div class="stu_tone"></div>
                                <div class="stu_inner_wrap">
                                    <div class="titArea">
                                        <b class="type" style="color:#ffec95;">COUPON</b>
                                        <b class="title">놓치지 말아야 할<br/>유럽 5대 필수투어 쿠폰</b>
                                        <p>100,000원 할인쿠폰!</p>
                                        <span>쿠폰받기<i></i></span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="swiper-slide">
                        <a href="/event_1/event_1plus1.asp">
                            <div class="stu_bg" style="background-image:url(<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1548143514207g7GoOyuFIS.jpg);">
                                <div class="stu_tone"></div>
                                <div class="stu_inner_wrap">
                                    <div class="titArea">
                                        <b class="type">EVENT</b>
                                        <b class="title" style="color:#4a4a4a;">하나 사면 하나 더!<br/>1+1 할인상품</b>
                                        <p style="color:#4a4a4a;">하나만 사도 핵이득!</p>
                                        <span>자세히 보기<i></i></span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
--->
 --%>
<!--                 </ul> -->
            </div>
<!---
            <div class="swiper-pagination top_banner-pagination"></div>
            <div class="swiper-button-prev top_banner-button-prev"></div>
            <div class="swiper-button-next top_banner-button-next"></div>
-->


           <div class="stu_square_search" style=" position:absolute; bottom:0; left:50%; transform:translate(-50%, 50%); max-width:900px; width:calc(100% - 80px);">
                <input href="#" class="search_input" placeholder="제목, 내용, 작성자로 검색">
            </div>
        </section>
<!--         
        <section class="stu_svc_icon">
            <div class="stu_inner_wrap">
                <ul class="stu_clearfix">
                    <li>
                        <div class="imgWrap">
                            <i class="ico_svc1"></i>
                        </div>
                        <div class="txtWrap">
                            <b>간편예약</b>
                            <p>회원가입없이도 간편하게 예약!</p>
                        </div>
                    </li>
                    <li>
                        <div class="imgWrap">
                            <i class="ico_svc2"></i>
                        </div>
                        <div class="txtWrap">
                            <b>유럽 현지 1,700여개 상품</b>
                            <p>얼리버드 할인 최대 30%</p>
                        </div>
                    </li>
                    <li>
                        <div class="imgWrap">
                            <i class="ico_svc3"></i>
                        </div>
                        <div class="txtWrap">
                            <b>오전 / 오후 / 저녁 / 1DAY</b>
                            <p>원하는 시간에 맞는 투어를 손쉽게 검색</p>
                        </div>
                    </li>
                </ul>
            </div>
        </section>
 -->

<section></section>


       <section class="stu_regions">
                <div class="stu_inner_wrap" style="">

<!--        <li class="swiper-slide"> -->
               <h2 style="font-size:18pt;font-weight:700;color:#696969">
                  	  인기있는 플래너
               <a class="plus" href="/stubbyPlanner/square/index.do" style="float: right; margin: 15px; ">
                  +더 보기
               </a>
               </h2>
<!--        </li> -->

                

                    <div id="tab-1" class="stu_tab-content current">
                        <div class="swiper-container swiper3">
                            <ul class="swiper-wrapper">





                                <li class="swiper-slide">
                                	<!-- 경로 & 파라미터 변경 필요 -->
                                    <a href="http://www.stubbyplanner.com/planner/planner_rt.do?tripgene=111031001:3:X:0,111011004:3:0:0,111041006:1:5:0,111041003:1:1:0,111041004:3:1:0">
                                        <img class="fw" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/636c475c3ce6932a35fadb740f63bf74_l.jpg">
                                        <div class="tone-down"></div>
                                        <div class="stu_titleArea">
                                            <p>서유럽 단기</p>
                                            <p class="type2">12~15일</p>
                                        </div>
                                    </a>
                                </li>


                                <li class="swiper-slide">
                                  <!-- 경로 & 파라미터 변경 필요 -->
                                  <a href="http://www.stubbyplanner.com/planner/planner_rt.do?tripgene=131011001:2:X:0,131011003:1:2:0,131041002:0:0:0,131041032:1:1:0,131041001:1:1:0,131021001:1:1:0">
                                        <img class="fw" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/467ff806c2e8d1d75abfe661f238595b_l.jpg">
                                        <div class="tone-down"></div>
                                        <div class="stu_titleArea">
                                            <p>동유럽 단기</p>
                                            <p class="type2">7~10일</p>
                                        </div>
                                    </a>
                                </li>

                                <li class="swiper-slide">
                                 <!-- 경로 & 파라미터 변경 필요 -->
								 <a href="http://www.stubbyplanner.com/planner/planner_rt.do?tripgene=121011002:3:X:0,121011001:1:1:0,121011048:0:2:0,121011005:1:2:0,121011057:1:2:0,121011007:1:0:0,121021001:2:0:0,121021041:1:0:0,121011003:1:0:0,121011004:0:2:0,121011008:0:0:0,121011003:3:0:0">
                                        <img class="fw" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/41f99a5e1fef95c038f585bc77f827e5_l.jpg">
                                        <div class="tone-down"></div>
                                        <div class="stu_titleArea">
                                            <p>스페인+포르투갈</p>
                                            <p class="type2">15~20일</p>
                                        </div>
                                    </a>
                                </li>

                                <li class="swiper-slide">
                                 <!-- 경로 & 파라미터 변경 필요 -->
								 <a href="http://www.stubbyplanner.com/planner/planner_rt.do?tripgene=121041001:3:X:0,121041035:1:0:0,121041006:1:0:0,121041003:2:0:0,121041030:1:0:0,121041004:1:0:0,121031002:2:0:0,121031001:2:0:0,121041001:1:5:0">
                                        <img class="fw" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/684a6760ae74e6e614c6b24f7b4d2337_l.jpg">
                                        <div class="tone-down"></div>
                                        <div class="stu_titleArea">
                                            <p>터키+그리스</p>
                                            <p class="type2">15~20일</p>
                                        </div>
                                    </a>
                                </li>


                                <li class="swiper-slide">
                                	<!-- 경로 & 파라미터 변경 필요 -->
                                    <a href="http://www.stubbyplanner.com/planner/planner_rt.do?tripgene=111031001:3:X,121011003:2:X,121011004:0:X,121011003:1:X,121011002:3:X,111041004:3:X,111041003:1:X,111041006:1:X,111061005:1:X,131041002:1:X,131041032:1:X,131041001:2:X,131021001:1:X,131011001:3:X,111061006:1:X,111011004:4:X">
                                        <img class="fw" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/5bf452c02b7c792e6cbda09451d2f523_l.jpg">
                                        <div class="tone-down"></div>
                                        <div class="stu_titleArea">
                                            <p>유럽일주</p>
                                            <p class="type2">30일</p>
                                        </div>
                                    </a>
                                </li>

                            </ul>
                        </div>
                        <!--Navigation buttons-->

                    </div>
	</div>
            </section>

<%-- 
<!-- 
        <section class="stu_swiper-section select_city">
            <div class="stu_inner_wrap">
                <div class="titArea">
                    <h3 class="stu_title">인기 플래너</h3>
                </div>
                <div class="swiper-container swiper-items">
                    <ul class="swiper-wrapper">



                        <li class="swiper-slide" >


                            <div class="prd_item">
                               <a href="<%= contextPath %>/market/index_city.do?region=111011004">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/8dd49e94be2f1f20057849442b8f5dbf_l.jpg" alt="파리"/>
                                    </div>
                                    <div class="textArea">
                                        <p>파리</p>
			<span>프랑스</span>
                                    </div>
                                </a>
                            </div>



                        </li>


                        <li class="swiper-slide" >


                            <div class="prd_item">
                               <a href="<%= contextPath %>/market/index_city.do?region=111031001">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/e0c6526ddbece5b5df458b3edf6eb60d_l.jpg" alt="런던"/>
                                    </div>
                                    <div class="textArea">
                                        <p>런던</p>
			<span>영국</span>
                                    </div>
                                </a>
                            </div>



                        </li>


                        <li class="swiper-slide" >


                            <div class="prd_item">
                               <a href="<%= contextPath %>/market/index_city.do?region=111021002">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/9331fa26a6d4d1ba7e62333d8bd95a86_l.jpg" alt="인터라켄"/>
                                    </div>
                                    <div class="textArea">
                                        <p>인터라켄</p>
			<span>스위스</span>
                                    </div>
                                </a>
                            </div>



                        </li>


                        <li class="swiper-slide" >


                            <div class="prd_item">
                               <a href="<%= contextPath %>/market/index_city.do?region=111041004">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/09049d95b76b6e3c32e9f1c1de218db6_l.jpg" alt="로마"/>
                                    </div>
                                    <div class="textArea">
                                        <p>로마</p>
			<span>이탈리아</span>
                                    </div>
                                </a>
                            </div>



                        </li>


                        <li class="swiper-slide" >


                            <div class="prd_item">
                               <a href="<%= contextPath %>/market/index_city.do?region=131041001">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/fcc6e80ef56cf742c1f73b39aca09f7e_l.jpg" alt="비엔나"/>
                                    </div>
                                    <div class="textArea">
                                        <p>비엔나</p>
			<span>오스트리아</span>
                                    </div>
                                </a>
                            </div>



                        </li>


                        <li class="swiper-slide" >


                            <div class="prd_item">
                               <a href="<%= contextPath %>/market/index_city.do?region=111041006">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/e96de2bbbaa6efa080ce695b5947d65b_l.jpg" alt="베니스"/>
                                    </div>
                                    <div class="textArea">
                                        <p>베니스</p>
			<span>이탈리아</span>
                                    </div>
                                </a>
                            </div>



                        </li>


                        <li class="swiper-slide" >


                            <div class="prd_item">
                               <a href="<%= contextPath %>/market/index_city.do?region=111041003">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/4d6a32cb00d88ef3e96657ef69645dbc_l.jpg" alt="피렌체"/>
                                    </div>
                                    <div class="textArea">
                                        <p>피렌체</p>
			<span>이탈리아</span>
                                    </div>
                                </a>
                            </div>



                        </li>


                        <li class="swiper-slide" >


                            <div class="prd_item">
                               <a href="<%= contextPath %>/market/index_city.do?region=111061005">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/86c9a566d17bda4856df9f1968e4e785_l.jpg" alt="뮌헨"/>
                                    </div>
                                    <div class="textArea">
                                        <p>뮌헨</p>
			<span>독일</span>
                                    </div>
                                </a>
                            </div>



                        </li>


                        <li class="swiper-slide" >


                            <div class="prd_item">
                               <a href="<%= contextPath %>/market/index_city.do?region=121041001">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/3c7cc46847c4aa0dc11df83d3ac6702d_l.jpg" alt="이스탄불"/>
                                    </div>
                                    <div class="textArea">
                                        <p>이스탄불</p>
			<span>터키</span>
                                    </div>
                                </a>
                            </div>



                        </li>

	</ul>
	</div>
	</div>
	</section>

 -->
 --%>



       <section class="stu_swiper-section stu_recent-offer">
            <div class="stu_inner_wrap">
                <div class="titArea" style="display: inline-block">
                    <h3 class="stu_title" style="position:relative;">추천 게시글 </h3>
                </div>
                <div style="display: inline-block" style="font-size:10pt;color:#696969;" ><a href="/stubbyPlanner/square/index.do"><b> 일반 .</b></a></div>
                <div style="display: inline-block" style="font-size:10pt;color:#696969;" ><a href="/stubbyPlanner/square/index.do"><b> 질문 .</b></a></div>
                <div style="display: inline-block" style="font-size:10pt;color:#696969;" ><a href="/stubbyPlanner/square/index.do"><b> 여행정보 	</b></a></div>
                
   				<a class="plus" href="/stubbyPlanner/square/index.do" style="float: right; margin: 15px; "><b>+더 보기</b></a>


                <div class="swiper-container swiper-items">
                    <ul class="swiper-wrapper">

					<figcaption class="prd_info">
						<div class="common" style="display: inline-block;">
							<td><span>프로필사진</span></td>
							<span>아이디</span>
							<span>제목</span>
							<span>추천수</span>
							<span>댓글</span>
							<span>날짜</span>
							
						<c:forEach var="i" begin="0" end="2" step="1">
							<c:out value="${boardList[i].member_id}"/>
						</c:forEach>
							<span>${boardList[i].post_seq}</span>
							
							<%
								
							
							%>
							
							
						</div>
					</figcaption>

                    </div>
                </div>

                    </ul>
                </div>
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>
            </div>
        </section>


<!--  -->


       <section class="stu_swiper-section stu_recent-offer">
            <div class="stu_inner_wrap">
                <div class="titArea" style="display: inline-block">
                    <h3 class="stu_title" style="position:relative;">최근 동행 찾기</h3>
                </div>
             
   				<a class="plus" href="/stubbyPlanner/square/index.do" style="float: right; margin: 15px; "><b>+더 보기</b></a>


                <div class="swiper-container swiper-items">
                    <ul class="swiper-wrapper">

				<figcaption class="prd_info">
						<div class="common" style="display: inline-block;">
							<td><span>프로필사진</span></td>
							<span>아이디</span>
							<span>내용</span>
							
						<c:forEach var="i" begin="0" end="2" step="1">
							<c:out value="${partyList[i].member_id}"/>
							<span><c:out value="${partyList[i].party_seqno}"/></span>
						</c:forEach>
							
						</div>
					</figcaption>

                    </div>
                </div>

                    </ul>
                </div>
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>
            </div>
        </section>





       <section class="stu_swiper-section stu_recent-offer">
            <div class="stu_inner_wrap">
                <div class="titArea">
                    <h3 class="stu_title">최근 살펴본 여행</h3>
                </div>


                <div class="swiper-container stu_tagArea">
                    <ul class="swiper-wrapper">

                        <li class="swiper-slide">
                            <a href="<%= contextPath %>/market/group.do?needlogin=&serial=27" class="stu_tag ico_theme">
                                <i></i>이탈리아 남부투어
                            </a>
                        </li>

                        <li class="swiper-slide">
                            <a href="<%= contextPath %>/market/index_ctry.do?needlogin=&region=11104"  class="stu_tag ico_country">
                                <i></i>이탈리아
                            </a>
                        </li>

                        <li class="swiper-slide">
                            <a href="<%= contextPath %>/market/group.do?needlogin=&serial=1" class="stu_tag ico_theme">
                                <i></i>몽생미셀 베스트
                            </a>
                        </li>

                        <li class="swiper-slide">
                            <a href="<%= contextPath %>/market/index_ctry.do?needlogin=&region=11101"  class="stu_tag ico_country">
                                <i></i>프랑스
                            </a>
                        </li>

                        <li class="swiper-slide">
                            <a href="<%= contextPath %>/market/group.do?needlogin=&serial=2" class="stu_tag ico_theme">
                                <i></i>지베르니+근교
                            </a>
                        </li>

                        <li class="swiper-slide">
                            <a href="<%= contextPath %>/market/group.do?needlogin=&serial=26" class="stu_tag ico_theme">
                                <i></i>바티칸 지식가이드
                            </a>
                        </li>

                        <li class="swiper-slide">
                            <a href="<%= contextPath %>/market/group.do?needlogin=&serial=13" class="stu_tag ico_theme">
                                <i></i>스위스 패러글라이딩
                            </a>
                        </li>

                        <li class="swiper-slide">
                            <a href="<%= contextPath %>/market/index_ctry.do?needlogin=&region=11102"  class="stu_tag ico_country">
                                <i></i>스위스
                            </a>
                        </li>

                        <li class="swiper-slide">
                            <a href="<%= contextPath %>/market/group.do?needlogin=&serial=121" class="stu_tag ico_theme">
                                <i></i>파리시내투어
                            </a>
                        </li>
</ul>
</div>


                    </ul>
                </div>
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>
            </div>
        </section>






        <section class="stu_swiper-section select_country">
            <div class="stu_inner_wrap">
                <div class="titArea">
                    <h3 class="stu_title">인기있는 여행지</h3>
                </div>
                <div class="swiper-container swiper-items">
                    <ul class="swiper-wrapper">
                        <li class="swiper-slide">
                            <div class="prd_item">
                                <a href="<%= contextPath %>/market/index_ctry.do?region=11101">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1547711396227KVaHVLHgqA.jpg" alt="파리"/>
                                    </div>
                                    <div class="textArea">
                                        <p>프랑스</p>
                                    </div>
                                </a>
                            </div>

                            <div class="prd_item">
                               <a href="<%= contextPath %>/market/index_ctry.do?region=11103">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1547711394003kyZnHCTTgW.jpg" alt="런던"/>
                                    </div>
                                    <div class="textArea">
                                        <p>영국</p>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class="swiper-slide">


                            <div class="prd_item">
                               <a href="<%= contextPath %>/market/index_ctry.do?region=13">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1547712192807iavhsdQHbY.jpg" alt="부다페스트"/>
                                    </div>
                                    <div class="textArea">
                                        <p>동유럽</p>
                                    </div>
                                </a>
                            </div>


                            <div class="prd_item">
                                <a href="<%= contextPath %>/market/index_city.do?region=131011001">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/15477129210620EHSn2EP9u.jpg" alt="프라하"/>
                                    </div>
                                    <div class="textArea">
                                        <p>프라하</p>
                                    </div>
                                </a>
                            </div>

                        </li>
<%--
                        <li class="swiper-slide">

                            <div class="prd_item">
                                <a href="<%= contextPath %>/market/index_ctry.do?region=12101">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/6b51958bb4de78afde6d03d68dfc51f4_l.jpg" alt="마드리드"/>
                                    </div>
                                    <div class="textArea">
                                        <p>스페인</p>
                                    </div>
                                </a>
                            </div>
                            <div class="prd_item">
                               <a href="<%= contextPath %>/market/index_city.do?region=121011002">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1547712729838QR4NG8pyvP.jpg" alt="바르셀로나"/>
                                    </div>
                                    <div class="textArea">
                                        <p>바르셀로나</p>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class="swiper-slide">

                            <div class="prd_item">
                                <a href="<%= contextPath %>/market/index_ctry.do?region=11104">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1547712194992cXku5x0vSs.jpg" alt="피렌체"/>
                                    </div>
                                    <div class="textArea">
                                        <p>이탈리아</p>
                                    </div>
                                </a>
                            </div>
                            <div class="prd_item">
                                <a href="<%= contextPath %>/market/index_city.do?region=111041004">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1547711568395fzvO9go2Ea.jpg" alt="로마"/>
                                    </div>
                                    <div class="textArea">
                                        <p>로마</p>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class="swiper-slide">

                            <div class="prd_item">
                                <a href="<%= contextPath %>/market/index_ctry.do?region=11102">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/stuweb.s3.amazonaws.com/photo/1/2/862614206fb887d468abbbda3a32eca2_l.jpg" alt="베니스"/>
                                    </div>
                                    <div class="textArea">
                                        <p>스위스</p>
                                    </div>
                                </a>
                            </div>
                            <div class="prd_item">
                                <a href="<%= contextPath %>/market/index_city.do?region=111021002">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1547711570331UNm3biNX0n.jpg" alt="인터라켄"/>
                                    </div>
                                    <div class="textArea">
                                        <p>인터라켄</p>
                                    </div>
                                </a>
                            </div>
                        </li>

 

                        <li class="swiper-slide">
                            <div class="prd_item">
                              <a href="<%= contextPath %>/market/index_ctry.do?region=14107">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/d51565d8b6450b2ec2f9b48da840512e_l.jpg" alt="아이슬란드"/>
                                    </div>
                                    <div class="textArea">
                                        <p>아이슬란드</p>
                                    </div>
                                </a>
                            </div>
                            <div class="prd_item">
                                <a href="<%= contextPath %>/market/index_ctry.do?region=12102">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/52a8e300b561ea9e3285081e313b3114_l.jpg" alt="포르투갈"/>
                                    </div>
                                    <div class="textArea">
                                        <p>포르투갈</p>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class="swiper-slide">
                            <div class="prd_item">
                                <a href="<%= contextPath %>/market/index_ctry.do?region=13106">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/25e90fc4c14370a15c3d5c6a14548100_l.jpg" alt="크로아티아"/>
                                    </div>
                                    <div class="textArea">
                                        <p>크로아티아</p>
                                    </div>
                                </a>
                            </div>
                            <div class="prd_item">
                               <a href="<%= contextPath %>/market/index_ctry.do?region=12103">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/0f4865e165dbd8a7c636549a79f7f678_l.jpg" alt="그리스"/>
                                    </div>
                                    <div class="textArea">
                                        <p>그리스</p>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class="swiper-slide">
                            <div class="prd_item">
                                <a href="<%= contextPath %>/market/index_ctry.do?region=12104">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/040c3d8e7e555abd88b9e2149136810d_l.jpg" alt="터키"/>
                                    </div>
                                    <div class="textArea">
                                        <p>터키</p>
                                    </div>
                                </a>
                            </div>
                            <div class="prd_item">
                                <a href="<%= contextPath %>/market/index_ctry.do?region=12107">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/272437f2c451e5ee27a2aa9b67926dae_l.jpg" alt="몰타"/>
                                    </div>
                                    <div class="textArea">
                                        <p>몰타</p>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class="swiper-slide">
                            <div class="prd_item">
                                <a href="<%= contextPath %>/market/index_ctry.do?region=14104">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/7c6c48bd799b9677ccd85b4b91f1d840_l.jpg" alt="노르웨이"/>
                                    </div>
                                    <div class="textArea">
                                        <p>노르웨이</p>
                                    </div>
                                </a>
                            </div>
                            <div class="prd_item">
                                <a href="<%= contextPath %>/market/index_ctry.do?region=14101">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/ac5674541ecd30fbbcd6f025c3e0df6d_l.jpg" alt="러시아"/>
                                    </div>
                                    <div class="textArea">
                                        <p>러시아</p>
                                    </div>
                                </a>
                            </div> --%>
                        </li>
                    </ul>
                    <div class="swiper-scrollbar"></div>
                </div>

                <div class="btnWrap">
                    <a><i></i>전체 여행지</a>
                </div>
            </div>
        </section>
<%-- 
<!--

        <section class="stu_swiper-section select_theme">
            <div class="stu_inner_wrap">
                <div class="titArea">
                    <h3 class="stu_title">테마가 있는 여행</h3>
                    <p>꿈꾸던 도시에서 특별한 하루를 만들어보세요.</p>
                </div>
                <div class="swiper-container swiper-items">
                    <ul class="swiper-wrapper">
                        <li class="swiper-slide">
                            <div class="prd_item">
                                <a href="#">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/15480491921925GH329Hge1.jpg" alt="스냅촬영"/>
                                    </div>
                                    <div class="textArea">
                                        <p>#스냅촬영</p>
                                        <span>000개 상품</span>
                                    </div>
                                </a>
                            </div>
                            <div class="prd_item">
                                <a href="#">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1548058378595YacrjMRwr6.jpg" alt="공연관람"/>
                                    </div>
                                    <div class="textArea">
                                        <p>#공연관람</p>
                                        <span>000개 상품</span>
                                    </div>
                                </a>
                            </div>
                            <div class="prd_item">
                                <a href="#">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1548050473923zcJKrO1t6K.jpg" alt="야경투어"/>
                                    </div>
                                    <div class="textArea">
                                        <p>#야경투어</p>
                                        <span>000개 상품</span>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class="swiper-slide">
                            <div class="prd_item">
                                <a href="#">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1548060937617OyB6OUp1CL.jpg" alt="미술관·박물관"/>
                                    </div>
                                    <div class="textArea">
                                        <p>#미술관·박물관</p>
                                        <span>000개 상품</span>
                                    </div>
                                </a>
                            </div>
                            <div class="prd_item">
                                <a href="#">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1548058535019DFl2nVEiKh.jpg" alt="로컬푸드"/>
                                    </div>
                                    <div class="textArea">
                                        <p>#로컬푸드</p>
                                        <span>000개 상품</span>
                                    </div>
                                </a>
                            </div>
                            <div class="prd_item">
                                <a href="#">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1548061444407FLMeKv7LNm.jpg" alt="워킹투어"/>
                                    </div>
                                    <div class="textArea">
                                        <p>#워킹투어</p>
                                        <span>000개 상품</span>
                                    </div>
                                </a>
                            </div>
                        </li>
                    </ul>
                    <div class="swiper-scrollbar"></div>
                </div>
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>
                <div class="btnWrap">
                    <a><i></i>전체 테마</a>
                </div>
            </div>
        </section>
--->
 --%>

    </main>


<jsp:include page="/WEB-INF/layout/advertisement.jsp"></jsp:include>

<jsp:include page="/WEB-INF/layout/footer_large.jsp"></jsp:include>

	</div>





<!-- JS Global Compulsory -->

<script src="<%= contextPath %>/externalData/superguide/One-Pages/assets/plugins/jquery/jquery.min.js"></script>
<script src="<%= contextPath %>/externalData/superguide/One-Pages/assets/plugins/jquery/jquery-migrate.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


<script src="<%= contextPath %>/externalData/market/js/lazysizes.min.js" type="text/javascript" async=""></script>
<script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>

<!-- JS Implementing Plugins -->
<script src="<%= contextPath %>/externalData/superguide/One-Pages/assets/plugins/smoothScroll.js"></script>
<script src="<%= contextPath %>/externalData/superguide/One-Pages/assets/plugins/jquery.easing.min.js"></script>


	 
       <section class="stu_md_search">
            <div class="search_background"></div>
            <div class="md-container">
                <div class="md-header">
                    <a href="#stu_md-close" class="ico_close"></a>
                    <div class="md-searchWrap">
                            <fieldset>
                                <input type="search" name="search_keyword" autocorrect="off" autosave="off" class="md-search-input" placeholder="도시,국가,키워드로 검색" value>
                            </fieldset>
                     
                    </div>
                </div>
                    </div>
                </div>
                </section>



<!-- JS Page Level -->
<script src="<%= contextPath %>/externalData/superguide/One-Pages/assets/js/one.app.js"></script>


<script>
$(document).ready(function() {
    // 이미지 스와이핑


	$('.stu_main_search').click(function() {
		$('body').addClass('modal-opened');
		$('.stu_md_search').addClass('active');

		if($('.header_banner').length > 0) {
			$('.md-container').removeClass('pos-top1');
			$('.md-container').addClass('pos-top2');
		} else {
			$('.md-container').removeClass('pos-top2');
			$('.md-container').addClass('pos-top1');
		};
		$('.md-searchWrap input.md-search-input').focus();
	});



    var topBanner = new Swiper ('.swiper-top_banner', {
        slidesPerView:'auto',
        speed:1000,
        loop:true,
        autoplay: {
            delay: 4000,
            disableOnInteraction: false,
        },
        pagination: {
            el: '.top_banner-pagination',
            clickable:true,
        },
        navigation: {
            nextEl: '.top_banner-button-next',
            prevEl: '.top_banner-button-prev',
        },
    });

    var recentOffer = new Swiper ('.swiper-recent_offer', {
        slidesPerView:'auto',
        navigation: {
            nextEl: '.recent_offer-button-next',
            prevEl: '.recent_offer-button-prev',
        },
    });
    var tagArea = new Swiper ('.stu_tagArea', {
        slidesPerView:'auto',
        freeMode:true,
        direction:'horizontal',
    });
    $('.swiper-items').each(function() {
        new Swiper($(this), {
            slidesPerView:'auto',
            freeMode:false,
            direction:'horizontal',
            scrollbar: {
                el:$(this).children('.swiper-scrollbar'),
                hide:true,
            },
            navigation: {
                nextEl: $(this).siblings('.swiper-button-next'),
                prevEl: $(this).siblings('.swiper-button-prev'),
            },
            breakpoints: {
                619: {
                    freeMode:true,
                }
            }
        });
    });
});
</script>

</body>
</html>