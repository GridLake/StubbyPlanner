<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/include.jspf" %>
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

<title>유럽 투어 예약 - 스투비플래너</title>
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

  <%--   <!-- swiper.js : 이미지슬라이더 -->
    <script type="text/javascript" src="<%= contextPath %>/externalData/market/js/swiper.min.js"></script>
    <!-- header/footer -->

	<script src="<%= contextPath %>/externalData/js2/header_footer3.js" type="text/javascript"></script>
    <!-- md-select_group -->
    <script type="text/javascript" src="<%= contextPath %>/externalData/market/js/md_select_group.js"></script>
 --%>



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
<a href="<%= contextPath %>/market/index_city.do?city_id=1">파리</a>
	
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
                <ul class="swiper-wrapper">

                    <li class="swiper-slide">
                        <a href="#">
                            <div class="stu_bg" style="background-image:url(<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1558431783904cnHTLP65Kw.jpg);">
                                <div class="stu_tone"></div>
                                <div class="stu_inner_wrap">
                                    <div class="titArea" style="text-shadows:3px 4px 5px #000;">
                                        <b class="type" style="color:#ffec95;">1,700가지 유럽투어/액티비티</b>
                                        <b class="title"> 얼리버드 SALE</b>
                                        <p>미리 예약할수록 커지는 추가할인율!</p>

                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
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
<%-- 
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
                </ul>
            </div>
<!---
            <div class="swiper-pagination top_banner-pagination"></div>
            <div class="swiper-button-prev top_banner-button-prev"></div>
            <div class="swiper-button-next top_banner-button-next"></div>
-->
           <div class="stu_main_search">
                <a href="#" class="search_input"><i></i>도시,국가, 키워드로 검색</a>
            </div>
        </section>
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





<%-- 
        <section class="stu_swiper-section select_city">
            <div class="stu_inner_wrap">
                <div class="titArea">
                    <h3 class="stu_title">내 계획에 포함된 도시</h3>
                </div>
                <div class="swiper-container swiper-items">
                    <ul class="swiper-wrapper">



                        <li class="swiper-slide" >


                            <div class="prd_item">
                               <a href="<%= contextPath %>/market/index_city.do?city_id=1">
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
 --%>





       <section class="stu_swiper-section stu_recent-offer">
            <div class="stu_inner_wrap">
                <div class="titArea">
                    <h3 class="stu_title">인기 슈퍼 얼리버드 할인상품 <small style="font-size:10pt;color:#696969"> 최대 30% 할인 </small></h3>
                </div>



                <div class="swiper-container swiper-items">
                    <ul class="swiper-wrapper">





                        <li class="swiper-slide prd_item">
                            <a href="<%= contextPath %>/guide/detail.do?needlogin=&serial=156">
                                <figure class="thumb">
			<img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/3acea8484c51650b8364dc8b65fc94bc_l.jpg" onerror="this.src='<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/3acea8484c51650b8364dc8b65fc94bc.jpg'">


                                    <div class="band bg_red">⚡️21CHF</div>

                                </figure>
                                <figcaption class="prd_info">
                                    <div class="cpn">
                                        <span>Skywings</span>
                                    </div>
                                    <div class="name">
                                        <span>스위스 NO.1 인터라켄 패러글라이딩</span>
                                    </div>


                                    <div class="score" style="display:inline-block">



                                        <span><i></i>4.6</span>
                                         <span class="buy">13829명 예약</span>



                                    </div>
                                    <div class="price"  style="line-height:100%;text-align:right;right:2px;">
                                        183,111원<span style="margin-right:0px"><br><font style="font-size:9pt;color:#ee685a;font-weight:700;">⚡️ 슈퍼얼리176,023원~</font></span>
                                    </div>
                                </figcaption>
                            </a>
                        </li>






                        <li class="swiper-slide prd_item">
                            <a href="<%= contextPath %>/guide/detail.do?needlogin=&serial=64">
                                <figure class="thumb">
			<img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/e22cc94d860ef44e2cf131dff3d9977d_l.jpg" onerror="this.src='<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/e22cc94d860ef44e2cf131dff3d9977d.jpg'">


                                    <div class="band bg_red">⚡️5EUR</div>

                                </figure>
                                <figcaption class="prd_info">
                                    <div class="cpn">
                                        <span>Walk about Florence</span>
                                    </div>
                                    <div class="name">
                                        <span>[현지1위, 직거래 특가] 토스카나 와이너리 + 차량투어</span>
                                    </div>


                                    <div class="score" style="display:inline-block">



                                        <span><i></i>4.5</span>
                                         <span class="buy">1031명 예약</span>



                                    </div>
                                    <div class="price"  style="line-height:100%;text-align:right;right:2px;">
                                        112,733원<span style="margin-right:0px"><br><font style="font-size:9pt;color:#ee685a;font-weight:700;">⚡️ 슈퍼얼리106,102원~</font></span>
                                    </div>
                                </figcaption>
                            </a>
                        </li>






                        <li class="swiper-slide prd_item">
                            <a href="<%= contextPath %>/guide/detail.do?needlogin=&serial=148">
                                <figure class="thumb">
			<img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/81479c500bf57cd7f7a4cde010bfbf68_l.jpg" onerror="this.src='<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/81479c500bf57cd7f7a4cde010bfbf68.jpg'">


                                    <div class="band bg_red">⚡️6.9천원</div>

                                </figure>
                                <figcaption class="prd_info">
                                    <div class="cpn">
                                        <span>메멘토투어</span>
                                    </div>
                                    <div class="name">
                                        <span>[5월특가]스페인 전문 메멘토투어 가우디 반일 버스투어 </span>
                                    </div>


                                    <div class="score" style="display:inline-block">



                                        <span><i></i>4.7</span>
                                         <span class="buy">1474명 예약</span>



                                    </div>
                                    <div class="price"  style="line-height:100%;text-align:right;right:2px;">
                                        23,000원<span style="margin-right:0px"><br><font style="font-size:9pt;color:#ee685a;font-weight:700;">⚡️ 슈퍼얼리16,100원~</font></span>
                                    </div>
                                </figcaption>
                            </a>
                        </li>






                        <li class="swiper-slide prd_item">
                            <a href="<%= contextPath %>/guide/detail.do?needlogin=&serial=50">
                                <figure class="thumb">
			<img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/910673112ceee03c554302d9a29f670c_l.jpg" onerror="this.src='<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/910673112ceee03c554302d9a29f670c.jpg'">


                                    <div class="band bg_red">⚡️5.4만원</div>

                                </figure>
                                <figcaption class="prd_info">
                                    <div class="cpn">
                                        <span>예술과여행</span>
                                    </div>
                                    <div class="name">
                                        <span>파리 근교 3종세트★지베르니+옹플뢰르+몽생미셸</span>
                                    </div>


                                    <div class="score" style="display:inline-block">



                                        <span><i></i>4.5</span>
                                         <span class="buy">679명 예약</span>



                                    </div>
                                    <div class="price"  style="line-height:100%;text-align:right;right:2px;">
                                        180,000원<span style="margin-right:0px"><br><font style="font-size:9pt;color:#ee685a;font-weight:700;">⚡️ 슈퍼얼리126,000원~</font></span>
                                    </div>
                                </figcaption>
                            </a>
                        </li>






                        <li class="swiper-slide prd_item">
                            <a href="<%= contextPath %>/guide/detail.do?needlogin=&serial=313">
                                <figure class="thumb">
			<img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/033ab7dba1af8d1915c06f993bada22f_l.jpg" onerror="this.src='<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/033ab7dba1af8d1915c06f993bada22f.jpg'">


                                    <div class="band bg_red">⚡️1.05만원</div>

                                </figure>
                                <figcaption class="prd_info">
                                    <div class="cpn">
                                        <span>Hon's Trip(헌스트립)</span>
                                    </div>
                                    <div class="name">
                                        <span>「와인 한잔」과 「인생샷」이 함께하는 로맨틱 템즈강 야경투어</span>
                                    </div>


                                    <div class="score" style="display:inline-block">



			❤️ <span style="color:#8f8f8f;font-size:9pt">최근 플래너 8명이 선택</span>
		

                                    </div>
                                    <div class="price"  style="line-height:100%;text-align:right;right:2px;">
                                        35,000원<span style="margin-right:0px"><br><font style="font-size:9pt;color:#ee685a;font-weight:700;">⚡️ 슈퍼얼리24,500원~</font></span>
                                    </div>
                                </figcaption>
                            </a>
                        </li>






                        <li class="swiper-slide prd_item">
                            <a href="<%= contextPath %>/guide/detail.do?needlogin=&serial=1524">
                                <figure class="thumb">
			<img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/951dddc4fdd177a23ca78762ab8edaf2_l.jpg" onerror="this.src='<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/951dddc4fdd177a23ca78762ab8edaf2.jpg'">


                                    <div class="band bg_red">⚡️2.07만원</div>

                                </figure>
                                <figcaption class="prd_info">
                                    <div class="cpn">
                                        <span>여행의신</span>
                                    </div>
                                    <div class="name">
                                        <span>[오픈특가][얼리버드] 베르사유 궁전내부설명 포함 + 지베르니 + 오베르쉬르우아즈 only대표가이드 진행!</span>
                                    </div>


                                    <div class="score" style="display:inline-block">



			❤️ <span style="color:#8f8f8f;font-size:9pt">최근 플래너 25명이 선택</span>
		

                                    </div>
                                    <div class="price"  style="line-height:100%;text-align:right;right:2px;">
                                        69,000원<span style="margin-right:0px"><br><font style="font-size:9pt;color:#ee685a;font-weight:700;">⚡️ 슈퍼얼리48,300원~</font></span>
                                    </div>
                                </figcaption>
                            </a>
                        </li>






                        <li class="swiper-slide prd_item">
                            <a href="<%= contextPath %>/guide/detail.do?needlogin=&serial=81">
                                <figure class="thumb">
			<img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/41ffee5d5b6ef47fec48e7ad1e14dc85_l.jpg" onerror="this.src='<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/41ffee5d5b6ef47fec48e7ad1e14dc85.jpg'">


                                    <div class="band bg_red">⚡️1.05만원</div>

                                </figure>
                                <figcaption class="prd_info">
                                    <div class="cpn">
                                        <span>메멘토투어</span>
                                    </div>
                                    <div class="name">
                                        <span>[1+1이벤트][특가] 오직 가우디만 있는 버스 투어</span>
                                    </div>


                                    <div class="score" style="display:inline-block">



                                        <span><i></i>4.5</span>
                                         <span class="buy">865명 예약</span>



                                    </div>
                                    <div class="price"  style="line-height:100%;text-align:right;right:2px;">
                                        35,000원<span style="margin-right:0px"><br><font style="font-size:9pt;color:#ee685a;font-weight:700;">⚡️ 슈퍼얼리24,500원~</font></span>
                                    </div>
                                </figcaption>
                            </a>
                        </li>






                        <li class="swiper-slide prd_item">
                            <a href="<%= contextPath %>/guide/detail.do?needlogin=&serial=54">
                                <figure class="thumb">
			<img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/165cd593fa9cc7e1adfdfcffeadaada6_l.jpg" onerror="this.src='<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/165cd593fa9cc7e1adfdfcffeadaada6.jpg'">


                                    <div class="band bg_red">⚡️5.34만원</div>

                                </figure>
                                <figcaption class="prd_info">
                                    <div class="cpn">
                                        <span>예술과여행</span>
                                    </div>
                                    <div class="name">
                                        <span><소그룹> 몽생미셸 낮과밤 + 옹플뢰르  [8인이하 + 스냅사진+ 숙소샌딩 포함]</span>
                                    </div>


                                    <div class="score" style="display:inline-block">



                                        <span><i></i>4.4</span>
                                         <span class="buy">486명 예약</span>



                                    </div>
                                    <div class="price"  style="line-height:100%;text-align:right;right:2px;">
                                        178,000원<span style="margin-right:0px"><br><font style="font-size:9pt;color:#ee685a;font-weight:700;">⚡️ 슈퍼얼리124,600원~</font></span>
                                    </div>
                                </figcaption>
                            </a>
                        </li>






                        <li class="swiper-slide prd_item">
                            <a href="<%= contextPath %>/guide/detail.do?needlogin=&serial=647">
                                <figure class="thumb">
			<img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/d26b6eb63f71a809c3424b7f7b89e8eb_l.jpg" onerror="this.src='<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/d26b6eb63f71a809c3424b7f7b89e8eb.jpg'">


                                    <div class="band bg_red">⚡️1800CZK</div>

                                </figure>
                                <figcaption class="prd_info">
                                    <div class="cpn">
                                        <span>TastePRAHA</span>
                                    </div>
                                    <div class="name">
                                        <span>[프라하스냅] 팀당 촬영가격, 현지 대표작가 촬영! 아름다운 프라하에서 남기는 추억여행</span>
                                    </div>


                                    <div class="score" style="display:inline-block">



                                        <span><i></i>5</span>
                                         <span class="buy">162명 예약</span>



                                    </div>
                                    <div class="price"  style="line-height:100%;text-align:right;right:2px;">
                                        308,094원<span style="margin-right:0px"><br><font style="font-size:9pt;color:#ee685a;font-weight:700;">⚡️ 슈퍼얼리215,666원~</font></span>
                                    </div>
                                </figcaption>
                            </a>
                        </li>






                        <li class="swiper-slide prd_item">
                            <a href="<%= contextPath %>/guide/detail.do?needlogin=&serial=314">
                                <figure class="thumb">
                                <!-- img 태그 첫 번째 src는 서버에 이미지 존재X -> oneerror 발동 -->
			<img class="fw" src="http://d3b39vpyptsv01.cloudfront.net/photo/6/9/97b5efb1c2b3df2deb4231d826707159_l.png" onerror="this.src='<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/6/9/97b5efb1c2b3df2deb4231d826707159.png'">


                                    <div class="band bg_red">⚡️2.76만원</div>

                                </figure>
                                <figcaption class="prd_info">
                                    <div class="cpn">
                                        <span>QUE RICO(께 리꼬)</span>
                                    </div>
                                    <div class="name">
                                        <span>[로맨스4 민셰프 진행] 빠에야,타파스 쿠킹클래스 + 보케리아 시장투어 + 와인</span>
                                    </div>


                                    <div class="score" style="display:inline-block">



                                        <span><i></i>5</span>
                                         <span class="buy">96명 예약</span>



                                    </div>
                                    <div class="price"  style="line-height:100%;text-align:right;right:2px;">
                                        92,000원<span style="margin-right:0px"><br><font style="font-size:9pt;color:#ee685a;font-weight:700;">⚡️ 슈퍼얼리64,400원~</font></span>
                                    </div>
                                </figcaption>
                            </a>
                        </li>




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



                <div class="swiper-container swiper-items">
                    <ul class="swiper-wrapper">




                        <li class="swiper-slide prd_item">
                            <a href="<%= contextPath %>/guide/detail.do?needlogin=&serial=189">
                                <figure class="thumb">
			<img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/5b9b9cd6e9499ef00c058c57b4e5911c_l.jpeg" onerror="this.src='<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/5b9b9cd6e9499ef00c058c57b4e5911c.jpeg'">
                                   

                                    <div class="band bg_red">⚡️2천원</div>

                                </figure>
                                <figcaption class="prd_info">
                                    <div class="cpn">
                                        <span>맘마미아투어</span>
                                    </div>
                                    <div class="name">
                                        <span>[1+1이벤트] 최다예약엔 이유가 있다! 맘마미아 남부투어 (기간 한정 파격 특가 중)/ 로마야경무료</span>
                                    </div>


                                    <div class="score" style="display:inline-block">


                                        <span><i></i>4.3</span>
                                         <span class="buy">96명 예약</span>



                                    </div>


                                    <div class="price"  style="line-height:100%;text-align:right;right;right:2px;">
                                        45,000원<span style="margin-right:0px"><br><font style="font-size:9pt;color:#3ad195">⚡️ 얼리버드 43,000원~</font></span>
                                    </div>
                                </figcaption>
                            </a>
                        </li>







                        <li class="swiper-slide prd_item">
                            <a href="<%= contextPath %>/guide/detail.do?needlogin=&serial=185">
                                <figure class="thumb">
			<img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/5a0ca0f817c60e8c13c12c05467fc542_l.jpg" onerror="this.src='<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/5a0ca0f817c60e8c13c12c05467fc542.jpg'">
                                   

                                    <div class="band bg_red">⚡️3천원</div>

                                </figure>
                                <figcaption class="prd_info">
                                    <div class="cpn">
                                        <span>우노트래블</span>
                                    </div>
                                    <div class="name">
                                        <span>[봄맞이 특가] 남부 아말피 코스트 투어</span>
                                    </div>


                                    <div class="score" style="display:inline-block">


			❤️ <span style="color:#8f8f8f;font-size:9pt">최근 플래너 8명이 선택</span>
		

                                    </div>


                                    <div class="price"  style="line-height:100%;text-align:right;right;right:2px;">
                                        35,000원<span style="margin-right:0px"><br><font style="font-size:9pt;color:#3ad195">⚡️ 얼리버드 32,000원~</font></span>
                                    </div>
                                </figcaption>
                            </a>
                        </li>







                        <li class="swiper-slide prd_item">
                            <a href="<%= contextPath %>/guide/detail.do?needlogin=&serial=275">
                                <figure class="thumb">
			<img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/b69915331fbdc90b487319a97f1b7b0c_l.jpg" onerror="this.src='<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/b69915331fbdc90b487319a97f1b7b0c.jpg'">
                                   

                                    <div class="band bg_red">⚡️5천원</div>

                                </figure>
                                <figcaption class="prd_info">
                                    <div class="cpn">
                                        <span>파리크레파스</span>
                                    </div>
                                    <div class="name">
                                        <span>[특가 진행중]몽생미셸 야경투어 (에타르타-옹플레흐-몽생미셸 야경) </span>
                                    </div>


                                    <div class="score" style="display:inline-block">


                                        <span><i></i>4.6</span>
                                         <span class="buy">96명 예약</span>



                                    </div>


                                    <div class="price"  style="line-height:100%;text-align:right;right;right:2px;">
                                        110,000원<span style="margin-right:0px"><br><font style="font-size:9pt;color:#3ad195">⚡️ 얼리버드 105,000원~</font></span>
                                    </div>
                                </figcaption>
                            </a>
                        </li>







                        <li class="swiper-slide prd_item">
                            <a href="<%= contextPath %>/guide/detail.do?needlogin=&serial=1524">
                                <figure class="thumb">
			<img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/951dddc4fdd177a23ca78762ab8edaf2_l.jpg" onerror="this.src='<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/951dddc4fdd177a23ca78762ab8edaf2.jpg'">
                                   

                                    <div class="band bg_red">⚡️2.07만원</div>

                                </figure>
                                <figcaption class="prd_info">
                                    <div class="cpn">
                                        <span>여행의신</span>
                                    </div>
                                    <div class="name">
                                        <span>[오픈특가][얼리버드] 베르사유 궁전내부설명 포함 + 지베르니 + 오베르쉬르우아즈 only대표가이드 진행!</span>
                                    </div>


                                    <div class="score" style="display:inline-block">


			❤️ <span style="color:#8f8f8f;font-size:9pt">최근 플래너 25명이 선택</span>
		

                                    </div>


                                    <div class="price"  style="line-height:100%;text-align:right;right;right:2px;">
                                        69,000원<span style="margin-right:0px"><br><font style="font-size:9pt;color:#3ad195">⚡️ 얼리버드 48,300원~</font></span>
                                    </div>
                                </figcaption>
                            </a>
                        </li>







                        <li class="swiper-slide prd_item">
                            <a href="<%= contextPath %>/guide/detail.do?needlogin=&serial=162">
                                <figure class="thumb">
			<img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/56af13cbabd3c2633dcf4ca135b52747_l.jpg" onerror="this.src='<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/56af13cbabd3c2633dcf4ca135b52747.jpg'">
                                   

                                </figure>
                                <figcaption class="prd_info">
                                    <div class="cpn">
                                        <span>이태리스케치북</span>
                                    </div>
                                    <div class="name">
                                        <span>[만족도 1위] 바티칸 전일코스 반일 오전투어 (★로마 야경투어 무료★)</span>
                                    </div>


                                    <div class="score" style="display:inline-block">


                                        <span><i></i>4.9</span>
                                         <span class="buy">96명 예약</span>



                                    </div>


                                    <div class="price"  style="line-height:100%;text-align:right;right;right:2px;">
                                        25,000원
                                    </div>
                                </figcaption>
                            </a>
                        </li>







                        <li class="swiper-slide prd_item">
                            <a href="<%= contextPath %>/guide/detail.do?needlogin=&serial=158">
                                <figure class="thumb">
			<img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/3bfc5bfc713b197f0d7329a736097d53_l.jpg" onerror="this.src='<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/3bfc5bfc713b197f0d7329a736097d53.jpg'">
                                   

                                    <div class="band bg_red">⚡️2천원</div>

                                </figure>
                                <figcaption class="prd_info">
                                    <div class="cpn">
                                        <span>떼아모투어</span>
                                    </div>
                                    <div class="name">
                                        <span>[사전예약입장]줄설필요없는 바티칸 반일 투어 + 회화관 입장</span>
                                    </div>


                                    <div class="score" style="display:inline-block">


                                        <span><i></i>4.3</span>
                                         <span class="buy">96명 예약</span>



                                    </div>


                                    <div class="price"  style="line-height:100%;text-align:right;right;right:2px;">
                                        25,000원<span style="margin-right:0px"><br><font style="font-size:9pt;color:#3ad195">⚡️ 얼리버드 23,000원~</font></span>
                                    </div>
                                </figcaption>
                            </a>
                        </li>







                        <li class="swiper-slide prd_item">
                            <a href="<%= contextPath %>/guide/detail.do?needlogin=&serial=156">
                                <figure class="thumb">
			<img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/3acea8484c51650b8364dc8b65fc94bc_l.jpg" onerror="this.src='<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/3acea8484c51650b8364dc8b65fc94bc.jpg'">
                                   

                                    <div class="band bg_red">⚡️21CHF</div>

                                </figure>
                                <figcaption class="prd_info">
                                    <div class="cpn">
                                        <span>Skywings</span>
                                    </div>
                                    <div class="name">
                                        <span>스위스 NO.1 인터라켄 패러글라이딩</span>
                                    </div>


                                    <div class="score" style="display:inline-block">


                                        <span><i></i>4.6</span>
                                         <span class="buy">96명 예약</span>



                                    </div>


                                    <div class="price"  style="line-height:100%;text-align:right;right;right:2px;">
                                        183,111원<span style="margin-right:0px"><br><font style="font-size:9pt;color:#3ad195">⚡️ 얼리버드 176,023원~</font></span>
                                    </div>
                                </figcaption>
                            </a>
                        </li>







                        <li class="swiper-slide prd_item">
                            <a href="<%= contextPath %>/guide/detail.do?needlogin=&serial=183">
                                <figure class="thumb">
			<img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/bf85855c6f389d66df2d612f19d9c3a1_l.jpg" onerror="this.src='<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/bf85855c6f389d66df2d612f19d9c3a1.jpg'">
                                   

                                </figure>
                                <figcaption class="prd_info">
                                    <div class="cpn">
                                        <span>(주)헬로우유럽 </span>
                                    </div>
                                    <div class="name">
                                        <span>[4-10월만] 이탈리아 남부투어 1박2일</span>
                                    </div>


                                    <div class="score" style="display:inline-block">


                                        <span><i></i>5</span>
                                         <span class="buy">96명 예약</span>



                                    </div>


                                    <div class="price"  style="line-height:100%;text-align:right;right;right:2px;">
                                        320,000원
                                    </div>
                                </figcaption>
                            </a>
                        </li>







                        <li class="swiper-slide prd_item">
                            <a href="<%= contextPath %>/guide/detail.do?needlogin=&serial=416">
                                <figure class="thumb">
			<img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/5dd3fd53136dc137772e0aca5349623d_l.jpg" onerror="this.src='<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/5dd3fd53136dc137772e0aca5349623d.jpg'">
                                   

                                    <div class="band bg_red">⚡️2천원</div>

                                </figure>
                                <figcaption class="prd_info">
                                    <div class="cpn">
                                        <span>파리크레파스</span>
                                    </div>
                                    <div class="name">
                                        <span>[신규]오픈기념  특가! 파리 전일 워킹 투어</span>
                                    </div>


                                    <div class="score" style="display:inline-block">


                                        <span><i></i>5</span>
                                         <span class="buy">96명 예약</span>



                                    </div>


                                    <div class="price"  style="line-height:100%;text-align:right;right;right:2px;">
                                        25,000원<span style="margin-right:0px"><br><font style="font-size:9pt;color:#3ad195">⚡️ 얼리버드 23,000원~</font></span>
                                    </div>
                                </figcaption>
                            </a>
                        </li>






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
                            </div>
                        </li>
                    </ul>
                    <div class="swiper-scrollbar"></div>
                </div>
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>
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

                    <div class="md-content">
                        <div class="md-section">
                            <div class="content-header ico_country">서유럽 국가</div>
                            <ul class="content-list">
                                <li class="content-item">
                                    <a href="<%= contextPath %>/market/index_ctry.do?l=&country_id=1">
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
                                    <a href="<%= contextPath %>/market/index_city.do?l=&city_id=1">
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