<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en"><!--<![endif]--><head>
    <title>마이페이지</title>


   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimun-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">


    <!-- CSS/JavaScript -->
    <link rel="stylesheet" type="text/css" href="/stubbyPlanner/externalData/market/css/common4.css">
    <link rel="stylesheet" type="text/css" href="/stubbyPlanner/externalData/market/css/md-search.css">
    <link rel="stylesheet" type="text/css" href="/stubbyPlanner/externalData/market/css/reservation.css">
    <link type="text/css" rel="stylesheet" href="/stubbyPlanner/externalData/m_musinsa/css/mypage.css">
      <link type="text/css" rel="stylesheet" href="/stubbyPlanner/externalData/m_musinsa/css/normalizer.css">
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


.stu_prd_list .desc dl{
	width:20%;
}

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
        <div class="stu_gnb_container stu_clearfix" style="top: 0px;">
            <div class="stu_inner_wrap">
                <h1 class="stu_logo">
                    <a href="/stubbyPlanner/common/index_login.do">
                        <img class="fh" src="/stubbyPlanner/externalData/market/images/stu_logo.png" alt="">
                    </a>
                </h1>
        
            </div>
        </div>
    </header>

    <main class="stu_clearfix">
  
        <section class="stu_top_banner">
        <div class="stu_inner_wrap">
<div class="wrap-info-login"  >
		<span style="border-bottom: 4px solid #fff;padding: 20px 60px 10px 0;">${myPage.memberInfoMap.member_id }</span>
		<div class="box-profile" >
			<a href="/stubbyPlanner/common/infoChange.do" style="position: relative">
					<div><img class="fh" src="/stubbyPlanner/externalData/img_v9/img_pfnull.jpg" alt="회원정보변경"></div>
			</a>
					<div style="position: absolute; color: gray;"></div>		
		</div>
</div>
			
		<div class="box-link" style="background: black">
			<a class="link-move" style="background: black">-</a>
		</div>
<div class="wrap-info-lev">
		<div class="box-lev">
			<span class="text-lev">${myPage.memberInfoMap.ms_name }</span>
			<span class="text-nic"><button><a href="/stubbyPlanner/common/logout.do">로그아웃</a></button></span>
		</div>
		<span class="text-info-lev">
			안녕하세요. 사탕보다 달콤한 남자 기기화입니다.
		</span>
	</div>
<ul class="wrap-info-ben">
		<li style="position: relative">
			<a href="/app/mypage/point">
				<div><img src="//image.msscdn.net/skin/m_musinsa/images/icon_won.png" alt="적립금"></div>
				<em style="color:white">${myPage.memberInfoMap.mileage }</em>
				<div>마일리지</div>
			</a>
		</li>
		<li style="position: relative">
			<a href="https://www.musinsa.com/index.php?mod=mypage&amp;page=point&amp;redirectCalled=1">
				<div><img src="//image.msscdn.net/skin/m_musinsa/images/icon_point.png" alt="포인트"></div>
				<em style="color: white">2,600</em>
				<div>포인트</div>
			</a>
		</li>
		<li style="position: relative">
			<a href="/app/mypage/coupon_available">
				<div><img src="//image.msscdn.net/skin/m_musinsa/images/icon_coupon.png" alt="쿠폰"></div>
				<em style="color: white">12</em>
				<div>쿠폰</div>
			</a>
		</li>
		<li style="position: relative">
			<a href="/app/mypage/write_review">
				<div><img src="//image.msscdn.net/skin/m_musinsa/images/icon_review.png" alt="후기작성"></div>
				<em style="color: white">12</em>
				<div>후기작성</div>
			</a>
		</li>
	</ul>	


            </div> 
        </section>




        <section class="stu_category">
            <div class="stu_inner_wrap">
                <ul class="tabArea">
                    <li><a href="javascript:getPlanner('${myPage.memberInfoMap.member_id }')" class="list-group-item">
                        <p class="planner">플래너
<!--                             <span class="count" style="display: none;">(0)</span> -->
                        </p></a>
                    </li>
                    <li><a href="javascript:getArticle('${myPage.memberInfoMap.member_id }')" class="list-group-item">
                        <p class="square">광장게시물
<!--                             <span class="count" style="display: inline-block;">(1)</span> -->
                        </p></a>
                    </li>
                    <li class="on"><a href="javascript:getRes('${myPage.memberInfoMap.member_id }')" class="list-group-item">
                        <p class="reservation">예약목록
<!--                             <span class="count" style="display: inline-block;">(1)</span> -->
                        </p></a>
                    </li>
                      <li class="on"><a href="javascript:getMessage('${myPage.memberInfoMap.member_id }')" class="list-group-item">
                        <p class="message">메시지
<!--                             <span class="count" style="display: none;">(0)</span> -->
                        </p></a>
                    </li>
                      <li class="on"><a href="javascript:getPhoto('${myPage.memberInfoMap.member_id }')" class="list-group-item">
                        <p class="gallery">갤러리
<!--                             <span class="count" style="display: none;">(0)</span> -->
                        </p></a>
                    </li>
                </ul>
            </div>
        </section>
        
<script >

function getPlanner(id)
{

}



function getPhoto(id)
{

var member_id = id;
	             $.ajax({
	             	url: '/stubbyPlanner/api/mypage/get_photo.jsp?member_id='+member_id,
	               	dataType: 'json',
	               	cache:false,
	               	success: function(data){
					if(  data )
					{
						thtml='<div class="titArea"><h3 class="stu_title">광장 게시물</h3></div><ul class="prd_list">';
						$.each(data.list, function( i, item ) {
									console.log(item.POST_SUBJECT);	
								thtml+='<li class="prd_item gallery" style="width:100%;"><div class="prd_info">';
// 								thtml+='<li class="square"><div class="prd_info">';
	                     		thtml+='<a href="광장 게시물페이지 주소">';
								thtml+='<div class="name">'+item.member_id+'</div>';
								thtml+='<div class="desc"><div><span>'+item.gal_seq+'</span></div>';
		                        thtml+='<dl><dt>조회수</dt><dd class="date"><span>100  </span></dd></dl>';
		                        thtml+='<dl><dt>추천수</dt><dd class="date"><span>50  </span></dd></dl>';
		                        thtml+='<dl><dt>2019-06-01</dt><dd class="date"><span></span></dd></dl></div></div></li>';
 
			console.log(thtml);
						});
						$(".mypage_message").html(thtml);
					}else{
						thtml='<div class="titArea"><h3 class="stu_title">내 갤러리 목록</h3></div> <div class="empty_container"><div class="empty_wrap"><img src="/market/images/empty.png" alt="">';
						thtml+='<p><span>갤러리가 없습니다.</span>광장에서 나만의 여행사진을 공유해보세요.</p> <a href="/stubbyPlanner/square/index.do" class="stu_btn"><span>광장홈 바로가기</span></a></div></div>';

						$(".mypage_message").html(thtml);
					}

			}
		});
}


function getArticle(id)
{

var member_id = id;
	             $.ajax({
	             	url: '/stubbyPlanner/api/mypage/get_article.jsp?member_id='+member_id,
	               	dataType: 'json',
	               	cache:false,
	               	success: function(data){
					if(data!="")
					{alert("True")
						
						thtml='<div class="titArea"><h3 class="stu_title">광장 게시물</h3></div><ul class="prd_list">';
						$.each(data.list, function( i, item ) {
									console.log(item.POST_SUBJECT);	
								thtml+='<li class="prd_item square" style="width:100%;"><div class="prd_info">';
// 								thtml+='<li class="square"><div class="prd_info">';
	                     		thtml+='<a href="광장 게시물페이지 주소">';
								thtml+='<div class="name">'+item.POST_SUBJECT+'</div>';
								thtml+='<div class="desc"><div><span>'+item.POST_CONTENT+'</span></div>';
		                        thtml+='<dl><dt>조회수</dt><dd class="date"><span>100  </span></dd></dl>';
		                        thtml+='<dl><dt>추천수</dt><dd class="date"><span>50  </span></dd></dl>';
		                        thtml+='<dl><dt>2019-06-01</dt><dd class="date"><span></span></dd></dl></div></div></li>';
 
			console.log(thtml);
						});
						$(".mypage_message").html(thtml);
					}else{
						alert("false")
						thtml='<div class="titArea"><h3 class="stu_title">내 투어 예약내역</h3></div> <div class="empty_container"><div class="empty_wrap"><img src="/market/images/empty.png" alt="">';
						thtml+='<p><span>게시물이 없습니다.</span>광장에서 다른 회원들과 여행정보를 공유해보세요.</p> <a href="/stubbyPlanner/square/index.do" class="stu_btn"><span>광장홈 바로가기</span></a></div></div>';

						$(".mypage_message").html(thtml);
					}

			}

		});
}


function getRes(id)
{

}


function getMessage(id)
{

var member_id = id;
	             $.ajax({
	             	url: '/stubbyPlanner/api/mypage/get_message.jsp?member_id='+member_id,
	               	dataType: 'json',
	               	cache:false,
	               	success: function(data){
						console.log(">>>>>>>>>>"+data);	
					if(data!="")
					{
						thtml='<div class="titArea"><h3 class="stu_title">받은 메세지함</h3></div><ul class="prd_list">';
						$.each(data.listTake, function( i, item ) {
									console.log(item.msg_SUBJECT);	
								thtml+='<li class="prd_item message" style="width:100%;"><div class="prd_info">';
// 								thtml+='<li class="square"><div class="prd_info">';
	                     		thtml+='<a href="광장 게시물페이지 주소">';
								thtml+='<div class="name">'+item.msg_subject+'</div>';
								thtml+='<div class="desc"><div><span>'+item.msg_content+'</span></div>';
		                        thtml+='<dl><dt>보낸 사람</dt><dd class="date"><span>'+item.member_friendid+'</span></dd></dl>';
		                        thtml+='<dl><dt style="visibility: hidden;">.</dt><dd><span></span></dd></dl>';
		                        thtml+='<dl><dt>보낸 날짜</dt><dd class="date"><span style="width:100px;">'+item.msg_regdate.substring(0, 10)+'</span></dd></dl></div></div></li>';
 
			console.log(thtml);
						});
								thtml+='</ul>';
						
						
						thtml+='<div class="titArea"><h3 class="stu_title">보낸 메세지함</h3></div><ul class="prd_list">';
						$.each(data.listGive, function( i, item ) {
							console.log(item.msg_SUBJECT);	
						thtml+='<li class="prd_item message" style="width:100%;"><div class="prd_info">';
//							thtml+='<li class="square"><div class="prd_info">';
                 		thtml+='<a href="광장 게시물페이지 주소">';
						thtml+='<div class="name">'+item.msg_subject+'</div>';
						thtml+='<div class="desc"><div><span>'+item.msg_content+'</span></div>';
                        thtml+='<dl><dt>받는 사람</dt><dd class="date"><span>'+item.member_myid+'</span></dd></dl>';
                        thtml+='<dl><dt style="visibility: hidden;">.</dt><dd><span></span></dd></dl>';
                        thtml+='<dl><dt>보낸 날짜</dt><dd class="date"><span style="width:100px;">'+item.msg_regdate.substring(0, 10)+'</span></dd></dl></div></div></li>';

	console.log(thtml);
				});
						thtml+='</ul>';
						
						$(".mypage_message").html(thtml);
					}else{
						thtml='<div class="titArea"><h3 class="stu_title">받은 메세지함</h3></div> <div class="empty_container"><div class="empty_wrap"><img src="/market/images/empty.png" alt="">';
						thtml='<p><span>메세지가 없습니다.</span>광장에서 다른 회원들과 소통해보세요.</p> <a href="/stubbyPlanner/square/index.do" class="stu_btn"><span>광장홈 바로가기</span></a></div></div>';

						$(".mypage_message").html(thtml);
					}

			}
		});
}

</script>


        <section class="stu_prd_list stu_clearfix tour">
            <div class="stu_inner_wrap">
            <div class="mypage_message">
            
           
                 
                <div class="titArea">
                    <h3 class="stu_title">내 투어 예약내역</h3>
                </div>
                
                <div class="empty_container">
                
 					<div class="empty_wrap">
                        <img src="/market/images/empty.png" alt="">
                        <p><span>예약 내역이 없습니다.</span>스투비플래너와 함께 즐거운 여행을 떠나보세요.</p>
                        <a href="/market/" class="stu_btn">
                            <span>투어홈 바로가기</span>
                        </a>
                    </div>
                </div>

  

 		<ul class="prd_list">


           <!--         <li class="prd_item reservation d-n">


                            <div class="progress" style="background:#fff;">
                                
		
		<span class="bg_orange" style="background:orange">입금대기중</span>
		
			
                                <p class="cpn">맘마미아투어</p>
                            </div> 
                            <figure class="thumb">

                                <img class="fh" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/1d655dbd3b035d6a9b7d096045af83b3_m.jpg" alt="">
                            </figure>
                           
                            <div class="prd_info">
                                <div class="name">남부투어</div>
                                <div class="desc">
                                <div>
                                    <span>입금완료시 예약접수가 진행됩니다. 입금계좌와 기한을 확인해주세요.</span>
                                </div>
                                    <dl>
                                        <dt>투어예정일</dt>
                                        <dd class="date">
                                            <span>2019년 5월 24일</span>
                                        </dd>
                                    </dl>
                                    <dl>
                                        <dt>신청자</dt>
                                        <dd class="member">
                                            <span>fb 포함 1명</span>
                                        </dd>
                                    </dl>
                                    <dl>
                                        <dt>결제금액</dt>
                                        <dd class="price">
                                            <span>예약금:35000KRW</span>
                                        </dd>
                                    </dl>
                                </div>
                            </div>
                        </a>
                    </li>


 -->

	</ul>


            </div>
            </div>
        </section>

        <section class="stu_prd_list stu_clearfix party">
<!-- 
            <div  class="stu_inner_wrap">
                <div class="titArea">
                    <h3 class="stu_title">내 동행 신청내역</h3>
                </div>


                <div  class="empty_container">
                    <div class="empty_wrap">
                        <img src="/market/images/empty.png" alt="">
                        <p><span>표시할 내역이 없습니다.</span></p>
 -->
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
                        <li><a href="http://www.stubbyplanner.com/qa/" target="_blank">서비스문의</a></li>
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
                        <b>서비스제공</b>&nbsp;&nbsp;스투비플래너 │ 대표 백주흠 │ 사업자등록번호 220-88-67466 │ 서울특별시 관악구 남부순환로 1837 샤론빌딩 402 <br>
  <b>가이드상품중개</b>&nbsp;&nbsp;스투비익스피어리언스 │ 대표 백주흠 │ 사업자등록번호 635-81-01124 │ 서울특별시 관악구 남부순환로 1837 샤론빌딩 402 <br>
                        통신판매업 신고 : 2018-서울관악-1368호 | 대표번호 02-886-0982 │  고객문의  stubbyteam@gmail.com │  운영시간(한국) 11:00 ~ 19:00, 주말 / 공휴일은 제외<br>
스투비익스피어리언스는 통신판매중개자이며 통신판매의 당사자가 아닙니다. 따라서 스투비익스피어리언스는 상품·거래정보 및 거래에 대하여 책임을 지지 않습니다.<br>
자사는 서울특별시관광협회 공제영업보증보험에 가입이 되어 있습니다.
                    </address>
                </div>
            </div>
        </footer>


</main></div>
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
/*             var filterName = $(this).find('p').attr('class');
            var category = $('.prd_list').children('li.prd_item').attr('class');
            $('.prd_list').children('li.' + filterName).removeClass('d-n');
            $('.prd_list').children('li:not(.' + filterName + ')').addClass('d-n'); */
            // 디폴트(empty) 이미지 표시
            var tourCount = $('.stu_prd_list.tour .prd_list').children('li.prd_item:not(.d-n)').length;
            var partyCount = $('.stu_prd_list.party .prd_list').children('li.prd_item:not(.d-n)').length;
            if(tourCount == 0) { $('.stu_prd_list.tour .empty_container').removeClass('d-n'); } else { $('.stu_prd_list.tour .empty_container').addClass('d-n'); };
            if(partyCount == 0) { $('.stu_prd_list.party .empty_container').removeClass('d-n'); } else { $('.stu_prd_list.party .empty_container').addClass('d-n'); };
        }); 
        $('.stu_category li:first').click();

        // 예약 리스트 카운팅
        var planner = $('.stu_category .planner .count');
        var gallery = $('.stu_category .gallery .count');
        var message = $('.stu_category .message .count');
        var square = $('.stu_category .square .count');
        var reservation = $('.stu_category .reservation .count');
    /*     ongoing.text('(' + $('.prd_list').children('li.ongoing').length + ')');
        if(ongoing.text() == '(0)') { $(ongoing).css('display','none'); } else { $(ongoing).css('display', 'inline-block'); }
        square.text('(' + $('.prd_list').children('li.square').length + ')');
        if(square.text() == '(0)') { $(square).css('display','none'); } else { $(square).css('display', 'inline-block'); }
        reservation.text('(' + $('.prd_list').children('li.reservation').length + ')');
        if(reservation.text() == '(0)') { $(reservation).css('display','none'); } else { $(reservation).css('display', 'inline-block'); } */

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


</body></html>