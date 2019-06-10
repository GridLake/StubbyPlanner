<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/include.jspf" %>
<!DOCTYPE html>
<html lang="ko">
<head>

    <title>상담예약 1/5 - 스투비플래너</title>
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
                    <a href="http://stubbyplanner.com/">
                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1547604897205mCibKkVCI7.png" alt="logo"/>
                    </a>
                </h1>
            </div>
        </section>
<!--  -->
<form action="charge_consulting_step2.do" method="get" name="form">
	<input type="hidden" name="trip_id" value="">
	<input type="hidden" name="ctrylist"  id="ctrylist" value="">

        <section class="stu_charge step1">
            <div class="stu_charge_container stu_clearfix">
                <div class="stu_charge_header">
                    <a href="<%= contextPath %>/consulting/index.do">취소하기<i class="ico_back"></i></a>
                    <p>맞춤 유럽여행 계획 의뢰</p>
                </div>
                <div class="charge_step">
                    <div class="stu_inner_wrap">
                        <ol class="stu_clearfix">
                            <li class="current">
                                <div class="step_number">1</div>
                                <span class="step_name">여행정보 입력</span>
                            </li>
                            <li>
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
                                <div class="step_number">4</div>
                                <span class="step_name">서비스 선택</span>
                            </li>
                            <li class="on-pc">
                                <div class="step_number">5</div>
                                <span class="step_name">신청자정보 입력</span>
                            </li>
                        </ol>
                    </div>
                </div>
                <div class="charge_item basic_info">
                    <div class="stu_inner_wrap">
                        <div class="titArea">
                            <h3 class="stu_h3_title">여행정보 입력</h3>
                        </div>
                        <div class="panel stu_clearfix">
                            <ul>
                                <li>

                                    <dl>
                                        <dt>출국 예정일<span>*</span></dt>
                                        <dd>
                                            <div class="dpt year">
                                                <select class="form-control" title="출국연도" id="startdate_yy">
                                                    <option disabled>년</option>
                                                    <option value="2019" selected>2019</option>
                                                    <option value="2020" >2020</option>
                                                </select>
                                            </div>
                                            <div class="dpt month">
                                                <select class="form-control" title="출국월" id="startdate_mm">
                                                    <option disabled>월</option>
													<c:forEach var="i" begin="1" end="12">
													<option value="${i}" >${i}</option>
													</c:forEach>
                                                </select>
                                            </div>
                                            <div class="dpt date">
                                                <select class="form-control" title="출국일" id="startdate_dd">
                                                    <option disabled>일</option>
													<option value="">미정</option>
													<c:forEach var="i" begin="1" end="31">	
                                                    <option value="${i}">${i}일</option>
													</c:forEach>
                                                </select>
                                            </div>
                                        </dd>
                                    </dl>
	                              <input type="hidden" name="startdate" id="startdate" value=""/>
                                </li>
                                <li>
                                    <dl>
                                        <dt>여행기간<span>*</span></dt>
                                        <dd>

                                            <select class="form-control" title="" name="term" id="term">
                                                <option disabled selected>여행기간을 선택하세요.</option>
												<c:forEach var="i" begin="5" end="90">
												<option value="${i}" >${i}일</option>
												</c:forEach>
                                                <option value="91" >91일이상</option>

                                            </select>
                                        </dd>
                                    </dl>
                                </li>
                                <li>
                                    <dl>
                                        <dt>연령대<span>*</span></dt>
                                        <dd>
                                            <select class="form-control" title="연령대" name="agegroup">
                                                <option disabled selected>연령대를 선택하세요.</option>
                                                <c:forEach var="i" begin="10" end="50" step="10">
                                                <option value="${i}" >${i}대</option>
                                                </c:forEach>
                                                <option value="60" >60대 이상</option>
                                            </select>
                                        </dd>
                                    </dl>
                                </li>

                                <li>
                                    <dl>
                                        <dt>이메일주소<span>*</span></dt>
                                        <dd><input type="text" class="form-control" title="이메일주소" name="customer_email" id="customer_email" maxlength="50" value=""/></dd>
                                    </dl>
                                    <p class="txt">*이메일로 신청내역이 전달됩니다.</p>
                                </li>
                            </ul>
                            <ul>
                                <li>
                                    <dl>
                                        <dt>여행인원<span>*</span></dt>
                                        <dd>
                                            <select class="form-control" title="여행인원" name="member_cnt" id="member_cnt">
                                                <option disabled selected>여행인원을 선택하세요.</option>
												<c:forEach var="i" begin="1" end="10">
                                                <option value="${i}" >${i}명</option>
												</c:forEach>
                                                <option value="11" >11명 이상</option>
                                            </select>
                                        </dd>
                                    </dl>
                                </li>
                                <li>
                                    <dl>
                                        <dt>여행타입<span>*</span></dt>
                                        <dd>
                                            <select class="form-control" title="여행타입" name="tripwith" id="tripwith">
                                                <option disabled selected>누구와 함께하는 여행인가요?</option>
                                                <option value="1" >여자혼자</option>
                                                <option value="2" >남자혼자</option>
                                                <option value="3" >커플/신혼</option>
                                                <option value="4" >여자끼리</option>
                                                <option value="5" >남자끼리</option>
                                                <option value="6" >혼성그룹</option>
                                                <option value="7" >아이들과</option>
                                                <option value="8" >부모님과</option>
                                                <option value="9" >부모님끼리</option>
                                            </select>
                                        </dd>
                                    </dl>
                                </li>
                                <li>
                                    <dl>
                                        <dt class="multi-select">현재 준비상황</dt>
                                        <dd class="stu_clearfix">
                                            <p class="txtWrap row">
                                                <input type="checkbox" name="prepared" id="p1" value="여행 국가/도시 확정" />
                                                <label for="p1">여행 국가/도시 확정</label>
                                            </p>
                                            <p class="txtWrap row">
                                                <input type="checkbox" name="prepared" id="p2" value="항공권 구매완료" />
                                                <label for="p2">항공권 구매완료</label>
                                            </p>
                                            <p class="txtWrap row">
                                                <input type="checkbox" name="prepared" id="p3" value="루트 확정" />
                                                <label for="p3">루트 확정</label>
                                            </p>
                                        </dd>
                                    </dl>
                                </li>


                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="btn_step first stu_clearfix">
                <div class="btn_wrap stu_column-1">
                    <a href="javascript:fsubmit();" class="btn_next">다음단계</a>
                </div>
            </div>
        </section>
</form>
    </main>
    <!--//메인영역_End-->

<script>
function fsubmit()
{

		startdate_yy=$("#startdate_yy").val();
		startdate_mm=$("#startdate_mm").val();
		startdate_dd=$("#startdate_dd").val();
	

		startdate=startdate_yy+"-"+startdate_mm+"-"+startdate_dd;
		$("#startdate").val(startdate);

		if($("#member_cnt").val()==null)
		{
			func_alert("여행인원은 필수항목입니다.");
		}
		else if($("#term").val()==null)
		{
			func_alert("여행기간은 필수항목입니다.");
		}
		else if($("#tripwith").val()==null)
		{
			func_alert("여행타입 선택은 필수항목입니다.");
		}
		else if($("#customer_email").val()=='')
		{
			func_alert("이메일은 필수항목입니다.");
		}
		else
		{
			document.form.submit();;
		}

	
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

</div>
<!--//Contents_End-->
</body>
</html>
