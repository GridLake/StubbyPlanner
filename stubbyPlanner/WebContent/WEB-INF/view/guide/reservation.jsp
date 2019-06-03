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

              
</body>
</html>
