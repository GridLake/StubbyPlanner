<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/include.jspf" %>
<!DOCTYPE html>
<html lang="ko">
<head>

    <title>상담예약 5/5 - 스투비플래너</title>
    <!-- meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black" >


    <!-- CSS/JavaScript -->
    <link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/consulting/css/common.css">
    <link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/consulting/css/charge_consulting.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- charge_consulting.js -->
    <script type="text/javascript" src="<%= contextPath %>/externalData/consulting/js/charge_consulting.js"></script>

<script src="http://www.google.com/jsapi"></script>

<script>
 (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
 (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
 m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
 })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
 ga('create', 'UA-913663-1', 'auto');
 ga('send', 'pageview');
 ga('send','event','stubbyx','step0','');

</script>
</head>
<body>
<div class="stu_wrap">
    <!--메인영역_Str-->
    <main class="stu_clearfix">
        <section class="stu_logo_container">
            <div class="stu_inner_wrap">
                <h1 class="stu_logo">
                    <a href="<%= contextPath %>/common/index.do">
                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1547604897205mCibKkVCI7.png" alt="logo"/>
                    </a>
                </h1>
            </div>
        </section>
        <section class="stu_charge step5">
            <div class="stu_charge_container">
                <div class="stu_charge_header">
                    <a href="<%= contextPath %>/consulting/index.do">취소하기<i class="ico_back"></i></a>
                    <p>맞춤 유럽여행 계획 의뢰</p>
                </div>
                <div class="charge_step">
                    <div class="stu_inner_wrap">
                        <ol class="stu_clearfix">
                            <li class="on-pc">
                                <div class="step_number">1</div>
                                <span class="step_name">여행정보 입력</span>
                            </li>
                            <li class="on-pc">
                                <div class="step_number">2</div>
                                <span class="step_name">국가선택</span>
                            </li>
                            <li  class="on-pc">
                                <div class="step_number">3</div>
                                <span class="step_name">도시선택</span>
                            </li>
<!--
                            <li>
                                <div class="step_number">4</div>
                                <span class="step_name">버킷리스트 선택</span>
                            </li>
-->
                            <li >
                                <div class="step_number">4</div>
                                <span class="step_name">서비스 선택</span>
                            </li>
                            <li  class="current">
                                <div class="step_number">6</div>
                                <span class="step_name">신청자정보 입력</span>
                            </li>
                        </ol>            

                    </div>
                </div>
                <div class="charge_item resv_detail" style="display:block;">
                    <div class="stu_inner_wrap">
                        <div class="panel">
                            <div class="txtWrap">
                                <b>고객님이 선택하신 여행정보입니다.</b>
                                <ol>

                                   <li>
                                        <dl>
                                            <dt>출국예정일</dt>
                                            <dd>2019-08-07</dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>여행기간</dt>
                                            <dd>8일</dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>여행인원</dt>
                                            <dd>1명</dd>
                                        </dl>
                                    </li>


                                    <li>
                                        <dl>
                                            <dt>희망여행지</dt>

                                            <dd>뒤셀도르프</dd>

                                        </dl>
                                    </li>


                                    <li>
                                        <dl>
                                            <dt>신청 서비스</dt>
                                            <dd>루트 제작</dd>
                                        </dl>
                                    </li>
                                    <li class="result">
                                        <dl>

                                            <dt>서비스 금액</dt>
                                            <dd>55,200<span>원</span></dd>
                                        </dl>
                                    </li>
                                </ol>
                            </div>
                            <p class="txt">
                                <span>여행정보는 상담진행 중에도 변경 가능합니다.</span>
                            </p>
                        </div>
                    </div>
                </div>


<form name="form" action="add_request.do" method="post">

                <div class="charge_item customer_detail">
                    <div class="stu_inner_wrap">
                        <div class="titArea">
                            <h3 class="stu_h3_title">신청자 정보</h3>
                        </div>
                        <div class="panel">
                            <ul>
                                <li>
                                    <dl>
                                        <dt>신청자명<span>*</span></dt>
                                        <dd><input type="text" class="form-control" title="예약자명" name="customer_name" id="customer_name" maxlength="20" value=""/></dd>
                                    </dl>
                                    <p class="txt"><u>신청자명과 입금자명이 동일해야합니다.</u> 만약 신청자명과 입금자명이 다를 경우, 반드시 스투비 고객센터(02-886-0982)로 알려주시기 바랍니다.</p>
                                </li>
                                <li>
                                    <dl>
                                        <dt>이메일주소<span>*</span></dt>
                                        <dd><input type="text" class="form-control" title="이메일주소" name="customer_email" id="customer_email" maxlength="50" value="victory0417@hanmail.net"/></dd>
                                    </dl>
                                    <p class="txt">루트 초안등 이메일로 중요한 정보가 전달되므로 정확하게 입력해주세요.</p>
                                </li>
                                <li>
                                    <dl>
                                        <dt>휴대폰번호<span>*</span></dt>
                                        <dd><input type="text" class="form-control" title="휴대폰번호" name="customer_phone" id="customer_phone" maxlength="30" placeholder="01x으로 시작하는 번호만 입력가능" onkeydown="return eventDownPhone(event);" onkeyup="return eventUpPhone(event);" value=""/></dd>
                                    </dl>
                                    <p class="txt">상담시 필요하므로 정확하게 입력해주세요.</p>
                                </li>
                                <li>
                                    <dl>
                                        <dt>카카오톡 ID</dt>
                                        <dd><input type="text" class="form-control" title="카카오톡" name="customer_kakao" maxlength="20" value=""/></dd>
                                    </dl>
                                    <p class="txt">긴급 연락시 필요합니다.</p>
                                </li>



                               <li>
                                    <dl>
                                        <dt>첫 상담일 선택</dt>
                                        <dd>
				<select name="firstcall_date" id="firstcall_date">
					
					<option value="2019-06-03">6월 3일(월)</option>
					
					<option value="2019-06-04">6월 4일(화)</option>
					
					<option value="2019-06-05">6월 5일(수)</option>
					
					<option value="2019-06-06">6월 6일(목)</option>
					
					<option value="2019-06-07">6월 7일(금)</option>
					
					<option value="2019-06-10">6월 10일(월)</option>
					
					<option value="2019-06-11">6월 11일(화)</option>
					
					<option value="2019-06-12">6월 12일(수)</option>
					
					<option value="2019-06-13">6월 13일(목)</option>
					
					<option value="2019-06-14">6월 14일(금)</option>
					
					<option value="2019-06-17">6월 17일(월)</option>
					
					<option value="2019-06-18">6월 18일(화)</option>
					
					<option value="2019-06-19">6월 19일(수)</option>
					
					<option value="2019-06-20">6월 20일(목)</option>
					
					<option value="2019-06-21">6월 21일(금)</option>
					
				</select>
			</dd>
                                    </dl>
                                </li>
                               <li>
                                    <dl>
                                        <dt>상담시간 선택</dt>
                                        <dd>
				<select name="firstcall_time" id="firstcall_time">
					<option value="11001130">11:00~11:30</option>
					<option value="11301200">11:30~12:00</option>
					<option value="12001230">12:00~12:30</option>

					<option value="14001430">14:00~14:30</option>
					<option value="14301500">14:30~15:00</option>
					<option value="15001530">15:00~15:30</option>
					<option value="15301600">15:30~16:00</option>
					<option value="16001630">16:00~16:30</option>
					<option value="16301700">16:30~17:00</option>
					<option value="17001730">17:00~17:30</option>
					<option value="17301800">17:30~18:00</option>
					<option value="18001830">18:00~18:30</option>
					<option value="18301900">18:30~19:00</option>
					<option value="19001930">19:00~19:30</option>
				</select>
			</dd>
                                    </dl>
                                </li>



                                <li>
                                    <dl>
                                        <dt>요청사항</dt>
                                        <dd><textarea class="form-control" title="요청사항" rows="3" name="special_req" value=""></textarea></dd>
                                    </dl>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="charge_item terms_container">
                    <div class="stu_inner_wrap">

                        <div class="titArea">
                            <h3 class="stu_h3_title">예비상담 안내</h3>
                        </div>
                        <div class="panel">
                            <b class="title">신청전 예비상담이 필요하신 경우, 02-886-0982로 문의요망 (평일 11시~19시)
		</div>		   

                        <div class="titArea">
                            <h3 class="stu_h3_title">약관안내</h3>
                        </div>
                        <div class="panel">
                            <b class="title">서비스 약관(필수)</b>
                            <div class="terms">
                                <p>

제 1 장 총 칙<br/>
제1조 목적<br/>
이 약관은 맞춤 여행계획 제안서비스(이하 "서비스"라 합니다)의 이용과 관련하여 현행 법령에 위반하지 않는 범위 내에서 회원의 기본적인 권리와 책임 및 당사와의 중요사항을 정하는 것을 목적으로 합니다.<br/>
<br/>
제2조 용어의 정의<br/>
이 약관에서 사용하는 용어의 정의는 다음과 같습니다.<br/>
- '서비스'란 '회원'에게 유료로 여행계획을 제안하는 서비스를 말합니다.<br/>
- '회원'이라 함은 '서비스'에 접속하여 이 약관에 동의하여 '서비스제공자'와 '이용계약'을 체결하고 '서비스제공자'의 '서비스'를 이용하는 자를 말합니다.<br/>
- '이용계약'이라 함은 이 약관에 따라 '서비스제공자'와 '회원'간에 체결하는 계약을 말합니다.<br/>
- '여행계획 산출물'이라 함은 '서비스제공자'가 '서비스'를 제공함에 있어 게시한 부호,문자,화상 등의 정보형태의 글,사진,동영상 및 각종 화일과 링크 등을 말합니다.<br/>
<br/>
제3조 약관의 효력 및 변경<br/>
(1) '서비스제공자'는 이 약관의 내용을 '회원'이 쉽게 알 수 있도록 '이용약관'화면 및 서비스신청 절차시 게시합니다.<br/>
(2) 이 약관은 '서비스제공자'가 스투비플래너를 통해 공시함으로서 효력을 발생합니다. <br/>
(3) 이 약관에 동의하고 신청을 한 '회원'은 약관에 동의한 시점부터 약관의 적용을 받습니다.<br/>
(4) '서비스제공자'는 '약관의규제에관한법률', '정보통신망이용촉진및정보보호등에관한법률' 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.<br/>
(5) '회원'은 개정약관에 동의하지 않을 경우 이용계약을 해지할 수 있습니다. 개정 시행일 이후 '회원'이 '서비스'를 이용하는 경우 개정약관에 동의한 것으로 간주합니다.<br/>
<br/>
제4조 약관 외 사항의 준칙<br/>
'서비스제공자'는 이 약관에서 정하지 않은 사항에 대해서는 관계법령, '서비스제공자'가 정한 '서비스'의 개별이용약관 또는 세부이용지침 등의 규정을 따르게됩니다.<br/>
<br/>
<br/>
제 2 장 서비스 이용계약 체결<br/>
제5조 이용 계약의 성립<br/>
'이용계약'은 '여행계획을 요청하는 자'가 약관의 내용에 동의하여 '서비스제공자'가 요청하는 양식에 정보를 입력하고 서비스를 요청함으로써 체결됩니다.<br/>
<br/>
<br/>
제 3 장 계약 당사자의 의무<br/>
제6조 '서비스제공자'의 의무<br/>
(1) '서비스제공자'는 관련법과 이 약관이 금지하거나 미풍양속에 반하는 행위를 하지 않으며, 지속적이고 안정적으로 '서비스'를 제공하기 위하여 최선을 다하여 노력합니다.<br/>
(2) '서비스제공자'는 '회원'의 개인정보 보호를 위해 보안시스템을 갖추어야 하며 개인정보취급방침을 공시하고 준수합니다.<br/>
(3) '서비스제공자'는 안정적인 '서비스' 제공을 위하여, 설비에 장애가 생기거나 손상된 때에는 부득이한 사유가 없는 한 지체없이 이를 수리 또는 복구합니다.<br/>
(4) '서비스제공자'는 회원의 신상정보를 본인의 승낙없이 외부로 유출하지 않습니다. 단, 적법한 절차를 거친 국가기관의 요구나 수사상 또는 기타 공익을 위하여 필요하다고 인정되는 경우에는 예외로 합니다.<br/>
(5) '서비스제공자'는 '회원'으로부터 제기된 의견이나 불만이 정당하다고 인정할 경우, 이를 처리하여야 합니다. '회원'이 제기한 의견이나 불만사항에 대해서 '회원'에게 처리과정 및 결과를 전달합니다.<br/>
<br/>
제7조 회원의 의무<br/>
(1) '회원'은 다음 각 호의 행위를 하여서는 안 됩니다.<br/>
- 이용 신청 또는 변경 시 허위내용의 기재 및 타인의 정보도용<br/>
- 본 '서비스' 이용 중 습득한 정보를 상업적 목적으로 출판, 방송 등을 통하여 '서비스제공자'의 허락없이 제3자에게 노출시키는 행위<br/>
- '서비스제공자'와 제3자의 권리나 저작권 등 지적재산권에 대한 침해<br/>
- '서비스제공자'와 제3자의 명예를 손상시키거나 운영을 방해하는 행위<br/>
- 해킹, 광고를 통한 수익, 음란사이트를 이용한 상업행위, 상용소프트웨어 불법배포<br/>
- 기타 불법적이거나 부당한 행위<br/>
(2) '회원'은 관련법규, 이 약관의 규정, '서비스'와 관련한 공지사항 등을 준수하여야 하며, 기타 '서비스제공자'의 업무에 방해되는 행위를 하여서는 안됩니다.<br/>
<br/>
<br/>
제 4 장 서비스 이용<br/>
제8조 서비스의 제공<br/>
(1) '서비스제공자'는 '회원'의 결제가 완료된 시점부터 '서비스'를 개시합니다.<br/>
(2) '서비스제공자'는 시스템 점검, 증설 및 교체, 고장 등 운영상의 이유가 있는 경우, '온라인 서비스' 제공을 일시적으로 중단할 수 있습니다.<br/>
(3) '회원'과 '서비스 제공자'간의 상담 통화 스케쥴은 최소 24시간 이전에 플래너와 고객사이에 협의된 시간을 기준으로 진행되며, 그렇지 않을 경우, '서비스제공자'는 상담을 거절할 수 있으며, 이 때 이 거절을 사유로 계약을 해지하고자 할 경우, '서비스제공자'는 고객에 대해 아무런 보상과 책임을 지지 아니합니다.<br/>
<br/>
<br/>

제9조 추가비용<br/>
(1)'회원'이 루트를 확정하고, 해당루트와 관련된 정보를 '서비스 제공자'가 전달한 이후에 변심등으로 인해 '루트'를 변경하고자 할 경우, 아래의 기준에 따라  1회 루트 변경 요청시 마다 다음의 기준에 따라 추가비용을 지불하기로 한다. <br/>
<br>
'루트'만 의뢰한 고객의 경우'<br>
- '서비스제공자'가 해당루트에 대한 교통편을 정리해 전달한 경우, 전체 지불한 비용의 90%를 추가로 지불<br>
<br>
'루트+숙소/투어추천'을 의뢰한 고객의 경우'<br>
- '서비스제공자'가 해당루트에 대한 교통편과 숙소/투어추천을 정리해 전달한 경우, 전체 지불한 비용의 90%를 추가로 지불<br>
- '서비스제공자'가 해당루트에 대한 교통편을 정리해 전달한 경우, 전체 지불한 비용의 50%를 추가로 지불<br>
<br>
'루트+숙소/투어추천+일정'을 의뢰한 고객의 경우'<br>
- '서비스제공자'가 해당루트에 대한 교통편과 숙소/투어추천 그리고 일정표를 정리해 전달한 경우, 전체 지불한 비용의 90%를 추가로 지불<br>
- '서비스제공자'가 해당루트에 대한 교통편과 숙소/투어추천을 정리해 전달한 경우, 전체 지불한 비용의 60%를 추가로 지불<br>
- '서비스제공자'가 해당루트에 대한 교통편을 정리해 전달한 경우, 전체 지불한 비용의 40%를 추가로 지불<br>
<br/>

제10조 서비스의 중단<br/>
(1)'서비스제공자'는 컴퓨터 등 정보통신설비의 보수점검, 교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 "온라인 서비스"의 제공을 일시적으로 중단할 수 있습니다.<br/>
(2) 사업종목의 전환, 사업의 포기, 업체 간의 통합 등의 이유로 "서비스"를 제공할 수 없게 되는 경우에는 '서비스제공자'는 제22조에 정한 방법으로 이용자에게 통지합니다.<br/>
<br/>
제11조 서비스의 변경<br/>
(1) '서비스제공자'는 운영상 또는 기술상 필요에 따라 제공하고 있는 '서비스'를 전부 또는 일부 변경할 수 있습니다.<br/>
(2) '서비스'의 내용, 이용방법, 이용시간에 대하여 변경이 있는 경우에는 사유 및 내용을 변경 전 회원에게 통지하고 변경하여 제공할 수 있습니다.<br/>
<br/>
제12조 정보의 제공<br/>
(1) '서비스제공자'는 '회원'이 '서비스'이용 중 필요하다고 인정되는 다양한 정보 또는 광고에 대해서 공지사항, 전자우편, 유무선매체 등의 방법으로 회원에게 제공할 수 있습니다.<br/>
(2) '회원'은 관련법에 따른 거래 관련 정보 및 고객문의 등에 대한 답변 등을 제외하고 언제든지 수신거절을 할 수 있습니다.<br/>
(3) '회원'에 대한 통지를 하는 경우에는 '회원'이 개인정보 기재를 소홀히 한 경우 중요한 통지를 받지 못할 수 있습니다.<br/>
<br/>
<br/>
<br/>
제 5 장 계약 해지 및 이용 제한<br/>
제13조 계약 해지<br/>
(1) '회원'은 언제든지 ' 이용계약 해지 신청을 할 수 있으며 신청즉시 이용계약이 해지됩니다.<br/>
(2) 차액 환불은 서비스 산출물 제공이 완료되지 않은 상태에서 계약이 해지된 경우에 한하며, 실제 입금액을 기준으로 총 통화 횟수(또는 이메일 전송수)중 진행되지 않은 횟수의 비율만큼 환불이 가능합니다.<br/>
<br/>
제14조 서비스 이용제한<br/>
'서비스제공자'는 다음 각 호에 해당하는 경우에 '회원'의 요청 혹은 '서비스제공자'의 권한으로 '회원'의 '서비스'이용을 제한할 수 있습니다.<br/>
- 이 약관의 의무를 위반하거나 '서비스'의 정상적 운영을 방해한 경우.<br/>
- '저작권법', '컴퓨터프로그램보호법', '정보통신망법' 등의 관련법규를 위반하여 불법프로그램 배포, 운영방해, 해킹 등의 행위를 한 경우.<br/>
- '서비스제공자'의 동의 없이 영리를 목적으로 '서비스'를 사용하는 경우.<br/>
- 기타 불법적이거나 부당한 행위로 판단되는 경우.<br/>
<br/>
<br/>

제 6 장 손해배상 및 기타사항<br/>
제 15조 손해배상<br/>
(1) '서비스제공자'의 과실로 인하여 '회원'에게 손해를 끼친 경우 이를 배상합니다. <br/>
(2) 단, '서비스 제공자'의 과실로 인하여 '회원'에게 손해를 끼친 경우,  보상금은 서비스 비용 환불금을 포함해 최대 '회원'이 지불한 서비스 비용의 200%를 초과할 수 없습니다.<br/>
(3) '회원'이 '서비스'를 이용함에 있어 불법적 행위 또는 약관의 위반으로 인해 '서비스제공자'에 손해가 발생한 경우, 당 '회원'은 이를 배상하여야 합니다.<br/>
<br/>
제 16조 면책사항<br/>
(1) '서비스제공자'는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 대한 책임이 면제됩니다.<br/>
(2) '서비스제공자'는 회원이 '서비스제공자'가 제공하는 '서비스'로부터 기대되는 이익을 얻지 못하였거나 ' 서비스'의 이용 제한 사유로 발생하는 손해에 대하여 책임을 지지 않습니다.<br/>
(3) '서비스제공자'는 '회원'에게 최신의 여행정보를 제공하기 위해 노력하지만, 여행정보의 특성상 시간에 따라 바뀌는 정보가 많아 정보의 오류가 발생할 수도 있음을 미리 공지하며, 고의성이 없는 경우, 이로 인해 발생하는 직간접적인 피해에 대해 보상하지 않습니다.<br/>

(4) '서비스제공자'는 '회원'간 또는 '회원'과 제3자 상호간에 '서비스'를 매개로 하여 거래 등을 한 경우 책임이 면제됩니다.<br/>
<br/>
제 17조 '회원'에 대한 통지<br/>
(1) '서비스제공자'가 '회원'에 대한 통지를 하는 경우 이 약관에 별도 규정이 없는 한 '회원'이 지정한 전자우편주소로 할 수 있습니다.<br/>
(2) '서비스제공자'는 '회원' 전체에 대한 통지의 경우 7일 이상 '서비스제공자'의 게시판에 게시함으로서 제1항의 통지에 갈음할 수 있습니다.<br/>
<br/>
제 18조 재판권 및 준거법<br/>
(1) '서비스제공자'와 '회원'간 제기된 소송은 대한민국법을 준거법으로 합니다.<br/>
(2) '서비스제공자'와 '회원'간 발생한 분쟁에 관한 소송은 '서비스제공자'의 소재지의 관활법원에 제소합니다.<br/>
<br/>
<br/>
부 칙<br/>
본 약관은 2019년 2월 18일부터 적용됩니다.<br/>


                                </p>
                            </div>



                            <p class="txt_agree">
                                <input type="checkbox" name="terms_check" id="terms_agree1">
                                <label for="terms_agree1">서비스 약관을 확인하였고 내용에 동의합니다.<span>*</span></label>
                            </p>



                
                            <b class="title">개인정보 이용동의</b>
                            <div class="terms">
                                <p>

 1. 수집․이용에 관한 사항<br/>
  □ 수집·이용 목적<br/>
   ◦ 플래너 서비스 사업 운영·관리를 목적으로 합니다.<br/>
<br/>
  □ 수집·이용할 항목<br/>
   ◦ 성명, 영문명, 연락처(전화번호, 핸드폰번호, e-mail,카카오톡 아이디), 여행일정정보 <br/>
<br/>
  □ 보유․이용기간<br/>
   ◦ 위 개인정보는 수집․이용에 관한 동의일로부터 보유목적 달성 시 또는 정보주체가 개인정보 삭제를 요청할 경우 지체 없이 파기합니다. <br/>
<br/>
   ◦ 원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 단, 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 아래와 같이 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다.<br/>
보존 항목 : 성명, 영문명, 연락처(전화번호, 핸드폰번호, e-mail,카카오톡 아이디), 여행일정정보<br/>
보존 근거 : 전자상거래등에서의 소비자보호에 관한 법률<br/>
보존 기간 : 5년<br/>
표시/광고에 관한 기록 : 6개월 (전자상거래등에서의 소비자보호에 관한 법률)<br/>
계약 또는 청약철회 등에 관한 기록 : 5년 (전자상거래등에서의 소비자보호에 관한 법률)<br/>
대금결제 및 재화 등의 공급에 관한 기록 : 5년 (전자상거래등에서의 소비자보호에 관한 법률)<br/>
소비자의 불만 또는 분쟁처리에 관한 기록 : 3년 (전자상거래등에서의 소비자보호에 관한 법률)<br/>
신용정보의 수집/처리 및 이용 등에 관한 기록 : 3년 (신용정보의 이용 및 보호에 관한 법률)<br/>
<br/>
<br/>
  □ 동의를 거부할 권리 및 동의를 거부할 경우의 불이익<br/>
<br/>
   ◦ 위 개인정보 중 필수항목의 수집․이용에 관한 동의는 본 서비스의 수행을 위해 필수적이므로 이에 동의하셔야 이후 절차를 진행할 수 있습니다. 단, 동의하지 않으시는 경우 본 서비스 신청이 불가합니다.<br/>
</div>

                            <p class="txt_agree">
                                <input type="checkbox" name="terms_check2" id="terms_agree2">
                                <label for="terms_agree2">위의 개인정보처리방침에 동의합니다.<span>*</span></label>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="btn_step stu_clearfix">
                <div class="btn_wrap stu_column-2">
                    <a href="<%= contextPath %>/consulting/charge_consulting_step5.do?customer_email=victory0417@hanmail.net&ctrylist=11101,11106&member_cnt=1&term=8&startdate=2019-08-07&tripwith=2&prepared=여행 국가/도시 확정, 항공권 구매완료, 루트 확정&agegroup=20&tripgene=111061012&buckets=&custom_citylist=" class="btn_prev">이전단계</a>
                </div>
                <div class="btn_wrap stu_column-2">
                    <a href="javascript:fsubmit()" class="btn_next">예약완료</a>
                </div>
            </div>
        </section>
    </main>
	<input type="hidden" name="custom_citylist"  value="">

	<input type="hidden" name="trip_id" value="">
	<input type="hidden" name="ctrylist"  id="ctrylist" value="11101,11106">

	<input type="hidden" name="tripgene"  id="tripgene" value="111061012">
	<input type="hidden" name="member_cnt" value="1">
	<input type="hidden" name="term" value="8">
	<input type="hidden" name="startdate" value="2019-08-07">
	<input type="hidden" name="tripwith" value="2">
	<input type="hidden" name="prepared" value="여행 국가/도시 확정, 항공권 구매완료, 루트 확정">
	<input type="hidden" name="agegroup" value="20">
	<input type="hidden" name="buckets" id="buckets" value="">
	<input type="hidden" name="stype" id="stype" value="C">
	<input type="hidden" name="stype_txt" id="stype_txt" value="루트 제작">
	<input type="hidden" name="price_txt" id="price_txt" value="55,200">




</form>

<script>

	var buckets="";
	tripgene="111061012";
	member_cnt="1";
	term="8";
	startdate="2019-08-07";
	tripwith="2";
	prepared="여행 국가/도시 확정, 항공권 구매완료, 루트 확정";
	agegroup="20";
	sevice_type="";
	
	function fsubmit()
	{
		if($("#customer_name").val()=="")
		{
			func_alert("신청자 이름은 필수항목입니다.");
		}
		else if($("#terms_agree1").is(":checked")==false)
		{
			func_alert("서비스 신청을 위해 서비스 약관 동의는 필수입니다.");
		}
		else if($("#terms_agree2").is(":checked")==false)
		{
			func_alert("서비스 신청을 위해 개인정보취급방침에 대한 동의는 필수입니다.");
		}

		else if($("#customer_email").val()=="")
		{
			func_alert("신청자 이메일은 필수항목입니다.");
		}
		else if($("#customer_phone").val()=="")
		{
			func_alert("신청자 핸드폰은 필수항목입니다.");
		}
		else if($("#firstcall_date").val()=="")
		{
			func_alert("상담날짜 선택은 필수항목입니다.");
		}
		else if($("#firstcall_time").val()=="")
		{
			func_alert("상담시간 선택은 필수항목입니다.");
		}
		else
		{
			document.form.submit();
		}
	}



	function selsevicetype(t)
	{
		sevice_type=t;
	}

function func_alert(msg)
{
	
	$("#alert_modal_msg").html(msg);
	$("#alert_modal").show();
	
}
function closeAlertModal()
{
	$("#alert_modal").hide();
}

</script>
<div id="alert_modal" style="display:none; position:fixed; top:0; left:0; right:0; bottom:0; background:rgba(0,0,0,.15); z-index:99999;">
            <div style="position:relative; top:30%; left:50%; transform:translate(-50%, -50%); width:320px; border-radius:2px; box-shadow:0 0 0 1px rgba(0,0,0,.1), 0 2px 8px 0 rgba(0,0,0,.25); background:#fff;">
                <div style="position:relative; height:42px; padding:0 18px; background:#f5f5f7; font-size:15px; font-weight:normal; line-height:42px; color:#4a4a4a;">안내
                    <a href="javascript:closeAlertModal()" class="" style="position:absolute; top:50%; right:20px; transform:translateY(-50%); width:22px; height:22px; background-image:url(<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1548911555427eWBbProQMk.png); background-size:cover;"></a>
                </div>
                <div id="alert_modal_msg" style="padding:16px 24px; font-size:15px; font-weight:normal; line-height:1.4; word-break:keep-all; letter-spacing:0; text-align:center; color:#4a4a4a;"></div>
                <div style="padding:0 24px 20px; text-align:center;">
                    <a href="javascript:closeAlertModal()" class="btn-u btn-u-xs" style="border-radius:3px; background:#8f8f8f">
                        <font style="font-size:16px; font-weight:normal; line-height:42px; color:#fff">확인</font>
                    </a>
                </div>
            </div>
        </div>


    <!--//메인영역_End-->
</div>
<!--//Contents_End-->
</body>
</html>
