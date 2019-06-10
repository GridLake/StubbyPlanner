<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/include.jspf" %>
<!DOCTYPE html>
<html lang="ko">
<head>

    <title>상담예약 2/5 - 스투비플래너</title>
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
	<link rel="stylesheet" href="<%= contextPath %>/externalData/superguide/assets/plugins/font-awesome/css/font-awesome.min.css">
    <!-- charge_consulting.js -->
    <script type="text/javascript" src="<%= contextPath %>/externalData/consulting/js/charge_consulting.js"></script>

<script src="http://www.google.com/jsapi"></script>
<style>
.ctry_selected
{
	background:#efefef;
}
</style>
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
        <section class="stu_charge step2">
            <div class="stu_charge_container stu_clearfix">
                <div class="stu_charge_header">
                    <a href="index.asp">취소하기<i class="ico_back"></i></a>
                    <p>맞춤 유럽여행 계획 의뢰</p>
                </div>
                <div class="charge_step">
                    <div class="stu_inner_wrap">
                        <ol class="stu_clearfix">
                            <li >
                                <div class="step_number">1</div>
                                <span class="step_name">여행정보 입력</span>
                            </li>
                            <li class="current">
                                <div class="step_number">2</div>
                                <span class="step_name">국가선택</span>
                            </li>
                            <li>
                                <div class="step_number">3</div>
                                <span class="step_name">도시선택</span>
                            </li>
<!--
                            <li class="on-pc">
                                <div class="step_number">4</div>
                                <span class="step_name">버킷리스트 선택</span>
                            </li>
-->
                            <li class="on-pc">
                                <div class="step_number">5</div>
                                <span class="step_name">서비스 선택</span>
                            </li>
                            <li class="on-pc">
                                <div class="step_number">6</div>
                                <span class="step_name">신청자정보 입력</span>
                            </li>
                        </ol>
                    </div>
                </div>
                <div class="charge_item country">
                    <div class="stu_inner_wrap" style="max-width:710px;margin:0;">
                        <div class="titArea">
                            <h3 class="stu_h3_title">국가 선택</h3>
                        </div>
                    </div>

<div class="stu_inner_wrap" style="max-width:710px;margin:0;">
                        <ul class="panel">
                            <p>희망하는 국가를 1개 이상 선택하세요.
                                <span class="ctry_reset">선택 초기화<i></i></span>
                            </p>


                            <li  id="btn_11101"  onclick="toggleCtry('11101')">
                                <img src="<%= contextPath %>/externalData/img_v14/ico_11101.png">
                                <b class="name">프랑스</b>

<span class="icon" id="star_11101" style="display:none;"><i class="star"></i></span>

                            </li>

                            <li  id="btn_11103"  onclick="toggleCtry('11103')">
                                <img src="<%= contextPath %>/externalData/img_v14/ico_11103.png">
                                <b class="name">영국</b>

<span class="icon" id="star_11103" style="display:none;"><i class="star"></i></span>

                            </li>

                            <li  id="btn_11104"  onclick="toggleCtry('11104')">
                                <img src="<%= contextPath %>/externalData/img_v14/ico_11104.png">
                                <b class="name">이탈리아</b>

<span class="icon" id="star_11104" style="display:none;"><i class="star"></i></span>

                            </li>

                            <li  id="btn_11102"  onclick="toggleCtry('11102')">
                                <img src="<%= contextPath %>/externalData/img_v14/ico_11102.png">
                                <b class="name">스위스</b>

<span class="icon" id="star_11102" style="display:none;"><i class="star"></i></span>

                            </li>

                            <li  id="btn_11106"  onclick="toggleCtry('11106')">
                                <img src="<%= contextPath %>/externalData/img_v14/ico_11106.png">
                                <b class="name">독일</b>

<span class="icon" id="star_11106" style="display:none;"><i class="star"></i></span>

                            </li>

                            <li  id="btn_11107"  onclick="toggleCtry('11107')">
                                <img src="<%= contextPath %>/externalData/img_v14/ico_11107.png">
                                <b class="name">네덜란드</b>

<span class="icon" id="star_11107" style="display:none;"><i class="star"></i></span>

                            </li>

                            <li  id="btn_11108"  onclick="toggleCtry('11108')">
                                <img src="<%= contextPath %>/externalData/img_v14/ico_11108.png">
                                <b class="name">벨기에</b>

<span class="icon" id="star_11108" style="display:none;"><i class="star"></i></span>

                            </li>

                            <li  id="btn_13101"  onclick="toggleCtry('13101')">
                                <img src="<%= contextPath %>/externalData/img_v14/ico_13101.png">
                                <b class="name">체코</b>
<span class="icon rising"><i class="rising"></i></span>
<span class="icon" id="star_13101" style="display:none;"><i class="star"></i></span>

                            </li>

                            <li  id="btn_13104"  onclick="toggleCtry('13104')">
                                <img src="<%= contextPath %>/externalData/img_v14/ico_13104.png">
                                <b class="name">오스트리아</b>
<span class="icon rising"><i class="rising"></i></span>
<span class="icon" id="star_13104" style="display:none;"><i class="star"></i></span>

                            </li>

                            <li  id="btn_13102"  onclick="toggleCtry('13102')">
                                <img src="<%= contextPath %>/externalData/img_v14/ico_13102.png">
                                <b class="name">헝가리</b>

<span class="icon" id="star_13102" style="display:none;"><i class="star"></i></span>

                            </li>

                            <li  id="btn_13106"  onclick="toggleCtry('13106')">
                                <img src="<%= contextPath %>/externalData/img_v14/ico_13106.png">
                                <b class="name">크로아티아</b>
<span class="icon rising"><i class="rising"></i></span>
<span class="icon" id="star_13106" style="display:none;"><i class="star"></i></span>

                            </li>

                            <li  id="btn_12101"  onclick="toggleCtry('12101')">
                                <img src="<%= contextPath %>/externalData/img_v14/ico_12101.png">
                                <b class="name">스페인</b>

<span class="icon" id="star_12101" style="display:none;"><i class="star"></i></span>

                            </li>

                            <li  id="btn_12102"  onclick="toggleCtry('12102')">
                                <img src="<%= contextPath %>/externalData/img_v14/ico_12102.png">
                                <b class="name">포르투갈</b>
<span class="icon rising"><i class="rising"></i></span>
<span class="icon" id="star_12102" style="display:none;"><i class="star"></i></span>

                            </li>

                            <li  id="btn_12103"  onclick="toggleCtry('12103')">
                                <img src="<%= contextPath %>/externalData/img_v14/ico_12103.png">
                                <b class="name">그리스</b>

<span class="icon" id="star_12103" style="display:none;"><i class="star"></i></span>

                            </li>

                            <li  id="btn_12104"  onclick="toggleCtry('12104')">
                                <img src="<%= contextPath %>/externalData/img_v14/ico_12104.png">
                                <b class="name">터키</b>

<span class="icon" id="star_12104" style="display:none;"><i class="star"></i></span>

                            </li>

                            <li  id="btn_14107"  onclick="toggleCtry('14107')">
                                <img src="<%= contextPath %>/externalData/img_v14/ico_14107.png">
                                <b class="name">아이슬란드</b>
<span class="icon rising"><i class="rising"></i></span>
<span class="icon" id="star_14107" style="display:none;"><i class="star"></i></span>

                            </li>

                            <li  id="btn_14104"  onclick="toggleCtry('14104')">
                                <img src="<%= contextPath %>/externalData/img_v14/ico_14104.png">
                                <b class="name">노르웨이</b>

<span class="icon" id="star_14104" style="display:none;"><i class="star"></i></span>

                            </li>

                            <li  id="btn_14103"  onclick="toggleCtry('14103')">
                                <img src="<%= contextPath %>/externalData/img_v14/ico_14103.png">
                                <b class="name">덴마크</b>

<span class="icon" id="star_14103" style="display:none;"><i class="star"></i></span>

                            </li>

                            <li  id="btn_14105"  onclick="toggleCtry('14105')">
                                <img src="<%= contextPath %>/externalData/img_v14/ico_14105.png">
                                <b class="name">스웨덴</b>

<span class="icon" id="star_14105" style="display:none;"><i class="star"></i></span>

                            </li>

                            <li  id="btn_14102"  onclick="toggleCtry('14102')">
                                <img src="<%= contextPath %>/externalData/img_v14/ico_14102.png">
                                <b class="name">핀란드</b>

<span class="icon" id="star_14102" style="display:none;"><i class="star"></i></span>

                            </li>

                            <li  id="btn_14106"  onclick="toggleCtry('14106')">
                                <img src="<%= contextPath %>/externalData/img_v14/ico_14106.png">
                                <b class="name">발트3국</b>

<span class="icon" id="star_14106" style="display:none;"><i class="star"></i></span>

                            </li>

                        </ul>
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
                	<!-- 이메일주소, 날짜, 인원수, 출국예정일, 나이세대, 현재준비상항, 여행기간, 여행타입(여자혼자 = 1), 뒤로가더라도 값은 저장되어 있음 -->
                    <a href="charge_consulting_step1.do?customer_email=victory0417@hanmail.net&member_cnt=1&term=8&startdate=2019-08-07&tripwith=2&prepared=&agegroup=20" class="btn_prev">이전단계</a>
                </div>
                <div class="btn_wrap stu_column-2">
                    <a href="javascript:fsubmit();" class="btn_next">다음단계</a>
                </div>
            </div>

<form name="form" action="charge_consulting_step3.do" method="get">
	<input type="hidden" name="trip_id" value="">

	<input type="hidden" name="ctrylist"  id="ctrylist" value="">
	<input type="hidden" name="member_cnt" value="1">
	<input type="hidden" name="term" value="8">
	<input type="hidden" name="startdate" value="2019-08-07">
	<input type="hidden" name="tripwith" value="2">
	<input type="hidden" name="prepared" value="">  <!-- value="여행 국가/도시 확정, 항공권 구매완료, 루트 확정" -->
	<input type="hidden" name="agegroup" value="20">
	<input type="hidden" name="customer_email"  value="victory0417@hanmail.net">

</form>

        </section>
    </main>
    <!--//메인영역_End-->
</div>
<script>

	ctrylist="";
	tripgene="";
	member_cnt="1";
	term="8";
	startdate="2019-08-07";
	tripwith="2";
	prepared="";
	agegroup="20";


	function fsubmit()
	{
		
		$("#ctrylist").val(ctrylist);
		document.form.submit();		
	}


    $('.tab_item').click(function(e) {

        $(this).toggleClass('selected');

        var sltNum = $(this).closest('.panel').find('.selected').length;
        if(sltNum > 0) {
            $(this).closest('.panel').prev().children('.item_count').text(sltNum);
        } else {
            $(this).closest('.panel').prev().children('.item_count').text('');
        }
    });
    


function toggleCtry(id)
{

	xid='';
	if($("#btn_"+id).hasClass("selected"))
	{
		$("#btn_"+id).removeClass("selected");

		ctrylist=ctrylist.replace(id,"");
		ctrylist=ctrylist.replace(",,",",");
		if(ctrylist.substring(0,1)==",")
			ctrylist=ctrylist.substring(1);
		if(ctrylist.substring(ctrylist.length-1,ctrylist.length)==",")
			ctrylist=ctrylist.substring(0,ctrylist.length-1);

		if(ctrylist.length>0)
			xid=ctrylist.substring(ctrylist.length-5,ctrylist.length);

	}
	else
	{
		$("#btn_"+id).addClass("selected");
		if(ctrylist=="")
			ctrylist=id;
		else
			ctrylist=ctrylist+","+id;
		xid=id;
	
	}


	if(ctrylist=="")
		$(".rising").show();
	else
		$(".rising").hide();

		$("#star_11101").hide();

		$("#star_11103").hide();

		$("#star_11104").hide();

		$("#star_11102").hide();

		$("#star_11106").hide();

		$("#star_11107").hide();

		$("#star_11108").hide();

		$("#star_13101").hide();

		$("#star_13104").hide();

		$("#star_13102").hide();

		$("#star_13106").hide();

		$("#star_12101").hide();

		$("#star_12102").hide();

		$("#star_12103").hide();

		$("#star_12104").hide();

		$("#star_14107").hide();

		$("#star_14104").hide();

		$("#star_14103").hide();

		$("#star_14105").hide();

		$("#star_14102").hide();

		$("#star_14106").hide();

		

	if(xid=="11103")
	{
		x="11101";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="11104";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="11106";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="11107";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="11108";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="12101";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();

	}
	if(xid=="11101")
	{
		x="11102";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="11103";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="11104";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="11106";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="11107";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="11108";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="12101";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();

	}

	if(xid=="11102")
	{
		x="11101";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="11103";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="11104";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="11106";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="11107";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="11108";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();

	}


	if(xid=="11104")
	{
		x="11101";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="11103";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="11102";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="11106";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="13102";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="13106";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="12101";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="12103";//그리스
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();

	}


	if(xid=="11106")
	{
		x="11101";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="11103";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="11102";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="11104";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="11107";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="11108";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="13101";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="13104";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="14103";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();

	}

	if(xid=="11107")
	{
		x="11101";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="11103";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="11102";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="11106";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="11108";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
	}
	if(xid=="11108")
	{
		x="11101";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="11103";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="11102";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="11106";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="11107";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
	}


	if(xid=="12102")
	{
		x="12101";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
	}

	if(xid=="12101")
	{
		x="12102";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="11101";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="11103";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
	}

	if(xid=="12103")
	{
		x="12104";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="11104";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
	}
	if(xid=="12104")
	{
		x="12103";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
	}
	if(xid=="13101")
	{
		x="13102";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="13104";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();

		x="11106";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();

	}

	if(xid=="13104")
	{
		x="13102";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="13101";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();

		x="11106";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();

		x="11102";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="13106";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();

	}

	if(xid=="13102")
	{
		x="13101";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="13104";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();

		x="13106";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();

	}

	if(xid=="13106")
	{
		x="11104";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="13102";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();


	}


	if(xid=="14107")
	{
		x="11103";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="14104";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();


	}

	if(xid=="14104")
	{
		x="14105";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="14107";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();

		x="14103";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();

	}
	if(xid=="14105")
	{
		x="14102";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="14103";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="14104";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="14106";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();

		x="11106";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
	}
	if(xid=="14102")
	{
		x="14106";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="14105";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
	}
	if(xid=="14103")
	{
		x="11106";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="14104";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="14105";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
	}
	if(xid=="14106")
	{
		x="14102";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
		x="14105";
		if(ctrylist.indexOf(x)<0)
			$("#star_"+x).show();
	}

}
</script>
<!--//Contents_End-->
</body>
</html>
