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
  background-image: none;
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

.prd_info {
	width: 70%;
}
/* 
thead {
background-image:url(http://d3b39vpyptsv01.cloudfront.net/0/0/1548062231191VwAkOaUebn.png); background-repeat:no-repeat; vertical-align:middle; 
}
 */
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
</style>


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
                        <a id="squareDetail" href="<%= contextPath %>/square/squareDetail.do">
                            <div class="stu_bg" style="background-image:url(<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/square.jpg);">
                                <div class="stu_tone"></div>
                                <div class="stu_inner_wrap">
                                    <div class="titArea" style="text-shadows:3px 4px 5px #000;">
                                      
                                        <b class="title" style="color:yellow"><h1>유럽여행 소통의 공간</h1></b>
                                        <p >자신만의 여행정보를 공유하세요!</p>

                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>

<!--                 </ul> -->
            </div>
<!---
            <div class="swiper-pagination top_banner-pagination"></div>
            <div class="swiper-button-prev top_banner-button-prev"></div>
            <div class="swiper-button-next top_banner-button-next"></div>
-->


<!--            <div class="stu_square_search" style=" position:absolute; bottom:0; left:50%; transform:translate(-50%, 50%); max-width:900px; width:calc(100% - 80px);"> -->
<!--                 <input href="#" class="search_input" placeholder="제목, 내용, 작성자로 검색"> -->
<!--             </div> -->
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
               <h2 style="font-size:18pt;font-weight:700;">
                  	  인기있는 플래너
               <a id="plannerDetail" class="plus" href="<%= contextPath %>/square/squareDetail.do" style="float: right; margin: 15px; ">
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



       <section class="stu_swiper-section stu_recent-offer">
            <div class="stu_inner_wrap">
                <div class="titArea" style="display: inline-block">
                    <h3 class="stu_title" style="position:relative;">인기 게시글 </h3>
                </div>
<!--                 <div style="display: inline-block" style="font-size:10pt;color:#696969;" ><a href="/stubbyPlanner/square/index.do"><b> 일반 .</b></a></div> -->
                <div style="display: inline-block" style="font-size:10pt;color:#696969;" ><a href="javascript:getCommon(1)"><b> 일반 .</b></a></div>
                <div style="display: inline-block" style="font-size:10pt;color:#696969;" ><a href="javascript:getQuestion(2)"><b> 질문 .</b></a></div>
                <div style="display: inline-block" style="font-size:10pt;color:#696969;" ><a href="javascript:getInformation(3)"><b> 여행정보 	</b></a></div>
                
   				<a id="boardDetail" class="plus" href="<%= contextPath %>/square/squareDetail.do" style="float: right; margin: 15px; "><b>+더 보기</b></a>

	
	
	
	
                <div class="swiper-container swiper-items">
                    <ul class="swiper-wrapper">

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
        <c:forEach var="boardLikeList" items="${boardLikeList}" varStatus="status">
        	<c:if test="${not boardEmpty}">
        		<c:if test="${status.last}">
        			<c:set var="boardEmpty" value="true"/>
        		</c:if>
            <tr>
                <th scope="row">${boardLikeList.post_seq}</th>
                <td>${boardLikeList.member_id}</td>
                <td class="title">${boardLikeList.post_subject}</td>
                <td>${boardLikeList.post_regdate}</td>
                <td>${boardLikeList.post_hits}</td>
                <td>${boardLikeList.post_like}</td>
            </tr>
        	</c:if>
        </c:forEach>
        </tbody>
    </table>
<!-- prev/next -->
</div>
</div>
  

                    </ul>
                </div>
                <div class="swiper-button-prev swiper-button-prev2"></div>
                <div class="swiper-button-next swiper-button-next2"></div>
            </div>
        </section>


<!--  -->




  <section class="stu_swiper-section stu_recent-offer">
            <div class="stu_inner_wrap">
                <div class="titArea" style="display: inline-block">
                    <h3 class="stu_title" style="position:relative;">최근 동행 찾기</h3>
                </div>
             

<a id="partyDetail" href="<%= contextPath %>/square/squareDetail.do" style="float: right; margin: 15px; "><b>+더 보기</b></a>



        <div class="swiper-container stu_tagArea">
                    <ul class="swiper-wrapper">


				 <c:set var="partyEmpty" value="false"/>
       			 <c:forEach var="partyList" items="${partyList}" varStatus="status">
        		 <c:if test="${not partyEmpty}">
        		 <c:if test="${status.last}">
        				<c:set var="partyEmpty" value="true"/>
        		 </c:if>      		
        		 <c:if test="${status.count==5}">
        				<c:set var="partyEmpty" value="true"/>
        		 </c:if>  
                        <li class="swiper-slide prd_item"  style="width: 20%;">
                            <a href="<%= contextPath %>/square/index.do" style="width:100%; height: 100%;">
                                <figure class="thumb">
                                        <c:if test="${!empty partyList.profile_pic }">
                                            <img class="fh" src="/stubbyPlanner/square/gallery/${partyList.profile_pic}" alt="프로필 사진"/>
                                        </c:if>
                                        <c:if test="${empty partyList.profile_pic }">
                                            <img class="fh" src="/stubbyPlanner/externalData/img_v9/img_pfnull.jpg" alt="프로필 사진"/>
                                        </c:if>
                                </figure>
                                <figcaption class="prd_info">
                                    <div class="cpn">
                                    </div>
                                    <div class="name">
                                        <span>${partyList.party_content}</span>
                                    </div>

                             		<div class="price"  style="line-height:100%;text-align:right;2px;">
                                        ${partyList.member_id}
                                    </div>
                                    
                                    <div class="score" style="display:inline-block">
                                        <span><i></i>${partyList.party_like}</span>
                                    </div>
                   			   </figcaption>
                            </a>
                        </li>
				 </c:if>
       			 </c:forEach>
                </div>





<!--                 <div class="swiper-container stu_tagArea"> -->
<!--                     <ul class="swiper-wrapper"> -->


<!--                         <li class="swiper-slide prd_item"  style="width: 20%;"> -->
<%--                             <a href="<%= contextPath %>/square/index.do"> --%>
<!--                                 <figure class="thumb"> -->
<%--                                         <c:if test="${!empty partyList[0].profile_pic }"> --%>
<%--                                             <img class="fh" src="${partyList[0].profile_pic}" alt="프로필 사진"/> --%>
<%--                                         </c:if> --%>
<%--                                         <c:if test="${empty partyList[0].profile_pic }"> --%>
<!--                                             <img class="fh" src="/stubbyPlanner/externalData/img_v9/img_pfnull.jpg" alt="프로필 사진"/> -->
<%--                                         </c:if> --%>
<!--                                 </figure> -->
                                
<!--                                 <figcaption class="prd_info"> -->
<!--                                     <div class="cpn"> -->
<!--                                     </div> -->
<!--                                     <div class="name"> -->
<%--                                         <span>${partyList[0].party_content}</span> --%>
<!--                                     </div> -->

<!--                              		<div class="price"  style="line-height:100%;text-align:right;2px;"> -->
<%--                                         ${partyList[0].member_id} --%>
<!--                                     </div> -->
                                    
<!--                                     <div class="score" style="display:inline-block"> -->
<%--                                         <span><i></i>${partyList[0].party_like}</span> --%>
<!--                                     </div> -->
<!--                    			   </figcaption> -->
<!--                             </a> -->
<!--                         </li> -->

<!--         <li class="swiper-slide prd_item" style="width: 20%;"> -->
<%--                             <a href="<%= contextPath %>/square/index.do"> --%>
<!--                                 <figure class="thumb"> -->
<%--                                         <c:if test="${!empty partyList[1].profile_pic }"> --%>
<%--                                             <img class="fh" src="${partyList[1].profile_pic}" alt="프로필 사진"/> --%>
<%--                                         </c:if> --%>
<%--                                         <c:if test="${empty partyList[1].profile_pic }"> --%>
<!--                                             <img class="fh" src="/stubbyPlanner/externalData/img_v9/img_pfnull.jpg" alt="프로필 사진"/> -->
<%--                                         </c:if> --%>
<!--                                 </figure> -->
                                
<!--                                 <figcaption class="prd_info"> -->
<!--                                     <div class="cpn"> -->
<!--                                     </div> -->
<!--                                     <div class="name"> -->
<%--                                         <span>${partyList[1].party_content}</span> --%>
<!--                                     </div> -->

<!--                              		<div class="price"  style="line-height:100%;text-align:right;2px;"> -->
<%--                                         ${partyList[1].member_id} --%>
<!--                                     </div> -->
                                    
<!--                                     <div class="score" style="display:inline-block"> -->
<%--                                         <span><i></i>${partyList[1].party_like}</span> --%>
<!--                                     </div> -->
<!--                    			   </figcaption> -->
<!--                             </a> -->
<!--                         </li> -->

<!--         <li class="swiper-slide prd_item" style="width: 20%;"> -->
<%--                             <a href="<%= contextPath %>/square/index.do"> --%>
<!--                                 <figure class="thumb"> -->
<%--                                         <c:if test="${!empty partyList[2].profile_pic }"> --%>
<%--                                             <img class="fh" src="${partyList[2].profile_pic}" alt="프로필 사진"/> --%>
<%--                                         </c:if> --%>
<%--                                         <c:if test="${empty partyList[2].profile_pic }"> --%>
<!--                                             <img class="fh" src="/stubbyPlanner/externalData/img_v9/img_pfnull.jpg" alt="프로필 사진"/> -->
<%--                                         </c:if> --%>
<!--                                 </figure> -->
                                
<!--                                 <figcaption class="prd_info"> -->
<!--                                     <div class="cpn"> -->
<!--                                     </div> -->
<!--                                     <div class="name"> -->
<%--                                         <span>${partyList[2].party_content}</span> --%>
<!--                                     </div> -->

<!--                              		<div class="price"  style="line-height:100%;text-align:right;2px;"> -->
<%--                                         ${partyList[2].member_id} --%>
<!--                                     </div> -->
                                    
<!--                                     <div class="score" style="display:inline-block"> -->
<%--                                         <span><i></i>${partyList[2].party_like}</span> --%>
<!--                                     </div> -->
<!--                    			   </figcaption> -->
<!--                             </a> -->
<!--                         </li> -->

<!--         <li class="swiper-slide prd_item" style="width: 20%;"> -->
<%--                             <a href="<%= contextPath %>/square/index.do"> --%>
<!--                                 <figure class="thumb"> -->
<%--                                         <c:if test="${!empty partyList[3].profile_pic }"> --%>
<%--                                             <img class="fh" src="${partyList[3].profile_pic}" alt="프로필 사진"/> --%>
<%--                                         </c:if> --%>
<%--                                         <c:if test="${empty partyList[3].profile_pic }"> --%>
<!--                                             <img class="fh" src="/stubbyPlanner/externalData/img_v9/img_pfnull.jpg" alt="프로필 사진"/> -->
<%--                                         </c:if> --%>
<!--                                 </figure> -->
                                
<!--                                 <figcaption class="prd_info"> -->
<!--                                     <div class="cpn"> -->
<!--                                     </div> -->
<!--                                     <div class="name"> -->
<%--                                         <span>${partyList[3].party_content}</span> --%>
<!--                                     </div> -->

<!--                              		<div class="price"  style="line-height:100%;text-align:right;2px;"> -->
<%--                                         ${partyList[3].member_id} --%>
<!--                                     </div> -->
                                    
<!--                                     <div class="score" style="display:inline-block"> -->
<%--                                         <span><i></i>${partyList[3].party_like}</span> --%>
<!--                                     </div> -->
<!--                    			   </figcaption> -->
<!--                             </a> -->
<!--                         </li> -->

<!--         <li class="swiper-slide prd_item" style="width: 20%;"> -->
<%--                             <a href="<%= contextPath %>/square/index.do"> --%>
<!--                                 <figure class="thumb"> -->
<%--                                         <c:if test="${!empty partyList[4].profile_pic }"> --%>
<%--                                             <img class="fh" src="${partyList[4].profile_pic}" alt="프로필 사진"/> --%>
<%--                                         </c:if> --%>
<%--                                         <c:if test="${empty partyList[4].profile_pic }"> --%>
<!--                                             <img class="fh" src="/stubbyPlanner/externalData/img_v9/img_pfnull.jpg" alt="프로필 사진"/> -->
<%--                                         </c:if> --%>
<!--                                 </figure> -->
                                
<!--                                 <figcaption class="prd_info"> -->
<!--                                     <div class="cpn"> -->
<!--                                     </div> -->
<!--                                     <div class="name"> -->
<%--                                         <span>${partyList[4].party_content}</span> --%>
<!--                                     </div> -->

<!--                              		<div class="price"  style="line-height:100%;text-align:right;2px;"> -->
<%--                                         ${partyList[4].member_id} --%>
<!--                                     </div> -->
                                    
<!--                                     <div class="score" style="display:inline-block"> -->
<%--                                         <span><i></i>${partyList[4].party_like}</span> --%>
<!--                                     </div> -->
<!--                    			   </figcaption> -->
<!--                             </a> -->
<!--                         </li> -->

<!--                 </div> -->
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>	
            </div>
        </section>



       <section class="stu_regions">
             <div class="stu_inner_wrap" style="padding-top: 20px;">
			<h2 style="font-size:18pt;font-weight:700;">최근 갤러리</h2><div class="swiper-container swiper3"><ul class="swiper-wrapper" style="padding: 5px;">
				
				
				 <c:set var="galleryEmpty" value="false"/>
       			 <c:forEach var="galleryList" items="${galleryList}" varStatus="status">
        		 <c:if test="${not galleryEmpty}">
        		 <c:if test="${status.last}">
        				<c:set var="galleryEmpty" value="true"/>
        		 </c:if>      		
        		 <c:if test="${status.count==5}">
        				<c:set var="galleryEmpty" value="true"/>
        		 </c:if>    	
				
				 	<li class="swiper-slide snip1384" style="width: 200px; height: 200px; margin: 8px;">
					<a href="http://www.stubbyplanner.com" style="width:100%; height:100%;">                                                  
					<img src="/stubbyPlanner/square/gallery/${galleryList.gal_pic_path}" style="width:100%; height:100%;">
					<figcaption><h2 style="color:white;">${galleryList.member_id}.</h2><p style="color:white; text-align:left;">${ galleryList.gal_subject}</p><i class="ion-ios-arrow-right"><div class="score" style="display:inline-block; color:white;"><span>${galleryList.post_like}</span></div></i></figcaption>
					</a></li>
				
				 </c:if>
       			 </c:forEach>
					
				</ul></div>
			</div></section>

				</ul>
			</div>

                    </div>
	</div>
            </section>



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
                
                   <div class="md-content">
                        <div class="md-section">
                            <div class="content-header ico_country">서유럽 국가</div>
                            <ul class="content-list">
                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=11101">
                                        <div class="value">
                                            <b class="name">프랑스</b>
                                        </div>
                                        <div class="count">
               
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=11104">
                                        <div class="value">
                                            <b class="name">이탈리아</b>
                                        </div>
                                        <div class="count">
                    
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=11102">
                                        <div class="value">
                                            <b class="name">스위스</b>
                                        </div>
                                        <div class="count">
                              
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=11103">
                                        <div class="value">
                                            <b class="name">영국</b>
                                        </div>
                                        <div class="count">
                    
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=11106">
                                        <div class="value">
                                            <b class="name">독일</b>
                                        </div>
                                        <div class="count">
                   
                                        </div>
                                    </a>
                                </li>


                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=11108">
                                        <div class="value">
                                            <b class="name">벨기에</b>
                                        </div>
                                        <div class="count">
               
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=11107">
                                        <div class="value">
                                            <b class="name">네덜란드</b>
                                        </div>
                                        <div class="count">
                              
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=11110">
                                        <div class="value">
                                            <b class="name">아일랜드</b>
                                        </div>
                                        <div class="count">
                              
                                        </div>
                                    </a>
                                </li>

                            </ul>
                        </div>
                        <div class="md-section">
                            <div class="content-header ico_country">지중해 국가</div>
                            <ul class="content-list">
                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=12101">
                                        <div class="value">
                                            <b class="name">스페인</b>
                                        </div>
                                        <div class="count">
                      
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=12102">
                                        <div class="value">
                                            <b class="name">포르투갈</b>
                                        </div>
                                        <div class="count">
                       
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=12103">
                                        <div class="value">
                                            <b class="name">그리스</b>
                                        </div>
                                        <div class="count">
                 
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=12104">

                                        <div class="value">
                                            <b class="name">터키</b>
                                        </div>
                                        <div class="count">
       
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=12107">

                                        <div class="value">
                                            <b class="name">몰타</b>
                                        </div>
                                        <div class="count">
                   
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="md-section">
                            <div class="content-header ico_country">동유럽 국가</div>
                            <ul class="content-list">
                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=13">

                                        <div class="value">
                                            <b class="name">체코</b>
                                        </div>
                                        <div class="count">
                    
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=13">
                                        <div class="value">
                                            <b class="name">헝가리</b>
                                        </div>
                                        <div class="count">
                 
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=13">
                                        <div class="value">
                                            <b class="name">오스트리아</b>
                                        </div>
                                        <div class="count">
                    
                                        </div>
                                    </a>
                                </li>


                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=13">
                                        <div class="value">
                                            <b class="name">슬로베니아</b>
                                        </div>
                                        <div class="count">

                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=13106">
                                        <div class="value">
                                            <b class="name">크로아티아</b>
                                        </div>
                                        <div class="count">
                    
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="md-section">
                            <div class="content-header ico_country">북유럽 국가</div>
                            <ul class="content-list">
                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=14107">
                                        <div class="value">
                                            <b class="name">아이슬란드</b>
                                        </div>
                                        <div class="count">
                  
                                        </div>
                                    </a>
                                </li>
	                     <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&region=14104">
                                        <div class="value">
                                            <b class="name">노르웨이</b>
                                        </div>
                                        <div class="count">
                   
                                        </div>
                                    </a>
                                </li>



                                <li class="content-item">
                                     <a href="<%= contextPath %>/market/index_ctry.do?l=&region=14103">
                                        <div class="value">
                                            <b class="name">덴마크</b>
                                        </div>
                                        <div class="count">
                
                                        </div>
                                    </a>
                                </li>


                                <li class="content-item">
                                     <a href="<%= contextPath %>/market/index_ctry.do?l=&region=14102">
                                        <div class="value">
                                            <b class="name">핀란드</b>
                                        </div>
                                        <div class="count">
                
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="<%= contextPath %>/market/index_ctry.do?l=&region=14105">
                                        <div class="value">
                                            <b class="name">스웨덴</b>
                                        </div>
                                        <div class="count">
                
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="<%= contextPath %>/market/index_ctry.do?l=&region=14101">
                                        <div class="value">
                                            <b class="name">러시아</b>
                                        </div>
                                        <div class="count">
                
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                      <a href="<%= contextPath %>/market/index_ctry.do?l=&region=14106">
                                        <div class="value">
                                            <b class="name">발트3국</b>
                                        </div>
                                        <div class="count">
 
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="md-section">
                            <div class="content-header ico_theme">도시</div>
                            <ul class="content-list">


                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111011004">
                                        <div class="value">
                                            <b class="name">파리</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111031001">
                                        <div class="value">
                                            <b class="name">런던</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121011002">
                                        <div class="value">
                                            <b class="name">바르셀로나</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=131011001">
                                        <div class="value">
                                            <b class="name">프라하</b>
                                            <i class="category">체코</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111011003">
                                        <div class="value">
                                            <b class="name">니스</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=141051001">
                                        <div class="value">
                                            <b class="name">스톡홀름</b>
                                            <i class="category">스웨덴</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121011003">
                                        <div class="value">
                                            <b class="name">마드리드</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111021002">
                                        <div class="value">
                                            <b class="name">인터라켄</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111041004">
                                        <div class="value">
                                            <b class="name">로마</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=131041001">
                                        <div class="value">
                                            <b class="name">비엔나</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=141031001">
                                        <div class="value">
                                            <b class="name">코펜하겐</b>
                                            <i class="category">덴마크</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121031001">
                                        <div class="value">
                                            <b class="name">아테네</b>
                                            <i class="category">그리스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111041006">
                                        <div class="value">
                                            <b class="name">베니스</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111041003">
                                        <div class="value">
                                            <b class="name">피렌체</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=131021001">
                                        <div class="value">
                                            <b class="name">부다페스트</b>
                                            <i class="category">헝가리</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=141021001">
                                        <div class="value">
                                            <b class="name">헬싱키</b>
                                            <i class="category">핀란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121021001">
                                        <div class="value">
                                            <b class="name">리스본</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111061006">
                                        <div class="value">
                                            <b class="name">프랑크푸르트</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111061005">
                                        <div class="value">
                                            <b class="name">뮌헨</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=131061001">
                                        <div class="value">
                                            <b class="name">두브로브니크</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121041001">
                                        <div class="value">
                                            <b class="name">이스탄불</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111011014">
                                        <div class="value">
                                            <b class="name">마르세유</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111041001">
                                        <div class="value">
                                            <b class="name">밀라노</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121041111">
                                        <div class="value">
                                            <b class="name">알라니아</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=141041002">
                                        <div class="value">
                                            <b class="name">오슬로</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111061008">
                                        <div class="value">
                                            <b class="name">베를린</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111071001">
                                        <div class="value">
                                            <b class="name">암스테르담</b>
                                            <i class="category">네덜란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=141041002">
                                        <div class="value">
                                            <b class="name">오슬로</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111081001">
                                        <div class="value">
                                            <b class="name">브뤼셀</b>
                                            <i class="category">벨기에</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111101001">
                                        <div class="value">
                                            <b class="name">더블린</b>
                                            <i class="category">아일랜드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=131081001">
                                        <div class="value">
                                            <b class="name">부쿠레슈티</b>
                                            <i class="category">루마니아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=131031004">
                                        <div class="value">
                                            <b class="name">크라쿠프</b>
                                            <i class="category">폴란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=131031003">
                                        <div class="value">
                                            <b class="name">바르샤바</b>
                                            <i class="category">폴란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=131051002">
                                        <div class="value">
                                            <b class="name">브라티슬라바</b>
                                            <i class="category">슬로바키아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111041011">
                                        <div class="value">
                                            <b class="name">나폴리</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111011005">
                                        <div class="value">
                                            <b class="name">아비뇽</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=131061011">
                                        <div class="value">
                                            <b class="name">흐바르</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111061020">
                                        <div class="value">
                                            <b class="name">뉘른베르크</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121011057">
                                        <div class="value">
                                            <b class="name">론다</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=141011008">
                                        <div class="value">
                                            <b class="name">블라디보스톡</b>
                                            <i class="category">러시아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111061004">
                                        <div class="value">
                                            <b class="name">드레스덴</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111021005">
                                        <div class="value">
                                            <b class="name">취리히</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121011028">
                                        <div class="value">
                                            <b class="name">테네리페</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121011005">
                                        <div class="value">
                                            <b class="name">말라가</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=141071001">
                                        <div class="value">
                                            <b class="name">아퀴레이리</b>
                                            <i class="category">아이슬란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=141071010">
                                        <div class="value">
                                            <b class="name">후사비크</b>
                                            <i class="category">아이슬란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=141071044">
                                        <div class="value">
                                            <b class="name">요쿨살론</b>
                                            <i class="category">아이슬란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=141071019">
                                        <div class="value">
                                            <b class="name">스카프타펠</b>
                                            <i class="category">아이슬란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=141071022">
                                        <div class="value">
                                            <b class="name">굴포스</b>
                                            <i class="category">아이슬란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=141071003">
                                        <div class="value">
                                            <b class="name">레이캬비크</b>
                                            <i class="category">아이슬란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=141061001">
                                        <div class="value">
                                            <b class="name">탈린</b>
                                            <i class="category">에스토니아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=141041012">
                                        <div class="value">
                                            <b class="name">트롬쇠</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=141041011">
                                        <div class="value">
                                            <b class="name">스타방에르</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=141041011">
                                        <div class="value">
                                            <b class="name">뤼세 피오르드</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=141011002">
                                        <div class="value">
                                            <b class="name">상트페테르부르크</b>
                                            <i class="category">러시아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=141011001">
                                        <div class="value">
                                            <b class="name">모스크바</b>
                                            <i class="category">러시아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=131061008">
                                        <div class="value">
                                            <b class="name">자그레브</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=131061002">
                                        <div class="value">
                                            <b class="name">스플리트</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=131041032">
                                        <div class="value">
                                            <b class="name">할슈타트</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=131041002">
                                        <div class="value">
                                            <b class="name">잘츠부르크</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=131011003">
                                        <div class="value">
                                            <b class="name">체스키크롬로프</b>
                                            <i class="category">체코</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121041008">
                                        <div class="value">
                                            <b class="name">보드룸</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121041028">
                                        <div class="value">
                                            <b class="name">페티예</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121041003">
                                        <div class="value">
                                            <b class="name">카파도키아</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121031021">
                                        <div class="value">
                                            <b class="name">자킨토스</b>
                                            <i class="category">그리스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121031002">
                                        <div class="value">
                                            <b class="name">산토리니</b>
                                            <i class="category">그리스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121021008">
                                        <div class="value">
                                            <b class="name">포르투</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121011007">
                                        <div class="value">
                                            <b class="name">세비야</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121011001">
                                        <div class="value">
                                            <b class="name">그라나다</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121011004">
                                        <div class="value">
                                            <b class="name">톨레도</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111061003">
                                        <div class="value">
                                            <b class="name">퓌센</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111061001">
                                        <div class="value">
                                            <b class="name">하이델베르크</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=121071009">
                                        <div class="value">
                                            <b class="name">몰타</b>
                                            <i class="category">몰타</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111041026">
                                        <div class="value">
                                            <b class="name">팔레르모</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111041016">
                                        <div class="value">
                                            <b class="name">볼로냐</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111041036">
                                        <div class="value">
                                            <b class="name">베로나</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111041123">
                                        <div class="value">
                                            <b class="name">친퀘테레</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111031008">
                                        <div class="value">
                                            <b class="name">에든버러</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111021001">
                                        <div class="value">
                                            <b class="name">루체른</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111021009">
                                        <div class="value">
                                            <b class="name">라우터브룬넨</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_city.do?l=&region=111011010">
                                        <div class="value">
                                            <b class="name">리옹</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>


                            </ul>
                        </div>


                        <div class="md-section">
                            <div class="content-header ico_country">인기투어 카테고리</div>
                            <ul class="content-list">

<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=146">
        <div class="value"><b class="name">슬로베니아 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=148">
        <div class="value"><b class="name">코토르</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=149">
        <div class="value"><b class="name">스르지산</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=151">
        <div class="value"><b class="name">번지점프</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=152">
        <div class="value"><b class="name">캐년스윙</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=153">
        <div class="value"><b class="name">탈린 워킹투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=1">
        <div class="value"><b class="name">몽생미셀 베스트</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=3">
        <div class="value"><b class="name">파리 자전거투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=4">
        <div class="value"><b class="name">파리스냅</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=5">
        <div class="value"><b class="name">루브르 지식가이드</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=206">
        <div class="value"><b class="name">와이너리투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=166">
        <div class="value"><b class="name">고조섬 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=167">
        <div class="value"><b class="name">코미노섬 크루즈</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=169">
        <div class="value"><b class="name">몰타섬 지프</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=6">
        <div class="value"><b class="name">오르세 미술관</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=7">
        <div class="value"><b class="name">베르사유</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=44">
        <div class="value"><b class="name">체코 와인</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=56">
        <div class="value"><b class="name">바르셀로나 스냅</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=58">
        <div class="value"><b class="name">카를로비 바리</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=15">
        <div class="value"><b class="name">래프팅</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=18">
        <div class="value"><b class="name">무동력 자전거</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=19">
        <div class="value"><b class="name">카약(KAYAK)</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=234">
        <div class="value"><b class="name">에즈</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=247">
        <div class="value"><b class="name">아베이로</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=20">
        <div class="value"><b class="name">런던 뮤지컬</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=21">
        <div class="value"><b class="name">코츠월드+근교</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=170">
        <div class="value"><b class="name">리스본 시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=191">
        <div class="value"><b class="name">리옹 시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=22">
        <div class="value"><b class="name">세븐시스터즈</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=25">
        <div class="value"><b class="name">스톤헨지</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=69">
        <div class="value"><b class="name">벨기에 시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=36">
        <div class="value"><b class="name">체코 스카이다이빙</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=38">
        <div class="value"><b class="name">프라하 시내</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=325">
        <div class="value"><b class="name">자다르 카약</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=40">
        <div class="value"><b class="name">프라하 자전거</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=41">
        <div class="value"><b class="name">사운드오브뮤직</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=43">
        <div class="value"><b class="name">벌룬투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=52">
        <div class="value"><b class="name">보르게세</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=51">
        <div class="value"><b class="name">런던 스냅</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=8">
        <div class="value"><b class="name">삭제</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=138">
        <div class="value"><b class="name">이스탄불 지식가이드</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=45">
        <div class="value"><b class="name">체스키</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=9">
        <div class="value"><b class="name">루아르 고성</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=11">
        <div class="value"><b class="name">몽마르뜨</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=319">
        <div class="value"><b class="name">스노쿨링</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=13">
        <div class="value"><b class="name">스위스 패러글라이딩</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=16">
        <div class="value"><b class="name">제트보트</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=26">
        <div class="value"><b class="name">바티칸 지식가이드</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=46">
        <div class="value"><b class="name">드레스덴</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=62">
        <div class="value"><b class="name">타파스 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=178">
        <div class="value"><b class="name">플라멩고</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=72">
        <div class="value"><b class="name">해리포터 스튜디오 </b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=24">
        <div class="value"><b class="name">런던 자전거투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=29">
        <div class="value"><b class="name">베니스 워킹투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=32">
        <div class="value"><b class="name">가우디 지식가이드</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=34">
        <div class="value"><b class="name">세고비아</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=67">
        <div class="value"><b class="name">토스카나</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=74">
        <div class="value"><b class="name">삭제</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=80">
        <div class="value"><b class="name">몬세라트</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=81">
        <div class="value"><b class="name">마드리드시내 / 프라도 미술관</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=86">
        <div class="value"><b class="name">잔세스칸스(풍차)+</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=145">
        <div class="value"><b class="name">플리트비체</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=42">
        <div class="value"><b class="name">소금광산</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=82">
        <div class="value"><b class="name">마드리드 근교(톨레도/세고비아)</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=10">
        <div class="value"><b class="name">벨기에 당일치기</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=14">
        <div class="value"><b class="name">캐녀닝</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=28">
        <div class="value"><b class="name">로마 시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=33">
        <div class="value"><b class="name">톨레도</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=35">
        <div class="value"><b class="name">지로나+투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=39">
        <div class="value"><b class="name">프라하 스냅</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=98">
        <div class="value"><b class="name">몽생미셀 야경 벤투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=215">
        <div class="value"><b class="name">델피-메테오라</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=216">
        <div class="value"><b class="name">프리이빗 차량 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=217">
        <div class="value"><b class="name">산토리니 세일링</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=218">
        <div class="value"><b class="name">크레타</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=219">
        <div class="value"><b class="name">산토리니 요트투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=99">
        <div class="value"><b class="name">블루라군투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=96">
        <div class="value"><b class="name">우피치미술관</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=30">
        <div class="value"><b class="name">피렌체 시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=154">
        <div class="value"><b class="name">오랑주리 미술관</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=55">
        <div class="value"><b class="name">로마 스냅</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=61">
        <div class="value"><b class="name">바르셀로나 시내</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=54">
        <div class="value"><b class="name">베로나 자전거 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=230">
        <div class="value"><b class="name">아이슬란드 일주(feat.링로드)</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=231">
        <div class="value"><b class="name">베르동</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=235">
        <div class="value"><b class="name">아를</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=238">
        <div class="value"><b class="name">융프라우 가이드</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=239">
        <div class="value"><b class="name">몽블랑 트레킹</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=243">
        <div class="value"><b class="name">실프라 스노쿨링</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=244">
        <div class="value"><b class="name">파티마</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=245">
        <div class="value"><b class="name">나자레</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=246">
        <div class="value"><b class="name">오비도스</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=249">
        <div class="value"><b class="name">돌로미티</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=250">
        <div class="value"><b class="name">카프리섬</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=251">
        <div class="value"><b class="name">나폴리&#38;근교 프라이빗 차량</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=252">
        <div class="value"><b class="name">두브로브니크 성벽/워킹투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=321">
        <div class="value"><b class="name">산토리니 시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=237">
        <div class="value"><b class="name">파리 공항픽업/샌딩</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=256">
        <div class="value"><b class="name">왕좌의게임 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=257">
        <div class="value"><b class="name">트로기르&#38;블루라군&#38;솔타</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=263">
        <div class="value"><b class="name">프라힐리아나</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=297">
        <div class="value"><b class="name">깐느</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=300">
        <div class="value"><b class="name">나폴리공항 픽업/샌딩</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=301">
        <div class="value"><b class="name">볼로냐 자전거 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=302">
        <div class="value"><b class="name">밀란 경기장투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=303">
        <div class="value"><b class="name">세비야-론다 차량투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=304">
        <div class="value"><b class="name">세비야 플라멩고</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=306">
        <div class="value"><b class="name">자그레브 공항픽업</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=307">
        <div class="value"><b class="name">스플리트↔두브로브니크</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=308">
        <div class="value"><b class="name">스플리트 공항픽업/샌딩</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=309">
        <div class="value"><b class="name">무라노, 부라노섬</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=310">
        <div class="value"><b class="name">바라주딘&#38;트라코스찬 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=311">
        <div class="value"><b class="name">프라하→판도르프 아울렛</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=314">
        <div class="value"><b class="name">한적한 잘츠부르크 근교</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=240">
        <div class="value"><b class="name">인터라켄 프라이빗 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=272">
        <div class="value"><b class="name">부다페스트→판도르프 아울렛</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=273">
        <div class="value"><b class="name">까를로비 바리</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=274">
        <div class="value"><b class="name">할슈타트(비엔나, 잘츠부르크)</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=283">
        <div class="value"><b class="name">루마니아 드라큘라성</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=294">
        <div class="value"><b class="name">흐바르 섬 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=295">
        <div class="value"><b class="name">두브로브니크 공항픽업/샌딩</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=312">
        <div class="value"><b class="name">에보라</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=313">
        <div class="value"><b class="name">부다페스트 공항픽업/샌딩/트랜스퍼</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=315">
        <div class="value"><b class="name">오스트리아 공항픽업/샌딩/트랜스퍼</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=316">
        <div class="value"><b class="name">프라하 공항픽업/샌딩/트랜스퍼</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=318">
        <div class="value"><b class="name">해적선 크루즈 파티</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=267">
        <div class="value"><b class="name">코모호수 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=268">
        <div class="value"><b class="name">티볼리투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=64">
        <div class="value"><b class="name">피카소 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=65">
        <div class="value"><b class="name">에든버러 시내워킹</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=102">
        <div class="value"><b class="name">골든서클투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=103">
        <div class="value"><b class="name">[프랑스남부]코트다쥐르</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=104">
        <div class="value"><b class="name">쿠킹 클래스</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=184">
        <div class="value"><b class="name">스플리트 시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=326">
        <div class="value"><b class="name">엘라피티섬 크루즈</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=185">
        <div class="value"><b class="name">체르마트/마테호른 트레킹</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=186">
        <div class="value"><b class="name">라보/몽트뢰</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=187">
        <div class="value"><b class="name">루체른 </b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=190">
        <div class="value"><b class="name">더몰/프라다 스페이스</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=140">
        <div class="value"><b class="name">벨기에 맥주투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=101">
        <div class="value"><b class="name">오로라 헌팅투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=114">
        <div class="value"><b class="name">친퀘테레 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=126">
        <div class="value"><b class="name">플젠+맥주스파</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=127">
        <div class="value"><b class="name">천국의 문</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=76">
        <div class="value"><b class="name">내셔널 갤러리</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=83">
        <div class="value"><b class="name">암스테르담 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=128">
        <div class="value"><b class="name">라이(+세븐시스터즈)</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=129">
        <div class="value"><b class="name">거북이섬 보트투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=135">
        <div class="value"><b class="name">벌룬투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=136">
        <div class="value"><b class="name">그린&레드 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=137">
        <div class="value"><b class="name">ATV투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=142">
        <div class="value"><b class="name">오르비에토+아씨시</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=130">
        <div class="value"><b class="name">나바지오 해변+블루케이브 보트투어!</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=139">
        <div class="value"><b class="name">이스탄불 시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=131">
        <div class="value"><b class="name">케팔로니아 섬 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=132">
        <div class="value"><b class="name">할슈타트</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=2">
        <div class="value"><b class="name">지베르니+근교</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=48">
        <div class="value"><b class="name">인터라켄 호스텔</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=70">
        <div class="value"><b class="name">브뤼헤+겐트 차량</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=77">
        <div class="value"><b class="name">아테네 근교 섬 1DAY 크루즈</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=78">
        <div class="value"><b class="name">뤼세피오르드</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=141">
        <div class="value"><b class="name">세비야 시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=17">
        <div class="value"><b class="name">스위스 스카이다이빙</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=23">
        <div class="value"><b class="name">대영박물관</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=27">
        <div class="value"><b class="name">이탈리아 남부투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=121">
        <div class="value"><b class="name">파리시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=115">
        <div class="value"><b class="name">나폴레옹 왕궁</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=79">
        <div class="value"><b class="name">코스타브라바 스쿠버/스노클링</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=327">
        <div class="value"><b class="name">파리 라발레 아울렛 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=123">
        <div class="value"><b class="name">런던 시내(city)투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=155">
        <div class="value"><b class="name">프랑크푸르트 시내</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=85">
        <div class="value"><b class="name">앤트워프 워킹</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=100">
        <div class="value"><b class="name">공항 셔틀버스</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=157">
        <div class="value"><b class="name">포르투 시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=156">
        <div class="value"><b class="name">하이델베르크시내</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=158">
        <div class="value"><b class="name">상트페테르부르크 시내/근교</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=159">
        <div class="value"><b class="name">모스크바 시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=162">
        <div class="value"><b class="name">부다페스트 시내</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=163">
        <div class="value"><b class="name">센텐드레 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=160">
        <div class="value"><b class="name">자그레브 시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=161">
        <div class="value"><b class="name">비엔나 시내</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=164">
        <div class="value"><b class="name">행글라이딩</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=171">
        <div class="value"><b class="name">두브로브니크 근교 와이너리</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=174">
        <div class="value"><b class="name">스플리트 수상 액티비티</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=176">
        <div class="value"><b class="name">두브로브니크 바다카약</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=179">
        <div class="value"><b class="name">베를린 시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=182">
        <div class="value"><b class="name">빙하투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=183">
        <div class="value"><b class="name">고래투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=193">
        <div class="value"><b class="name">스나이펠스네스</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=194">
        <div class="value"><b class="name">아이슬란드 남부투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=195">
        <div class="value"><b class="name">얼음동굴</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=196">
        <div class="value"><b class="name">화산투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=232">
        <div class="value"><b class="name">프로방스/라벤더</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=233">
        <div class="value"><b class="name">모나코</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=236">
        <div class="value"><b class="name">파리 필수 티켓</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=248">
        <div class="value"><b class="name">코임브라</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=253">
        <div class="value"><b class="name">두브로브니크↔스플리트</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=254">
        <div class="value"><b class="name">크르카 국립공원</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=259">
        <div class="value"><b class="name">이스트라반도 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=260">
        <div class="value"><b class="name">알함브라 궁전투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=262">
        <div class="value"><b class="name">코르도바</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=265">
        <div class="value"><b class="name">네르하</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=270">
        <div class="value"><b class="name">나폴리 푸드/쿠킹클래스</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=305">
        <div class="value"><b class="name">바르셀로나 티켓</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=320">
        <div class="value"><b class="name">보드룸 보트투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=197">
        <div class="value"><b class="name">페티예 패러글라이딩</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=198">
        <div class="value"><b class="name">파묵칼레+ 차량투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=199">
        <div class="value"><b class="name">달얀 차량투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=200">
        <div class="value"><b class="name">카푸타스해변 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=201">
        <div class="value"><b class="name">사클리켄트 래프팅</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=202">
        <div class="value"><b class="name">모스타르&#38;포세닉</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=203">
        <div class="value"><b class="name">신트라/카스카이스</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=204">
        <div class="value"><b class="name">아라비다 와인투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=205">
        <div class="value"><b class="name">대항해 보트</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=207">
        <div class="value"><b class="name">그라나다 패러글라이딩</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=208">
        <div class="value"><b class="name">트롬소 오로라투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=210">
        <div class="value"><b class="name">라인폭포&마이링겐</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=255">
        <div class="value"><b class="name">브라츠섬</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=241">
        <div class="value"><b class="name">공항픽업서비스</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=242">
        <div class="value"><b class="name">런던필수 티켓</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=261">
        <div class="value"><b class="name">그라나다 시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=264">
        <div class="value"><b class="name">그라나다-론다 차량투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=266">
        <div class="value"><b class="name">베니스 곤돌라</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=269">
        <div class="value"><b class="name">폼페이&#38;베수비오</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=277">
        <div class="value"><b class="name">부다페스트 스냅</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=278">
        <div class="value"><b class="name">브라티슬라바 시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=279">
        <div class="value"><b class="name">크라쿠프 시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=280">
        <div class="value"><b class="name">바르샤바 시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=282">
        <div class="value"><b class="name">비엔나 공연 티켓</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=284">
        <div class="value"><b class="name">와이너리 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=285">
        <div class="value"><b class="name">산토리니 공항 픽업/샌딩</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=317">
        <div class="value"><b class="name">천혜의 자연, 루스키섬</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=211">
        <div class="value"><b class="name">에스프레소 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=212">
        <div class="value"><b class="name">파스타 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=213">
        <div class="value"><b class="name">피자 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=214">
        <div class="value"><b class="name">쿠킹클래스</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=288">
        <div class="value"><b class="name">스트라스부르 당일치기</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=289">
        <div class="value"><b class="name">블라디보스톡 시내투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=290">
        <div class="value"><b class="name">블라디보스톡 공항픽업/샌딩</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=291">
        <div class="value"><b class="name">로도스섬 페리</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=292">
        <div class="value"><b class="name">보스포러스 크루즈</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=293">
        <div class="value"><b class="name">라스토케</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=296">
        <div class="value"><b class="name">피사 투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=298">
        <div class="value"><b class="name">피렌체 스냅</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=299">
        <div class="value"><b class="name">베니스 스냅</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=220">
        <div class="value"><b class="name">용암굴</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=221">
        <div class="value"><b class="name">개썰매투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=222">
        <div class="value"><b class="name">데티포스투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=223">
        <div class="value"><b class="name">미바튼호수투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=224">
        <div class="value"><b class="name">스노모빌</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=225">
        <div class="value"><b class="name">스카프타펠</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=226">
        <div class="value"><b class="name">에트나 화산투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=227">
        <div class="value"><b class="name">시칠리아 푸드투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=228">
        <div class="value"><b class="name">아그리젠토</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=229">
        <div class="value"><b class="name">아이슬란드 렌트카(특가중)</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=322">
        <div class="value"><b class="name">비세보섬 블루케이브</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=323">
        <div class="value"><b class="name">하이랜드</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=328">
        <div class="value"><b class="name">타오르미나 워킹투어</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=330">
        <div class="value"><b class="name">밀라노 공항 픽업/샌딩</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=324">
        <div class="value"><b class="name">로마공항 픽업/샌딩</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=329">
        <div class="value"><b class="name">베니스공항 픽업/샌딩</b></div>
    </a></li>
<li class="content-item"><a href="<%= contextPath %>/market/group.do?serial=331">
        <div class="value"><b class="name">피렌체공항 픽업/샌딩</b></div>
    </a></li>

                            </ul>                
                
                
                
                    </div>
                </div>
                </section>



<!-- JS Page Level -->
<script src="<%= contextPath %>/externalData/superguide/One-Pages/assets/js/one.app.js"></script>



<script>
       $(document).ready(function() {

           var mySwiper3 = new Swiper ('.type09', {
               slidesPerView:'auto',
               slidesPerGroup: 1,
               freeMode:true,
               direction:'horizontal',
               navigation: {
                   nextEl: '.swiper-button-next3',
                   prevEl: '.swiper-button-prev3',
               },
               pagination: {
                   el: '.swiper-pagination2',
               },
           })


            var mySwiper3 = new Swiper ('.type09', {
                slidesPerView:'auto',
               slidesPerGroup: 1,
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

 

    var eventBanner = new Swiper ('.event_banner', {
        slidesPerView: 1,
        loop: true,
        pagination: {
            el: '.event-pagination',
            clickable: true,
        },
        navigation: {
            nextEl: '.event-button-next',
            prevEl: '.event-button-prev',
        },
    });





	$('.grid').masonry({
	  itemSelector: '.grid-item',
	  columnWidth: '.grid-sizer',
	  percentPosition: true
	
	});
	
	var id = '#'+'${ lnb_item }';
	$(".lnb_item").removeClass("active");
	$(id).addClass("active");

});

</script>

<!-- 
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
 -->
<script type="text/javascript">
 $('#squareDetail').click(function(event){
	if('${authUser.member_id}'==''){
		alert("로그인 후 이용해주세요.");
		$(this).attr('href','/stubbyPlanner/square/index.do');
	}							 
 });
 $('#plannerDetail').click(function(event){
		if('${authUser.member_id}'==''){
			alert("로그인 후 이용해주세요.");
			$(this).attr('href','/stubbyPlanner/square/index.do');
		}							 
	 });
 $('#boardDetail').click(function(event){
		if('${authUser.member_id}'==''){
			alert("로그인 후 이용해주세요.");
			$(this).attr('href','/stubbyPlanner/square/index.do');
		}							 
	 }); 
 $('#partyDetail').click(function(event){
		if('${authUser.member_id}'==''){
			alert("로그인 후 이용해주세요.");
			$(this).attr('href','/stubbyPlanner/square/index.do');
		}							 
	 });
 $('#galleryDetail').click(function(event){
		if('${authUser.member_id}'==''){
			alert("로그인 후 이용해주세요.");
			$(this).attr('href','/stubbyPlanner/square/index.do');
		}							 
	 });
</script>
 
 
<script type="text/javascript">
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
					
					thtml='';
					thtml+='<caption>테이블 설명</caption><thead><tr><th scope="cols">글번호</th><th scope="cols">아이디</th><th scope="cols">제목</th><th scope="cols">날짜</th><th scope="cols">조회</th><th scope="cols">추천</th></tr></thead>';					
					thtml+='<tbody>';
					
					$.each(data.list, function( i, item ) {
						thtml+='<tr><th scope="row">'+item.post_seq+'</th><td>'+item.member_id+'</td><td class="title">'+item.post_subject+'</td>';
						thtml+='<td>'+(item.post_regdate).substring(0, 10)+'</td>';
						thtml+='<td>'+item.post_hits+'</td><td>'+item.post_like+'</td></tr>';
					});
					
					thtml+='</tbody>';
					$('.swiper-wrapper .type09').html(thtml)
					
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
               	//	alert(data.list);
				if(data!="")
				{
					
					thtml='';
					thtml+='<caption>테이블 설명</caption><thead><tr><th scope="cols">글번호</th><th scope="cols">아이디</th><th scope="cols">제목</th><th scope="cols">날짜</th><th scope="cols">조회</th><th scope="cols">추천</th></tr></thead>';					
					thtml+='<tbody>';
					
					$.each(data.list, function( i, item ) {
						thtml+='<tr><th scope="row">'+item.post_seq+'</th><td>'+item.member_id+'</td><td class="title">'+item.post_subject+'</td>';
						thtml+='<td>'+(item.post_regdate).substring(0, 10)+'</td>';
						thtml+='<td>'+item.post_hits+'</td><td>'+item.post_like+'</td></tr>';
					});
					
					thtml+='</tbody>';
					$('.swiper-wrapper .type09').html(thtml)
					
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
               	//	alert(data.list);
				if(data!="")
				{
					
					thtml='';
					thtml+='<caption>테이블 설명</caption><thead><tr><th scope="cols">글번호</th><th scope="cols">아이디</th><th scope="cols">제목</th><th scope="cols">날짜</th><th scope="cols">조회</th><th scope="cols">추천</th></tr></thead>';					
					thtml+='<tbody>';
					
					$.each(data.list, function( i, item ) {
						thtml+='<tr><th scope="row">'+item.post_seq+'</th><td>'+item.member_id+'</td><td class="title">'+item.post_subject+'</td>';
						thtml+='<td>'+(item.post_regdate).substring(0, 10)+'</td>';
						thtml+='<td>'+item.post_hits+'</td><td>'+item.post_like+'</td></tr>';
					});
					
					thtml+='</tbody>';
					$('.swiper-wrapper .type09').html(thtml)
					
				}
		}
	});
}	
</script>
</body>
</html>











