<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/include.jspf" %>
<!DOCTYPE html>
<html lang="ko">
<head>

    <title>상담예약 3/5 - 스투비플래너</title>
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
        <section class="stu_charge step2">
            <div class="stu_charge_container stu_clearfix">
                <div class="stu_charge_header">
                    <a href="<%= contextPath %>/consulting/index.do">취소하기<i class="ico_back"></i></a>
                    <p>맞춤 유럽여행 계획 의뢰</p>
                </div>
                <div class="charge_step">
                    <div class="stu_inner_wrap">
                        <ol class="stu_clearfix">
                            <li>
                                <div class="step_number">1</div>
                                <span class="step_name">여행정보 입력</span>
                            </li>
                            <li>
                                <div class="step_number">2</div>
                                <span class="step_name">국가선택</span>
                            </li>
                            <li class="current">
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
                <div class="charge_item tab spot">
                    <div class="stu_inner_wrap">
                        <div class="titArea">
                            <h3 class="stu_h3_title">방문 희망도시 선택</h3>
                        </div>
                    </div>


                    <div class="stu_inner_wrap">
               	<div  style="padding:10px 40px 0px 40px;text-align:center;">
	                    <a href="javascript:fsubmit2();" style="padding:15px 10px;text-align:center;background: #3ad195; color: #fff;width:100%;font-size:13pt;border-radius:5px;">이 단계 건너뛰기 ></a>
			<div style="padding-top:10px">*일부도시만 정하신 경우에도 가급적 아래에 도시리스트에서 방문 희망도시를 선택해주세요.</div>
		</div> 
                        <ol class="tab_container">




                            <li class="tab_group active">
                                <div class="tab_title">
                                    <h4 class="stu_h4_title">프랑스</h4>
                                    <span class="item_count"></span>
                                  
                                    <i></i>
                                </div>
                                <div class="panel">
                                    <p>희망하는 도시를 선택하세요.
                                        <span class="item_reset">선택 초기화<i></i></span>
                                    </p>


                                    <div class="item_wrap stu_clearfix">


                                        <div class="tab_item " onclick="toggleCity('111011004')">
                                            <div class="txtWrap">
                                                <b class="name">파리</b>
                                                <p class="sub">

					남자혼자 <span class="count">1위</span>
                                                </p>
                                            </div>
                                        </div>

                                        <div class="tab_item " onclick="toggleCity('111011008')">
                                            <div class="txtWrap">
                                                <b class="name">몽생미셸</b>
                                                <p class="sub">

					남자혼자 <span class="count">2위</span>
                                                </p>
                                            </div>
                                        </div>

                                        <div class="tab_item " onclick="toggleCity('111011012')">
                                            <div class="txtWrap">
                                                <b class="name">스트라스부르</b>
                                                <p class="sub">

					남자혼자 <span class="count">3위</span>
                                                </p>
                                            </div>
                                        </div>

                                        <div class="tab_item " onclick="toggleCity('111011010')">
                                            <div class="txtWrap">
                                                <b class="name">리옹</b>
                                                <p class="sub">

					남자혼자 <span class="count">4위</span>
                                                </p>
                                            </div>
                                        </div>

                                        <div class="tab_item " onclick="toggleCity('111011119')">
                                            <div class="txtWrap">
                                                <b class="name">콜마르</b>
                                                <p class="sub">

					남자혼자 <span class="count">5위</span>
                                                </p>
                                            </div>
                                        </div>

                                        <div class="tab_item " onclick="toggleCity('111011050')">
                                            <div class="txtWrap">
                                                <b class="name">안시</b>
                                                <p class="sub">

					남자혼자 <span class="count">6위</span>
                                                </p>
                                            </div>
                                        </div>

                                        <div class="tab_item " onclick="toggleCity('111011044')">
                                            <div class="txtWrap">
                                                <b class="name">툴루즈</b>
                                                <p class="sub">

					남자혼자 <span class="count">7위</span>
                                                </p>
                                            </div>
                                        </div>

                                        <div class="tab_item " onclick="toggleCity('111011013')">
                                            <div class="txtWrap">
                                                <b class="name">보르도</b>
                                                <p class="sub">

					남자혼자 <span class="count">8위</span>
                                                </p>
                                            </div>
                                        </div>

                                        <div class="tab_item " onclick="toggleCity('111011015')">
                                            <div class="txtWrap">
                                                <b class="name">디종</b>
                                                <p class="sub">

					남자혼자 <span class="count">9위</span>
                                                </p>
                                            </div>
                                        </div>

                                        <div class="tab_item " onclick="toggleCity('111011001')">
                                            <div class="txtWrap">
                                                <b class="name">샤모니몽블랑</b>
                                                <p class="sub">

					남자혼자 <span class="count">10위</span>
                                                </p>
                                            </div>
                                        </div>

                                        <div class="tab_item " onclick="toggleCity('111011023')">
                                            <div class="txtWrap">
                                                <b class="name">카르카손</b>
                                                <p class="sub">

					남자혼자 <span class="count">11위</span>
                                                </p>
                                            </div>
                                        </div>

                                        <div class="tab_item " onclick="toggleCity('111011120')">
                                            <div class="txtWrap">
                                                <b class="name">생 말로</b>
                                                <p class="sub">

					남자혼자 <span class="count">12위</span>
                                                </p>
                                            </div>
                                        </div>

                                        <div class="tab_item " onclick="toggleCity('111011264')">
                                            <div class="txtWrap">
                                                <b class="name">발랑솔</b>
                                                <p class="sub">

					남자혼자 <span class="count">13위</span>
                                                </p>
                                            </div>
                                        </div>

                                        <div class="tab_item " onclick="toggleCity('111011161')">
                                            <div class="txtWrap">
                                                <b class="name">에트르타</b>
                                                <p class="sub">

					남자혼자 <span class="count">14위</span>
                                                </p>
                                            </div>
                                        </div>

                                    </div>

                                </div>
                            </li>


                            <li class="tab_group active">
                                <div class="tab_title">
                                    <h4 class="stu_h4_title">독일</h4>
                                    <span class="item_count"></span>
                                  
                                    <i></i>
                                </div>
                                <div class="panel">
                                    <p>희망하는 도시를 선택하세요.
                                        <span class="item_reset">선택 초기화<i></i></span>
                                    </p>


                                    <div class="item_wrap stu_clearfix">


                                        <div class="tab_item " onclick="toggleCity('111061005')">
                                            <div class="txtWrap">
                                                <b class="name">뮌헨</b>
                                                <p class="sub">

					남자혼자 <span class="count">1위</span>
                                                </p>
                                            </div>
                                        </div>

                                        <div class="tab_item " onclick="toggleCity('111061006')">
                                            <div class="txtWrap">
                                                <b class="name">프랑크푸르트</b>
                                                <p class="sub">

					남자혼자 <span class="count">2위</span>
                                                </p>
                                            </div>
                                        </div>

                                        <div class="tab_item " onclick="toggleCity('111061008')">
                                            <div class="txtWrap">
                                                <b class="name">베를린</b>
                                                <p class="sub">

					남자혼자 <span class="count">3위</span>
                                                </p>
                                            </div>
                                        </div>

                                        <div class="tab_item " onclick="toggleCity('111061004')">
                                            <div class="txtWrap">
                                                <b class="name">드레스덴</b>
                                                <p class="sub">

					남자혼자 <span class="count">4위</span>
                                                </p>
                                            </div>
                                        </div>

                                        <div class="tab_item " onclick="toggleCity('111061001')">
                                            <div class="txtWrap">
                                                <b class="name">하이델베르크</b>
                                                <p class="sub">

					남자혼자 <span class="count">5위</span>
                                                </p>
                                            </div>
                                        </div>

                                        <div class="tab_item " onclick="toggleCity('111061011')">
                                            <div class="txtWrap">
                                                <b class="name">쾰른</b>
                                                <p class="sub">

					남자혼자 <span class="count">6위</span>
                                                </p>
                                            </div>
                                        </div>

                                        <div class="tab_item " onclick="toggleCity('111061003')">
                                            <div class="txtWrap">
                                                <b class="name">퓌센</b>
                                                <p class="sub">

					남자혼자 <span class="count">7위</span>
                                                </p>
                                            </div>
                                        </div>

                                        <div class="tab_item " onclick="toggleCity('111061020')">
                                            <div class="txtWrap">
                                                <b class="name">뉘른베르크 </b>
                                                <p class="sub">

					남자혼자 <span class="count">8위</span>
                                                </p>
                                            </div>
                                        </div>

                                        <div class="tab_item " onclick="toggleCity('111061002')">
                                            <div class="txtWrap">
                                                <b class="name">로텐부르크</b>
                                                <p class="sub">

					남자혼자 <span class="count">9위</span>
                                                </p>
                                            </div>
                                        </div>

                                        <div class="tab_item " onclick="toggleCity('111061030')">
                                            <div class="txtWrap">
                                                <b class="name">밤베르크</b>
                                                <p class="sub">

					남자혼자 <span class="count">10위</span>
                                                </p>
                                            </div>
                                        </div>

                                        <div class="tab_item " onclick="toggleCity('111061016')">
                                            <div class="txtWrap">
                                                <b class="name">함부르크</b>
                                                <p class="sub">

					남자혼자 <span class="count">11위</span>
                                                </p>
                                            </div>
                                        </div>

                                        <div class="tab_item " onclick="toggleCity('111061007')">
                                            <div class="txtWrap">
                                                <b class="name">뷔르츠부르크</b>
                                                <p class="sub">

					남자혼자 <span class="count">12위</span>
                                                </p>
                                            </div>
                                        </div>

                                        <div class="tab_item " onclick="toggleCity('111061007')">
                                            <div class="txtWrap">
                                                <b class="name">뷔르츠부르크 </b>
                                                <p class="sub">

					남자혼자 <span class="count">13위</span>
                                                </p>
                                            </div>
                                        </div>

                                        <div class="tab_item " onclick="toggleCity('111061012')">
                                            <div class="txtWrap">
                                                <b class="name">뒤셀도르프</b>
                                                <p class="sub">

					남자혼자 <span class="count">14위</span>
                                                </p>
                                            </div>
                                        </div>

                                    </div>

                                </div>
                            </li>








                        </ol>
                    </div>
                </div>

<form name="form" action="charge_consulting_step5.do" method="post">

                <div class="charge_item direct">
                    <div class="stu_inner_wrap">
                        <div class="titArea">
                            <h3 class="stu_h3_title">희망도시 직접입력 (선택사항)</h3>
                        </div>
                        <div class="panel">
                            <p class="title">혹시 원하시는 도시를 못찾으셨나요? 특별히 희망하는 도시 또는 요청사항이 있으시면 알려주세요.</p>
                            <textarea class="form-control" title="희망도시 직접입력" rows="4" name="custom_citylist" value=""></textarea>
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
<!---
                                    <li>
                                        <dl>
                                            <dt>희망여행지</dt>
                                            <dd>파리, 몽생미셸, 니스 등 3개 도시</dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>신청 서비스</dt>
                                            <dd>루트 + 숙소 및 투어추천 + 맞춤 일정표</dd>
                                        </dl>
                                    </li>
                                    <li class="result">
                                        <dl>
                                            <dt>서비스 금액</dt>
                                            <dd>69,000<span>원</span></dd>
                                        </dl>
                                    </li>
--->
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
                    <a href="<%= contextPath %>/consulting/charge_consulting_step2.do?customer_email=victory0417@hanmail.net&ctrylist=11101,11106&member_cnt=1&term=8&startdate=2019-08-07&tripwith=2&prepared=여행 국가/도시 확정, 항공권 구매완료, 루트 확정&agegroup=20" class="btn_prev">이전단계</a>
                </div>
                <div class="btn_wrap stu_column-2">
                    <a href="javascript:fsubmit();" class="btn_next">다음단계</a>
                </div>
            </div>


	<input type="hidden" name="trip_id" value="">

	<input type="hidden" name="ctrylist"  id="ctrylist" value="11101,11106">
	<input type="hidden" name="tripgene"  id="tripgene" value="">
	<input type="hidden" name="member_cnt" value="1">
	<input type="hidden" name="term" value="8">
	<input type="hidden" name="startdate" value="2019-08-07">
	<input type="hidden" name="tripwith" value="2">
	<input type="hidden" name="prepared" value="여행 국가/도시 확정, 항공권 구매완료, 루트 확정">
	<input type="hidden" name="agegroup" value="20">
	<input type="hidden" name="customer_email"  value="victory0417@hanmail.net">

</form>

        </section>
    </main>
    <!--//메인영역_End-->
</div>
<script>
	tripgene="";
	member_cnt="1";
	term="8";
	startdate="2019-08-07";
	tripwith="2";
	prepared="여행 국가/도시 확정, 항공권 구매완료, 루트 확정";
	agegroup="20";


	function fsubmit()
	{
		$("#tripgene").val(tripgene);
		
		document.form.submit();		
	}


	function fsubmit2()
	{

		$("#tripgene").val(tripgene);
		document.form.action = <%= contextPath %> + "/consulting/charge_consulting_step5.do"
		document.form.submit();		
	}

	function prev()
	{
	
	}

	function addtotripgene(city_id)
	{
		if(tripgene.indexOf(city_id)<0)
		{
			if(tripgene=="")
				tripgene=city_id;
			else
				tripgene=tripgene+","+city_id;

		}
	}

	function toggleCity(city_id)
	{
		if(tripgene.indexOf(city_id)<0)
			addtotripgene(city_id);
		else
			removefromtripgene(city_id);

	}
	function removefromtripgene(city_id)
	{
		tripgene=tripgene.replace(","+city_id+",",",");
		tripgene=tripgene.replace(","+city_id,"");
		tripgene=tripgene.replace(city_id+",","");
		if(tripgene==city_id)
			tripgene="";
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
    
</script>
<!--//Contents_End-->
</body>
</html>