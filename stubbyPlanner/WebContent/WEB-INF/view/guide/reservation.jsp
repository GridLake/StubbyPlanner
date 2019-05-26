<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>내 예약</title>


   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">


    <!-- CSS/JavaScript -->
    <link rel="stylesheet" type="text/css" href="/stubbyPlanner/externalData/market/css/common4.css">
    <link rel="stylesheet" type="text/css" href="/stubbyPlanner/externalData/market/css/md-search.css">
    <link rel="stylesheet" type="text/css" href="/stubbyPlanner/externalData/market/css/reservation.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

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
<style>

header .stu_gnb_container .stu_gnb_wrap li#ico_booking:after { content:"투어 홈"; }

</style>
</head>	
<body>
<div class="stu_wrap">
<script>
function cancel(gs)
{
if(confirm("취소후에는 다시 예약이 불가능할 수 있습니다. 정말 취소하시겠습니까?"))
	{
	$.post( "asp/cancel_reservation.asp", {rsv_serial:gs})
	  .done(function( data ) {
		if(data=="OK")
		{
			alert("취소되었습니다.");
			window.location="reservation.asp?email=&resv_name=&needlogin=&access_key=";


		}
		else
		{
			alert("실패");
		}
	  });
	}
}
</script>

 <!--=== Header ===-->    


    <header>
        <div class="stu_gnb_container stu_clearfix">
            <div class="stu_inner_wrap">
                <h1 class="stu_logo">
                    <a href="/stubbyPlanner/common/index.do">
                        <img class="fh" src="/stubbyPlanner/externalData/market/images/stu_logo.png" alt=""/>
                    </a>
                </h1>
                <ul class="stu_gnb_wrap">
                    <li id="ico_search">
                        <button type="button" class="ico_search" onclick="location.href='#'"></button>
                    </li>

                    <li id="ico_booking">
                        <a href="/stubbyPlanner/market/index.do">
                            <button type="button" class="ico_booking"></button>
                        </a>
                    </li>
                    <li id="ico_planner">
                        <a href="/stubbyPlanner/planner/index.do">
                            <button type="button" class="ico_planner"></button>
                        </a>
                    </li>

                </ul>
            </div>
        </div>
    </header>

    <main class="stu_clearfix">
  
        <section class="stu_top_banner">
            <div class="stu_inner_wrap">
                <div class="titArea">
                    <b>예약내역</b>


                    <div class="before_login">
                        <p> 로그인하시면 스투비에서 간편예약한 투어 신청내역과 동행 신청내역을 한 번에 확인 가능합니다. 또한 로그인 없이 예약하신 내역을 로그인 후 내 예약 리스트에 옮기실 수 있습니다.</p>
                        <div class="btn_login">
                            <a href="/stubbyPlanner/common/login.do" class="stu_btn">스투비플래너 로그인</a>
                        </div>
                    </div>

                </div>
            </div>
        </section>






       <section class="stu_nonmember_resv">
            <div class="stu_inner_wrap">
                <div class="titArea">
                    <h3 class="stu_title">비회원 예약 검색</h3>
                </div>
<form name="form" action="reservation.asp#searched" method="post">
                <ul class="formArea stu_clearfix">
                    <li>
                        <span>신청자명</span>
                        <input type="text" name="resv_name">
                    </li>
                    <li>
                        <span>이메일주소</span>
                        <input type="text" name="email">
                    </li>
                </ul>
		<script>
			function searchReservation()
			{
				document.form.submit();
			}
		</script>
</form>
                <div class="btn_submit">
                    <a href="javascript:searchReservation()" class="stu_btn">예약 검색</a>


                </div>
            </div>
        </section>



  



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


</div>
<!--//Contents_End-->

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

        // 카테고리 Toggle
        $('.stu_category li').click(function() {
            // 카테고리 탭 활성화
            $('.stu_category li').removeClass('on');
            $(this).addClass('on');
            // 예약 리스트 필터링
            var filterName = $(this).find('p').attr('class');
            var category = $('.prd_list').children('li.prd_item').attr('class');
            $('.prd_list').children('li.' + filterName).removeClass('d-n');
            $('.prd_list').children('li:not(.' + filterName + ')').addClass('d-n');
            // 디폴트(empty) 이미지 표시
            var tourCount = $('.stu_prd_list.tour .prd_list').children('li.prd_item:not(.d-n)').length;
            var partyCount = $('.stu_prd_list.party .prd_list').children('li.prd_item:not(.d-n)').length;
            if(tourCount == 0) { $('.stu_prd_list.tour .empty_container').removeClass('d-n'); } else { $('.stu_prd_list.tour .empty_container').addClass('d-n'); };
            if(partyCount == 0) { $('.stu_prd_list.party .empty_container').removeClass('d-n'); } else { $('.stu_prd_list.party .empty_container').addClass('d-n'); };
        }); $('.stu_category li:first').click();

        // 예약 리스트 카운팅
        var ongoing = $('.stu_category .ongoing .count');
        var completed = $('.stu_category .completed .count');
        var canceled = $('.stu_category .canceled .count');
        ongoing.text('(' + $('.prd_list').children('li.ongoing').length + ')');
        if(ongoing.text() == '(0)') { $(ongoing).css('display','none'); } else { $(ongoing).css('display', 'inline-block'); }
        completed.text('(' + $('.prd_list').children('li.completed').length + ')');
        if(completed.text() == '(0)') { $(completed).css('display','none'); } else { $(completed).css('display', 'inline-block'); }
        canceled.text('(' + $('.prd_list').children('li.canceled').length + ')');
        if(canceled.text() == '(0)') { $(canceled).css('display','none'); } else { $(canceled).css('display', 'inline-block'); }

        // 검색 팝업 Toggle
        $('#ico_search, .stu_wrap button.ico_search, .stu_search-input-wrap').click(function() {
            $('body').addClass('modal-opened');
            $('.stu_md-background').addClass('on');
            $('.md-searchWrap input.md-search-input').focus();
        });
        $('.md-header a.ico_back2').click(function() {
            $('body').removeClass('modal-opened');
            $('.stu_md-background').removeClass('on');
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
    });
</script>
</div>
            <section class="stu_md-background" style="z-index:999">
                <div class="md-container" style="z-index:999">
                    <div class="md-header" style="background:#00A572">
                        <a href="#stu_md-close" class="ico_back2"></a>
                        <div class="md-searchWrap">
                          



                                <fieldset>
			<form method="post">

                                    <input type="search" name="search" autocorrect="off" autosave="off" class="md-search-input" placeholder="도시 / 국가 / 투어명으로 검색" value>
			</form>
                                </fieldset>
    





                        </div>
                    </div>
                    <div class="md-content">
                        <div class="md-section">
                            <div class="content-header ico_country">서유럽 국가</div>
                            <ul class="content-list">
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?l=&region=11101">
                                        <div class="value">
                                            <b class="name">프랑스</b>
                                        </div>
                                        <div class="count">
               
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?l=&region=11104">
                                        <div class="value">
                                            <b class="name">이탈리아</b>
                                        </div>
                                        <div class="count">
                    
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?l=&region=11102">
                                        <div class="value">
                                            <b class="name">스위스</b>
                                        </div>
                                        <div class="count">
                              
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?l=&region=11103">
                                        <div class="value">
                                            <b class="name">영국</b>
                                        </div>
                                        <div class="count">
                    
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?l=&region=11106">
                                        <div class="value">
                                            <b class="name">독일</b>
                                        </div>
                                        <div class="count">
                   
                                        </div>
                                    </a>
                                </li>


                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?l=&region=11108">
                                        <div class="value">
                                            <b class="name">벨기에</b>
                                        </div>
                                        <div class="count">
               
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?l=&region=11107">
                                        <div class="value">
                                            <b class="name">네덜란드</b>
                                        </div>
                                        <div class="count">
                              
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?l=&region=11110">
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
                                    <a href="/market/index_ctry.asp?l=&region=12101">
                                        <div class="value">
                                            <b class="name">스페인</b>
                                        </div>
                                        <div class="count">
                      
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?l=&region=12102">
                                        <div class="value">
                                            <b class="name">포르투갈</b>
                                        </div>
                                        <div class="count">
                       
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?l=&region=12103">
                                        <div class="value">
                                            <b class="name">그리스</b>
                                        </div>
                                        <div class="count">
                 
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?l=&region=12104">

                                        <div class="value">
                                            <b class="name">터키</b>
                                        </div>
                                        <div class="count">
       
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?l=&region=12107">

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
                                    <a href="/market/index_ctry.asp?l=&region=13">

                                        <div class="value">
                                            <b class="name">체코</b>
                                        </div>
                                        <div class="count">
                    
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?l=&region=13">
                                        <div class="value">
                                            <b class="name">헝가리</b>
                                        </div>
                                        <div class="count">
                 
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?l=&region=13">
                                        <div class="value">
                                            <b class="name">오스트리아</b>
                                        </div>
                                        <div class="count">
                    
                                        </div>
                                    </a>
                                </li>


                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?l=&region=13">
                                        <div class="value">
                                            <b class="name">슬로베니아</b>
                                        </div>
                                        <div class="count">

                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?l=&region=13106">
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
                                    <a href="/market/index_ctry.asp?l=&region=14107">
                                        <div class="value">
                                            <b class="name">아이슬란드</b>
                                        </div>
                                        <div class="count">
                  
                                        </div>
                                    </a>
                                </li>
	                     <li class="content-item">
                                    <a href="/market/index_ctry.asp?l=&region=14104">
                                        <div class="value">
                                            <b class="name">노르웨이</b>
                                        </div>
                                        <div class="count">
                   
                                        </div>
                                    </a>
                                </li>



                                <li class="content-item">
                                     <a href="/market/index_ctry.asp?l=&region=14103">
                                        <div class="value">
                                            <b class="name">덴마크</b>
                                        </div>
                                        <div class="count">
                
                                        </div>
                                    </a>
                                </li>


                                <li class="content-item">
                                     <a href="/market/index_ctry.asp?l=&region=14102">
                                        <div class="value">
                                            <b class="name">핀란드</b>
                                        </div>
                                        <div class="count">
                
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="/market/index_ctry.asp?l=&region=14105">
                                        <div class="value">
                                            <b class="name">스웨덴</b>
                                        </div>
                                        <div class="count">
                
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="/market/index_ctry.asp?l=&region=14101">
                                        <div class="value">
                                            <b class="name">러시아</b>
                                        </div>
                                        <div class="count">
                
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                      <a href="/market/index_ctry.asp?l=&region=14106">
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
                                    <a href="/market/index_city.asp?l=&region=111011004">
                                        <div class="value">
                                            <b class="name">파리</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                        <div class="count">

                                        </div>
                                    </a>
                                </li>
                               <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111011008">
                                        <div class="value">
                                            <b class="name">몽생미셀</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                        <div class="count">
                                    
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111031001">
                                        <div class="value">
                                            <b class="name">런던</b>
                                            <i class="category">영국</i>
                                        </div>
                                        <div class="count">
      
                                        </div>
                                    </a>
                                </li>


                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111071001">
                                        <div class="value">
                                            <b class="name">암스테르담</b>
                                            <i class="category">네덜란드</i>
                                        </div>
                                        <div class="count">
                       
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111081001">
                                        <div class="value">
                                            <b class="name">브뤼셀</b>
                                            <i class="category">벨기에</i>
                                        </div>
                                        <div class="count">
                             
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111061006">
                                        <div class="value">
                                            <b class="name">프랑크푸르트</b>
                                            <i class="category">독일</i>
                                        </div>
                                        <div class="count">
                                       
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111061008">
                                        <div class="value">
                                            <b class="name">베를린</b>
                                            <i class="category">독일</i>
                                        </div>
                                        <div class="count">
                                          
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111061005">
                                        <div class="value">
                                            <b class="name">뮌헨</b>
                                            <i class="category">독일</i>
                                        </div>
                                        <div class="count">
                                      
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=131011001">
                                        <div class="value">
                                            <b class="name">프라하</b>
                                            <i class="category">체코</i>
                                        </div>
                                        <div class="count">
                                       
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=131041001">
                                        <div class="value">
                                            <b class="name">비엔나</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                        <div class="count">
                                
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=131041002">
                                        <div class="value">
                                            <b class="name">잘츠부르크</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                        <div class="count">
                                       
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=131021001">
                                        <div class="value">
                                            <b class="name">부다페스트</b>
                                            <i class="category">헝가리</i>
                                        </div>
                                        <div class="count">
                                
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=131061001">
                                        <div class="value">
                                            <b class="name">두브로브니크</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                        <div class="count">
                                     
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=131061002">
                                        <div class="value">
                                            <b class="name">스플리트</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                        <div class="count">
                                     
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=131061008">
                                        <div class="value">
                                            <b class="name">자그레브</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                        <div class="count">
                                     
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111041004">
                                        <div class="value">
                                            <b class="name">로마</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                        <div class="count">
                                     
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111041003">
                                        <div class="value">
                                            <b class="name">피렌체</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                        <div class="count">
                         
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111041006">
                                        <div class="value">
                                            <b class="name">베니스</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                        <div class="count">
                                    
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111041011">
                                        <div class="value">
                                            <b class="name">나폴리</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                        <div class="count">
                                    
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111041133">
                                        <div class="value">
                                            <b class="name">시칠리아</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                        <div class="count">
                                    
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=111021002">
                                        <div class="value">
                                            <b class="name">인터라켄</b>
                                            <i class="category">스위스</i>
                                        </div>
                                        <div class="count">
                                    
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_city.asp?l=&region=121011002">
                                        <div class="value">
                                            <b class="name">바르셀로나</b>
                                            <i class="category">스페인</i>
                                        </div>
                                        <div class="count">
                        
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                     <a href="/market/index_city.asp?l=&region=121011003">
                                        <div class="value">
                                            <b class="name">마드리드</b>
                                            <i class="category">스페인</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                     <a href="/market/index_city.asp?l=&region=121011001">
                                        <div class="value">
                                            <b class="name">그라나다</b>
                                            <i class="category">스페인</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="/market/index_city.asp?l=&region=121011007">
                                        <div class="value">
                                            <b class="name">세비야</b>
                                            <i class="category">스페인</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                     <a href="/market/index_city.asp?l=&region=121011005">
                                        <div class="value">
                                            <b class="name">말라가</b>
                                            <i class="category">스페인</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>


                                <li class="content-item">
                                     <a href="/market/index_city.asp?l=&region=121021001">
                                        <div class="value">
                                            <b class="name">리스본</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                        <div class="count">
                                
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="/market/index_city.asp?l=&region=121021008">
                                        <div class="value">
                                            <b class="name">포르투</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                        <div class="count">
                                
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="/market/index_city.asp?l=&region=121031001">
                                        <div class="value">
                                            <b class="name">아테네</b>
                                            <i class="category">그리스</i>
                                        </div>
                                        <div class="count">
                                  
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                     <a href="/market/index_city.asp?l=&region=121031002">
                                        <div class="value">
                                            <b class="name">산토리니</b>
                                            <i class="category">그리스</i>
                                        </div>
                                        <div class="count">
                                  
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="/market/index_city.asp?l=&region=121031021">
                                        <div class="value">
                                            <b class="name">자킨토스</b>
                                            <i class="category">그리스</i>
                                        </div>
                                        <div class="count">
                                  
                                        </div>
                                    </a>
                                </li>



                                <li class="content-item">
                                     <a href="/market/index_city.asp?l=&region=121041001">
                                        <div class="value">
                                            <b class="name">이스탄불</b>
                                            <i class="category">터키</i>
                                        </div>
                                        <div class="count">
                             
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="/market/index_city.asp?l=&region=121041003">
                                        <div class="value">
                                            <b class="name">카파도키아</b>
                                            <i class="category">터키</i>
                                        </div>
                                        <div class="count">
                             
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="/market/index_city.asp?l=&region=121041028">
                                        <div class="value">
                                            <b class="name">페티예</b>
                                            <i class="category">터키</i>
                                        </div>
                                        <div class="count">
                             
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                     <a href="/market/index_city.asp?l=&region=141011001">
                                        <div class="value">
                                            <b class="name">모스크바</b>
                                            <i class="category">러시아</i>
                                        </div>
                                        <div class="count">
                                  
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="/market/index_city.asp?l=&region=141011002">
                                        <div class="value">
                                            <b class="name">상트페테르부르크</b>
                                            <i class="category">러시아</i>
                                        </div>
                                        <div class="count">
             
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                     <a href="/market/index_city.asp?l=&region=141011008">
                                        <div class="value">
                                            <b class="name">블라디보스톡</b>
                                            <i class="category">러시아</i>
                                        </div>
                                        <div class="count">
             
                                        </div>
                                    </a>
                                </li>




                                <li class="content-item">
                                     <a href="/market/index_city.asp?l=&region=141051001">
                                        <div class="value">
                                            <b class="name">스톡홀름</b>
                                            <i class="category">스웨덴</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                     <a href="/market/index_city.asp?l=&region=141031001">
                                        <div class="value">
                                            <b class="name">코펜하겐</b>
                                            <i class="category">덴마크</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                     <a href="/market/index_city.asp?l=&region=141021001">
                                        <div class="value">
                                            <b class="name">헬싱키</b>
                                            <i class="category">핀란드</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="/market/index_city.asp?l=&region=141041011">
                                        <div class="value">
                                            <b class="name">스타방에르</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>


                                <li class="content-item">
                                     <a href="/market/index_city.asp?l=&region=141061001">
                                        <div class="value">
                                            <b class="name">탈린</b>
                                            <i class="category">에스토니아</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="/market/index_city.asp?l=&region=141071003">
                                        <div class="value">
                                            <b class="name">레이캬비크</b>
                                            <i class="category">아이슬란드</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                     <a href="/market/index_city.asp?l=&region=141071027">
                                        <div class="value">
                                            <b class="name">블루라군</b>
                                            <i class="category">아이슬란드</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>




                                <li class="content-item">
                                     <a href="/market/index_city.asp?l=&region=131041032">
                                        <div class="value">
                                            <b class="name">할슈타트</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>


                                <li class="content-item">
                                     <a href="/market/index_city.asp?l=&region=131011003">
                                        <div class="value">
                                            <b class="name">체스키크롬로프</b>
                                            <i class="category">체코</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>



                                <li class="content-item">
                                     <a href="/market/index_city.asp?l=&region=111101001">
                                        <div class="value">
                                            <b class="name">더블린</b>
                                            <i class="category">아일랜드</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>


                        <div class="md-section">
                            <div class="content-header ico_country">인기투어 카테고리</div>
                            <ul class="content-list">
                                <li class="content-item">
                                    <a href="/market/group.asp?serial=13&l=">
                                        <div class="value">
                                            <b class="name">스위스 패러글라이딩</b>
                                        </div>
                                        <div class="count">
                  
                                        </div>
                                    </a>
                                </li>
	                     <li class="content-item">
                                   <a href="/market/group.asp?serial=1&l=">
                                        <div class="value">
                                            <b class="name">몽생미셀투어</b>
                                        </div>
                                        <div class="count">
                   
                                        </div>
                                    </a>
                                </li>



                                <li class="content-item">
                                     <a href="/market/group.asp?serial=27&l=">
                                        <div class="value">
                                            <b class="name">이탈리아 남부투어</b>
                                        </div>
                                        <div class="count">
                
                                        </div>
                                    </a>
                                </li>


                                <li class="content-item">
                                     <a href="/market/group.asp?serial=26&l=">
                                        <div class="value">
                                            <b class="name">바티칸 투어</b>
                                        </div>
                                        <div class="count">
                
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                   <a href="/market/group.asp?serial=28&l=">
                                        <div class="value">
                                            <b class="name">로마시내투어</b>
                                        </div>
                                        <div class="count">
                
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="/market/group.asp?serial=32&l=">
                                        <div class="value">
                                            <b class="name">스페인 가우디 투어</b>
                                        </div>
                                        <div class="count">
                
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                      <a href="/market/group.asp?serial=21&l=">
                                        <div class="value">
                                            <b class="name">코츠월드 + 옥스퍼드 투어</b>
                                        </div>
                                        <div class="count">
 
                                        </div>
                                    </a>
                                </li>


                                <li class="content-item">
                                     <a href="/market/group.asp?serial=72&l=">
                                        <div class="value">
                                            <b class="name">해리포터 스튜디오</b>
                                        </div>
                                        <div class="count">
 
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                      <a href="/market/group.asp?serial=20&l=">
                                        <div class="value">
                                            <b class="name">런던 뮤지컬</b>
                                        </div>
                                        <div class="count">
 
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="/market/group.asp?serial=2&l=">
                                        <div class="value">
                                            <b class="name">지베르니 + 오베르쉬즈우아즈</b>
                                        </div>
                                        <div class="count">
 
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="/market/group.asp?serial=7&l=">
                                        <div class="value">
                                            <b class="name">베르사유 + 파리시내</b>
                                        </div>
                                        <div class="count">
 
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="/market/group.asp?serial=5&l=">
                                        <div class="value">
                                            <b class="name">루브르 미술관 가이드</b>
                                        </div>
                                        <div class="count">
 
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="/market/group.asp?serial=23&l=">
                                        <div class="value">
                                            <b class="name">대영 박물관 가이드</b>
                                        </div>
                                        <div class="count">
 
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                      <a href="/market/group.asp?serial=76&l=">
                                        <div class="value">
                                            <b class="name">내셔널 갤러리 가이드</b>
                                        </div>
                                        <div class="count">
 
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                      <a href="/market/group.asp?serial=22&l=">
                                        <div class="value">
                                            <b class="name">세븐시스터즈</b>
                                        </div>
                                        <div class="count">
 
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/group.asp?serial=25&l=">
                                        <div class="value">
                                            <b class="name">스톤헨지투어</b>
                                        </div>
                                        <div class="count">
 
                                        </div>
                                    </a>
                                </li>
 
                                <li class="content-item">
                                      <a href="/market/group.asp?serial=6&l=">
                                        <div class="value">
                                            <b class="name">오르세 미술관 가이드</b>
                                        </div>
                                        <div class="count">
 
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                      <a href="/market/group.asp?serial=67&l=">
                                        <div class="value">
                                            <b class="name">토스카나 투어</b>
                                        </div>
                                        <div class="count">
 
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="/market/group.asp?serial=114&l=">
                                        <div class="value">
                                            <b class="name">친퀘테레 투어</b>
                                        </div>
                                        <div class="count">
 
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="/market/group.asp?serial=96&l=">
                                        <div class="value">
                                            <b class="name">우피치미술관 가이드</b>
                                        </div>
                                        <div class="count">
 
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="/market/group.asp?serial=99&l=">
                                        <div class="value">
                                            <b class="name">아이슬란드 블루라군</b>
                                        </div>
                                        <div class="count">
 
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="/market/group.asp?serial=102&l=">
                                        <div class="value">
                                            <b class="name">아이슬란드 골든 서클 투어</b>
                                        </div>
                                        <div class="count">
 
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="/market/group.asp?serial=182&l=">
                                        <div class="value">
                                            <b class="name">아이슬란드 빙하투어</b>
                                        </div>
                                        <div class="count">
 
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="/market/group.asp?serial=101&l=">
                                        <div class="value">
                                            <b class="name">아이슬란드 오로라투어</b>
                                        </div>
                                        <div class="count">
 
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="/market/group.asp?serial=225&l=">
                                        <div class="value">
                                            <b class="name">아이슬란드 스카프타펠</b>
                                        </div>
                                        <div class="count">
 
                                        </div>
                                    </a>
                                </li>

                            </ul>
                        </div>

                </div>
            </section>
            <!--// 모달 영역 -->
</body>
</html>
