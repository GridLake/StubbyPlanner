<%@page import="java.net.URLEncoder"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/include.jspf" %>
<%

        Cookie cok = new Cookie("guide",URLEncoder.encode("${detail.mainInfo[0].guide_seq}","UTF-8"));

        response.addCookie(cok);
        cok.setMaxAge(60*60*120);

%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<meta name="description" content="스투비플래너를 이용해 상상속 여행을 현실로 만들어 보세요">
	<meta name="author" content="">
	
	<title> ${detail.mainInfo[0].title} - 스투비플래너</title>
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimun-scale=1.0, user-scalable=no">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="format-detection" content="telephone=no">
	<link href="https://fonts.googleapis.com/css?family=Amatic+SC|Sunflower:300" rel="stylesheet">

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	
	<link rel="stylesheet" href="<%= contextPath %>/externalData/superguide/assets/plugins/line-icons/line-icons.css">
	<link rel="stylesheet" href="<%= contextPath %>/externalData/superguide/assets/plugins/font-awesome/css/font-awesome.min.css">
	<!-- CSS Customization -->
	<link rel="stylesheet" href="<%= contextPath %>/externalData/superguide/assets/css/style.css">

    <!-- CSS/JavaScript -->
    <link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/mb/css/swiper.min.css">
    <link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/css2/common.css?after">

    <link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/guide/css/tourDetail4.css?after">

    <link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/css2/header_footer.css">


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- lazysizes.min.js : 레이지로딩 -->
    <script src="<%= contextPath %>/externalData/js2/lazysizes.min.js" type="text/javascript" async=""></script>
    <!-- swiper.min.js : 이미지슬라이더 -->
    <script src="<%= contextPath %>/externalData/js2/swiper.min.js" type="text/javascript"></script>
    <!-- fixedScroll.js : 원페이지 헤더 고정 -->
    <script src="<%= contextPath %>/externalData/js/fixedScroll.js" type="text/javascript"></script>
	



</head>
<style>
.stu_top_banner .linkArea {
    display: inline-block;
    position: absolute;
    right: 10px;
    top: 10px;
    z-index: 9;
}
.stu_more img
{width:100%}
.calendar_header_title
{
	text-align:center;
	font-size:11pt;
	color:#fff;
}
.calendar_day_nothing
{
	text-align:center;
	font-size:11pt;
	float:left;
	width:14%;
	color:#fff;
	padding-top:5px;
	padding-bottom:5px;
}
.calendar_header
{
	text-align:center;
	float:left;
	width:14%;
	color:#fff;
}
.calendar_day
{
	margin-top:5px;
	margin-left:5px;
	margin-right:5px;
	margin-bottom:5px;
	text-align:center;
	font-size:11pt;
	color:#696969;
	background:#000;
	border:1px solid #696969;
	border-radius:20px;
	padding-top:5px;
	padding-bottom:5px;
	cursor:pointer;
}
.calendar_day_active
{
	margin-top:5px;
	margin-left:5px;
	margin-right:5px;
	margin-bottom:5px;
	text-align:center;
	font-size:11pt;
	color:#fff;
	border:1px solid #fff;
	border-radius:20px;
	padding-top:5px;
	padding-bottom:5px;
	cursor:pointer;
}
.calendar_day a{color:#fff}
.calendar_day_selected
{
	margin-top:5px;
	margin-left:5px;
	margin-right:5px;
	margin-bottom:5px;
	text-align:center;
	font-size:11pt;
	color:#000;
	background:#fff;
	border-radius:20px;
	padding-top:5px;
	padding-bottom:5px;
	cursor:pointer;
}
.calendar_day_selected a{color:#000}
.round_num {
    display:inline-block;

    margin-top: 5px;
    margin-bottom: 5px;
    text-align: center;
    font-size: 11pt;
    color: #fff;
    border: 1px solid #fff;
    background:#c0c0c0;
    border-radius: 20px;
    padding-top: 5px;
    padding-bottom: 5px;
    cursor: pointer;
}
.round_num_selected {
    display:inline-block;
    margin-top: 5px;

    margin-bottom: 5px;
    text-align: center;
    font-size: 11pt;
    color: #fff;
    border: 1px solid #fff;
    background:#696969;
    border-radius: 20px;
    padding-top: 5px;
    padding-bottom: 5px;
    cursor: pointer;
}
.round_num_empty {
    display:inline-block;
    margin-top: 5px;
    margin-bottom: 5px;
    text-align: center;
    font-size: 11pt;
    color: #fff;
    border: 1px dotted #696969;
    color:#696969;
    border-radius: 20px;
    padding-top: 5px;
    padding-bottom: 5px;
    cursor: pointer;
}

.btn_ctype
{
	cursor:pointer;
	border:1px solid #fff;
	width:30px;
	height:30px;
	border-radius:25px;
	display:inline-block;
	color:#696969;
	padding-top:5px;
}
.calendar_day_selected
{
	background:#fff;
}

.stu_eventBanner .stu_badge
{
    display: block;
    position: absolute;
    top: 14px;

    left: 69%;
    width: 44px;
    height: 44px;
    font-size: 13px;
    line-height: 44px;

    -webkit-border-radius: 50%;
    border-radius: 50%;
    box-shadow: 0 2px 3px 0 rgba(0,0,0,.3);
    border: 1px solid #0077d9;
    background: #1f8ce6;
    font-weight: bolder;
    text-align: center;
    color: #fff;
    z-index: 1;
}
 
</style>
<script>
function hideCourseDetail()
{
	$('.desc').addClass('d-n');

	$('#push-up').removeClass('on');
	$('#fold').addClass('on');

}
function showCourseDetail()
{
            $('.desc').removeClass('d-n');

	$('#push-up').addClass('on');
	$('#fold').removeClass('on');
}

function togglePriceDetail()
{
            $('#price_title').toggleClass('on');
           $('#divPriceDetail').toggleClass('d-n');
}

    // 스크롤 이동(포함사항)
    function fnMove(seq) {
        var posPrice = $('.stu_s' + seq).offset();
        $('html, body').animate({scrollTop : posPrice.top - menuHeight}, 400);
    }
function toggleIntroDetail()
{
	$("#introDetail").toggleClass('compression');
	$('.stu_cont-btn').toggleClass('on');
}

</script>
<body>
 <script>
 (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
 (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
 m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
 })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
 ga('create', 'UA-913663-1', 'auto');
 ga('send', 'pageview');
</script>

<div class="stu_wrap">
	
	<jsp:include page="/WEB-INF/layout/header_large.jsp"></jsp:include>
	
	<script>
		var id = "#"+'${ lnb_item }';
		$(".lnb_item").removeClass("active");
		$(id).addClass("active");
	</script>
	
	 <!--메인영역_Str-->
    <main class="stu_clearfix">
    	<section class="stu_top_banner" >
            <div class="stu_inner_wrap">
                <div class="caution">
                    <p>본 상품은 <span> ${detail.mainInfo[0].company} </span>의 책임하에 판매되고 있습니다.</p>

                </div>
                <!--Swiper Banner-->
                <div class="swiper-container mainVisual">
                	
                	<ul class="linkArea">
                		<li style="background:#fff;border-radius:4px">
                            <button id="btn_like" class="ico_like1" type="button" onclick="location.href='javascript:toggleLike()'"></button>
                        </li>
                    </ul>
                    <!--Image Slider-->
                    <div class="swiper-wrapper">
                   		<div class="swiper-slide">
                   			<img class="lazyload"  data-src="${detail.mainImg[0].guide_path}" width="100%" alt="">
                   		</div>
                   			<c:forEach items="${detail.mainImg}" var="getreview" begin="1">
                   			<div class="swiper-slide">  
                   			<img class="lazyload"  data-src="${getreview.guide_path}" width="100%" alt="">
                   			</div>
                   			</c:forEach>
                   			<!-- <div class="swiper-slide">  <img class="lazyload"  data-src="http://d3b39vpyptsv01.cloudfront.net/photo/6/9/97d87dc59cd81def6af804e53b232950.jpg" width="100%" alt=""></div>
                   			<div class="swiper-slide">  <img class="lazyload"  data-src="http://d3b39vpyptsv01.cloudfront.net/photo/6/9/336c3d7744e52705dca73774bb202b24.jpg" width="100%" alt=""></div> -->
                   	</div>
             		<!--Swiper Pagination-->
               		<div class="swiper-pagination swiper-pagination-fraction mainVisual-pagination"></div>
                   			
               		<!--Swiper Navigaion-->
                	<div class="swiper-button-next mainVisual-button-next"></div>
               		<div class="swiper-button-prev mainVisual-button-prev"></div>
                	<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>  
            
                </div>   			
                   		
                 <!--Main Info-->
                 <div class="mainInfo-container">
                   	<div class="mainInfo">
                   		 	<ul class="loc">
                   		 		<li><a href="/market/index_ctry.asp?region=11101">프랑스</a></li>
                            	<li><a href="/market/index_city.asp?region=111011004">파리</a></li>
                   		 	</ul>
                   		 		
                   		 	<h2 class="stu_h2_title"> ${detail.mainInfo[0].title}</h2>
                   		 	
                   		 	<ul class="tag">
                            	<li>${detail.mainInfo[0].keyword }</li>
                        	</ul>
                        	
                        	 <div class="price_wrap stu_clearfix" style="height:${detail.mainInfo[0].tot}">
                        		 <div class="score">
                        		 	<div class="ico_star_bg">
                        		 		<div class="ico_star" style="width:${detail.mainInfo[0].tot }%;"></div>
                        		 	</div>
                        		 	<p class="score_average">
                                    	<span>${detail.mainInfo[0].avg}</span>(${detail.mainInfo[0].r_cnt})
                                	</p>
                        		 </div>
                        		 
                        		 <div class="priceArea" style="line-height:100%">
                        		 	<strong class="price">￦ ${detail.mainInfo[0].price}
                        		 		<font style="font-size:10pt;color:#3ad195"><br>⚡️얼리버드${detail.mainInfo[0].price_ealybird} ~</font>
                        		 	</strong>
                        		 </div>
                        		 
                        	</div>
                        	
                        	<div class="couponArea">
                        	
<script>
function getCoupon(cid)
{

	window.location="/stubbyPlanner/common/login.do"

}
</script>                       	
                        	</div>
                        	
                        	 <ul class="prdIcon">
                        	 	<li id="typeA" style="overflow-x:hidden">
                        	 		<div class="t-v-mid">
                        	 			<div class="t-v-mid-box">
                        	 				 <div class="t-v-mid ico-wrap">
                        	 				 	<i class="ico_prd prd_A"></i>
                        	 				 </div>
                        	 				 <div class="t-v-mid txt-wrap">
                        	 				 	<p class="typeA">${detail.mainInfo[0].activity}<p>
                        	 					
                                                <p class="typeB">${detail.mainInfo[0].persons}</p>
                                                
                        	 				 </div>
                        	 			</div>
                        	 		</div>
                        	 	</li>
                        	 	<li id="typeB">
                        	 		<div class="t-v-mid">
                        	 			 <div class="d-ib">
                        	 			 	<div class="t-v-mid-box">
												<div class="t-v-mid ico-wrap">
                                                	<i class="ico_prd prd_B"></i>
                                            	</div>
	                        	 			 	<div class="t-v-mid txt-wrap">
    	                    	 			 		<p class="typeA">${detail.mainInfo[0].hours}</p>
        	                                        <p class="typeB">${detail.mainInfo[0].stime}</p>
            	            	 			 	</div>
                        	 			 	</div>
                        	 			 </div>
                        	 		</div>
                        	 	</li>
                        	 	<li id="typeC">
                        	 		<div class="t-v-mid">
                        	 			<div class="d-ib">
                        	 				<div class="t-v-mid-box">
                        	 					<div class="t-v-mid ico-wrap">
                                                <i class="ico_prd prd_C"></i>
                                            	</div>
                                            	<div class="t-v-mid txt-wrap">
                                                	<p class="typeA">${detail.mainInfo[0].language}</p>
                                                	<p class="typeB">언어</p>
                                           		</div>
                        	 				</div>
                        	 			</div>
                        	 		</div>
                        	 	</li>
                        	 </ul>
	
	                   	</div>
	                   	<!--Contact button-->
                        <div class="btnBox">
                        	 <a  class="btn_left"  href="http://pf.kakao.com/_QwGUM/chat" target="_blank">카톡문의</a>
                        	 <a  class="btn_right" href="javascript:openMyModal()">간편예약</a>
                        	 
                        </div>
                       
                       
                   	
                  </div>
            
    		</div><!--  -->
    	</section>
   
    
    <section class="stu_nav_container">
            <div class="stu_inner_wrap">
                <div class="stu_nav_left">
                    <a href="#s1" id="s1" class="active">상품 소개</a>
                    <a href="#s2" id="s2">투어 코스</a>
                    <a href="#s3" id="s3">유의사항</a>
                    <a href="#s4" id="s4">후기</a>
                    <a href="#s5" id="s5">문의</a>
                    <a href="#s6" class="extLink end"></a>
                </div>
                <div class="stu_nav_right">
                	<div class="stu_btnBox">
                		<a class="stu_btn_left"  href="javascript:plusFriendChat()">카톡문의</a>
                		<a  class="stu_btn_right" href="javascript:openMyModal()">간편예약</a>
                		
                	</div>
                </div>
            </div>
      </section>
    
    <section class="stu_s1">
    	<div class="stu_inner_wrap">
    		<div class="stu_right_wrap">
    			<div class="stu_division">
    				<!-- Company Info -->
    				<div class="company_info">
    					<dl>
    						<dt>
    							<a href="#" target="_blank">
    								 <img class="fh lazyload" src="http://www.stubbyplanner.com/crowd/comlogo/TPZ.jpg" alt=""/>
    							</a>
    						</dt>
    						<dd>
    							<p class="stu_name">
    								<a href="#" style="font-size:20pt;font-family: 'Amatic SC', 'Sunflower'">${detail.mainInfo[0].company}</a>
    							</p>
    							<p class="stu_description">
                                </p>
    						</dd>
    					</dl>
    				</div>
    			</div>
    			<div class="stu_division pd-0">
    				<div class="tb-title" onclick="togglePriceDetail()">
                            <h4 class="stu_h4_title" id="price_title">가격 상세정보 </h4>
                    </div>
                    <div class="tb-wrap d-n" id="divPriceDetail" >
                    	<h4 class="stu_h4_title">가격표 </h4>
                    	<table class="stu_price">
                    		<colgroup>
                    			<col style="width:55%">
                                <col style="width:45%">
                            </colgroup>
                            <tbody>
                            	 <tr>
                            	 	<th class="t-bold">구분</th>
                                    <td class="t-bold"></td>
                                 </tr>
                                 	<c:forEach items="${detail.priceDetail}" var="priceDetail">
                                 	<tr>
										<th>${priceDetail.division}</th>
										<td>
											${priceDetail.price}KRW
										</td>
									</tr>
									</c:forEach>
                                 
                            </tbody>
                    	</table>
                    </div>
                	<div class="stu_btn bg_line" onclick="fnMove('3')">
                                포함 / 불포함사항
               		</div>
    			</div>
    		</div>
    	
    	<%-- <c:forEach items="${detail.intro.intro}" var="intro"> --%>
    	<div class="stu_left_wrap">
    		<div class="stu_division compression" id="introDetail">
    			<p class="stu_more">
    				<b>Show _ 투어 미리보기
					</b>
     		 	</p>
     		 	<b>
     		 	<c:forEach items="${detail.intro.img}" var="img">
     		 	<div class="stu_img_wrap">
     		 	
                 <img data-src="${img.guide_path}" class="lazyload">
     		 	</div>
				</c:forEach>
				<p class="stu_more">
     			
                	${detail.intro.intro[0].introduction}
               		
     			</p>
     			</b>
    		</div>
    		<b></b>
    	</div>
    	<b>
    		<div class="stu_cont-btn-wrap">
    			<button type="button" class="stu_cont-btn" onclick="toggleIntroDetail()">설명 더보기</button>
    		</div>
    	</b>
        </div>
    </section>
    <b>
	<section class="stu_s2">   
		<div class="stu_inner_wrap">
			<div class="stu_left_wrap">
				<div class="stu_division pd-b-0">
					<h3 class="stu_h3_title">미팅장소</h3>
					<div class="stu_box_wrapper stu_clearfix">
						<div class="map_box" style="width:100%">
							<!-- 구글맵 링크  -->
							<a href="${detail.intro.intro[0].mapUrl}" target="_blank">
							<img class="fw" src="${detail.intro.intro[0].mapImg}">
							</a>
						</div>
					</div>
					<div class="stu_box_wrapper stu_clearfix">
						<div class="txt_box">
							<h4 class="stu_h4_title ico mt-p">미팅포인트</h4>
							<p class="stu_more">
								${detail.intro.intro[0].place}
							</p>
						</div>
						<div class="txt_box">
                             <h4 class="stu_h4_title ico mt-t">미팅시간</h4>
                             <p class="stu_more">
	                             ${detail.intro.intro[0].stime}
                             </p>
                        </div>
					</div>
				</div>
				<div class="stu_division">
					<h3 class="stu_h3_title">투어 코스</h3>
					<div class="route_summary">
					<p>
						${detail.intro.intro[0].course }
					</p>
					</div>
				</div>
			</div>
		</div>
    <%-- </c:forEach> --%>
    </section>
    <section class="stu_s3">
    <c:forEach items="${detail.notice}" var="notice">
    	<div class="stu_inner_wrap">
    		<div class="stu_left_wrap">
    			<div class="stu_division">
    				<h3 class="stu_h3_title">꼭! 확인하세요</h3>
    				<div class="stu_box_wrapper stu_clearfix">
    					<div class="txt_box">
    						<h4 class="stu_h4_title">가격 포함사항</h4>
    						<p class="stu_more">
    							${notice.inclusion}
    						</p>
    						<h4 class="stu_h4_title">가격 불포함사항</h4>
    						<p class="stu_more">
    							${notice.exclusion}
    						</p>
    					</div>
    					<div class="txt_box">
    						<h4 class="stu_h4_title">환불정책</h4>
    						<p class="stu_more">
    							${notice.refund}
    						</p>
    					</div>
    				</div>
    				<div class="stu_box_wrapper stu_clearfix">
    					 <h4 class="stu_h4_title">유의사항</h4>
                         <p class="stu_more">
                         	${notice.note}
                         </p>
    				</div>
    			</div>	
    		</div>
    	</div>
    </c:forEach>
    </section>
   
   	<!-- 이용후기  -->
   	
     <section class="stu_s4">
     	<div class="stu_inner_wrap">
     		<div class="stu_left_wrap">
     			<div class="stu_division">
     				<div class="score-container">
     					<h3 class="stu_h3_title">이용후기</h3>
     					<div class="score-lft">
     						<div class="score-wrap">
     							<div class="scoreBox">
     								<div class="ico_star_bg">
                                    	<div class="ico_star" style="width:${detail.mainInfo[0].tot }%;"></div>
                                    </div>
                                    <p class="score_average">
                                    	<strong>${detail.mainInfo[0].avg }</strong> / 5.0
                                    </p>
     							</div>
     							<p class="reviewCount">
                                        <strong>${detail.mainInfo[0].r_cnt}</strong>개의 이용후기가 있습니다.
                                </p>
                               	<ul class="surveyBox">
                                        <li>
                                            <div class="s_title">프로그램</div>
                                            <div class="s_average"> ${detail.getReview[0].prog_avg} </div>
                                        </li>
                                        <li>
                                            <div class="s_title">전문성</div>
                                            <div class="s_average"> ${detail.getReview[0].prop_avg} </div>
                                        </li>
                                        <li>
                                            <div class="s_title">친절도</div>
                                            <div class="s_average"> ${detail.getReview[0].kind_avg} </div>
                                        </li>
                                    </ul>
     						</div>
     					</div>
     				</div>
     				<div id="stu_js-load" class="review-container">
     					<ul id="stu_js-load" class="review-wrap">
     					<!---후기 시작---->
                        <c:forEach items="${detail.getReview}" var="getreview" begin="1">
     					<li class="review-box stu_js-load">
     						<div class="left-wrap">
     							<div class="ico_star_bg">
     								
     								<div class="ico_star" style="width:${getreview.tot}%;">
     									<p class="score_average">${getreview.avg}</p>
     								</div>
     							</div>
     							<div class="author">
     								<em class="name">${getreview.name}</em>
     								<span class="line">│</span>
									<span class="line">│</span>
									<span class=""><br>${test}</span>
                                    
     							</div>
     							<div class="reg-date"> </div>
     						</div>
     						<div class="right-wrap">
     							<dl class="survey-text">
     								<dt>프로그램</dt>
                                    <dd>${getreview.prog_score }</dd>
                                    <dt>전문성</dt>
                                    <dd>${getreview.prop_score }</dd>
                                    <dt>친절도</dt>
                                    <dd>${getreview.kind_score }</dd>
     							</dl>
     							<article class="review-text">
     							<div><font style="color:#696969;font-weight:bold">GOOD</font>${getreview.good}</div>

			<hr style="margin-top:5px;margin-bottom:5px;border:1px solid #efefef"/>

				<div><font style="color:#696969;font-weight:bold">NOT GOOD</font>${getreview.not_good}</div>
     							
     							</article>
     						</div>
     					</li>
     					</c:forEach>
     					</ul>
     				</div>
     				<div class="stu_js-btn-wrap">
     					<a href="javascript:;" class="stu_js-btn">후기 더보기</a>
     				</div>
     			</div>
     		</div>
     	</div>
     
     </section>
     <!-- 문의 내용 등록 로그인 주소변경필요  -->
     <section class="stu_s5">
     	<div class="stu_inner_wrap">
     		<div class="stu_left_wrap">
     			<div class="stu_division">
     				<h3 class="stu_h3_title">상품에 대한 1:1 문의를 남겨주세요.</h3>
     				<div class="cmtTxt-container">
     					<div class="cmtTxt-inner">
     						<div class="cmtTxt-wrap">
     							<div class="cmtTxt-inbox">
     								<textarea id="qa_description" class="cmtTxt" rows="3" cols="3" placeholder="문의 내용을 입력하세요." >
     								</textarea>
     							</div>
     						</div>
     						<div class="cmtTxt-upload">
     							<button type="button" class="cmtTxt-btn-upload" onclick="writeQA()">등록</button>
     						</div>
     					</div>
     				</div>
     				<div id="stu_cmt-load" class="cmt-container">
     					<ul id="stu_cmt-load" class="cmt-wrap">
     						<p style="font-size:10pt;text-align:center;padding-top:30px;">등록된 1:1 문의사항이 없습니다.</p>
     					</ul>
     				</div>
     			</div>
     		</div>
     	</div>
     </section>
     
     <script>
     
     function writeQA()
     {
    	if (${authUser.member_id} == null) {
    		window.location="/stubbyPlanner/common/login.do";

		} 
     	
     	v_description="";
     	refSerial="";

     	if(fid)
     	{
     		v_description=document.getElementById("qa_description_"+fid).value;
     		refSerial=fid;
     		
     	}
     	else
     	{
     		v_description=document.getElementById("qa_description").value;
     		refSerial="";
     	}

     	if(document.getElementById("qa_description").value=="")
     	{
     		alert("질문내용을 입력하신 후에 질문을 등록해주세요.");
     	}
     	else
     	{
     		$.post("/guide/asp/addQA.asp", { 
     			refSerial:refSerial,
     			tourserial: ${detail.mainInfo[0].guide_seq},
     			description:v_description,
     			w:${authUser.member_id}
     		}, 
     		function(data) { 
     			//alert(data);
     			window.history.go(0);
     		});
     	}
     	
     }

     
     </script>
     
     
     
     
     <!-- 투어회사의 다른상품  -->
     <section class="stu_prd_list">
     	<div class="stu_inner_wrap">
     		<div class="prd_container">
     			<div class="prd_area">
     				<div class="swiper-container more_prd swiper-container-horizontal swiper-container-free-mode">
     					<div class="titArea">
     						<h3 class="stu_h3_title"> ${detail.mainInfo[0].company}의 다른 상품</h3>
     						<div class="swiper-pagination more_prd-pagination"></div>

     					</div>
     					<ul class="swiper-wrapper">
     						<c:forEach items="${detail.moleList}" var="molelist">
     						<li class="swiper-slide prd_item">
     							<div class="like"></div>
     								 <a href="/stubbyPlanner/guide/detail.do?needlogin=&serial=${ molelist.guide_seq}" class="prd lock-off">
     								 	<figure class="thumb">
     								 		<img class="fw lazyload blur-up"  data-src="${ molelist.guide_path}" onerror="this.src='https://d3b39vpyptsv01.cloudfront.net/photo/1/2/2ea05ffbc4ac1e00002b4086ad5371e5.jpg'">
                                         
     								 	</figure>
     								 	<div class="prd_info">
     								 		<div class="cpn">${molelist.company}
     								 			 <span class="duration">${molelist.hours}</span>
     								 		</div>
     								 		<div class="name">
                                                <span>${molelist.title}</span>
                                            </div>
                                            <div class="tag">
                                            
                                            <span></span>
                                            
                                            </div>
                                            
                                            <div class="score">
                                            	<span>${molelist.avg}</span>
                                            	<span style="color:#8f8f8f;font-size:9pt">&nbsp;${molelist.r_cnt}</span>
                                            </div>
                                            <div class="price">
                                            	<strong>￦ ${molelist.price}~</strong>
                                            	<span>/ 1인</span>
                                            </div>
     								 	</div>
     								 </a>
     						</li>
	     					</c:forEach>
     					</ul>
     				</div>
     			</div>
     		</div>
     	</div>
     </section>
    </b>
    </main>
    <!--//메인영역_End-->
    
    <!---투어 예약프로세스 시작---->
    <b>
	<font color="</b">
    <div id="mymodal" style="display:none">
    	<div style="position:fixed;top:0px;left:0px;z-index:9998;background:#000;opacity: 0.9;filter: alpha(opacity=90);width:100%;height:100%"></div>
    	
    	<div style="position:fixed;top:0px;left:0px;z-index:9999;width:100%;padding-top:70px;padding-left:280px;padding-right:280px">
    		<div><a href="javascript:closeMyModal()" class="pull-right" style="color:#fff;font-size:27pt"><i class="fa fa-times-circle" aria-hidden="true"></i></a></div>
    		<div style="margin-top:10px"><font style="font-size:14pt;color:#fff;font-weight:bold" id="my_modal_title">간편 예약(1/3)</font></div>
			<div style="clear:both"></div>
    		<div style="margin-top:0px"  id="my_modal_desc">
				<form name="form" method="post">
					<div id="div_apply_step3" style="display:none">
					</div>
					<div id="div_apply_step1">
						<div style="text-align:center;padding-top:5px;padding-bottom:5px;width:100%;font-size:12pt;color:#fff"><b>투어 날짜선택</b></div>
						<div  style="margin-top:15px;" id="calendar"></div>
						<div style="clear:both"></div>
						
						<div style="padding-top:17px" id="cal_price_list">

						</div>
						<div style="clear:both"></div>
					</div>
					<div id="div_apply_step1_5" style="display:none">
						<div style="margin-bottom:7px;">
							<font style="color:#fff;font-size:9pt">투어일 </font>
								<span id="div_selected_date_list2" style="font-size:10pt;color:#fff;font-weight:bold"></span>

								<a class="btn-u btn-u-xs btn-u-default" href="javascript:fapplyprev()" style="color:#fff;">다시선택</a>
						</div>
						<div id="div_price_options" style="height:170px;overflow-y:auto;background:#696969;border-top:1px solid #fff;border-bottom:1px solid #fff;padding-top:5px;padding-left:5px;padding-right:5px;padding-bottom:5px"></div>
						<div style="margin-top:15px;">
							<div style="padding-top:5px;color:#fff;font-size:9pt;padding-bottom:10px;">
							<font style="font-weight:bold;"> 개인정보처리 및 제 3자 제공에 대한 동의</font><br>
							.본 예약은 [${detail.mainInfo[0].company}]과 예약자간의 거래로 예약정보는 [${detail.mainInfo[0].company}]에게 제공됩니다. 스투비플래너가 제공 받게되는 예약정보는 <a style="display:inline-block;font-size:8pt;color:#fff;font-weight:bold" href="http://www.stubbyplanner.com/personalinfo.asp" target="_blank"><u>[개인정보 취급방침]</u></a>에 따라 관리됩니다.
							</div>
							
							<div>

							<div style="float:left;width:40%"><a href="javascript:fapplyprev()" class="btn-u btn-u-lg btn-u-dark btn-block"> < 이전 단계 </a></div>
							<div style="float:left;width:60%"><a href="javascript:fapplystart()" class="btn-u btn-u-lg btn-u-green btn-block"> 다음 단계 > </a></div>

							<div style="clear:both"></div>
							</div>
						</div>
					</div>
					
					<div id="div_apply_step2" style="display:none">
						
						<div style="margin-bottom:7px;">
							<div style="width:30%;float:left;font-size:10pt;color:#fff">예약자명*</div>
							<div style="width:70%;float:left;"><input class="form-control" type="text" id="input_resv_name" name="resv_name" value=""></div>
							<div style="clear:both"></div>
						</div>
						<div style="margin-bottom:7px;">
							<div style="width:30%;float:left;font-size:10pt;color:#fff">이메일주소*</div>
							<div style="width:70%;float:left;"><input class="form-control" type="text" id="input_email" name="email" value=""></div>
							<div style="clear:both"></div>
						</div>

						<div style="margin-bottom:7px;">
							<div style="width:30%;float:left;font-size:10pt;color:#fff">핸드폰번호*</div>
							<div style="width:70%;float:left;"><input class="form-control" type="text" id="input_phone" name="phone" value=""></div>
							<div style="clear:both"></div>
						</div>
						<div style="margin-bottom:7px;">
							<div style="width:30%;float:left;font-size:10pt;color:#fff">카톡아이디</div>
							<div style="width:70%;float:left;"><input class="form-control" type="text" name="kakao" id="input_kakao" value=""></div>
							<div style="clear:both"></div>
						</div>
						
						<div style="margin-bottom:7px;">
							<div style="width:30%;float:left;font-size:10pt;color:#fff">
								투어일
							</div>
							<div style="width:70%;float:left;">
								<input id="selected_date_list" type="hidden" name="available_date"/>
								<span id="div_selected_date_list" style="font-size:10pt;color:#fff;"></span>

								<a class="btn-u btn-u-xs btn-u-default" href="javascript:fapplyprev()" style="color:#fff;">다시선택</a>

								
							</div>
							<div style="clear:both"></div>
							
						</div>
						
						<div style="color:#fff;font-size:8pt;padding-bottom:10px;">
							<div style="margin-bottom:10px">
								<div style="width:30%;float:left;text-align:right">
									<input type="checkbox" class="form-control" id="ck_ok" value="1">
								</div>
								<div style="width:70%;float:left">
								<font style="font-weight:bold;font-size:9pt">여행자 약관에 대한 동의</font><br>
								<textarea style="height:90px;width:100%;font-size:8pt;color:#fff">
제1장 목적 및 정의

제1조 (목적)
이 약관(이하 “여행자약관”)은 주식회사 스투비익스피어리언스(이하 “당사”)가 운영하는 “스투비플래너”(www.stubbyplanner.com)의 투어 중개서비스 또는 어플리케이션(Application, 이하 웹사이트와 어플리케이션을 통칭하여 “스투비 플랫폼”)상의  투어 중개서비스를 통하여 여행자와 가이드 사이에서 체결되는 여행계약(이하 “여행계약”)의 중개와 관련하여 특히 여행자의 권리와 의무 등 법률관계를 명확히 함을 목적으로 합니다.

제2조 (용어의 정의)
이 약관에서 사용되는 용어의 정의는 다음과 같습니다.
(1) “가이드서비스”는 여행자가 원하는 날짜와 조건에 따라 당사가 중개한 가이드로부터 제공받는 제7조의 서비스를 말합니다.
(2) “가이드”는 당사가 여행자에게 중개한 자로서 여행지에서 여행자에게 가이드서비스를 제공하는 자를 말합니다.
(3) “투어”는 여행자가 여행계약에 따라 가이드로부터 가이드서비스를 제공받으며 향유하는 여행을 말합니다.
(4) “여행확인증”은 가이드와 여행자가 구체적인 가이드서비스의 내용 및 제반 비용 등에 관한 사항을 합의하여 확정한 문서를 말합니다.
(5) “수수료”는 여행자가 가이드와의 여행계약 체결을 중개/대리한 대가로 당사에 지급하는 보수를 말합니다.
(6) “가이드요금”은 여행자가 가이드서비스 제공의 대가로 가이드에게 지급하는 보수를 말합니다.
(7) “여행요금”은 여행자가 본 약관에 따른 여행계약과 관련하여 당사에 지급하는 수수료 및 가이드에게 지급하는 가이드요금을 합한 금원을 말합니다.
(8) “미팅장소”는 투어를 위하여 가이드와 여행자가 만나기로 약속한 장소를 말합니다.
(9) “지각시간”은 가이드와 여행자가 투어를 위하여 미팅장소에서 만나기로 정한 시각으로부터 지각한 당사자가 미팅장소에 실제 도착하기까지 경과한 시간을 말합니다.

제2장 기본 사항

제3조 (여행계약의 당사자 및 당사의 지위)
여행자와 여행계약을 체결하고 가이드서비스를 제공하는 법적 주체는 가이드이며, 당사는 스투비 플랫폼을 통하여 여행자가 원하는 날짜와 조건에 맞추어 가이드와 여행계약을 체결하고 가이드서비스를 제공받는 것을 중개하는 업무를 수행합니다.

제4조 (가이드의 독립당사자 지위)
1. 당사는 여행자와 가이드 사이에 투어를 중개할 뿐이며, 가이드는 당사와 고용 관계에 있지 않음을 확인합니다. 또한, 당사는 가이드에 대하여 사용자로서의 책임을 일체 부담하지 않는다는 점을 명확히 합니다.
2. 가이드는 가이드약관의 이행에 필요한 관련 법령상의 허가, 등록, 신고 또는 보험, 공제, 예치 등의 의무사항을 모두 이행하였으며, 당사는 가이드가 관련 법령 위배로 인하여 여행자 또는 제3자에 대하여 손해배상 등 책임을 지더라도 당사는 이에 관하여 아무런 책임이 없습니다.

제5조 (여행계약의 구성)
여행계약은 여행확인증과 여행자약관에 나타난 사항을 그 계약내용으로 합니다.

제6조 (당사자 및 당사의 기본 의무)
1. 가이드는 사전에 여행자와 약정한 내용에 따라 투어를 성실하게 진행하여야 하며, 그밖에 여행자에게 안전하고 만족스러운 가이드서비스를 제공하기 위하여 여행계약상 의무를 성실하게 이행하여야 합니다.
2. 여행자는 여행계약에 따른 의무를 성실하게 이행하며, 안전하고 즐거운 여행을 위하여 여행자간 화합도모 및 가이드의 여행질서 유지에 적극 협조합니다.
3. 당사는 여행계약 체결의 중개 행위 등에 있어 맡은 바 임무를 충실히 수행합니다.

제7조 (가이드서비스의 내용)
가이드가 여행자에게 제공하는 가이드서비스의 구체적인 내용은 다음 각 호의 1과 같습니다.
(1) 여행자의 의사 및 제반 사정을 고려한 투어 일정의 계획 및 조정
(2) 미팅장소에서 일정에 정한 각 여행지로 여행자를 인솔
(3) 각 여행지에 대한 구체적인 안내 및 설명 제공
(4) 당일 최종 여행지로부터 여행자의 숙소 등 일정에 정한 해산 지점으로 여행자를 인솔
(5) 여행지에서 여행자의 원활한 의사소통 협조
(6) 사고 등 문제 발생시의 여행자 보호 조치
(7) 기타 투어 관련 제반 업무

제3장 여행계약의 체결

제8조 (여행계약 체결 및 여행확인증, 약관 등 교부)
1. 다음 각 호의 경우 여행자와 가이드 사이에 여행계약이 체결됩니다. 단, 제1호의 경우 가이드는 여행자에게 청약과 동시에 여행요금을 지급할 것을 요구할 수 있습니다.
(1) 가이드가 투어 일정, 여행요금 등 그 내용을 정하여 미리 제시한 청약의 유인에 따라 여행자가 투어를 신청하여 청약하면, 가이드가 여행자의 신청 내용에 따라 투어가 가능하다고 판단할 경우 미리 고지한 정해진 승낙 기한 내에 여행자에게 투어가 가능함을 회신함으로써 승낙하는 경우 또는 미리 고지한 정해진 승낙 기한 내에 본 조 제3항에 따른 투어의 불가능 회신이 없는 경우
(2) 여행자와 가이드 사이에 사전에 투어의 일정, 여행요금 등 그 내용에 대해 합의가 이루어지는 경우
2. 가이드는 본 조 제1항 각 호에 따라 여행계약이 체결된 경우, 여행자의 요청에 따라 당사를 통해 여행확인증과 여행자약관 사본을 여행자에게 교부합니다.
3. 본 조 제1항 제1호에서 가이드가 여행자에게 청약과 동시에 여행요금의 지급을 요구하여 여행자가 이를 지급한 경우라도, 가이드가 투어가 불가능하다고 판단하여 미리 고지한 시간 또는 기일 내에 이를 여행자에게 회신할 경우 여행계약이 성립하지 않습니다.
4.  본 조 제1항 제1호에서 가이드가 여행자에게 청약과 동시에 여행요금의 지급을 요구하여 여행자가 이를 지급한 경우라도, 여행자가 예약접수에 필수적인 정보(영문명, 픽업숙소명등)가 있을때 이를 제공하지 않은 경우, 해당 정보가 제공되는 시점까지는 여행계약이 성립하지 않으며  계약철회의 정당한 사유가 될 수 있습니다.
5. 당사는 본 조 제3항에 따라 여행계약이 성립하지 않는 경우 지급 받은 여행요금 전액을 여행자에게 반환합니다.
6. 여행자가 본 조 제3항에 따라 미리 고지한 시간 또는 기일 내에 여행계약에 관한 청약을 취소하는 경우, 당사는 지급 받은 여행요금 전액을 여행자에게 반환합니다.
7. 당사 웹사이트 및 어플리케이션을 통하여 예약하지 않은 경우 본 조 각 항의 여행계약 체결이 되지 않은 것으로 간주하며 당사에게 중개에 대한 책임 및 손해에 대한 배상을 요구할 수 없습니다.

제9조 (전자정보망을 통한 예약확인증 및 약관 등의 교부 간주)
여행자가 인터넷 등 전자정보망으로 제공된 예약확인증 및 여행자약관의 내용에 동의하고 여행계약의 체결을 신청한 데 대하여 가이드가 전자정보망 내지 기계적 장치 등을 이용하여 여행자에게 승낙의 의사를 통지한 경우, 가이드와 여행자 사이에 제8조 제2항의 예약확인증 및 여행자약관 교부가 이루어진 것으로 봅니다.

제10조 (계약 체결의 거절)
가이드(또는 가이드를 대신하여 당사)는 다음 각 호의 1에 해당하는 사유가 있을 경우에는 해당 여행자에 대하여 여행계약의 체결을 거절할 수 있으며, 투어가 확정된 이후에 그 사유를 알게 된 경우에도 해당 여행계약을 해제할 수 있습니다.
(1) 여행자가 다른 여행자에게 폐를 끼치거나 여행의 원활한 실시에 지장이 있다고 인정될 때
(2) 여행자가 보행이나 운송수단 탑승이 불가능한 부상, 전염성 질병 등 여행자의 신체에 이상이 발생하여 투어 참가가 불가능함이 의료기관이 발급한 진단서에 의해 객관적으로 확인되는 경우
(3) 여행자가 예약접수에 필수적인 정보의 제공을 정당한 사유없이 지연하는 경우

제4장 여행요금

제11조 (여행요금)
1. 여행자는 여행계약의 중개 및 가이드서비스 제공의 대가로서 여행확인증에 기재된 금액의 여행요금을 당사에 지급합니다. 여행요금에는 다음 각 호의 요금 또는 비용은 포함되어 있지 않습니다.
(1) 투어 중 개인적 성질의 제비용(통신료, 관세, 일체의 팁, 세탁비, 개인적으로 추가한 식, 음료)
(2) 치료비, 입원비 등 투어 중 여행자의 질병, 상해 또는 그 밖의 사유로 인하여 지불해야 하는 일체의 비용
(3) 여행자가 통상의 규격이나 규정을 초과하여 발생한 비용(초과 규격의 수하물 등 각종 추가 요금)
(4) 여행 수속 제비용(여권 인지대, 사증료 등)
(5) 기타 여행확인증에 구체적으로 명시되지 않은 비용
2. 수수료는 별도의 약정에 따른 금액으로 하며, 가이드요금은 여행요금 총액에서 수수료 상당액을 제한 나머지 금액으로 합니다.
3. 여행자는 여행요금을 당사가 지정한 방법[신용카드 결제, 실시간 계좌이체, 가상계좌(무통장입금), 페이팔(Paypal), 당사 발행 쿠폰과 포인트 등]으로 지급합니다.
4. 여행요금에 여행자 보험료가 포함되는 경우, 가이드는 여행자에게 보험회사명, 보상내용 등을 설명합니다.

제12조 (여행조건의 변경 요건 및 요금 등의 정산)
1. 여행계약이 체결된 이후에는 계약상 여행조건은 원칙적으로 변경될 수 없습니다.
2. 제1항에도 불구하고, 여행계약상의 여행조건은 다음 각 호의 1의 경우에 한하여 예외적으로 변경될 수 있습니다.
(1) 투어 개시 후 여행자의 안전과 보호를 위하여 여행조건의 변경이 부득이하다고 판단되는 경우
(2) 투어 개시 후 천재지변, 전란, 정부의 명령, 운송 및 숙박업체 등의 파업 또는 휴업 등으로 여행의 목적을 달성할 수 없는 경우
3. 제1항의 여행조건 변경으로 인하여 가이드요금에 증감이 생기는 경우, 해당 증감분은 투어 종료 후 10일 이내에 당사를 통하여 정산(환급)하여야 합니다.
4. 여행자는 투어 중 자신의 사정으로 인하여 관광 등 가이드요금에 포함된 서비스를 제공받지 못한 경우 당사에 대하여 그에 상응하는 가이드요금의 환급을 청구할 수 없습니다.

제5장 투어 개시 전 계약의 해제

제13조 (여행자의 투어 개시 전 임의해제 및 손해배상)
1. 여행자는 여행요금 지급이 이루어지기 이전까지 체결하였던 여행계약을 가이드 또는 당사에 대한 손해배상 등의 법적 책임 없이 자유롭게 해제할 수 있습니다.
2. 여행자가 여행요금 지급이 이루어진 후 투어 개시일 이전까지 국외여행계약 또는 국내여행계약을 임의로 해제하는 경우, 가이드는 본 약관 별첨 취소환불정책에 따라 여행자에게 여행요금의 전부 또는 일부를 환불합니다.
3. 당사는 본 조에 따라 가이드와 여행자 사이에 발생하는 손해배상 등 법률관계에 대하여 보증책임 기타 어떠한 의무 또는 책임도 부담하지 않습니다.

제14조 (가이드의 투어 개시 전 임의해제 및 손해배상)
1. 가이드가 여행자와 체결하였던 여행계약을 임의로 해제하는 경우, 가이드는 그로 인하여 여행자가 입은 손해를 배상할 의무를 부담합니다. 이 경우 손해배상액은 제21조에 정한 바에 따르며, 다만 여행자가 입은 실제 손해액이 제21조 제4항 제1호에 따른 손해배상액을 초과함이 객관적으로 입증되는 경우, 가이드는 여행자에게 그 실제 손해액을 배상할 책임을 부담합니다.
2. 당사가 가이드를 대신하여 여행자에게 제1항의 손해배상의무를 이행하는 경우, 당사는 가이드에 대하여 여행자에게 배상한 금액 상당을 구상할 수 있습니다.
3. 본 조에 따라 가이드가 여행계약을 해제하는 경우, 가이드는 제1항의 여행자에 대한 손해배상과 별도로 당사가 입은 손해로서 여행확인증에 기재된 수수료 상당액을 배상할 의무를 부담합니다

제15조 (최저행사인원 미달로 인한 계약 해제)
1. 가이드는 여행자의 수가 사전에 공지한 투어의 최저행사인원에 미달하였음을 원인으로 여행계약을 해제할 수 있습니다.
2. 본 조의 계약 해제를 하고자 하는 가이드는 당사를 통하여 국외여행의 경우 투어 개시일로부터 7일 이전까지, 국내여행의 경우 투어 개시일로부터 3일 이전까지 여행자에게 제1항의 해제의 의사표시 및 해제사유를 통지하여야 합니다. 만약 가이드가 최저행사인원 미달로 전항의 기일 내 통지를 하지 아니하고 계약을 해제하는 경우 여행자에 대한 배상은 공정거래위원회 고시 소비자분쟁해결기준에 의거하여 처리되며, 이 때 당사가 여행자에게 지급한 손해배상액에 대하여 당사는 가이드에게 구상할 수 있습니다.

제16조 (투어의 개시와 종료)
투어의 개시 시점은 투어 첫 날 미팅장소에서 여행자가 가이드와 만난 시점으로 하며, 투어의 종료 시점은 투어 마지막 날 여행자와 가이드가 일정을 마치고 헤어지는 시점으로 합니다.

제17조 (투어 개시 전 쌍방의 책임 없는 사유로 인한 계약 해제)
투어 개시일 이전에 다음 각 호의 1에 해당하는 사유가 있는 경우, 여행자 또는 가이드는 별도의 손해배상 없이 여행계약을 해제할 수 있습니다.
(1) 제10조 제1항 제1호 또는 제2호의 사유가 있는 경우
(2) 보행이나 운송수단 탑승이 불가능한 부상, 전염성 질병 등 여행자의 신체에 이상이 발생하여 투어 참가가 불가능함이 의료기관이 발급한 진단서에 의해 객관적으로 확인되는 경우
(3) 천재지변, 취소가 불가피한 현지사정(시위,파업,관광지휴업 등), 가이드 신변에 투어가 불가할만한 중대한 사항(교통사고,중대질병,사망 등)이 발생한 경우(이때 입증을 위한 자료제출은 고객 혹은 중개업체의 요청이 있는 경우에만 하기로 함)
(4) 기타 이에 준하는 것으로서 당사자 쌍방에게 책임 없는 사유로 투어가 불가능하게 된 경우



제18조 (계약 해제에 따른 여행요금 환불 등 정산)
1. 제13조에 따라 여행계약이 해제되는 경우, 당사는 별첨 취소환불 정책에 따른 환불 대상 여행요금을 여행자에게 환급합니다.
2. 제14조, 제15조, 제17조에 따라 여행계약이 해제되는 경우, 당사는 여행자에게 지급 받은 여행요금 전액을 환불합니다.

제6장 의무 및 책임

제19조 (여행자의 의무 및 책임)
1. 여행자의 고의 또는 과실로 당사 또는 가이드에게 손해가 발생한 경우, 여행자는 그 손해를 배상할 의무를 부담합니다.
2. 여행자가 가이드에 대하여 성추행 등 범죄행위를 하였을 경우, 여행자는 가이드에 대하여 민형사상 책임을 부담하며, 당사에 대하여도 당사가 입은 손해 및 각종 발생 비용 등의 손실을 배상할 책임을 부담합니다.
3. 여행자는 여행의 원활한 진행을 위하여 가이드가 당사를 통하여 제공하는 설명 및 자료를 통하여 여행 일정, 여행비용 내역, 약속 시간 및 장소 등 여행 관련 정보를 확인합니다.
4. 여행자는 여행확인증에 기재된 기일까지 여행요금을 당사에 지급합니다.
5. 여행자는 여행의 원활한 진행을 위하여 가이드의 인솔 및 요청에 성실히 협조합니다.
6. 여행자는 합리적인 이유 없이 가이드에게 투어와 직접적인 관련이 없는 부당한 요구를 하여서는 아니 됩니다.
7. 여행자는 투어 종료된 후 스투비 플랫폼 상에 투어 후기에 관한 게시물을 작성 및 게시할 수 있습니다. 다만, 후기 게시물이 다음 각 호의 어느 하나에 해당하는 경우, 당사는 해당 후기 게시물을 여행자의 동의 없이 삭제 또는 변경할 수 있습니다.
(1) 사용자의 개인적인 경험 이외의 내용을 담고 있는 경우
(2) 실제 투어와 관련되지 않은 후기인 경우 (예: 정치적, 종교적 또는 사회적 의견에 대한 후기)
(3) 위해한 혹은 불법적인 행동 및 폭력을 지지하거나 비속어, 성적 언어, 명예훼손, 위협 또는 차별적인 내용을 포함하는 경우
(4) 타인의 권리(지적 재산권 및 개인정보 보호에 관한 권리 등을 포함)를 침해하는 내용을 포함하는 경우 (예: 타인의 실명, 주소 또는 인적 정보를 당사자의 허락없이 기재하는 경우 등)
(5) 강요의 목적으로 후기 게시물이 이용된 것이 객관적으로 입증된 경우
(6) 당사에서 조사가 진행 중인 건에 대한 내용을 포함하는 경우
(7) 기타 이상에 준하는 위법, 부당한 목적 또는 방법으로 후기 게시물이 작성된 경우
8. 귀중품 및 소지품에 대한 보관 책임은 여행자 자신에게 있습니다. 여행 도중 여행자의 귀중품 및 소지품이 도난 또는 분실된 경우 여행자는 사고 발생을 안 때로부터 지체 없이 그 사실을 가이드 및 당사에 알리고 다음 각 호의 서류를 제출하여야 합니다.
(1) 도난 확인서
(2) 경위서
(3) 그밖에 필요한 서류
9. 여행자가 투어 개시 전에 고지하지 않은 신체의 장해 또는 질병 등으로 인하여 발생하는 문제는 여행자에게 책임이 있습니다. 단, 여행 도중 여행자의 신체에 장해 또는 질병 등이 발생하는 경우 여행자는 지체 없이 그 사실을 가이드 및 당사에 알리고 다음 각 호의 서류를 즉시 제출하여야 합니다.
(1) 사고 증명서
(2) 진단서
(3) 경위서
(4) 영수증
(5) 그밖에 필요한 서류

제20조 (가이드의 일반 손해배상의무)
1. 가이드가 여행계약을 위반하는 경우 그로 인하여 여행자가 입은 손해를 배상할 의무를 부담합니다. 단, 여행자에게 신체 손상이 없는 경우 가이드의 손해배상책임은 여행요금의 100%를 한도로 합니다.
2. 가이드는 본인 또는 그 고용인이 고의 또는 과실로 위법하게 여행자에게 손해를 가한 경우 그로 인하여 여행자가 입은 손해를 배상합니다.
3. 가이드는 항공기, 기차, 선박 등 교통수단의 연발착 또는 교통체증 등으로 인하여 여행자가 입은 손해를 배상합니다. 단, 가이드가 자신에게 그에 대한 고의 또는 과실이 없음을 입증한 경우에는 그러하지 아니합니다.
4. 가이드는 여행자의 수하물을 수령, 인도, 보관할 의무가 없으며, 수하물이 멸실, 훼손 또는 연착되어 여행자에게 발생한 손해를 배상할 책임이 없습니다.

제21조 (여행 내용 불일치 등에 따른 가이드의 손해배상의무)
1. 본 조에 따른 손해배상은 다음 각 호의 사유가 발생한 경우에 대하여 적용됩니다.
(1) 가이드가 제15조, 제17조에 정한 사유 이외의 사유를 들어 체결하였던 국내여행계약 및 해외여행계약을 투어 개시 전에 임의로 해제하는 경우
(2) 실제 투어 시간이 사전 약정에 따른 투어 시간과 명확하게 불일치하는 경우
(3) 실제 투어 인원이 사전 약정에 따른 투어 인원과 명확하게 불일치하는 경우
(4) 실제 투어 코스가 사전 약정에 따른 투어 코스와 명확하게 불일치하는 경우
(5) 그밖에 실제 투어 내용이 사전 약정에 따른 투어 내용과 명확하게 불일치하는 경우
2. 제1항에 정한 사전 약정은 해당 투어와 관련하여 (i) 스투비 플랫폼 내부 1:1문의, (ii) 여행확인증, (iii) 상품 소개 페이지를 통하여 명시된 내용에 한정하며, 제1항 각 호의 사유가 발생하였는지 여부에 대하여 여행자와 가이드 사이에 다툼이 있는 경우, 당사가 객관적이고 중립적인 기준에 따라 이를 판단합니다.
3. 다음 각 호의 요건을 충족하는 여행자는 가이드에게 본 조에 따른 손해배상을 청구할 수 있습니다.
(1) 가이드의 투어 내용 변경에 동의 또는 합의하는 등 여행자 자신이 제1항 각 호의 사유 발생을 직접적 또는 간접적으로 야기하지 않았어야 합니다.
(2) 가이드에게 투어 내용 변경에 대하여 이의하는 등 제1항 각 호의 사유 발생을 막기 위한 합리적인 노력을 다하였어야 합니다.
(3) 여행자는 투어 종료 후(제1항 제1호의 경우에는 가이드로부터 해제 통보를 받은 후) 당사 '여행불만족 손해배상위원회'에 20일 이내에 고객센터의 이메일 또는 전화를 통하여 당사에 제1항 각 호의 사유 발생 사실을 통지하여야 합니다.
4. 제3항의 요건이 충족되는 경우, 가이드는 여행자의 선택에 따라 다음 각 호의 손해배상 방식 중 어느 하나의 방식으로 여행자에 대한 손해를 배상하여야 합니다.
(1) 현금배상 : 이 경우 구체적인 배상금액은 당사의 ‘여행불만족 손해배상위원회’ 가 내부 규정 및 지침에 따라 합리적으로 산정하되, 여행자로부터 지급받은 여행요금을 최대 한도로 하여 정합니다.
(2) 스투비 credit 배상 : 현금이 아닌 추후 당사가 중개하는 여행계약에서 여행요금으로 사용 가능한 쿠폰 또는 포인트를 부여합니다. 대신 이를 선택하는 경우 배상 포인트는 제1호에 따라 산정된 현금배상 금액의 110% 상당으로 정합니다.
5. 당사는 본 조의 손해배상 채무를 가이드를 대신하여 여행자에게 변제할 수 있습니다. 이 경우 당사는 여행자에 대한 변제금액 상당을 가이드에게 구상할 수 있으며, 가이드는 그에 대하여 이의하지 않고 당사의 구상에 응하여야 합니다.
6. 본 조에 따른 손해배상이 이루어지는 경우, 여행자는 자신이 입은 실제 손해액이 본 조에 따른 손해배상액을 초과함을 객관적으로 주장, 입증하지 않는 이상 제20조를 포함한 본 약관상의 다른 조항을 근거로 가이드 또는 당사에게 손해배상을 청구할 수 없습니다.

제22조 (당사의 손해배상의무)
1. 당사는 여행계약 체결의 중개와 관련하여 당사 또는 당사의 고용인이 고의 또는 과실로 여행자에게 손해를 가한 경우, 그로 인하여 여행자가 입은 손해만을 배상합니다.
2. 당사는 여행계약이 체결된 이후 여행자와 가이드 사이에서 발생한 손해배상 등 법률관계와 관련하여 여행자 또는 가이드에 대하여 어떠한 책임도 부담하지 않습니다.

제7장 투어 진행의 장해

제23조 (가이드의 지각)
1. 가이드가 약속한 시간까지 미팅장소에 도착하지 못하여 투어의 진행이 지체된 경우, 가이드는 여행자에게 지체된 시간 상당의 투어를 추가적으로 제공합니다.
2. 여행자는 가이드로부터 사전에 도착이 늦어지게 된 경위, 예상 도착 시간, 지체된 시간만큼의 추가 투어가 제공된다는 사실 등에 관한 구체적 통지를 수령하지 못한 상태에서 가이드가 연락 없이 약속한 시간으로부터 15분이 지나도록 미팅장소에 도착하지 않는 경우 여행계약을 해지할 수 있으며, 이 경우 여행요금 환불 및 손해배상 등에 관하여 제26조의 규정이 적용됩니다.

제24조 (여행자의 지각)
1. 여행자의 지각시간이 15분 이하인 경우, 가이드는 투어를 진행함에 있어 여행자에게 지각시간 상당의 투어를 추가적으로 제공합니다.
2. 여행자의 지각시간이 15분 이상인 경우, 가이드는 사전에 예정되었던 일정에 따라 투어를 진행하며 그밖에 여행자에게 지각시간 상당의 투어를 추가적으로 제공할 의무가 없습니다.
3. 여행자가 아무런 연락 없이 약속한 시간으로부터 15분이 넘도록 미팅장소에 도착하지 않는 경우, 가이드는 여행자에게 투어 출발을 알린 후 제26조에 따라 여행계약을 해지할 수 있습니다.
4. 본 조 제1항 내지 제3항에도 불구하고, 사전에 투어를 함께 진행하기로 예정된 다른 여행자의 전부 또는 일부가 정시에 미팅장소에 도착한 경우에는, 가이드는 사전에 예정된 일정에 따라 투어를 진행할 수 있으며, 지각한 여행자에게 지각시간 상당의 투어를 추가적으로 제공할 의무가 없습니다.

제8장 투어 진행 중 여행계약의 해지

제25조 (상대방과의 합의에 의한 계약의 해지)
1. 여행자 또는 가이드는 투어가 개시된 이후에는 상대방과의 합의 없이 임의로 여행계약을 해지할 수 없습니다.
2. 상대방과의 합의에 따라 여행계약을 해지하는 경우, 가이드요금의 환불과 관련한 사항 또한 상호 합의한 내용에 따릅니다.
3. 본 조의 합의해지와 관련하여, 당사는 여행자로부터 지급받은 수수료를 환불할 의무가 없습니다.

제26조 (상대방의 귀책사유로 인한 계약의 해지)
1. 여행자 또는 가이드는 상대방에게 책임 있는 사유(제23조 및 제24조의 해지를 포함한다)로 인하여 투어의 진행이 현저히 곤란하게 된 경우 여행계약을 해지할 수 있습니다.
2. 여행자에게 책임 있는 사유로 제1항의 계약 해지가 발생한 경우, 여행자는 여행요금의 환불을 청구할 수 없습니다.
3. 가이드에게 책임 있는 사유로 제1항의 계약 해지가 발생한 경우, 여행자는 당사에 여행요금 전액의 환불을 청구할 수 있습니다. 이 경우, 당사는 가이드에게 여행자에게 반환한 수수료 금액과 추가 손해배상 금액을 청구할 수 있으며, 이는 최대 여행요금의 200%로 한정합니다.
4. 본 조에 따른 여행계약의 해지가 발생한 경우, 귀책사유 있는 당사자는 여행요금과 별개로 그로 인하여 상대방이 입은 손해를 배상하여야 합니다.

제27조 (당사자 쌍방에게 책임 없는 사유로 인한 계약의 해지)
1. 가이드 및 여행자 모두에게 책임 없는 사유로 인하여 투어의 진행이 불가능한 경우, 여행자 또는 가이드는 여행계약을 해지할 수 있습니다.
2. 제1항의 해지가 발생한 경우, 가이드는 가이드요금 중 일정상 계획된 전체 투어 시간 중 진행되지 못한 투어 시간의 비율 상당 금액을 여행자에게 반환하여야 합니다.
3. 제1항의 해지가 발생한 경우, 당사는 가이드는 대신하여 제2항에 따라 가이드가 여행자에게 반환하여야 할 금액 상당을 정산하여 여행자에게 환불하며, 가이드에게는 여행자로부터 지급받은 가이드요금 중 위 환불금을 공제하고 난 후 잔여 가이드요금을 정산하여 지급합니다.
4. 제2항의 전체 투어 시간 중 진행되지 못한(또는 진행된) 투어 시간의 비율은 가이드 및 여행자의 합의를 통하여 정하는 것을 원칙으로 하며, 합의가 되지 않는 경우 당사가 객관적이고 중립적인 기준에 따라 그 비율을 정합니다.
5. 본 조에 따른 해지와 관련하여 당사 및 가이드는 제2항 및 제3항에 규정된 사항 이외에 여행자에 대하여 그 밖의 다른 의무를 부담하지 않습니다.

제9장 기타 일반 의무

제28조 (설명의무)
가이드는 당사를 통하여 여행계약의 중요 내용 및 그 변경사항을 여행자에게 설명하여야 하며, 당사는 이에 따라 여행자에게 여행계약에 규정된 중요한 내용 및 그 변경사항을 여행자가 이해할 수 있도록 구체적으로 설명합니다.

제29조 (보험가입 등)
가이드는 투어와 관련하여 여행자에게 손해가 발생한 경우 여행자에게 보험금을 지급하기 위하여 보험 또는 공제에 가입하거나 영업보증금을 예치하여야 합니다.

제30조 (개인정보 관리의무)
당사 및 가이드는 투어와 관련하여 취득한 여행자의 성명, 여권번호, 연락처 등 개인정보를 개인정보 보호법 등 제반 법령에 따라 적법하게 관리하여야 합니다.

제31조 (여행자를 촬영한 사진의 사용)
가이드가 투어와 관련하여 촬영한 사진 또는 동영상 등을 당사 홍보 등의 목적으로 사용하고자 하는 경우, 당사는 해당 사진에 포함된 여행자에 대하여 사진 사용의 목적 및 범위 등을 알리고 그 사진을 사용할 수 있습니다.

제32조 (기타사항)
특수지역으로의 여행으로서 정당한 사유가 있는 경우 이 약관의 내용과 달리 정할 수 있습니다.

제33조 (불가항력)
어떠한 당사자도 화재, 폭풍, 홍수, 지진, 사고, 전쟁(실제 발생 또는 선포 여부를 불문함), 반란, 폭동 기타 민란, 전염병, 격리, 천재지변, 정부조치 등 자신의 통제를 벗어난 사유에 의해 약관상의 의무사항을 이행 또는 준수하지 못하는 경우 이에 대한 책임을 지지 아니합니다. 해당 당사자는 불가항력적인 사유의 발생 후 가능한 한 빨리 이를 상대방 당사자에게 통지하고 그 사유가 제거 또는 중단된 후 가능한 한 신속하게 약관상 의무의 이행 및 준수를 재개하여야 합니다.

제34조 (기타사항)
여행자약관은 대한민국 법을 그 준거법으로 하며, 이에 따라 해석되고, 협의에 의하여 여행자약관에 관련된 분쟁을 해결할 수 없는 경우에는 그 소송의 관할은 당사자 간의 합의에 따르며, 사전 합의된 바가 없는 경우에는 민사소송법의 관할 규정에 따릅니다.


[부칙] (2018년 12월 23일)
1. 이 약관은 2018년 12월 23일부터 적용됩니다.

[별첨. 취소환불정책]

각 상품 별 취소 환불 약관이 별도 기재되어 있을 경우 별도 기재 내용이 해당 규정으로서 선 적용됩니다.

-가이드투어 취소/환불 안내
여행자는 가이드약관 제16조 제2항에 따라 여행요금 지급이 이루어진 후 투어 개시일 이전에 여행계약을 임의로 해제하는 경우, 해제 통보 시점에 관한 다음 각 호의 기준에 따라 여행요금이 환불됩니다.
해제 통보 시점은 환불요청서가 스투비 플랫폼에 접수된 시간 또는 웹싸이트 하단에 기재된 대표 이메일을 통하여 환불요청 내용이 기록된 시간을 기준으로 합니다.
[국외여행의 경우]
- 여행시작 30일전 (~30) 까지 통보시: 여행 요금 전액 환불
- 여행시작 20일 전까지 (29~20) 통보시: 여행요금에서 가이드 요금의 10%와 스투비 수수료 공제 후 환불
- 여행시작 6일 전까지 (19~6) 통보시: 여행요금에서 가이드 요금의 15%와 스투비 수수료 공제 후 환불
- 여행시작 1 일 전까지 (1~5) 통보시: 여행요금에서 가이드 요금의 20%와 스투비 수수료 공제 후 환불
- 여행시작 시간 기준 24시간 이내 통보시: 여행요금에서 가이드 요금의 50%와 스투비 수수료 공제 후 환불

다만, 위의 규정에도 불구하고 다음의 경우에는 예외로 합니다.
1) 여행자가 여행요금을 결제(지급)한 때로부터 24시간 이내에 여행계약을 철회(취소)하는 경우와 여행자가 투어 예약 후 가이드가 확정되기 전에 취소하는 경우는 여행요금을 전액 환불합니다. 단, 여행자가 여행요금을 결제하였다고 하더라도 해당 시점으로부터 24시간 이내 여행이 시작될 경우는 전액 환불 대상에서 제외합니다.
2) 상품의 특성에 따라 현지 예약금으로 지불되어야 하는 금액이 있는 경우 해당 예약금의 환불에 대하여는 각 상품의 상세설명보기에서 별도로 고지한 취소환불 약관을 적용합니다.

</textarea>
								
								
								</div>
								<div style="clear:both"></div>
								<span id="notice_long_time" style="display:none;"></div>
								<div>
									<div style="float:left;width:40%"><a href="javascript:fapplyprev()" class="btn-u btn-u-lg btn-u-dark btn-block"> < 이전 단계 </a></div>
									
									<div style="float:left;width:60%">

									<a href="javascript:makeReservation()" class="btn-u btn-u-lg btn-u-green btn-block"> 신청 완료</a>

									</div>
									<div style="clear:both"></div>
								</div>
							</div>
						</div>
					</div>
				</form>

    		</div>
<script>
	bias=0;
	var today = new Date();
	cur_month = new String(today.getMonth()+1); //January is 0!
	console.log(cur_month);
	tourserial = ${detail.mainInfo[0].guide_seq};
	
	if(cur_month.length == 1){ 
		cur_month = "0" + cur_month; 
	} 
	//cur_month *= cur_month;
	cur_year = today.getFullYear();			
	console.log(cur_year);
	
	function movePrevMonth()
	{
		cur_month--;
		if(cur_month<1)
		{
			cur_year--;
			cur_month=12;
		}
		drawMonth(cur_year,cur_month);
	}
	
	function moveNextMonth()
	{
		cur_month++;
		
		if(cur_month>12)
		{
			cur_year++;
			cur_month=1;
		}

		drawMonth(cur_year,cur_month);	
		
	}

	
	function drawMonth(y,m){
		$("#calendar").html('<div style="text-align:center;padding-top:50px;color:#fff">날짜별 가격 정보를 가져오는 중입니다....</div>');
		$.getJSON( "/stubbyPlanner/market/reserve.jsp?tourserial="+ tourserial +"&m="+m+"&y="+y, function( data ) {
			if(data)
			{
				price_list=data.price_list;
				available_list=data.available_list;


				

				max_mday=31;
				if(m==2)
					max_mday=28;
				if(m==4)
					max_mday=30;
				if(m==6)
					max_mday=30;
				if(m==9)
					max_mday=30;
				if(m==11)
					max_mday=30;
		
				thtml='';
		
				thtml+='<div style="float:left;width:20%"><a class="btn-u btn-u-default" style="border-radius:20px" href="javascript:movePrevMonth()"> < </a></div>';
				thtml+='<div style="float:left;width:60%" class="calendar_header_title">'+y+'년 '+m+'월</div>';
				thtml+='<div style="float:left;width:20%;text-align:right"><a class="btn-u btn-u-default" style="border-radius:20px" href="javascript:moveNextMonth()"> > </a></div>';
				thtml+='<div style="clear:both"></div>';
		
				thtml+='<div class="calendar_header">일</div>';
				thtml+='<div class="calendar_header">월</div>';
				thtml+='<div class="calendar_header">화</div>';
				thtml+='<div class="calendar_header">수</div>';
				thtml+='<div class="calendar_header">목</div>';
				thtml+='<div class="calendar_header">금</div>';
				thtml+='<div class="calendar_header">토</div>';
				thtml+='<div style="clear:both"></div>';
		
				m_txt=m;
				
				console.log(m_txt);
				
				var dx = new Date(y+'-'+m_txt+'-01');
		
				var base_dx = new Date('2019-01-01');
				bias=0;
		
				if(base_dx.getDay()==1)//특수한경우
					bias=1;
				else//정상인경우
					bias=0;
		
				for(i=0;i<dx.getDay()+bias;i++)
					thtml=thtml+'<div class="calendar_day_nothing"><a>-</a></div>';
		
				price2_display_cnt=0;

				for(i=1;i<=max_mday;i++)
				{
					d_txt=i;
					if(i<10)
						d_txt='0'+i;
					thedate=y+'-'+m_txt+'-'+d_txt;
					if(selected_date_list.indexOf(thedate)>=0) {
					thtml=thtml+'<div style="width:14%;float:left"><div class="calendar_day_selected" id="cd_'+i+'" onclick="selDate(\''+thedate+'\',\''+i+'\')">'+i+'</div></div>';
					} else {
						isnotavailable=true;
						for(j=0;j<available_list.length;j++) {
							if(available_list[j].s_day==i){
								{
									isnotavailable=false;
									price_option_serial=available_list[j].pos;
									if(available_list[j].is_super) {
										thecolorcode="red";
									} else {
										if(available_list[j].price_idx==2) {
											thecolorcode="yellow";
											price2_display_cnt++;
										} else {
											thecolorcode="green";
										}
									}
									thtml=thtml+'<div style="width:14%;float:left"><div class="calendar_day_active" id="cd_'+i+'" onclick="selDate(\''+thedate+'\',\''+i+'\',\''+price_option_serial+'\')" style="line-height:80%">'+i+'<br><font style="font-size:7pt;color:'+thecolorcode+'"><i class="fa fa-circle" aria-hidden="true"></i></font></div></div>';

								}
							}
						}
						if(isnotavailable)
							thtml=thtml+'<div style="width:14%;float:left"><div class="calendar_day" id="cd_'+i+'" onclick="" style="line-height:80%">'+i+'<br><font style="font-size:7pt;color:#000"><i class="fa fa-circle" aria-hidden="true"></i></font></div></div>';
					
			
					}
				}

		
		$("#calendar").html(thtml);


		phtml='';
		if(price2_display_cnt>0)
		{
			
			for(j=0;j<price_list.length;j++)
			{
				phtml=phtml+'<div style="float:left;width:50%;text-align:center;font-size:10pt;color:#fff">';
				if(price_list[j].has_time_limit)
				{
					thecolor="red";
				}
				else
				{
					if(price_list[j].price_idx==2)
						thecolor="yellow";
					else
						thecolor="green";


				}
		
				phtml=phtml+'<font style="font-size:7pt;color:'+thecolor+'"><i class="fa fa-circle" aria-hidden="true"></i></font> '+price_list[j].pricename+'('+price_list[j].pricetxt+')';
				phtml=phtml+'</div>';
			}
		} else {
				phtml='';
				thecolor="green";
				phtml=phtml+'<div style="font-size:10pt;color:#fff">';
				phtml=phtml+'<font style="font-size:7pt;color:'+thecolor+'"><i class="fa fa-circle" aria-hidden="true"></i></font> 예약가능 ';
				phtml=phtml+'</div>';	
			}
		$("#cal_price_list").html(phtml);



			}
		});


	}//drawMonth
	
	function fapplyprev()
	{
		selected_date_list="";
		$('.calendar_day_selected').addClass('calendar_day');
		$('.calendar_day_selected').removeClass('calendar_day_selected');


			$("#div_apply_step3").hide();
			$("#div_apply_step2").hide();
			$("#div_apply_step1_5").hide();
			$("#div_apply_step1").show();
			$("#my_modal_title").html("간편 예약(1/3)");
		
	}
	
	function fapplystart()
	{
		if(policy_id_cnts=="")
		{
			func_alert("예약할 항목에 인원/수량을 1개이상은 선택해주세요.");
		}
		else
		{

			if(policy_id_cnts==0)
			{
				func_alert("예약할 항목에 인원/수량을 1개이상은 선택해주세요.");
			}
			else
			{
			
				$("#div_apply_step3").hide();
				$("#div_apply_step1_5").hide();
				$("#div_apply_step2").show();

				$("#my_modal_title").html("간편 예약(3/3)");
			}
		}
	}
	function to_step3()
	{
		if(check_valid())
		{

			$("#div_apply_step1").hide();
			$("#div_apply_step1_5").hide();
			$("#div_apply_step2").hide();
			$("#div_apply_step3").show();
			$("#my_modal_title").html("간편 예약(4/4)");
		}
	}

	var price1_total=0;
	var price1_currency="KRW";
	var price2_total=0;
	var price2_currency="EUR";
	var last_the_row="-1";
	
	function chg_select(the_row)
	{
		if($("#price1_currency_"+the_row).length)
			price1_currency=$("#price1_currency_"+the_row).html();

		if($("#price2_currency_"+the_row).length)
			price2_currency=$("#price2_currency_"+the_row).html();

		xhtml="";
		v_policy_id_cnts="";
		price1_total=0;
		price2_total=0;
		total_cnt=0;
		coupon_apply_count=0;
		for(idx=0;idx<15;idx++)
		{

			if($("#memcnt_"+idx).length)
			{
				ppcnt=eval($("#memcnt_"+idx).val());
				ppserial=$("#ppserial_"+idx).val();
				v_policy_id_cnts=ppcnt;

				total_cnt+=ppcnt;

				if($("#price1_"+idx).length)
				{
					price1_v=eval($("#price1_"+idx).html());
					price1_total+=price1_v*ppcnt;



					if(coupon_min_price>0)
					{
						if(price1_v>coupon_min_price)	
						{
							coupon_apply_count+=ppcnt;
						}


					}
					else
					{
						if(price1_v>90000)	
						{
							coupon_apply_count+=ppcnt;
						}

					}


				}
				if($("#price2_"+idx).length)
				{
					price2_v=eval($("#price2_"+idx).html());
					price2_total+=price2_v*ppcnt;
				}
			}
		}
		
		
		if(price1_total>0&&price2_total>0)
		{
			if(discount_amount>0)
			{
				n_price1_total=price1_total;
				if(price1_currency=="KRW")
				{
					n_price1_total=n_price1_total-discount_amount*coupon_apply_count;
					if(n_price1_total<0)
						n_price1_total=0;
				}
				xhtml="예약금:"+n_price1_total+price1_currency+" + 현지지불금: "+price2_total+price2_currency;
			}
			else
			{
				xhtml="예약금:"+price1_total+price1_currency+" + 현지지불금: "+price2_total+price2_currency;
			}
		}
		else if(price1_total>0)
		{
			if(discount_amount>0)
			{
				n_price1_total=price1_total;
				if(price1_currency=="KRW")
				{

					n_price1_total=n_price1_total-discount_amount*coupon_apply_count;
					if(n_price1_total<0)
						n_price1_total=0;
				}
				xhtml="예약금:"+n_price1_total+price1_currency;
			}
			else
			{
				xhtml="예약금:"+price1_total+price1_currency;
			}
		}
		else if(price2_total>0)
		{
			xhtml="현지지불금:"+price2_total+price2_currency;
		}

		$("#total_price").html(xhtml);

		policy_id_cnts=v_policy_id_cnts;
		price_total=xhtml;
		
		last_the_row=the_row;
		

//		if(total_cnt>max_cnt)
//		{
//			func_alert("최대 예약가능인원을 초과합니다. 인원을 다시 선택해주세요.");
//			reset();
//		}
		

	}


	//max_cnt= // 날짜선택때 입력해두어야함.
	function reset()
	{


		for(idx=0;idx<15;idx++)
		{

			if($("#memcnt_"+idx))
			{
				$("#memcnt_"+idx).val(0);
			}
		}	


		$("#total_price").html("");

		policy_id_cnts="";
		price_total="";
		discount_amount=0;
		cur_coupon="";


	}

	var cur_y;
	var cur_m;
	var cur_d;
	var policy_id_cnts="";
	var price_total="";

	var weekday = new Array(7);
	weekday[0] =  "일";
	weekday[1] = "월";
	weekday[2] = "화";
	weekday[3] = "수";
	weekday[4] = "목";
	weekday[5] = "금";
	weekday[6] = "토";

	var discount_amount=0;
	var coupon_min_price=0;
	var cur_coupon="";

	function apply_coupon(theV)
	{

		if(theV!="")
		{
			theVArr=theV.split('|');

			cur_coupon=theVArr[0];
			discount_amount=theVArr[1]*1;
			coupon_min_price=theVArr[2]*1;
		}
		else
		{
			cur_coupon="";
			discount_amount=0;


			if(price1_total>0&&price2_total>0)
			{

				xhtml="예약금:"+price1_total+price1_currency+" + 현지지불금: "+price2_total+price2_currency;
				$("#total_price").html(xhtml);

			}
			else if(price1_total>0)
			{
				xhtml="예약금:"+price1_total+price1_currency;
				$("#total_price").html(xhtml);
			}

		}

		if(last_the_row!="-1")
		{

			chg_select(last_the_row);

		}
	}
	
	function fapplynext(pos,y,m,d)
	{
		
		if(selected_date_list=="")
		{
			func_alert("하나 이상의 날짜를 선택해주세요.");
		}
		else
		{

		cur_y=y;
		cur_m=m;
		cur_d=d;
		$.getJSON( "/stubbyPlanner/market/get_price_policy.jsp?tourserial="+ tourserial +"&pos="+pos+"&y="+y+"&m="+m+"&d="+d, function( data ) {
			if(data)
			{

				thtml='<div>';
				price_list=data.price_list;
				for(i=0;i<price_list.length;i++)
				{
					thtml+='<div style="padding-top:5px;padding-bottom:5px;border-bottom:1px solid #c0c0c0">';



					if(price_list[i].price2==0)
					{
						if(price_list[i].price1_currency=="KRW")
							thtml+='<div style="width:70%;float:left;font-size:10pt;color:#fff">'+price_list[i].policyname+'<br><span id="price1_'+i+'">'+price_list[i].price1+'</span><span id="price1_currency_'+i+'">'+price_list[i].price1_currency+'</span></div>';
						else
							thtml+='<div style="width:70%;float:left;font-size:10pt;color:#fff">'+price_list[i].policyname+'<br><span id="price1_'+i+'">'+price_list[i].price1_KRW+'</span><span id="price1_currency_'+i+'">KRW</span> ( '+price_list[i].price1+' '+price_list[i].price1_currency+' )</div>';
					}
					else
					{

						if(price_list[i].price1_currency=="KRW")
							thtml+='<div style="width:70%;float:left;font-size:10pt;color:#fff">'+price_list[i].policyname+'<br><span id="price1_'+i+'">'+price_list[i].price1+'</span><span id="price1_currency_'+i+'">'+price_list[i].price1_currency+'</span>+<span id="price2_'+i+'">'+price_list[i].price2+'</span><span id="price2_currency_'+i+'">'+price_list[i].price2_currency+'</span></div>';
						else
							thtml+='<div style="width:70%;float:left;font-size:10pt;color:#fff">'+price_list[i].policyname+'<br><span id="price1_'+i+'">'+price_list[i].price1_KRW+'</span><span id="price1_currency_'+i+'">KRW</span> ( '+price_list[i].price1+' '+price_list[i].price1_currency+' ) +<span id="price2_'+i+'">'+price_list[i].price2+'</span><span id="price2_currency_'+i+'">'+price_list[i].price2_currency+'</span></div>';
					}
					thtml+='<div style="width:30%;float:left;">';
					thtml+='<input type="hidden" id="ppserial_'+i+'" value="'+price_list[i].price_seq+'">';


					thtml+='<select name="member_cnt" id="memcnt_'+i+'" class="form-control" onchange="chg_select('+i+');">';

					for(j=0;j<=price_list[i].available_cnt;j++)
					{
						thtml+='<option value="'+j+'">'+j+'</option>';
					}
					
					thtml+='</select>';
					thtml+='</div>';
					thtml+='<div style="clear:both"></div>';
					thtml+='</div>';
				}

				thtml+='<div style="clear:both"></div>';
				thtml+='</div>';
/* 
				coupon_list=data.coupon_list;
				if(coupon_list.length>0)
				{
					thtml+='<div style="padding-top:5px;padding-bottom:5px;border-bottom:1px solid #c0c0c0">';
					
					thtml+='<div style="width:100%;float:left;">';

					thtml+='<select name="coupon" id="mycoupon" class="form-control" onchange="apply_coupon(this.value);">';
					thtml+='<option value="">---쿠폰 선택---</option>';	
				for(i=0;i<coupon_list.length;i++)
				{
					thtml+='<option value="'+coupon_list[i].serial+'|'+coupon_list[i].discount_amount+'|'+coupon_list[i].min_price+'">'+coupon_list[i].coupon_name+'('+coupon_list[i].valid_until_txt+')</option>';	
				}
					thtml+='</select>';
					thtml+='</div>';
					thtml+='<div style="clear:both"></div>';
					thtml+='</div>';

				}
 */
				thtml+='<div style="padding-top:5px;padding-bottom:5px;border-bottom:1px solid #c0c0c0">';
				thtml+='<div style="width:100%;float:left;font-size:10pt;color:#fff">합계 : <div id="total_price">0 KRW</div></div>';
				thtml+='<div style="clear:both"></div>';
				thtml+='</div>';

				$("#div_price_options").html(thtml);

				$("#div_apply_step1").hide();
				$("#div_apply_step1_5").show();
			}
		});



		}
		$("#selected_date_list").val(selected_date_list);
		tdx=new Date(y,m-1,d,0,0,0,0);
		xhtml=selected_date_list.replace(/,/g,"일, ").replace(/2017-/g,"").replace(/2018-/g,"").replace(/2019-/g,"").replace(/-/g,"월 ")+"일("+weekday[tdx.getDay()+bias]+")";

		$("#div_selected_date_list").html(xhtml);
		$("#div_selected_date_list2").html(xhtml);

		$("#my_modal_title").html("간편 예약(2/3)");

	}
	
	function check_valid()
	{
		resv_name=$("#input_resv_name").val();
		phone=$("#input_phone").val();
		email=$("#input_email").val();


		is_ok=true;

		if(resv_name.length<2)
		{
			func_alert("예약자명을 반드시 2자이상 써주세요");
			is_ok=false;
		}
		else
		{

			if(!$("#ck_ok").is(':checked'))
			{
				func_alert("개인정보 동의 항목을 체크하지 않으면 예약을 진행할 수 없습니다.");
				is_ok=false;
		
			}
			else
			{
				if(phone.length<10)
				{
					func_alert("유효한 핸드폰번호를 반드시 써주세요");
					is_ok=false;
				}
			
				if(email.indexOf("@")<1)
				{
					func_alert("유효한 이메일주소를 써주세요");
					is_ok=false;
				}
			}
		}
		return is_ok;	

	}
	
	function ss(id, pid)
	{
		//alert(pid);
		var id = id;
		var pid = pid;
// 		return "/stubbyPlanner/guide/reservation.do";
		window.location="/stubbyPlanner/guide/r_succ.do?serial="+id+"&pseq="+pid;

	$.ajax({
		url: "/stubbyPlanner/WEB-INF/view/guide/reservation_ok.jsp?"+id,
		dataType:'json',		
	}); 


	}
	
	
	onRequest=false;
	
	function makeReservation()
	{
		
		if(onRequest)
		{
			func_alert("현재 예약처리중입니다. 조금 기다려 주세요...");
		}
		else
		{
			/* 
			alert("else"); */
		if(!check_valid())return;
		
		resv_name=$("#input_resv_name").val();
		phone=$("#input_phone").val();
		email=$("#input_email").val();
// 		msg=$("#input_msg").val();
		msg="메세지메시ㅔ지";
		kakao=$("#input_kakao").val();
		onRequest=true;
		/* 
		alert(resv_name);
		alert(phone);
		alert(email);
		alert(msg);
		alert(kakao);	
 */
		
		$.ajax({
			 url: "/stubbyPlanner/api/guide/insert_reservation.jsp",
			 type: "POST",
			 dataType: 'json',
			 data: {
				yy:g_y,
				mm:g_m,
				dd:g_d,
				comid:' ${detail.mainInfo[0].pt_email}',
				tourserial:tourserial,
				resv_name:resv_name,
				policy_id_cnts:policy_id_cnts,
				phone:phone,
				kakao:kakao,
				email:email,	
				userid:'${authUser.member_id}',
				msg:msg,
				price_total:price_total,
				discount:discount_amount,
				from_app:'0'

			  },
			  success: function( data ) {
				onRequest=false;

					 //alert("tt");
				if(data!=null){
					//alert("success if");
// 				  $.each(data.nid, function(i, item){
// 					 if(data.result=="ERR")
// 						{
// 							func_alert(data.msg);
// 						}
// 						else
// 						{
							//alert("successelse");
// 							func_alert('예약이 완료되었습니다. 이메일주소와 SMS로 발송된 입금정보에 따라 입금해주세요. 예약하신 투어에 대한 입금확인, 확정여부는 [비회원 예약내역] / [내예약]메뉴에서 확인가능합니다.');
							closeMyModal();
							ss(data.nid, data.pid);
// 						}
// 				  });
				}	 
				//onRequest=false;
			  }

				
		});


		}

	}

	
	var selected_date_list="";
	var g_y;
	var g_m;
	var g_d;
	function selDate(thedate,idx,pos)
	{

		reset();
		if(selected_date_list.indexOf(thedate)==-1)
		{
			if(selected_date_list.length>22)
			{
				func_alert("최대 3개의 날짜만 선택 할 수 있습니다.");
				return;
			}

			if(selected_date_list=="")
				selected_date_list=thedate;
			else
				selected_date_list=selected_date_list+","+thedate;

			

			var date1 = new Date("2019-06-10");
			var date2 = new Date(thedate);
			
			var timeDiff = Math.abs(date1.getTime() - date2.getTime());
			var diffDays = Math.ceil(timeDiff / (1000 * 3600 * 24)); 



			if(diffDays>1)
			{
				$("#notice_long_time").show();
			}
			else
			{
				$("#notice_long_time").hide();
				func_alert("1일 이내의 예약입니다. 현지사정에따라 자동취소될 수도 있음을 양해해주시기 바랍니다.")
			}

		}
		else
		{
			if(selected_date_list.length<12)
			{
				selected_date_list="";
			}
			else
			{
				selected_date_list=selected_date_list.replace(','+thedate+',',',');
				selected_date_list=selected_date_list.replace(thedate+',','');
				selected_date_list=selected_date_list.replace(','+thedate,'');
			}
			
		}
		
		
		if($("#cd_"+idx).hasClass('calendar_day_selected'))
		{
			$("#cd_"+idx).removeClass('calendar_day_selected');
			$("#cd_"+idx).addClass('calendar_day');
		}
		else
		{
			$("#cd_"+idx).removeClass('calendar_day');
			$("#cd_"+idx).addClass('calendar_day_selected');

		}

		var xdate=new Date(thedate);
		g_y=xdate.getFullYear();
		g_m=xdate.getMonth()+1;
		g_d=xdate.getDate()+bias;
		
		fapplynext(pos,g_y,g_m,g_d);
	}

	function func_confirm(msg)
	{
		
			func_alert(msg);
			is_ok=true;
			return is_ok;
		
		
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


	
	
	function openMyModal()
	{
	
	
		$("#mymodal").show();
		$("body").addClass("modal-open");
		
		drawMonth(cur_year, cur_month);
	
		ga('send','event','tour','reserve.open', tourserial);
	
	}
	
	
	function closeMyModal()
	{
		$("#mymodal").hide();
		$("body").removeClass("modal-open")


	
	    			
	}

    		</script>
    	</div>
    </div>
    </font>
    </b>
    
    
    
    <jsp:include page="/WEB-INF/layout/advertisement.jsp"></jsp:include>

	<jsp:include page="/WEB-INF/layout/footer_large.jsp"></jsp:include>
    
	

<script>
	$(document).ready(function() {
		showCourseDetail();
		
		// 묶음상품 리스트 카운팅
        var prdCount = $('.bundle_prd li.prd_item').length;
        $('.prd_count').text('(' + prdCount + ')');
        
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
	
	
	//비로그인 시 찜하기 눌렀을 때 로그인창으로
	function toggleLike(){
		window.location="/stubbyPlanner/common/login.do";
	}
	
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
    
 	// 이미지 스와이핑
    var mainVisual = new Swiper('.mainVisual', { direction:'horizontal', slidesPerView:1, loop:true, pagination: { el:'.mainVisual-pagination', type:'fraction' }, navigation: { nextEl:'.mainVisual-button-next', prevEl:'.mainVisual-button-prev' }});

    var more_prd = new Swiper('.more_prd', { slidesPerView:'auto', slidesPerGroup:4, freeMode:true, direction:'horizontal', navigation: { nextEl: '.more_prd-button-next', prevEl: '.more_prd-button-prev' }, pagination: { el: '.more_prd-pagination', type:'fraction' },
        breakpoints: { 1024: { slidesPerGroup:1 }}});
    
    menuHeight = $(".stu_nav_container").height();

    
    
 	// 원페이지 헤더 고정
    window.onscroll = function() {myFunction()};
    smint = $('.stu_nav_container');
    
    myOffset = smint.height();

    function myFunction() {
        var scrollTop = $(window).scrollTop()+myOffset;
        var stickyTop = smint.offset().top;

        var headerHeight = $('header').height();
        var bannerHeight = $('.stu_top_banner').outerHeight(true);
        var fixedHeight = (headerHeight + bannerHeight + menuHeight)

        // if we scroll more than the navigation, change its position to fixed and add class 'fxd', otherwise change it back to absolute and remove the class
        if (scrollTop >= fixedHeight) {


            smint.css({ 'position':'fixed','top':0,'left':0 }).addClass('fxd');

            $('body').css('padding-top', menuHeight );
            $('.stu_nav_container .stu_btnBox a').addClass('on');
        } else {
            smint.css('position', 'relative').removeClass('fxd');
            //remove the padding we added.
            $('body').css('padding-top', '0' );
            $('.stu_nav_container .stu_btnBox a').removeClass('on');
        }
    }
    
 	// 후기 더 불러오기
    $(window).on('load', function () {
        load('#stu_js-load', '3');

        $(".stu_js-btn-wrap .stu_js-btn").on("click", function () {
            load('#stu_js-load', '3', '.stu_js-btn-wrap');
        })
    });
 	
    function load(id, cnt, btn) {
        var contList = id + " .stu_js-load:not(.active)";
        var contLength = $(contList).length;
        var contTotal_cnt;
        if (cnt < contLength) {
            contTotal_cnt = cnt;
        } else {
            contTotal_cnt = contLength;
            $('.stu_js-btn').hide()
        }
        $(contList + ":lt(" + contTotal_cnt + ")").addClass("active");
    }

	
	
</script>


<div id="alert_modal" style="display:none; position:fixed; top:0; left:0; right:0; bottom:0; background:rgba(0,0,0,.15); z-index:99999;">
	<div style="position:relative; top:30%; left:50%; transform:translate(-50%, -50%); width:320px; border-radius:2px; box-shadow:0 0 0 1px rgba(0,0,0,.1), 0 2px 8px 0 rgba(0,0,0,.25); background:#fff;">
    	<div style="position:relative; height:42px; padding:0 18px; background:#f5f5f7; font-size:15px; font-weight:normal; line-height:42px; color:#4a4a4a;">꼭 확인하세요.
        	<a href="javascript:closeAlertModal()" class="btn-u btn-u-xs" style="position:absolute; top:50%; right:20px; transform:translateY(-50%); width:22px; height:22px; background-image:url(https://d3b39vpyptsv01.cloudfront.net/0/0/1548911555427eWBbProQMk.png); background-size:cover;background-color:transparent"></a>
        </div>
        <div id="alert_modal_msg" style="padding:16px 24px; font-size:15px; font-weight:normal; line-height:1.4; word-break:keep-all; letter-spacing:0; text-align:center; color:#4a4a4a;"></div>
        <div style="padding:0 24px 20px; text-align:center;">
         	<a href="javascript:closeAlertModal()" class="btn-u btn-u-xs" style="border-radius:3px; background:#8f8f8f">
            	<font style="font-size:16px; font-weight:normal; line-height:42px; color:#fff">확인</font>
            </a>
    	</div>
	</div>
</div>



<script src="<%= contextPath %>/externalData/js2/header_footer3.js" type="text/javascript"></script>

</body>
</html>