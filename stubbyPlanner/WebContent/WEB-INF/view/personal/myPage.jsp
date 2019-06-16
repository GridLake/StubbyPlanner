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



<link rel="stylesheet" href="/stubbyPlanner/externalData/mypage/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="https	://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css"> -->
<!-- <script src="//code.jquery.com/jquery-1.11.0.min.js"></script> -->
<script src="/stubbyPlanner/externalData/mypage/js/bootstrap.min.js"></script>



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
	#insert:hover{
		background-color: gray;
		color:white;
		border: none;
	}
</style>
<style>

header .stu_gnb_container .stu_gnb_wrap li#ico_booking:after { content:"투어 홈"; }


.stu_prd_list .desc dl{
	width:20%;
}

</style>
<style type="text/css">
button#good{
  background:black;
  color:#fff;
  border:none;
  position:relative;
  height:60px;
  font-size:1.6em;
  padding:0 2em;
  cursor:pointer;
  transition:800ms ease all;
  outline:none;
}
button#good:hover{
  background:#fff;
  color:gray;
}
button#good:before,button:after{
  content:'';
  position:absolute;
  top:0;
  right:0;
  height:2px;
  width:0;
  background: gray;
  transition:400ms ease all;
}
button#good:after{
  right:inherit;
  top:inherit;
  left:0;
  bottom:0;
}
button#good:hover:before,button:hover:after{
  width:100%;
  transition:800ms ease all;
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
<div class="wrap-info-login"  >
		<span style="border-bottom: 4px solid #fff;padding: 20px 60px 10px 0;">${myPage.memberInfoMap.member_id }</span>
		<div class="box-profile" >
			<a href="/stubbyPlanner/common/infoChange.do" style="position: relative">
					<div><img src="/stubbyPlanner/externalData/m_musinsa/emoticon_off.png" alt="회원정보변경"></div>
			</a>
					<div style="position: absolute; color: gray;"></div>		
		</div>
</div>
			
		<div class="box-link" style="background: black">
			<a class="link-move" style="background: black">-</a>
		</div>
<div class="wrap-info-lev"  style=" margin-bottom: 20px;">
		<div class="box-lev">
			<a href="/app/mypage/poin">
					<div style="float: left; padding-top: 5px;""><img src="/stubbyPlanner/externalData/images2/common/star.PNG" alt="회원정보변경" style="width: 20px; height: 20px;"></div>
			</a>
			<span class="text-lev">${myPage.memberInfoMap.ms_name }</span>
			<span class="text-nic"><button><a href="/stubbyPlanner/common/logout.do">로그아웃</a></button></span>
		</div>
		<span class="text-info-lev">
			상상 속 여행을 현실로! 스투비 플래너에 오신걸 환영합니다.
		</span>
		<div>

		</div>
	</div>
	
<ul class="wrap-info-ben">
		<li style="position: relative">
			<a href="javascript:#" id="mileage">
				<div><img src="//image.msscdn.net/skin/m_musinsa/images/icon_won.png" alt="적립금"></div>
				<em style="color:white">${myPage.memberInfoMap.mileage }</em>
				<div>마일리지</div>
			</a>
		</li>
		<li style="position: relative">
			<a href="javascript:#" id="friend">
				<div id="countFriend"><img src="//image.msscdn.net/skin/m_musinsa/images/icon_point.png" alt="포인트"></div>
				<em style="color: white">${myFriend}</em>
				<div>친구	</div>
			</a>
		</li>	
		<li style="position: relative">
			<a href="javascript:#" id="coupon">
				<div><img src="//image.msscdn.net/skin/m_musinsa/images/icon_coupon.png" alt="쿠폰"></div>
				<em style="color: white">0</em>
				<div>쿠폰</div>
			</a>
		</li>
		<li style="position: relative">
			<a href="javascript:#" id="review">
				<div><img src="//image.msscdn.net/skin/m_musinsa/images/icon_review.png" alt="후기작성"></div>
				<em style="color: white">0</em>
				<div>리뷰</div>
			</a>
		</li>
	</ul>	


            </div> 
        </section>




        <section class="stu_category">
            <div class="stu_inner_wrap">
                <ul class="tabArea">
                    <li><a href="javascript:getPlanner('${myPage.memberInfoMap.member_id }')">
                        <p class="planner">플래너
<!--                             <span class="count" style="display: none;">(0)</span> -->
                        </p></a>
                    </li>
                    <li><a href="javascript:getArticle('${myPage.memberInfoMap.member_id }')">
                        <p class="square">광장게시물
<!--                             <span class="count" style="display: inline-block;">(1)</span> -->
                        </p></a>
                    </li>
                    <li class="on"><a href="javascript:getRes('${myPage.memberInfoMap.member_id }')">
                        <p class="reservation">예약목록
<!--                             <span class="count" style="display: inline-block;">(1)</span> -->
                        </p></a>
                    </li>
                      <li class="on"><a href="javascript:getMessage('${myPage.memberInfoMap.member_id }')">
                        <p class="message">메시지
<!--                             <span class="count" style="display: none;">(0)</span> -->
                        </p></a>
                    </li>
                      <li class="on"><a href="javascript:getPhoto('${myPage.memberInfoMap.member_id }')">
                        <p class="gallery">갤러리
<!--                             <span class="count" style="display: none;">(0)</span> -->
                        </p></a>
                    </li>
                </ul>
            </div>
        </section>
        
        

        <section class="stu_prd_list stu_clearfix tour">
            <div class="stu_inner_wrap">
            <div class="mypage_message">
            
           
                 
                <div class="titArea">
                    <h3 class="stu_title">나의 플래너</h3>
                </div>
                
                <ul>
                <img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/636c475c3ce6932a35fadb740f63bf74_l.jpg" style="width:190px; height:190px; margin:5px;">
                </ul>
               
                 
                 
                 
<!--                 <div class="titArea"> -->
<!--                     <h3 class="stu_title">내 투어 예약내역</h3> -->
<!--                 </div> -->
                
<!--                 <div class="empty_container"> -->
                
<!--  					<div class="empty_wrap"> -->
<!--                         <img src="/market/images/empty.png" alt=""> -->
<!--                         <p><span>예약 내역이 없습니다.</span>스투비플래너와 함께 즐거운 여행을 떠나보세요.</p> -->
<!--                         <a href="/market/" class="stu_btn"> -->
<!--                             <span>투어홈 바로가기</span> -->
<!--                         </a> -->
<!--                     </div> -->
<!--                 </div> -->

  

 		<ul class="prd_list">

	</ul>


            </div>
            </div>
        </section>

        <section class="stu_prd_list stu_clearfix party">
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

<!-- 마일리지 모달창 -->
<div class="mileage modal fade" id="layerpop_mileage" >
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header" style="text-align: center; background: black; color:white; padding: 10px;">
		<h3>마일리지 제도</h3>
		</div>
<!--         <button type="button" class="close" data-dismiss="modal" style="float: right">×</button> -->
<!--       <div class="modal-header"> -->
      <div class="modal-footer">
<!--       </div> -->
      <div style="text-align: left">
      	
      <h3>HERO.</h3>
      <p>5000 마일리지 이상</p> 
      <h3>MASTER.</h3>
      <p>1500 마일리지 이상</p> 
      <h3>EXPERT.</h3>
      <p>500 마일리지 이상</p> 
      <h3>MANIA.</h3>
      <p>100 마일리지 이상</p> 
      <h3>TRAVELER.</h3>
      <p>20 마일리지 이상</p> 
      <h3>BEGINNER.</h3>
      <p>20 마일리지 미만</p> 
      </div>
      
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>

<!-- 친구 모달창 -->
<div class="friend modal fade" id="layerpop_friend" >
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header" style="text-align: center; background: black; color:white; padding: 10px;height: 60px;">
		<a href="javascript:#" id="friends" style="color:white;"><span style="float: left; width: 50%;"><h3>친구 목록</h3></span></a>
		<a href="javascript:#" id="friendApply" style="color:white;"><span style="float: left; width: 50%;"><h3>친구 신청</h3></span></a>
	</div>
<!--         <button type="button" class="close" data-dismiss="modal" style="float: right">×</button> -->
<!--       <div class="modal-header"> -->
      <div class="friend modal-footer" id="layerpop_friend_content">
 
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>


<!-- 쿠폰 모달창 -->
<div class="coupon modal fade" id="layerpop_coupon" >
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header" style="text-align: center; background: black; color:white; padding: 10px;">
		<h3>쿠폰 목록</h3>
		</div>
<!--         <button type="button" class="close" data-dismiss="modal" style="float: right">×</button> -->
<!--       <div class="modal-header"> -->
      <div class="modal-footer">
<!--       </div> -->

      <div style="text-align: left">
      	
      <h3 style="text-align: center;"><b>서비스 준비 중 입니다</b></h3>

      </div>
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>


<!-- 후기 모달창 -->
<div class="review modal fade" id="layerpop_review" >
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header" style="text-align: center; background: black; color:white; padding: 10px;height: 60px;">
		<a href="javascript:#" id="review"><span><h3>리뷰 목록</h3></span></a>
<!-- 		<a href="javascript:#" id="friend" style="color:black;"><span style="float: left; width: 50%;"><h3>친구 신청</h3></span></a> -->
	</div>
<!--         <button type="button" class="close" data-dismiss="modal" style="float: right">×</button> -->
<!--       <div class="modal-header"> -->
      <div class="review modal-footer" id="layerpop_review_content">
 
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>








<div id="add_data_Modal" class="modal fade">
	<div class="modal-dialog">

		<div class="modal-content">
			<div class="modal-header" style="text-align: center; background: black; color:white; padding: 10px;height: 60px;">
		<h3>메세지 작성</h3>
			</div>
<!-- 모달 바디 -->
			<div class="modal-body">
			<form method="post" id="insert_form">
			<label>제목</label>
			<input type="text" name="subject" id="subject" class="form-control" />
			<br />
			<label>내용</label>
			<textarea name="content" id="content" class="form-control" ></textarea>
			<br />
			<input type="submit" name ="insert" id="insert" value="전송" class="btn btn-success" />
			</form>
			</div>
<!-- 모달 풋터 -->
		<div class="modal-footer">
			<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
		</div>
		
		</div>
	</div>
</div>






<script>

function messageFriend(id,content,subject,member_friendid)
{
var member_myid = id;
var msg_content = content.replace(/(\n|\r\n)/g, '<br>');
var msg_subject = subject;
var member_friendid = member_friendid;
	             $.ajax({
	             	url: '/stubbyPlanner/api/mypage/set_messageFriend.jsp?member_myid='+member_myid+'&member_friendid='+member_friendid+'&msg_subject='+msg_subject+'&msg_content='+msg_content,
	               	dataType: 'json',
	               	cache:false,
	               	success: function(data){
						alert("메세지 전송 완료");
			}
		});
}


function updateFriend(id,friend)
{
	 
var member_myid = id;
var member_friendid = friend;
	             $.ajax({
	             	url: '/stubbyPlanner/api/mypage/set_updateFriend.jsp?member_myid='+member_myid+'&member_friendid='+member_friendid,
	               	dataType: 'json',
	               	cache:false,
	               	success: function(data){
					if(data!="")
					{
						alert("친구 추가 완료")
					}
			}
		});
}


function deleteFriend(id,friend)
{
	 
var member_myid = id;
var member_friendid = friend;
	             $.ajax({
	             	url: '/stubbyPlanner/api/mypage/set_deleteFriend.jsp?member_myid='+member_myid+'&member_friendid='+member_friendid,
	               	dataType: 'json',
	               	cache:false,
	               	success: function(data){
					if(data!="")
					{
						alert("친구 삭제 완료")
					}
			}
		});
}


function showFriend(id)
{
	 
var member_id = id;
	             $.ajax({
	             	url: '/stubbyPlanner/api/mypage/get_friend.jsp?member_id='+member_id,
	               	dataType: 'json',
	               	cache:false,
	               	success: function(data){
					if(data!="")
					{
						thtml='<div style="text-align: left">';
						$.each(data.list, function( i, item ) {
									console.log(item.POST_SUBJECT);	
	                     		thtml+='<div><img src="/stubbyPlanner/externalData/img_v9/img_pfnull.jpg" style="width:50px; heigth:50px; float:left; padding:5px;">';
	                     		thtml+='<button id ="good" class ="no" value="'+(item.member_myid==member_id?item.member_friendid:item.member_myid)+'" style="width:50px; height:50px; float:right; padding:5px;">삭제</button>';
	                     		thtml+='<a><img alt="'+(item.member_myid==member_id?item.member_friendid:item.member_myid)+'" class="msg" src="/stubbyPlanner/externalData/m_musinsa/text_off.png" style="width:50px; height:50px; float:right; padding:5px;"></a>';
								thtml+='<h3>'+(item.member_myid==member_id?item.member_friendid:item.member_myid)+'</h3>';
								thtml+='<p>'+item.ms_name+'/'+(item.gender=='M'?'MAN':'WOMAN')+'</p></div>'; 
						});
						thtml+='</div>';
						$("#layerpop_friend_content").html(thtml); //
						
				     	$(".no").on("click",function(){
				     		var value = $(this).val();
				  		    deleteFriend('${myPage.memberInfoMap.member_id }',value);
				  		   $(this).parent().remove();
					  	})
					  	

 					   $(".msg").click(function(){
 						  var value = $(this).attr("alt") ;
  					      $('#add_data_Modal').modal();
 						  $('#add_data_Modal').val(value);
 					   })					  	
					  
  					   
 					   $('#insert_form').on('submit',function(event){
	 						  if($('#subject').val()=='')
	 						 {
	 						 alert("제목을 입력해주세요");
	 						 }else if($('#content').val()=='')
	 						 {
	 						 alert("내용을 입력해주세요");
	 						 }else{
//	 						  var value =$(this).val();
							  var content =$('textarea#content').val();
							  var subject =$('input#subject').val();
// 							  alert(subject);
	  					      var member_friendid = $('#add_data_Modal').val();
							  messageFriend('${myPage.memberInfoMap.member_id }',content,subject,member_friendid);
							  }
	 					   })					  	
 					    
					}
			}
		});
}


function showFriendApply(id)
{
	 
var member_id = id;
	             $.ajax({
	             	url: '/stubbyPlanner/api/mypage/get_friend.jsp?member_id='+member_id,
	               	dataType: 'json',
	               	cache:false,
	               	success: function(data){ // { result : 1 }
					if(data!="")
					{
						thtml='<div style="text-align: left">';
						$.each(data.listApply, function( i, item ) {
									console.log(item.POST_SUBJECT);	
	                     		thtml+='<div><img src="/stubbyPlanner/externalData/img_v9/img_pfnull.jpg" style="width:50px; heigth:50px; float:left; padding:5px;">';
// 	                     		thtml+='<img src="/stubbyPlanner/externalData/m_musinsa/text_off.png" style="width:50px; heigth:50px; float:right; padding:5px;">';
	                     		thtml+='<button id = "good" class ="ok" value="'+item.member_myid+'" style="width:50px; height:50px; float:right; padding:5px;">수락</button>';
	                     		thtml+='<button id = "good" class ="no" value="'+item.member_myid+'" style="width:50px; height:50px; float:right; padding:5px;">거절</button>';
	                     		thtml+='<h3>'+item.member_myid+'</h3>';
								thtml+='<p>'+item.ms_name+'/'+(item.gender=='M'?'MAN':'WOMAN')+'</p></div>'; 
// 								thtml+='+item.gender+'</p>'; 
						});
						thtml+='</div>';
						$("#layerpop_friend_content").html(thtml);
				        
				     	$(".ok").on("click",function(){
				     		
				     		
				     		var value = $(this).val();
				     		updateFriend('${myPage.memberInfoMap.member_id }',value);
				  		   
				  		   $(this).parent().remove();
				 	 	})
				 	 	
				     	$(".no").on("click",function(){
				     		
				     		
				     		var value = $(this).val();
				  		    deleteFriend('${myPage.memberInfoMap.member_id }',value);
				  		   
				  		   $(this).parent().remove();
				 	 	})				 	 	
					}else{
						thtml=' <div style="text-align: left"><h3 style="text-align: center;"><b>친구 신청 내역이 없습니다</b></h3></div>';
						$("#layerpop_friend_content").html(thtml);
					}
			}
		});	            	             
}
	//모달 친구신청목록
	
 	//모달 마일리지
    $("#mileage").click(function(){
        $('#layerpop_mileage').modal();
    })
 
	//친구 수락/삭제

	
    //모달 친구목록
    $("#friend").click(function(){        
    	$('#layerpop_friend').modal();
    	
        // ajax 처리...
	    showFriend('${myPage.memberInfoMap.member_id }');
    })
    
    $("#friends").click(function(){        
    	
        showFriend('${myPage.memberInfoMap.member_id }');
    })
 
    $("#friendApply").click(function(){        

        showFriendApply('${myPage.memberInfoMap.member_id }');
    })
    
    
    $("#coupon").click(function(){
        $('#layerpop_coupon').modal();
    })

    
    $("#review").click(function(){
        $('#layerpop_review').modal();
    })

    


</script>      
    
<script >

function countFriend()
{
	var member_id = '${authUser.member_id}';	
	  $.ajax({
       	url: '/stubbyPlanner/api/mypage/get_countFriend.jsp?member_id='+member_id,
         	dataType: 'json',
         	cache:false,
         	success: function(data){
						if(data!="")
						{
							$('#countFriend').next().text(''+list.countFriend+'');
						}
      				}
	  		});
}



function getPlanner(id)
{

	var member_id = id;
		             $.ajax({
		             	url: '/stubbyPlanner/api/mypage/get_planner.jsp?member_id='+member_id,
		               	dataType: 'json',
		               	cache:false,
		               	success: function(data){
						if(data!=null)
						{

							thtml='<div class="titArea"><h3 class="stu_title">나의 플래너</h3></div><ul>';
							$.each(data.list, function( i, item ) {
								
								thtml+='<img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/636c475c3ce6932a35fadb740f63bf74_l.jpg" style="width:190px; height:190px; margin:5px;">';
								console.log(thtml);
							});
							thtml+='</ul>';
							$(".mypage_message").html(thtml);
						}else{
							thtml='<div class="titArea"><h3 class="stu_title">내 투어 예약내역</h3></div> <div class="empty_container"><div class="empty_wrap"><img src="/market/images/empty.png" alt="">';
							thtml+='<p><span>게시물이 없습니다.</span>광장에서 다른 회원들과 여행정보를 공유해보세요.</p> <a href="/stubbyPlanner/square/index.do" class="stu_btn"><span>광장홈 바로가기</span></a></div></div>';

							$(".mypage_message").html(thtml);
						}

				}

			});
	}



function getPhoto(id)
{

var member_id = id;
	             $.ajax({
	             	url: '/stubbyPlanner/api/mypage/get_photo.jsp?member_id='+member_id,
	               	dataType: 'json',
	               	cache:false,
	               	success: function(data){
					if(data!=null)
					{
// 						thtml='<section class="stu_regions";"><div class="stu_inner_wrap" style="padding-top: 20px;">';
// 						thtml+='<h2 style="font-size:18pt;font-weight:700;">갤러리</h2><div class="swiper-container swiper3"><ul class="swiper-wrapper" style="padding: 5px;">';
									thtml='<div class="titArea"><h3 class="stu_title">광장 게시물</h3></div><ul>';
						$.each(data.list, function( i, item ) {
									console.log(item.gal_subject);

// 									if(i%4==0){
// 									thtml+='</ul><br/><ul class="prd_list">';	
// 									thtml+=' <li style="width: 200px; height: 200px; margin: 5px;">';
// 									}
// 									thtml+='<a href="http://www.stubbyplanner.com" style="width:20%;">';                                                          
									thtml+='<img src="/stubbyPlanner/square/gallery/'+item.gal_pic_path+'" style="width:190px; height:190px; margin:5px;">';
 
						console.log(thtml);
						});
// 									thtml+='</li>';
						thtml+='</ul>';
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
					if(data!=null)
					{
						thtml='<div class="titArea"><h3 class="stu_title">광장 게시물</h3></div><ul class="prd_list">';
						$.each(data.list, function( i, item ) {
									console.log(item.POST_SUBJECT);	
								thtml+='<li class="prd_item square" style="width:100%;"><div class="prd_info">';
// 								thtml+='<li class="square"><div class="prd_info">';
	                     		thtml+='<a href="광장 게시물페이지 주소">';
								thtml+='<div class="name">'+item.POST_SUBJECT+'</div>';
								thtml+='<div class="desc"><div><span>'+item.POST_CONTENT+'</span></div>';
		                        thtml+='<dl><dt>조회수</dt><dd class="date"><span>'+item.post_hits+'</span></dd></dl>';
		                        thtml+='<dl><dt>추천수</dt><dd class="date"><span>'+item.post_like+'</span></dd></dl>';
		                        thtml+='<dl><dt>'+item.post_regdate.split(" ")[0]+'</dt><dd class="date"><span></span></dd></dl></div></div></li>';
 
			console.log(thtml);
						});
						$(".mypage_message").html(thtml);
					}else{
						thtml='<div class="titArea"><h3 class="stu_title">내 투어 예약내역</h3></div> <div class="empty_container"><div class="empty_wrap"><img src="/market/images/empty.png" alt="">';
						thtml+='<p><span>게시물이 없습니다.</span>광장에서 다른 회원들과 여행정보를 공유해보세요.</p> <a href="/stubbyPlanner/square/index.do" class="stu_btn"><span>광장홈 바로가기</span></a></div></div>';

						$(".mypage_message").html(thtml);
					}

			}

		});
}


function getRes(id)
{

	var member_id = id;
		             $.ajax({
		             	url: '/stubbyPlanner/api/mypage/get_article.jsp?member_id='+member_id,
		               	dataType: 'json',
		               	cache:false,
		               	success: function(data){
						if(data!=null)
						{
							thtml='<div class="titArea"><h3 class="stu_title">내 투어 예약내역</h3></div> <div class="empty_container"><div class="empty_wrap"><img src="/market/images/empty.png" alt="">';
							thtml+='<p><span>예약내역이 없습니다.</span>투어상품에서 다양한 상품들을 예약해보세요.</p> <a href="/stubbyPlanner/square/index.do" class="stu_btn"><span>투어홈 바로가기</span></a></div></div>';

							$(".mypage_message").html(thtml);
						}

				}

			});
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
					if(data!=null)
					{

						thtml='<div class="titArea"><h3 class="stu_title">받은 메세지함</h3></div><ul class="prd_list">';
						$.each(data.listTake, function( i, item ) {
									console.log(item.msg_SUBJECT);	
								thtml+='<li class="prd_item message" style="width:100%;"><div class="prd_info">';
// 								thtml+='<li class="square"><div class="prd_info">';
	                     		thtml+='<a>';
								thtml+='<div class="name">'+item.msg_subject+'</div>';
								thtml+='<div class="desc"><div><span>'+item.msg_content+'</span></div>';
		                        thtml+='<dl><dt>보낸 사람</dt><dd class="date"><span>'+item.member_friendid+'</span></dd></dl>';
		                        thtml+='<dl><dt style="visibility: hidden;">.</dt><dd><span></span></dd></dl>';
		                        thtml+='<dl><dt>보낸 날짜</dt><dd class="date"><span style="width:100px;">'+item.msg_regdate.substring(0, 10)+'</span></dd></dl></a></div></div><a><img alt="'+item.member_friendid+'" class="msg" src="/stubbyPlanner/externalData/m_musinsa/text_off.png" style="width:50px; height:50px; float:right; padding:5px;"></a></li>';
 
						console.log(thtml);
						});
								thtml+='</ul>';
						
						
						thtml+='<div class="titArea"><h3 class="stu_title">보낸 메세지함</h3></div><ul class="prd_list">';
						$.each(data.listGive, function( i, item ) {
							console.log(item.msg_SUBJECT);	
						thtml+='<li class="prd_item message" style="width:100%;"><div class="prd_info">';
//							thtml+='<li class="square"><div class="prd_info">';
                 		thtml+='<a>';
						thtml+='<div class="name">'+item.msg_subject+'</div>';
						thtml+='<div class="desc"><div><span>'+item.msg_content+'</span></div>';
                        thtml+='<dl><dt>받는 사람</dt><dd class="date"><span>'+item.member_myid+'</span></dd></dl>';
                        thtml+='<dl><dt style="visibility: hidden;">.</dt><dd><span></span></dd></dl>';
                        thtml+='<dl><dt>보낸 날짜</dt><dd class="date"><span style="width:100px;">'+item.msg_regdate.substring(0, 10)+'</span></dd></dl></a></div></div><a><img alt="'+item.member_myid+'" class="msg" src="/stubbyPlanner/externalData/m_musinsa/text_off.png" style="width:50px; height:50px; float:right; padding:5px;"></a></li>';

	console.log(thtml);
				});
						thtml+='</ul>';
						
						$(".mypage_message").html(thtml);
						
	   					      
	    					   $(".msg").click(function(){
	    	 						  var value = $(this).attr("alt") ;
	    	  					      $('#add_data_Modal').modal();
	    	 						  $('#add_data_Modal').val(value);
	    	 					   })					  	
	    	  					   
	    	 					   $('#insert_form').on('submit',function(event){
	    	 						  if($('#subject').val()=='')
	    	 						 {
	    	 						 alert("제목을 입력해주세요");
	    	 						 }else if($('#content').val()=='')
	    	 						 {
	    	 						 alert("내용을 입력해주세요");
	    	 						 }else{
//	    	 						  var value =$(this).val();
	    							  var content =$('textarea#content').val();
	    							  var subject =$('input#subject').val();
	    	  					      var member_friendid = $('#add_data_Modal').val();
	    							  messageFriend('${myPage.memberInfoMap.member_id }',content,subject,member_friendid);
	    							  }
	    	 					   })			
					}else{
						thtml='<div class="titArea"><h3 class="stu_title">받은 메세지함</h3></div> <div class="empty_container"><div class="empty_wrap"><img src="/market/images/empty.png" alt="">';
						thtml+='<p><span>메세지가 없습니다.</span>광장에서 다른 회원들과 소통해보세요.</p> <a href="/stubbyPlanner/square/index.do" class="stu_btn"><span>광장홈 바로가기</span></a></div></div>';

						$(".mypage_message").html(thtml);
					}

			}
		});
}

</script>


</body></html>