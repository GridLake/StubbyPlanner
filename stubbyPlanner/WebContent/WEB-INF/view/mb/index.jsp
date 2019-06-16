<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/include.jspf" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>숙소 홈 - 스투비플래너</title>
    <!-- meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">


	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">



	<!-- CSS Header and Footer -->
	<link rel="stylesheet" href="<%= contextPath %>/externalData/superguide/assets/css/headers/header-v4.css">

	<!-- CSS Implementing Plugins -->
	<link rel="stylesheet" href="<%= contextPath %>/externalData/superguide/assets/plugins/animate.css">
	<link rel="stylesheet" href="<%= contextPath %>/externalData/superguide/assets/plugins/line-icons/line-icons.css">
	<link rel="stylesheet" href="<%= contextPath %>/externalData/superguide/assets/plugins/font-awesome/css/font-awesome.min.css">


    <!-- CSS/JavaScript -->
    <link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/mb/css/swiper.min.css">
    <link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/css2/common.css">
    <link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/mb/css/BnB_home.css">

<link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/css2/header_footer.css">
    <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>



	<!-- CSS Customization -->
	<link rel="stylesheet" href="<%= contextPath %>/externalData/superguide/assets/css/style.css">
	<link rel="stylesheet" href="<%= contextPath %>/externalData/superguide/assets/css/custom.css">

    <!-- swiper.js : 이미지슬라이더 -->
    <script type="text/javascript" src="<%= contextPath %>/externalData/mb/js/swiper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


<style>

.like.active {
    background-position: -84px 0;
}
.like {
    position: absolute;
    top: 10px;
    right: 10px;
    width: 28px;
    height: 28px;
    background-position: -112px 0;
    background-size: 224px;
    z-index: 9;
}
.like
{
    background-image: url(<%= contextPath %>/externalData/images2/common/stu_icon.png);
    background-repeat: no-repeat;
    vertical-align: middle;
}

a{display:inline;}
.search_tag
{
	display:inline-block;
	margin-right:5px;
	padding-top:4px;
	padding-bottom:4px;
	padding-left:8px;
	padding-right:8px;
	background:#007aff;
	color:#fff;
	font-size:16px;
	border-radius:20px;
	margin-bottom:5px;
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





        <main >
            <section class="stu_topBanner">
                <div class="stu_inner_wrap">
                    <div class="viewport">
                        <div class="textArea">
                            <p class="type1">미리 예약하면 할인되는</p>
                            <p class="type2">유럽 할인 숙소 검색</p>
                        </div>
                        <img src="<%= contextPath %>/externalData/mb/images/sleeping.png" alt="샘플이미지">
                    </div>
                </div>
            </section>
            <section class="stu_selectCity">
                <div class="stu_inner_wrap">



                    <h2 class="stu_h2_title">내 계획에 포함된 도시</h2>
                    <div class="swiper-container swiper1">
                        <ul class="swiper-wrapper">




                            <li class="swiper-slide">
                                <a href="<%= contextPath %>/mb/index_city.do?region=111061005&checkin=2019-06-27&checkout=2019-06-28">
                                    <div class="stu_thumb_wrap">
                                        <div class="imgArea">

                                            <img src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/73440dd1d4d7018d8d03b29727ef101c_l.jpg" alt="">
                                        </div>
                                        <div class="textArea">
                                            <p>뮌헨1박</font><font style="font-size:9pt;color:#c0c0c0;font-weight:300">6월 27일~28일</font></p>
                                        </div>
                                    </div>
                                </a>
                            </li>



                            <li class="swiper-slide">
                                <a href="<%= contextPath %>/mb/index_city.do?region=131011001&checkin=2019-06-28&checkout=2019-07-01">
                                    <div class="stu_thumb_wrap">
                                        <div class="imgArea">

                                            <img src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/1e543d53f4cda67e8343fc22f52e750c_l.jpg" alt="">
                                        </div>
                                        <div class="textArea">
                                            <p>프라하3박</font><font style="font-size:9pt;color:#c0c0c0;font-weight:300">6월 28일~6월1일</font></p>
                                        </div>
                                    </div>
                                </a>
                            </li>



                            <li class="swiper-slide">
                                <a href="<%= contextPath %>/mb/index_city.do?region=131011003&checkin=2019-07-01&checkout=2019-07-02">
                                    <div class="stu_thumb_wrap">
                                        <div class="imgArea">

                                            <img src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/ed30cf2d96e71866f1264888d803a8f3_l.jpg" alt="">
                                        </div>
                                        <div class="textArea">
                                            <p>체스키 크루믈로프1박</font><font style="font-size:9pt;color:#c0c0c0;font-weight:300">7월 1일~2일</font></p>
                                        </div>
                                    </div>
                                </a>
                            </li>



                            <li class="swiper-slide">
                                <a href="<%= contextPath %>/mb/index_city.do?region=131041002&checkin=2019-07-02&checkout=2019-07-03">
                                    <div class="stu_thumb_wrap">
                                        <div class="imgArea">

                                            <img src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/f74c87589b6a7f107f02c76659ba4399_l.jpg" alt="">
                                        </div>
                                        <div class="textArea">
                                            <p>잘츠부르크1박</font><font style="font-size:9pt;color:#c0c0c0;font-weight:300">7월 2일~3일</font></p>
                                        </div>
                                    </div>
                                </a>
                            </li>





                        </ul>
                        <!--scrollbar-->
                        <div class="swiper-scrollbar"></div>
                    </div>

                    <div class="ct-toggle-btn-wrap">
                        <button type="button" class="ct-toggle-btn"></button>
                    </div>

                </div>
            </section>

<script>
        // 리스트 찜하기(토글)
        $('.prd-list .like').on('click', function() {
	tid=$(this).attr("id");
            $(this).toggleClass('active');

	             $.ajax({
	            	/* 경로 재설정 필요 */
	             	url: '/api/guidetour/toggle_slp_like.do?slp_id='+tid,
	               	dataType: 'json',
	               	success: function(data){
$(this).remove();
			}
		});

        });
</script>

	<section style="text-align:center;">
                <div class="stu_inner_wrap">
                    <h2 class="stu_h2_title">주요도시 숙소선택 튜토리얼</h2>



	<div class="col-md-3  col-xs-3" style="padding-left:10px;padding-right:10px;">
		<a href="<%= contextPath %>/stay/index.do?region=111011004"><img style="border-radius:5px;" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/b7e2260cb529dd1714c4c673ef6f2ae0_l.jpg" class="img-responsive"></a>
		<div><a href="<%= contextPath %>/stay/index.do?region=111011004"><h3 style="text-align:center">파리편</h3></a></div>
	</div>
	<div class="col-md-3  col-xs-3" style="padding-left:10px;padding-right:10px">
		<a href="<%= contextPath %>/stay/index.do?region=111031001"><img style="border-radius:5px;" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/922df351983150dd831bccf09528e6c9_l.jpg" class="img-responsive"></a>
		<div><a href="<%= contextPath %>/stay/index.do?region=111031001"><h3 style="text-align:center">런던편</h3></a></div>
	</div>
	<div class="col-md-3  col-xs-3" style="padding-left:10px;padding-right:10px">
		<a href="<%= contextPath %>/stay/index.do?region=131011001"><img style="border-radius:5px;" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/fe283a7c685b1ed0b7cd7e9213a748b4_l.jpg" class="img-responsive"></a>
		<div><a href="<%= contextPath %>/stay/index.do?region=131011001"><h3 style="text-align:center">프라하편</h3></a></div>
	</div>
	<div class="col-md-3  col-xs-3" style="padding-left:10px;padding-right:10px">
		<a href="<%= contextPath %>/stay/index.do?region=121011002"><img style="border-radius:5px;" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/430c622b02756bf6960bcf4aab44b698_l.jpg" class="img-responsive"></a>
		<div><a href="<%= contextPath %>/stay/index.do?region=121011002"><h3 style="text-align:center">바르셀로나편</h3></a></div>
	</div>

	<div style="clear:both"></div>
</div>
<!---숙소튜토리얼---->

        </section>



        </main>


        <section class="stu_event_banner">
            <div class="stu_inner_wrap">
                <div class="event_banner2" style="background:#f3f3f3;height:120px;overflow:hidden;position:relative;">
                   
                            <a href="<%= contextPath %>/consulting/index.do" target="_blank" style="width:100%; height:100%;">
                                <div class="txtWrap">
                                    <p>유럽여행이 처음이라면</p>
                                    <b >전문가의 도움을 받아보세요.</b>
                                </div>
                                <div class="imgWrap" style="background-image:url(<%= contextPath %>/externalData/img_v15/back_private.png);">
                                    <b><span>전문가 유럽계획 의뢰</span>￦ 55,200</b>
                                </div>
                            </a>
		<div style="clear:both"></div>
                </div>
            </div>
        </section>



   <footer>
        <div class="stu_utils">
            <div class="stu_inner_wrap">
                <ul class="stu_links stu_clearfix">
                    <li><a href="https://docs.google.com/forms/d/e/1FAIpQLSdEGNceBzh0dJAaY5oF74W6z9Er9_M7ZMcv2xqvOWMcArKbsA/viewform" target="_blank">광고/제휴문의</a></li>
                    <li><a href="http://www.stubbyplanner.com/qa/" target="_blank">서비스문의</a></li>
                    <li><a href="http://www.stubbyplanner.com/personalinfo.do" target="_blank">개인정보 취급방침</a></li><br/>
                    <li><a href="http://www.stubbyplanner.com/common/usercontract.html" target="_blank">이용약관</a></li>
                    <li><a href="http://www.stubbyplanner.com/guide/tour_user_contract.html" target="_blank">여행자약관</a></li>
                    <li><a href="http://www.stubbyplanner.com/common/guidecontract.html" target="_blank">가이드약관</a></li>

                </ul>
                <ul class="stu_sns">
                    <li class="stu_facebook">
                        <a href="http://www.facebook.com/stubbyplanner/" target="_blank" title="페이스북">페이스북</a>
                    </li>
                    <li class="stu_instagram">
                        <a href="https://www.instagram.com/stubbyplanner/" target="_blank" title="인스타그램">인스타그램</a>
                    </li>
                    <li class="stu_kakaotalk">
                        <a href="https://pf.kakao.com/_QwGUM/" target="_blank" title="카카오톡">카카오톡</a>
                    </li>
                    <li class="stu_email">
                        <a href="mailto://stubbyteam@gmail.com" target="_blank" title="이메일">이메일</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="stu_coInfo">
            <div class="stu_inner_wrap">
                <div class="stu_footer_logo"></div>
                <div class="stu_copyright">
                    <div class="info_btn">사업자정보<i></i></div>
                    <div class="business_info">
                        <ul class="txtWrap">
                            <li>(주)스투비익스피어리언스</li>
                            <li>대표 : 백주흠</li>
                            <li>사업자등록번호 : 635-81-01124</li>
                        </ul>
                        <ul class="txtWrap">
                            <li>고객센터 : 02-886-0982</li>
                            <li>이메일 : stubbyteam@gmail.com</li>
                            <li>운영시간(한국) : 11시~19시(주말/공휴일 휴무)</li><br/>
                            <li>주소 : 서울특별시 관악구 남부순환로 1837 샤론빌딩 402</li>
                            <li>통신판매업 신고 : 2018-서울관악-1368호</li>
                        </ul>
                    </div>
                    자사는 서울특별시관광협회 공제영업보증보험에 가입되어 있습니다. 스투비익스피어리언스는 통신판매중개자이며 통신판매의 당사자가 아닙니다.<br/>따라서 스투비익스피어리언스는 상품·거래정보 및 거래에 대하여 책임을 지지 않습니다.

                </div>
            </div>
        </div>
    </footer>




    </div>



    <script>
        $(document).ready(function() {






         // 스와이핑
            var mySwiper = new Swiper ('.swiper1', {
                slidesPerView:'auto',
                freeMode:true,
                direction:'horizontal',
                noSwiping:true,
                noSwipingClass:'swiper-slide',
                breakpoints: {
                    620: {
                        noSwiping:false,
                        scrollbar: {
                            el: '.swiper-scrollbar',
                            hide: true,
                        },
                    },
                }
            });

            // 아코디언 버튼(토글)
            var hide_list = $('.swiper1 li:gt(5)');
            $(hide_list).addClass('stu_hide');
            $('.ct-toggle-btn-wrap').click(function() {
                $(this).children('.ct-toggle-btn').toggleClass('on');
                $(hide_list).toggleClass('stu_hide');
            });



        })
    </script>


 







<script src="<%= contextPath %>/externalData/js2/header_footer3.js" type="text/javascript"></script>
        <section class="stu_md_search">
            <div class="search_background"></div>
            <div class="md-container">
                <div class="md-header">
                    <a href="#stu_md-close" class="ico_close"></a>
                    <div class="md-searchWrap">
                      
                            <fieldset>


                                <input type="search" name="search_keyword" autocorrect="off" autosave="off" class="md-search-input" placeholder="도시로 검색하세요." value>
                            </fieldset>
                     
                    </div>
                </div>

                    <div class="md-content">

                        <div class="md-section">
                            <div class="content-header ico_theme">주요도시</div>
                            <ul class="content-list">
                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&city_id=1">
                                        <div class="value">
                                            <b class="name">파리</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                        <div class="count">

                                        </div>
                                    </a>
                                </li>
                               <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111011003">
                                        <div class="value">
                                            <b class="name">니스</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                        <div class="count">
                                    
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&city_id=111031001">
                                        <div class="value">
                                            <b class="name">런던</b>
                                            <i class="category">영국</i>
                                        </div>
                                        <div class="count">
      
                                        </div>
                                    </a>
                                </li>


                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111071001">
                                        <div class="value">
                                            <b class="name">암스테르담</b>
                                            <i class="category">네덜란드</i>
                                        </div>
                                        <div class="count">
                       
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111081001">
                                        <div class="value">
                                            <b class="name">브뤼셀</b>
                                            <i class="category">벨기에</i>
                                        </div>
                                        <div class="count">
                             
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111061006">
                                        <div class="value">
                                            <b class="name">프랑크푸르트</b>
                                            <i class="category">독일</i>
                                        </div>
                                        <div class="count">
                                       
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111061008">
                                        <div class="value">
                                            <b class="name">베를린</b>
                                            <i class="category">독일</i>
                                        </div>
                                        <div class="count">
                                          
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111061005">
                                        <div class="value">
                                            <b class="name">뮌헨</b>
                                            <i class="category">독일</i>
                                        </div>
                                        <div class="count">
                                      
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=131011001">
                                        <div class="value">
                                            <b class="name">프라하</b>
                                            <i class="category">체코</i>
                                        </div>
                                        <div class="count">
                                       
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=131041001">
                                        <div class="value">
                                            <b class="name">비엔나</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                        <div class="count">
                                
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=131041002">
                                        <div class="value">
                                            <b class="name">잘츠부르크</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                        <div class="count">
                                       
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=131021001">
                                        <div class="value">
                                            <b class="name">부다페스트</b>
                                            <i class="category">헝가리</i>
                                        </div>
                                        <div class="count">
                                
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=131061001">
                                        <div class="value">
                                            <b class="name">두브로브니크</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                        <div class="count">
                                     
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=131061002">
                                        <div class="value">
                                            <b class="name">스플리트</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                        <div class="count">
                                     
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=131061008">
                                        <div class="value">
                                            <b class="name">자그레브</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                        <div class="count">
                                     
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111041004">
                                        <div class="value">
                                            <b class="name">로마</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                        <div class="count">
                                     
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111041003">
                                        <div class="value">
                                            <b class="name">피렌체</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                        <div class="count">
                         
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111041006">
                                        <div class="value">
                                            <b class="name">베니스</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                        <div class="count">
                                    
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111041011">
                                        <div class="value">
                                            <b class="name">나폴리</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                        <div class="count">
                                    
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111041133">
                                        <div class="value">
                                            <b class="name">시칠리아</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                        <div class="count">
                                    
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111021002">
                                        <div class="value">
                                            <b class="name">인터라켄</b>
                                            <i class="category">스위스</i>
                                        </div>
                                        <div class="count">
                                    
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121011002">
                                        <div class="value">
                                            <b class="name">바르셀로나</b>
                                            <i class="category">스페인</i>
                                        </div>
                                        <div class="count">
                        
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                     <a href="<%= contextPath %>/mb/index_city.do?l=&region=121011003">
                                        <div class="value">
                                            <b class="name">마드리드</b>
                                            <i class="category">스페인</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                     <a href="<%= contextPath %>/mb/index_city.do?l=&region=121011001">
                                        <div class="value">
                                            <b class="name">그라나다</b>
                                            <i class="category">스페인</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="<%= contextPath %>/mb/index_city.do?l=&region=121011007">
                                        <div class="value">
                                            <b class="name">세비야</b>
                                            <i class="category">스페인</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                     <a href="<%= contextPath %>/mb/index_city.do?l=&region=121011005">
                                        <div class="value">
                                            <b class="name">말라가</b>
                                            <i class="category">스페인</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>


                                <li class="content-item">
                                     <a href="<%= contextPath %>/mb/index_city.do?l=&region=121021001">
                                        <div class="value">
                                            <b class="name">리스본</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                        <div class="count">
                                
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="<%= contextPath %>/mb/index_city.do?l=&region=121021008">
                                        <div class="value">
                                            <b class="name">포르투</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                        <div class="count">
                                
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="<%= contextPath %>/mb/index_city.do?l=&region=121031001">
                                        <div class="value">
                                            <b class="name">아테네</b>
                                            <i class="category">그리스</i>
                                        </div>
                                        <div class="count">
                                  
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                     <a href="<%= contextPath %>/mb/index_city.do?l=&region=121031002">
                                        <div class="value">
                                            <b class="name">산토리니</b>
                                            <i class="category">그리스</i>
                                        </div>
                                        <div class="count">
                                  
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="<%= contextPath %>/mb/index_city.do?l=&region=121031021">
                                        <div class="value">
                                            <b class="name">자킨토스</b>
                                            <i class="category">그리스</i>
                                        </div>
                                        <div class="count">
                                  
                                        </div>
                                    </a>
                                </li>



                                <li class="content-item">
                                     <a href="<%= contextPath %>/mb/index_city.do?l=&region=121041001">
                                        <div class="value">
                                            <b class="name">이스탄불</b>
                                            <i class="category">터키</i>
                                        </div>
                                        <div class="count">
                             
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="<%= contextPath %>/mb/index_city.do?l=&region=121041003">
                                        <div class="value">
                                            <b class="name">카파도키아</b>
                                            <i class="category">터키</i>
                                        </div>
                                        <div class="count">
                             
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="<%= contextPath %>/mb/index_city.do?l=&region=121041028">
                                        <div class="value">
                                            <b class="name">페티예</b>
                                            <i class="category">터키</i>
                                        </div>
                                        <div class="count">
                             
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                     <a href="<%= contextPath %>/mb/index_city.do?l=&region=141011001">
                                        <div class="value">
                                            <b class="name">모스크바</b>
                                            <i class="category">러시아</i>
                                        </div>
                                        <div class="count">
                                  
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="<%= contextPath %>/mb/index_city.do?l=&region=141011002">
                                        <div class="value">
                                            <b class="name">상트페테르부르크</b>
                                            <i class="category">러시아</i>
                                        </div>
                                        <div class="count">
             
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                     <a href="<%= contextPath %>/mb/index_city.do?l=&region=141011008">
                                        <div class="value">
                                            <b class="name">블라디보스톡</b>
                                            <i class="category">러시아</i>
                                        </div>
                                        <div class="count">
             
                                        </div>
                                    </a>
                                </li>




                                <li class="content-item">
                                     <a href="<%= contextPath %>/mb/index_city.do?l=&region=141051001">
                                        <div class="value">
                                            <b class="name">스톡홀름</b>
                                            <i class="category">스웨덴</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                     <a href="<%= contextPath %>/mb/index_city.do?l=&region=141031001">
                                        <div class="value">
                                            <b class="name">코펜하겐</b>
                                            <i class="category">덴마크</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                     <a href="<%= contextPath %>/mb/index_city.do?l=&region=141021001">
                                        <div class="value">
                                            <b class="name">헬싱키</b>
                                            <i class="category">핀란드</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="<%= contextPath %>/mb/index_city.do?l=&region=141041011">
                                        <div class="value">
                                            <b class="name">스타방에르</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>


                                <li class="content-item">
                                     <a href="<%= contextPath %>/mb/index_city.do?l=&region=141061001">
                                        <div class="value">
                                            <b class="name">탈린</b>
                                            <i class="category">에스토니아</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="<%= contextPath %>/mb/index_city.do?l=&region=141071003">
                                        <div class="value">
                                            <b class="name">레이캬비크</b>
                                            <i class="category">아이슬란드</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>



                                <li class="content-item">
                                     <a href="<%= contextPath %>/mb/index_city.do?l=&region=131041032">
                                        <div class="value">
                                            <b class="name">할슈타트</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>


                                <li class="content-item">
                                     <a href="<%= contextPath %>/mb/index_city.do?l=&region=131011003">
                                        <div class="value">
                                            <b class="name">체스키크롬로프</b>
                                            <i class="category">체코</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>



                                <li class="content-item">
                                     <a href="<%= contextPath %>/mb/index_city.do?l=&region=111101001">
                                        <div class="value">
                                            <b class="name">더블린</b>
                                            <i class="category">아일랜드</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>


                                <li class="content-item">
                                     <a href="<%= contextPath %>/mb/index_city.do?l=&region=121031024">
                                        <div class="value">
                                            <b class="name">이라클리온(크레타)</b>
                                            <i class="category">그리스</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="<%= contextPath %>/mb/index_city.do?l=&region=121031068">
                                        <div class="value">
                                            <b class="name">하니아(크레타)</b>
                                            <i class="category">그리스</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>

                            </ul>
                        </div>


                    <div class="md-content">

                        <div class="md-section">
                            <div class="content-header ico_theme">모든도시</div>
                            <ul class="content-list">

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&ciyt_id=111011004">
                                        <div class="value">
                                            <b class="name">파리</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111031001">
                                        <div class="value">
                                            <b class="name">런던</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111041004">
                                        <div class="value">
                                            <b class="name">로마</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=131011001">
                                        <div class="value">
                                            <b class="name">프라하</b>
                                            <i class="category">체코</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121011002">
                                        <div class="value">
                                            <b class="name">바르셀로나</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111061006">
                                        <div class="value">
                                            <b class="name">프랑크푸르트</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111061005">
                                        <div class="value">
                                            <b class="name">뮌헨</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111041006">
                                        <div class="value">
                                            <b class="name">베니스</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111041003">
                                        <div class="value">
                                            <b class="name">피렌체</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111071001">
                                        <div class="value">
                                            <b class="name">암스테르담</b>
                                            <i class="category">네덜란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=131041001">
                                        <div class="value">
                                            <b class="name">비엔나(빈)</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111061008">
                                        <div class="value">
                                            <b class="name">베를린</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111021002">
                                        <div class="value">
                                            <b class="name">인터라켄</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121011003">
                                        <div class="value">
                                            <b class="name">마드리드</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111021001">
                                        <div class="value">
                                            <b class="name">루체른</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111041001">
                                        <div class="value">
                                            <b class="name">밀라노</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=131021001">
                                        <div class="value">
                                            <b class="name">부다페스트</b>
                                            <i class="category">헝가리</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121031001">
                                        <div class="value">
                                            <b class="name">아테네</b>
                                            <i class="category">그리스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=131041002">
                                        <div class="value">
                                            <b class="name">잘츠부르크</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111081001">
                                        <div class="value">
                                            <b class="name">브뤼셀</b>
                                            <i class="category">벨기에</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121041001">
                                        <div class="value">
                                            <b class="name">이스탄불</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111011003">
                                        <div class="value">
                                            <b class="name">니스</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111041011">
                                        <div class="value">
                                            <b class="name">나폴리</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121011001">
                                        <div class="value">
                                            <b class="name">그라나다</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111021005">
                                        <div class="value">
                                            <b class="name">취리히</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121021001">
                                        <div class="value">
                                            <b class="name">리스본</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111061001">
                                        <div class="value">
                                            <b class="name">하이델베르크</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121011007">
                                        <div class="value">
                                            <b class="name">세비야</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=141051001">
                                        <div class="value">
                                            <b class="name">스톡홀름</b>
                                            <i class="category">스웨덴</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111021015">
                                        <div class="value">
                                            <b class="name">베른</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=131041032">
                                        <div class="value">
                                            <b class="name">할슈타트</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111031004">
                                        <div class="value">
                                            <b class="name">옥스퍼드</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=141011002">
                                        <div class="value">
                                            <b class="name">상트페테르부르크</b>
                                            <i class="category">러시아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=131011003">
                                        <div class="value">
                                            <b class="name">체스키 크루믈로프</b>
                                            <i class="category">체코</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=131061001">
                                        <div class="value">
                                            <b class="name">두브로브니크</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111061002">
                                        <div class="value">
                                            <b class="name">로텐부르크</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=141011001">
                                        <div class="value">
                                            <b class="name">모스크바</b>
                                            <i class="category">러시아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111031008">
                                        <div class="value">
                                            <b class="name">에든버러</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111011005">
                                        <div class="value">
                                            <b class="name">아비뇽</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=141041002">
                                        <div class="value">
                                            <b class="name">오슬로</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121011004">
                                        <div class="value">
                                            <b class="name">톨레도</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=141021001">
                                        <div class="value">
                                            <b class="name">헬싱키</b>
                                            <i class="category">핀란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111061003">
                                        <div class="value">
                                            <b class="name">퓌센</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=131041005">
                                        <div class="value">
                                            <b class="name">인스브루크</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121011057">
                                        <div class="value">
                                            <b class="name">론다</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=131031003">
                                        <div class="value">
                                            <b class="name">바르샤바</b>
                                            <i class="category">폴란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=141031001">
                                        <div class="value">
                                            <b class="name">코펜하겐</b>
                                            <i class="category">덴마크</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111061012">
                                        <div class="value">
                                            <b class="name">뒤셀도르프</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111011010">
                                        <div class="value">
                                            <b class="name">리옹</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111021006">
                                        <div class="value">
                                            <b class="name">융프라우</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111041009">
                                        <div class="value">
                                            <b class="name">아시시</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111011002">
                                        <div class="value">
                                            <b class="name">베르사유</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111061011">
                                        <div class="value">
                                            <b class="name">쾰른</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111061004">
                                        <div class="value">
                                            <b class="name">드레스덴</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111021008">
                                        <div class="value">
                                            <b class="name">제네바</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111011008">
                                        <div class="value">
                                            <b class="name">몽생미셸</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121011009">
                                        <div class="value">
                                            <b class="name">발렌시아</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111031005">
                                        <div class="value">
                                            <b class="name">케임브리지</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121031002">
                                        <div class="value">
                                            <b class="name">산토리니 섬</b>
                                            <i class="category">그리스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111081002">
                                        <div class="value">
                                            <b class="name">브뤼헤</b>
                                            <i class="category">벨기에</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111031007">
                                        <div class="value">
                                            <b class="name">리버풀</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111041036">
                                        <div class="value">
                                            <b class="name">베로나</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111101001">
                                        <div class="value">
                                            <b class="name">더블린</b>
                                            <i class="category">아일랜드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=131031004">
                                        <div class="value">
                                            <b class="name">크라쿠프</b>
                                            <i class="category">폴란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=131041003">
                                        <div class="value">
                                            <b class="name">그라츠</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111011012">
                                        <div class="value">
                                            <b class="name">스트라스부르</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121011005">
                                        <div class="value">
                                            <b class="name">말라가</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=131061002">
                                        <div class="value">
                                            <b class="name">스플리트</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111011014">
                                        <div class="value">
                                            <b class="name">마르세유</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111031002">
                                        <div class="value">
                                            <b class="name">브라이튼</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111011011">
                                        <div class="value">
                                            <b class="name">깐느</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111041002">
                                        <div class="value">
                                            <b class="name">소렌토</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121041003">
                                        <div class="value">
                                            <b class="name">카파도키아</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111021016">
                                        <div class="value">
                                            <b class="name">로잔</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111031030">
                                        <div class="value">
                                            <b class="name">맨체스터</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111011128">
                                        <div class="value">
                                            <b class="name">엑상프로방스</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=141041001">
                                        <div class="value">
                                            <b class="name">베르겐</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111011143">
                                        <div class="value">
                                            <b class="name">지베르니</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111041012">
                                        <div class="value">
                                            <b class="name">피사</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111041005">
                                        <div class="value">
                                            <b class="name">폼페이</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111071002">
                                        <div class="value">
                                            <b class="name">잔세스칸스</b>
                                            <i class="category">네덜란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111031009">
                                        <div class="value">
                                            <b class="name">글래스고</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121011008">
                                        <div class="value">
                                            <b class="name">세고비아</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111061024">
                                        <div class="value">
                                            <b class="name">슈투트가르트</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111061009">
                                        <div class="value">
                                            <b class="name">라이프치히</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111041024">
                                        <div class="value">
                                            <b class="name">람페두사 섬</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111061030">
                                        <div class="value">
                                            <b class="name">밤베르크</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111061020">
                                        <div class="value">
                                            <b class="name">뉘른베르크</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121041006">
                                        <div class="value">
                                            <b class="name">앙카라</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111011013">
                                        <div class="value">
                                            <b class="name">보르도</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121041004">
                                        <div class="value">
                                            <b class="name">에페소스</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111081003">
                                        <div class="value">
                                            <b class="name">안트워프</b>
                                            <i class="category">벨기에</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111061016">
                                        <div class="value">
                                            <b class="name">함부르크</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111041010">
                                        <div class="value">
                                            <b class="name">카프리 섬</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111011001">
                                        <div class="value">
                                            <b class="name">샤모니몽블랑</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=131041006">
                                        <div class="value">
                                            <b class="name">잘츠캄머구트</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121011048">
                                        <div class="value">
                                            <b class="name">네르하</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=131061008">
                                        <div class="value">
                                            <b class="name">자그레브</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111111001">
                                        <div class="value">
                                            <b class="name">룩셈부르크</b>
                                            <i class="category">룩셈부르크</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121021003">
                                        <div class="value">
                                            <b class="name">신트라</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111031003">
                                        <div class="value">
                                            <b class="name">윈저</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111021031">
                                        <div class="value">
                                            <b class="name">몽트뢰</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=141021012">
                                        <div class="value">
                                            <b class="name">로바니에미</b>
                                            <i class="category">핀란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121041030">
                                        <div class="value">
                                            <b class="name">파묵칼레</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111041008">
                                        <div class="value">
                                            <b class="name">시에나</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111021007">
                                        <div class="value">
                                            <b class="name">그린델발트</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121011027">
                                        <div class="value">
                                            <b class="name">산티아고 데 콤포스텔라</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=131081001">
                                        <div class="value">
                                            <b class="name">부쿠레슈티</b>
                                            <i class="category">루마니아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121011006">
                                        <div class="value">
                                            <b class="name">코르도바</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111031006">
                                        <div class="value">
                                            <b class="name">바스</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111031010">
                                        <div class="value">
                                            <b class="name">바이버리</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111041022">
                                        <div class="value">
                                            <b class="name">제노바</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=141051002">
                                        <div class="value">
                                            <b class="name">웁살라</b>
                                            <i class="category">스웨덴</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111021004">
                                        <div class="value">
                                            <b class="name">체르마트</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=131011010">
                                        <div class="value">
                                            <b class="name">오스트라바</b>
                                            <i class="category">체코</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111071003">
                                        <div class="value">
                                            <b class="name">알크마르</b>
                                            <i class="category">네덜란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121041028">
                                        <div class="value">
                                            <b class="name">페티예</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111021017">
                                        <div class="value">
                                            <b class="name">바젤</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111011110">
                                        <div class="value">
                                            <b class="name">아를</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111011141">
                                        <div class="value">
                                            <b class="name">퐁텐블로</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111031044">
                                        <div class="value">
                                            <b class="name">요크</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=131011002">
                                        <div class="value">
                                            <b class="name">브르노</b>
                                            <i class="category">체코</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111041035">
                                        <div class="value">
                                            <b class="name">토리노</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111031014">
                                        <div class="value">
                                            <b class="name">버밍엄</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121011081">
                                        <div class="value">
                                            <b class="name">레온</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111011015">
                                        <div class="value">
                                            <b class="name">디종</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111061027">
                                        <div class="value">
                                            <b class="name">아헨</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111071008">
                                        <div class="value">
                                            <b class="name">로테르담</b>
                                            <i class="category">네덜란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=131051002">
                                        <div class="value">
                                            <b class="name">브라티슬라바</b>
                                            <i class="category">슬로바키아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111021009">
                                        <div class="value">
                                            <b class="name">라우터브루넨</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111061034">
                                        <div class="value">
                                            <b class="name">본</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111061104">
                                        <div class="value">
                                            <b class="name">바트 소덴</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111061017">
                                        <div class="value">
                                            <b class="name">하노버</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=131011005">
                                        <div class="value">
                                            <b class="name">카를로비 바리</b>
                                            <i class="category">체코</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111011009">
                                        <div class="value">
                                            <b class="name">생 폴 드 방스</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121011089">
                                        <div class="value">
                                            <b class="name">마요르카 섬</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111041016">
                                        <div class="value">
                                            <b class="name">볼로냐</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=131081002">
                                        <div class="value">
                                            <b class="name">브라쇼브</b>
                                            <i class="category">루마니아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=131041025">
                                        <div class="value">
                                            <b class="name">바트 이슐</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121021008">
                                        <div class="value">
                                            <b class="name">포르투</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=141061001">
                                        <div class="value">
                                            <b class="name">탈린</b>
                                            <i class="category">에스토니아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=131061009">
                                        <div class="value">
                                            <b class="name">플리트비체</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111041079">
                                        <div class="value">
                                            <b class="name">포지타노</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=131041007">
                                        <div class="value">
                                            <b class="name">린츠</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111071004">
                                        <div class="value">
                                            <b class="name">헤이그</b>
                                            <i class="category">네덜란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111061064">
                                        <div class="value">
                                            <b class="name">레겐스부르크</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121011010">
                                        <div class="value">
                                            <b class="name">산 세바스티안</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=131071003">
                                        <div class="value">
                                            <b class="name">류블랴나</b>
                                            <i class="category">슬로베니아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121041031">
                                        <div class="value">
                                            <b class="name">셀축</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111061058">
                                        <div class="value">
                                            <b class="name">만하임</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111041056">
                                        <div class="value">
                                            <b class="name">오르비에토</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111031029">
                                        <div class="value">
                                            <b class="name">리즈</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111041015">
                                        <div class="value">
                                            <b class="name">바리</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111021038">
                                        <div class="value">
                                            <b class="name">슈피츠</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121011014">
                                        <div class="value">
                                            <b class="name">빌바오</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111031031">
                                        <div class="value">
                                            <b class="name">뉴캐슬</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121031013">
                                        <div class="value">
                                            <b class="name">미코노스 섬</b>
                                            <i class="category">그리스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111061010">
                                        <div class="value">
                                            <b class="name">브레멘</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111031051">
                                        <div class="value">
                                            <b class="name">포츠머스</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111021012">
                                        <div class="value">
                                            <b class="name">필라투스 산</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111031184">
                                        <div class="value">
                                            <b class="name">스톤헨지</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121011093">
                                        <div class="value">
                                            <b class="name">프리힐리아나</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111011044">
                                        <div class="value">
                                            <b class="name">툴루즈</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121041007">
                                        <div class="value">
                                            <b class="name">안탈리아</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111061040">
                                        <div class="value">
                                            <b class="name">에센</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=131071001">
                                        <div class="value">
                                            <b class="name">블레드</b>
                                            <i class="category">슬로베니아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111031081">
                                        <div class="value">
                                            <b class="name">스윈든</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111071005">
                                        <div class="value">
                                            <b class="name">에인트호번</b>
                                            <i class="category">네덜란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111011050">
                                        <div class="value">
                                            <b class="name">안시</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121051003">
                                        <div class="value">
                                            <b class="name">예루살렘</b>
                                            <i class="category">이스라엘</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121011023">
                                        <div class="value">
                                            <b class="name">팔마 데 마요르카</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=141041011">
                                        <div class="value">
                                            <b class="name">스타방게르</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111041043">
                                        <div class="value">
                                            <b class="name">코모</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121031036">
                                        <div class="value">
                                            <b class="name">델포이</b>
                                            <i class="category">그리스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111061134">
                                        <div class="value">
                                            <b class="name">신스하임</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121041014">
                                        <div class="value">
                                            <b class="name">이즈미르</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121031016">
                                        <div class="value">
                                            <b class="name">로도스 섬</b>
                                            <i class="category">그리스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121021004">
                                        <div class="value">
                                            <b class="name">카스카이스</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121011079">
                                        <div class="value">
                                            <b class="name">부르고스</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=131011012">
                                        <div class="value">
                                            <b class="name">체스케 부데요비체</b>
                                            <i class="category">체코</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111071011">
                                        <div class="value">
                                            <b class="name">위트레흐트</b>
                                            <i class="category">네덜란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121011031">
                                        <div class="value">
                                            <b class="name">사라고사</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=141031002">
                                        <div class="value">
                                            <b class="name">오덴세</b>
                                            <i class="category">덴마크</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111011120">
                                        <div class="value">
                                            <b class="name">생 말로</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111061101">
                                        <div class="value">
                                            <b class="name">포츠담</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121031019">
                                        <div class="value">
                                            <b class="name">테살로니키</b>
                                            <i class="category">그리스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111031046">
                                        <div class="value">
                                            <b class="name">윈더미어</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111061057">
                                        <div class="value">
                                            <b class="name">마인츠</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111061102">
                                        <div class="value">
                                            <b class="name">노이스</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=131031002">
                                        <div class="value">
                                            <b class="name">비엘리츠카</b>
                                            <i class="category">폴란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=131141001">
                                        <div class="value">
                                            <b class="name">사라예보</b>
                                            <i class="category">보스니아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=131111001">
                                        <div class="value">
                                            <b class="name">베오그라드</b>
                                            <i class="category">세르비아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111011119">
                                        <div class="value">
                                            <b class="name">콜마르</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111120001">
                                        <div class="value">
                                            <b class="name">산 마리노</b>
                                            <i class="category">산 마리노</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111011036">
                                        <div class="value">
                                            <b class="name">낭트</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=121011086">
                                        <div class="value">
                                            <b class="name">라스 팔마스</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111011033">
                                        <div class="value">
                                            <b class="name">몽펠리에</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111041128">
                                        <div class="value">
                                            <b class="name">벨라지오</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=131051001">
                                        <div class="value">
                                            <b class="name">타트라 산맥</b>
                                            <i class="category">슬로바키아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="<%= contextPath %>/mb/index_city.do?l=&region=111061071">
                                        <div class="value">
                                            <b class="name">바이마르</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                            </ul>
                        </div>


            </section>
            <!--// 모달 영역 -->
</body>
</html>
