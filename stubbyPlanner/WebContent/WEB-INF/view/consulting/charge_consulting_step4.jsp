<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/include.jspf"%>
<!DOCTYPE html>
<html lang="ko">
<head>

    <title>상담예약 4/5 - 스투비플래너</title>
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
        <section class="stu_charge step4">
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
                            <li class="on-pc">
                                <div class="step_number">3</div>
                                <span class="step_name">도시선택</span>
                            </li>
<!--
                            <li>
                                <div class="step_number">4</div>
                                <span class="step_name">버킷리스트 선택</span>
                            </li>
-->
                            <li class="current">
                                <div class="step_number">4</div>
                                <span class="step_name">서비스 선택</span>
                            </li>
                            <li>
                                <div class="step_number">5</div>
                                <span class="step_name">신청자정보 입력</span>
                            </li>
                        </ol>

                    </div>
                </div>
                <div class="charge_item service">
                    <div class="stu_inner_wrap">
                        <div class="titArea">
                            <h3 class="stu_h3_title">신청서비스 선택</h3>
<!---
			<p style="padding:0 50px;">
			<b>일반 여행사 맞춤여행</b>의 경우,<br>

			여행사 견적의 경우, 대략 200~290만원이 예상되며(1회경유, 3성급 호텔 기준) 스투비로 만드실 경우,136만원정도가 예상됩니다.(단순 계산한 금액으로 실제 금액과는 차이가 발생할 수 있습니다.) 
			여행경비 전액을 여행사가 입금 받는데 통상 각각의 <b>숙소,교통비 가격을 비공개</b>로 하고 <b>1인당 50~100만원의 수수료</b>를 붙여 진행합니다. <br><Br>
			<b>스투비 맞춤여행계획</b>의 경우,<br>아래의 수수료 이외의 모든 실제 경비를 <b>온라인 최저가 기준(검색 시점기준)으로 제안</b>드리며 <b>투명하게 공개</b>됩니다. ( 해외결제가 가능한 카드를 보유한 고객이면 손쉽게 예약을 직접 하실 수 있도록 충분한 가이드를 제공해드립니다.)
			</p>

-->
                        </div>
                        <div class="panel">
                            <ul class="svc_wrap stu_clearfix">



                                <li class="svc_item" id="svc1">
                                    <div class="svc_header">
                                        <div class="svc_plan">
  
                                            <span>맞춤루트 + 교통예약 지원</span>
                                        </div>
                                        <div class="svc_price"  style="">
55,200 <span>원</span>

			
                                        </div>
                                    </div>
                                    <ul class="svc_features">
                                        <li><b>맞춤 루트 제작</b></li>
                                        <li><b>도시간 이동 최적교통편 예약지원</b></li>
                                        <li>유선상담 총 2회, 각 10~15분</li>
                                        <li>루트제작에 필요한 이메일 추가상담</li>
                                        <li>유럽 100여권의 프리미엄 가이드북 (앱)</li>
                                    </ul>
                                    <div class="btn_wrap">
                                        <a class="btn_apply" id="service1" href="javascript:selsevicetype('C','루트 제작','55,200')">선택하기</a>
                                    </div>
                                </li>
                                <li class="svc_item focused" id="svc2">
                                    <div class="svc_header">
                                        <div class="svc_plan">
                                            
                                            <span>루트+교통<br><b>+ 숙소/투어추천</b></span>
                                        </div>
                                        <div class="svc_price"  style="">

79,000 <span>원</span>

                                        </div>
                                    </div>
                                    <ul class="svc_features">
                                        <li><b>루트 맞춤 제작</b></li>
                                        <li><b>도시간 이동 최적교통편 예약지원</b></li>

                                        <li><b>도시별 맞춤 숙소/투어  추천</b></li>
                                        <li>유선상담 총 2회, 각 10~15분</li>
                                        <li>루트+숙소에 필요한 이메일 추가상담</li>
                                        <li>유럽 100여권의 프리미엄 가이드북 (앱)</li>

                                    </ul>
                                    <div class="btn_wrap">
                                        <a class="btn_apply" id="service2" href="javascript:selsevicetype('B','루트+숙소 및 투어추천','79,000')">선택하기</a>
                                    </div>
                                </li>

                                <li class="svc_item" id="svc3">
                                    <div class="svc_header">
                                        <div class="svc_plan">
                                            <p>추천</p>

                                            <span>루트+교통+숙소/투어<b><br>+ 맞춤 일정표</b></span>
                                        </div>
                                        <div class="svc_price" style="">


99,000 <span>원</span>

				
                                        </div>
                                    </div>
                                    <ul class="svc_features">

                                        <li><b>루트+일정 맞춤 제작</b></li>
                                        <li><b>도시간 이동 최적교통편 예약지원</b></li>
                                        <li><b>도시별 맞춤 숙소/투어  추천</b></li>
                                        <li><b>일정에 맞는 맛집 추천</b></li>
                                        <li><b>모바일 앱으로 모든 일정/터미널/숙소 찾아 가는법 정리</b></li>
                                        <li>루트+일정에 필요한 이메일 추가상담</li>

                                        <li>유선상담 총 3회, 각 10~15분</li>
                                        <li>유럽 100여권의 프리미엄 가이드북 (앱)</li>

                                    </ul>
                                    <div class="btn_wrap">
                                        <a class="btn_apply" id="service3" href="javascript:selsevicetype('A','맞춤루트+일정 의뢰','99,000')">선택하기</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
<div style="text-align:center;padding-bottom:30px;font-size:13pt;">
서비스 선택에 도움이 필요하신가요?
<div ><font style="font-size:15pt;font-weight:700;color:#3ad195">02-886-0982</font><br> (월~금, 오전 10시~ 오후 7시)</div>
</div>
                    </div>


                </div>
                <div class="charge_item resv_detail">
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
                                            <dt>방문예정 국가</dt>
                                            <dd>프랑스,독일</dd>
                                        </dl>
                                    </li>


                                    <li>
                                        <dl>
                                            <dt>희망여행지</dt>

                                            <dd>뒤셀도르프</dd>

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
            </div>
            <div class="btn_step stu_clearfix">
                <div class="btn_wrap stu_column-2">
                    <a href="<%= contextPath %>/consulting/charge_consulting_step3.do?customer_email=victory0417@hanmail.net&ctrylist=11101,11106&member_cnt=1&term=8&startdate=2019-08-07&tripwith=2&prepared=여행 국가/도시 확정, 항공권 구매완료, 루트 확정&agegroup=20&tripgene=111061012&buckets=&custom_citylist=" class="btn_prev">이전단계</a>
                </div>
                <div class="btn_wrap stu_column-2">
                     <a href="javascript:fsubmit();" class="btn_next">다음단계</a>
                </div>
            </div>
        </section>
    </main>

<form name="form" action="charge_consulting_step5.do" method="post">



	<input type="hidden" name="customer_email"  value="victory0417@hanmail.net">
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
	<input type="hidden" name="stype" id="stype" value="">
	<input type="hidden" name="stype_txt" id="stype_txt" value="">
	<input type="hidden" name="price_txt" id="price_txt" value="">

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
	stype="";
	stype_txt="";
	price_txt="";
	
	function fsubmit()
	{
		if(stype=="")
		{
			func_alert("서비스 타입을 선택하고 다음단계로 이동해주세요.");
		}
		else
		{
			$("#stype").val(stype);
			$("#stype_txt").val(stype_txt);
			$("#price_txt").val(price_txt);
			document.form.submit();
		}
	}



	function selsevicetype(s,s_txt,p_txt)
	{
		stype=s;
		stype_txt=s_txt;
		price_txt=p_txt;
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