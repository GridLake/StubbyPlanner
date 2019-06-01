<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/include.jspf" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>유럽여행 계획 의뢰</title>
    <!-- meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black" >


    <!-- CSS/JavaScript -->
    <link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/css2/swiper.min.css">
    <link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/css2/common.css">
    <link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/css2/header_footer.css">
    <link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/consulting/css/event_consulting2.css">
  <link rel="stylesheet" type="text/css" href="<%= contextPath %>/externalData/market/css/tourHome11.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- swiper.min.js : 이미지슬라이더 -->
    <script src="<%= contextPath %>/externalData/js2/swiper.min.js" type="text/javascript"></script>
    <!-- header/footer -->
    <script src="<%= contextPath %>/externalData/js2/header_footer.js" type="text/javascript"></script>
    <script src="<%= contextPath %>/externalData/js/stubbyapp.js" type="text/javascript"></script>

<script src="https://www.google.com/jsapi"></script>

<script>
 (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
 (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
 m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
 })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
 ga('create', 'UA-913663-1', 'auto');
 ga('send', 'pageview');
 ga('send','event','consulting','pageview','');
</script>
</head>
<body>
<div class="stu_wrap">


<jsp:include page="/WEB-INF/layout/header_consulting.jsp"></jsp:include>

    <!--메인영역_Str-->


    <main class="stu_clearfix">




<section class="stu_top_banner">
            <div class="stu_inner_wrap">
                <img class="on-mobile" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1548384995639YFpB5vJIts.jpg">
                <img class="on-tablet" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1548385150474yXrs7fjZnf.jpg">
                <img class="on-pc" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1548385086148GU0F517dAO.jpg">
                <div class="main_comment">
                    <div class="txt_box">
                        <p><span>복잡한 맞춤 유럽여행 </span>전문가에게 맡기고,<br/><span>시간과 비용</span>을 줄여보세요!</p>
                    </div>
                </div>
            </div>
        </section>





        <section class="stu_consulting_example">
            <div class="stu_inner_wrap">

                <div class="titArea">
                    <h3 class="stu_title">유럽여행계획, 미루기 보단, 맡기는게 경비 절감에 도움됩니다.</h3>
                    <p>첫 유럽 자유여행이라면 미리 전문가에게 맡기는게 오히려 실제 경비 절감에 도움이 됩니다. 2~3개월전에 맡기면 가격변동이 큰 IN/OUT 항공권을 제외하고도... 현지교통+숙박+투어비의 17%를 절감할 수 있습니다.</p>
                </div>
	<br>
                <div class="titArea">
                    <h3 class="stu_title"> 진짜 맞춤여행을 경험하세요.</h3>
                    <p> 스투비플래너 유럽을 경험한 꼼꼼한 70만명의 데이터를 활용해 당신에게 딱 맞춰진 여행을 제안드립니다.  </p>
                </div>
	<br>
                <div class="titArea">
                    <h3 class="stu_title"> 이런 도움을 받게 됩니다.</h3>
                    <p>우선 선택하신 경험을 잘할 수 있는 최적의 루트를 제안하고 상담후 확정하게 됩니다. 루트 확정후에는 교통편을 손쉽게 예약할 수 있도록 모든 정보를 제공합니다.  상담후 일정을 짜드리며, 스마트폰으로 볼 수 있게 모두 정리해서 스투비플래너에 입력해드립니다.</p>
                </div>

                <div class="titArea">
                    <h3 class="stu_title"> 전문 플래너는 어떤 분들인가요?</h3>
                    <p>하나투어, 내일투어, 샬레트레블등 최고의 유럽 전문 여행사에서 5~7년이상 경력을 가진 베테랑 전문가들과 assistant가 팀을 이뤄 당신의 여행을 준비합니다.</p>
                </div>


            
            
            </div>
        </section>


      <section class="stu_contact">
            <div class="stu_inner_wrap">

<a href="<%= contextPath %>/consulting/charge_consulting_step1.do?trip_id=&needlogin=&l="  class="btn_contact">맞춤여행 의뢰 (55,200원 부터) >  </a>

            </div>
        </section>
        
<%--         
<!---

   <section class="stu_swiper-section select_theme">
            <div class="stu_inner_wrap">
                <div class="titArea">
                    <h3 class="stu_title">당신만의 맞춤 여행</h3>
                    <p>꿈꾸던 유럽을 실제 여행으로!</p>
                </div>
                <div class="swiper-container swiper-items">
                    <ul class="swiper-wrapper">
                        <li class="swiper-slide">
                            <div class="prd_item">
                                <a href="#">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1555322395111WWO0NzLqxf.JPG">
                                    </div>
                                </a>
                            </div>
                            <div class="prd_item">
                                <a href="#">
                                    <div class="imgArea">
                                        <img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1555322397196hUaAX4nHbv.JPG"/>
                                    </div>

                                </a>
                            </div>

                            <div class="prd_item">
                                <a href="#">
                                    <div class="imgArea">
                                        <img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1555322397920yIBuLva4Jp.JPG"/>
                                    </div>

                                </a>
                            </div>
                        </li>
                    </ul>
                    <div class="swiper-scrollbar"></div>
                </div>
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>

            </div>
        </section>

   <section class="stu_swiper-section select_theme">
            <div class="stu_inner_wrap">
                <div class="titArea">
                    <h3 class="stu_title">맞춤 소도시 추천</h3>
                    <p>여행목적과 시기에 맞는 근교/소도시 추천</p>
                </div>
                <div class="swiper-container swiper-items">
                    <ul class="swiper-wrapper">
                        <li class="swiper-slide">
                            <div class="prd_item">
                                <a href="#">
                                    <div class="imgArea">
                                        <img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1554787283978eCZ3zpKFY0.jpg" alt=""/>
                                    </div>
                                    <div class="textArea">
                                        <p># 돌로미티,이탈리아</p>
                                        <span>아이들과 가족여행, 신혼여행</span>
                                    </div>
                                </a>
                            </div>
                            <div class="prd_item">
                                <a href="#">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1554787285814pMQjFNirWq.jpg" alt=""/>
                                    </div>
                                    <div class="textArea">
                                        <p>#그란델발트, 스위스</p>
                                        <span>여자혼자, 가족여행</span>
                                    </div>
                                </a>
                            </div>

                            <div class="prd_item">
                                <a href="#">
                                    <div class="imgArea">
                                        <img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1554787286388xRSzcwyNnD.jpg" alt=""/>
                                    </div>
                                    <div class="textArea">
                                        <p>#사르투니아,이탈리아</p>
                                        <span>렌트카여행, 부모님과 가족여행</span>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class="swiper-slide">
                            <div class="prd_item">
                                <a href="#">
                                    <div class="imgArea">
                                        <img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1554787285230CMQ1x42WaI.jpg" alt=""/>
                                    </div>
                                    <div class="textArea">
                                        <p>#밀로스섬,그리스</p>
                                        <span>솔로여행, 신혼여행</span>
                                    </div>
                                </a>
                            </div>



                            <div class="prd_item">
                                <a href="#">
                                    <div class="imgArea">
                                        <img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1554787284611UEYQTKkdxc.jpg" alt=""/>
                                    </div>
                                    <div class="textArea">
                                        <p>#마요르카 섬,스페인</p>
                                        <span>신혼여행, 여성그룹</span>
                                    </div>
                                </a>
                            </div>





                            <div class="prd_item">
                                <a href="#">
                                    <div class="imgArea">
                                        <img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1554787282456WMOd24l7j9.jpg" alt=""/>
                                    </div>
                                    <div class="textArea">
                                        <p>#리크위르,프랑스</p>
                                        <span>솔로여행, 여성그룹</span>
                                    </div>
                                </a>
                            </div>
                        </li>
                    </ul>
                    <div class="swiper-scrollbar"></div>
                </div>
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>

            </div>
        </section>

-->


<!---
   <section class="stu_swiper-section select_theme">
            <div class="stu_inner_wrap">
                <div class="titArea">
                    <h3 class="stu_title">맞춤 숙소 추천</h3>
                    <p>럭셔리 리조트부터 한인민박까지 여행목적에 꼭 맞는 숙소추천</p>
                </div>
                <div class="swiper-container swiper-items">
                    <ul class="swiper-wrapper">
                        <li class="swiper-slide">
                            <div class="prd_item">
                                <a href="#">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/155478016250005yRzc6bkj.jpg" alt="빌라호네그"/>
                                    </div>
                                    <div class="textArea">
                                        <p># 빌라호네그 </p>
                                        <span>루체른,스위스</span>
                                    </div>
                                </a>
                            </div>
                            <div class="prd_item">
                                <a href="#">
                                    <div class="imgArea">
                                        <img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/15547804851885zLCuo0p3v.jpg" alt="캠브리안"/>
                                    </div>
                                    <div class="textArea">
                                        <p>#호텔 캠브리안</p>
                                        <span>아델보덴, 스위스</span>
                                    </div>
                                </a>
                            </div>

                            <div class="prd_item">
                                <a href="#">
                                    <div class="imgArea">
                                        <img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1554785013112H9LGiXQIXT.jpg" alt="샹그리아"/>
                                    </div>
                                    <div class="textArea">
                                        <p>#호텔 샹그리아</p>
                                        <span>파리, 프랑스</span>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class="swiper-slide">
                            <div class="prd_item">
                                <a href="#">
                                    <div class="imgArea">
                                        <img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1554784518552OIF47P1Bp4.jpg" alt=""/>
                                    </div>
                                    <div class="textArea">
                                        <p>#호텔 르 폰타넬레</p>
                                        <span>토스카나, 이탈리아</span>
                                    </div>
                                </a>
                            </div>



                            <div class="prd_item">
                                <a href="#">
                                    <div class="imgArea">
                                        <img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1554785011655k5Imx10UTe.jpg" alt=""/>
                                    </div>
                                    <div class="textArea">
                                        <p>#Amberley Castle </p>
                                        <span>런던, 영국</span>
                                    </div>
                                </a>
                            </div>





                            <div class="prd_item">
                                <a href="#">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/15547855541513igyNOuZZP.jpg" alt=""/>
                                    </div>
                                    <div class="textArea">
                                        <p>#호텔 알폰소 13세 럭셔리 컬렉션</p>
                                        <span>세비야, 스페인</span>
                                    </div>
                                </a>
                            </div>
                        </li>
                    </ul>
                    <div class="swiper-scrollbar"></div>
                </div>
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>

            </div>
        </section>

   <section class="stu_swiper-section select_theme">
            <div class="stu_inner_wrap">
                <div class="titArea">
                    <h3 class="stu_title">맞춤 교통편 추천</h3>
                    <p>항공, 기차는 물론 렌트카와 캠핑카 그리고 투어와 결합된 이동편까지</p>
                </div>
                <div class="swiper-container swiper-items">
                    <ul class="swiper-wrapper">
                        <li class="swiper-slide">
                            <div class="prd_item">
                                <a href="#">
                                    <div class="imgArea">
                                        <img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1554800436414yIWcO2GUtW.jpeg" alt=""/>
                                    </div>
                                    <div class="textArea">
                                        <p># Private VAN</p>
                                        <span>대가족여행,단체</span>
                                    </div>
                                </a>
                            </div>

                            <div class="prd_item">
                                <a href="#">
                                    <div class="imgArea">
                                        <img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1554799277736YqrzhqpOKg.jpg" alt=""/>
                                    </div>
                                    <div class="textArea">
                                        <p>#렌트카</p>
                                        <span>신혼여행,소규모 가족</span>
                                    </div>
                                </a>
                            </div>


                            <div class="prd_item">
                                <a href="#">
                                    <div class="imgArea">
                                        <img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1554798844629Cnf0ces49x_m.jpg" alt=""/>
                                    </div>
                                    <div class="textArea">
                                        <p>#모터바이크</p>
                                        <span>솔로, 남성그룹</span>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class="swiper-slide">
                            <div class="prd_item">
                                <a href="#">
                                    <div class="imgArea">
                                        <img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1554798879131FTSh6g9C1b.jpg" alt=""/>
                                    </div>
                                    <div class="textArea">
                                        <p>#크루즈</p>
                                        <span>신혼, 부모님과</span>
                                    </div>
                                </a>
                            </div>

                            <div class="prd_item">
                                <a href="#">
                                    <div class="imgArea">
                                        <img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1554798880427xth98L1TD4.jpg" alt=""/>
                                    </div>
                                    <div class="textArea">
                                        <p>#벨몬트 열차</p>
                                        <span>럭셔리</span>
                                    </div>
                                </a>
                            </div>



                            <div class="prd_item">
                                <a href="#">
                                    <div class="imgArea">
                                        <img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1554800436926kj45Jdh3wo.jpg" alt=""/>
                                    </div>
                                    <div class="textArea">
                                        <p>#현지항공 </p>
                                        <span>유럽전역</span>
                                    </div>
                                </a>
                            </div>




                        </li>
                    </ul>
                    <div class="swiper-scrollbar"></div>
                </div>
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>

            </div>
        </section>

   <section class="stu_swiper-section select_theme">
            <div class="stu_inner_wrap">
                <div class="titArea">
                    <h3 class="stu_title">맞춤 일정 추천</h3>
                    <p>여행지에서 특별한 경험을 제안하는 일정 추천</p>
                </div>
                <div class="swiper-container swiper-items">
                    <ul class="swiper-wrapper">
                        <li class="swiper-slide">
                            <div class="prd_item">
                                <a href="#">
                                    <div class="imgArea">
                                        <img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/15547882174001GN1hC0tyZ.jpg" alt=""/>
                                    </div>
                                    <div class="textArea">
                                        <p># 성샤펠 성당,파리</p>
                                        <span>여자솔로, 여성그룹</span>
                                    </div>
                                </a>
                            </div>

                            <div class="prd_item">
                                <a href="#">
                                    <div class="imgArea">
                                        <img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/15547882191179bicjMLTHJ.jpg" alt=""/>
                                    </div>
                                    <div class="textArea">
                                        <p>#크리스탈궁전(레티로) 마드리드</p>
                                        <span>신혼여행, 여자솔로, 여성그룹</span>
                                    </div>
                                </a>
                            </div>


                            <div class="prd_item">
                                <a href="#">
                                    <div class="imgArea">
                                        <img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1554787278640THe5FFNHH0.jpg" alt=""/>
                                    </div>
                                    <div class="textArea">
                                        <p>#먹물 빠에아</p>
                                        <span>바르셀로나, 스페인</span>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class="swiper-slide">
                            <div class="prd_item">
                                <a href="#">
                                    <div class="imgArea">
                                        <img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/15547882197470XNcjolcP4.jpg" alt=""/>
                                    </div>
                                    <div class="textArea">
                                        <p>#세체니 온천</p>
                                        <span>부다페스트, 헝가리</span>
                                    </div>
                                </a>
                            </div>

                            <div class="prd_item">
                                <a href="#">
                                    <div class="imgArea">
                                        <img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1554788221177hpRo9THhDi.jpg" alt=""/>
                                    </div>
                                    <div class="textArea">
                                        <p>#오페라 가르니에</p>
                                        <span>파리, 프랑스</span>
                                    </div>
                                </a>
                            </div>



                            <div class="prd_item">
                                <a href="#">
                                    <div class="imgArea">
                                        <img class="fh" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1554789001528TQz3kgRM0r.jpg" alt=""/>
                                    </div>
                                    <div class="textArea">
                                        <p>#티비다보 </p>
                                        <span>바르셀로나,스페인</span>
                                    </div>
                                </a>
                            </div>




                        </li>
                    </ul>
                    <div class="swiper-scrollbar"></div>
                </div>
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>

            </div>
        </section>
--->
 --%>
        <section class="stu_consulting_example" style="">
            <div class="stu_inner_wrap" style="">

                <div class="titArea">
                    <h3 class="stu_title">완성된 여행은 모바일로 확인가능!</h3>
                    <p>여행루트 및 일정표, 예약내역정보, 셀프 가이드북. 지도와 연계해 확인가능</p>
                </div>

    <ol style="padding-top:0px;margin-top:0px">


                    <li>
                        <img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1546942848355jbe9Cdc2gR.jpg" alt=""/>
                    </li>
                    <li>
                        <img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1546942847642pbCxpFxxKw.jpg" alt=""/>
                    </li>
                    <li>
                        <img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/1546942845853O7YnobpwXo.jpg" alt=""/>
                    </li>

	

                  <li style="width:100%;margin-top:190px">
                        <img class="fw" src="<%= contextPath %>/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/0/0/15552972287749XU3nWLZI5.jpg" alt=""/>
                    </li>

                    <li class="on-mobile">
                        <img class="fw" src="<%= contextPath %>/externalData/consulting/images/sample/consulting_step04-mobile.jpg" alt=""/>
                    </li>
                    <li class="on-pc">
                        <img class="fw" src="<%= contextPath %>/externalData/consulting/images/sample/consulting_step04-pc.jpg" alt=""/>
                    </li>
    


                </ol>
	</div>
        </section>





        <section class="stu_consulting_example">
            <div class="stu_inner_wrap">
                <div class="titArea">
                    <h3 class="stu_title">여행사 맞춤여행 / 견적서비스와 진행방식이 다른 가요?</h3>
                    <p>여행사 견적서비스는 항공, 호텔, 투어금액에 수수료를 합산한 가격을 입금받고 진행하므로 개별 투어, 호텔에 대한 금액이 불투명합니다. 신혼여행의 경우, 일반적으로 1인당 수수료가 50~100만원 정도입니다. 이에 반해 스투비의 플래너서비스는 별도의 계획 비용을 받으며 나머지는 고객님의 입장에서 가장 합리적인 가격을 찾아 연결해드립니다.</p>
                </div>
<br>
                <div class="titArea">
                    <h3 class="stu_title">어떤 분들이 주로 이용하고 있나요?</h3>
                    <p>합리적인 가격에 맞춤 신혼여행을 떠나려는 신혼객은 물론 처음 유럽을 가는 20대, 패키지로 유럽을 이미 경험했던 60대 고객까지 다양한 연령층의 여행자들이 이용하고 있습니다.<br>만족도가 높았던 분들의 공통점은 유럽여행에 자신만의 목적이 있고, 매우 바쁜 분들이었다는 점입니다.</p>
                </div>

<!---
<br>
                <div class="titArea">
                    <h3 class="stu_title">언제쯤 신청하는게 좋을까요?</h3>
                    <p>지금쯤 항공권을 사야겠다는 생각이 들때 혹은 항공권을 구매한 직후가 이 서비스를 시작하기 가장 좋은 시기입니다.</p>
                </div>


--->
            
            </div>
        </section>

        <section class="stu_contact">
            <div class="stu_inner_wrap">

<a href="<%= contextPath %>/consulting/charge_consulting_step1.do?trip_id=&needlogin=&l="  class="btn_contact">맞춤여행 의뢰 (55,200원 부터) >  </a>


            </div>
        </section>

        <section class="stu_consulting_review">
            <div class="stu_inner_wrap">
                <div class="titArea">
                    <h3 class="stu_title">이용자 후기</h3>
                </div>
                <ul class="review_wrap">
                    <li class="review-left">
                        <figure>
                            <img class="fw" src="<%= contextPath %>/externalData/consulting/images/sample/user01.jpg" alt=""/>
                        </figure>
                        <figcaption class="bollon-right">
                            <p class="name">40대 직장인 │ 솔로여행</p>
                            <p class="ment">직접 준비하려다 너무 시간이 없어서 신청했는데 몇번의 통화로 원하는 여행계획이 완성되고 예약까지 도와주셔서 쉽게 했어요!</p>
                        </figcaption>
                    </li>


                    <li class="review-right">
                        <figcaption class="bollon-right">
                            <p class="name">30대 예비부부 │ 신혼여행</p>
                            <p class="ment">여행사 플래너에게 받은 견적보다 훨씬 저렴하게 하지만 원하는 곳들은 모두 가는 일정을 꼼꼼하게 만들어 주시고  예약 가이드까지 다 해주셔서 너무 편했어요</p>
                        </figcaption>
                        <figure>
                            <img class="fw" src="<%= contextPath %>/externalData/consulting/images/sample/user06.jpg" alt=""/>
                        </figure>
                    </li>

                    <li class="review-left">
                        <figure>
                            <img class="fw" src="<%= contextPath %>/externalData/consulting/images/sample/user02.jpg" alt=""/>
                        </figure>

                        <figcaption class="bollon-left">
                            <p class="name">30대 직장인 │ 부모님과 함께</p>
                            <p class="ment">15일 여행에 필요한 예약이 이렇게 많은지 몰랐어요. 예약이 필수인 교통구간과 꼭 필요한 투어들을 정리해주셔서 너무 편했어요.</p>
                        </figcaption>
                    </li>
                    <li class="review-right">

                        <figcaption class="bollon-right">
                            <p class="name">40대 워킹맘 │ 아이와 가족여행</p>
                            <p class="ment">워킹맘이라 유럽여행 준비가 너무 힘들어서 맡겼는데 시간도 아끼고 아이들이 원할만한 곳을 제안받고 결정할 수 있어서 좋았어요!</p>
                        </figcaption>

                        <figure>
                            <img class="fw" src="<%= contextPath %>/externalData/consulting/images/sample/user03.jpg" alt=""/>
                        </figure>
                    </li>
                    <li class="review-left">
                        <figure>
                            <img class="fw" src="<%= contextPath %>/externalData/consulting/images/sample/user04.jpg" alt=""/>
                        </figure>
                        <figcaption class="bollon-left">
                            <p class="name">20대 대학생 │ 배낭여행</p>
                            <p class="ment">넉넉하게 유레일패스만 사면 될 줄 알았는데... 돈 낭비할 뻔 했어요! 알려주신 정보로 계산해보니 구간권이 30만 원 이상 싸더라구요!</p>
                        </figcaption>

                    </li>
                    <li class="review-right">

                        <figcaption class="bollon-right">
                            <p class="name">60대 │ 부부여행</p>
                            <p class="ment">패키지는 이제 너무 뻔해서 이번엔 자유여행으로 가려고 알아보던 중에 불안해서 신청했는데 친절하게 잘 정리해주셔서 편했어요.</p>
                        </figcaption>
                        <figure>
                            <img class="fw" src="<%= contextPath %>/externalData/consulting/images/sample/user05.jpg" alt=""/>
                        </figure>
                    </li>
                </ul>
            </div>
        </section>



        <section class="stu_consulting_step" >
            <div class="stu_inner_wrap">
                <div class="titArea">
                    <h3 class="stu_title">맞춤 여행제작을 위한 상담 커리큘럼(전체계획 의뢰시 기준)</h3>
                    <p>아래의 상담일정은 이해를 돕기 위해 제공하는 표준안으로 실제로는 여행자의 상황에 따라 조정될 수 있습니다.</p>
                </div>
                <ol>
                    <li>
                        <div class="ico_box" style="background:#0b2338;">
                            <span style="margin:-2.5px 0 0;">1차<br/>루트상담<br><font style="font-size:8pt">유선전화</font></span>
                        </div>
                        <div class="txt_box">
                            <h3>상담내용</h3>
                            <p>여행지, 소도시, 기간 및 시기 여행지</p>
                            <h3>상담전</h3>
                            <p><span>국가별 도시정보</span> 제공</p>
                            <h3>상담후</h3>
                            <p><span>여행루트 초안</span> 제공</p>
                        </div>
                    </li>
                    <li>
                        <div class="ico_box">
                            <span style="margin:-2.5px 0 0;">2차<br/>루트상담<br><font style="font-size:8pt">이메일</font></span>
                        </div>
                        <div class="txt_box">
                            <h3>상담내용</h3>
                            <p>도시, 도시별 체류기간, 도시이동 교통편확정</p>
                            <h3>상담전</h3>
                        	<p><span>검토가능한 여행루트 B,C안</span> 제공</p>
                            <h3>상담후</h3>
                          <p><span>여행루트 확정안</span> 제공</p>
                        </div>
                    </li>
                    <li>
                        <div class="ico_box" style="background:#0b2338;">
                            <span style="margin:2.5px 0 0;">필수예약<br/>상담<br><font style="font-size:8pt">유선전화</font></span>
                        </div>
                        <div class="txt_box">
                            <h3>상담내용</h3>
                            <p> 필수 예약 상담</p>
                            <h3>상담전</h3>
                            <p><span>교통편 예약 링크, 출발시간, 예약시 유의사항</span> 제공</p>
                            <h3>상담후</h3>
                            <p><span>도시별 추천숙소, 필수투어 예약정보</span> 제공</p>
                        </div>
                    </li>
                    <li>
                        <div class="ico_box">
                            <span>일정상담<br><font style="font-size:8pt">유선전화</font></span>
                        </div>
                        <div class="txt_box">
                            <h3>상담내용</h3>
                            <p>맞춤 일정</p>
                            <h3>상담전</h3>
                            <p><span>주요도시 & 소도시 가이드북</span> 제공</p>
                            <h3>상담후</h3>
                            <p><span>맞춤 일정표</span> 제공</p>
                        </div>
                    </li>
                </ol>
            </div>
        </section>

        <section class="stu_contact">
            <div class="stu_inner_wrap">


<a href="<%= contextPath %>/consulting/charge_consulting_step1.do?trip_id=&needlogin=&l="  class="btn_contact">맞춤여행 의뢰 (55,200원 부터) >  </a>

            </div>
        </section>

        <section class="stu_consulting_pricing">
            <div class="stu_inner_wrap">
                <div class="titArea">
                    <h3 class="stu_title">가격안내</h3>
                    <p>※ 부가세 포함, 여행인원 무관</p>
		
                </div>

	</div>
       </section>


        <section class="stu_consulting_pricing" style="margin-top:0px;padding-top:0px;">
            <div class="stu_inner_wrap">
                <div class="titArea">
                    <h3 class="stu_title" style="font-size:13pt"> 서비스 1. 전체 계획 의뢰</h3>
		
                </div>


                <ol>
                    <li >
                        <div class="pricing_plan">10일 이하</div>
                        <div class="pricing_price"><span>9.9</span>만원</div>
                    </li>
                    <li >
                        <div class="pricing_plan">15일 이하</div>
                        <div class="pricing_price"><span>13.9</span>만원</div>
                    </li>
                    <li >
                        <div class="pricing_plan">22일 이하</div>
                        <div class="pricing_price"><span>17.9</span>만원</div>
                    </li>

                    <li >
                        <div class="pricing_plan">30일 이하</div>
                        <div class="pricing_price"><span>19.9</span>만원</div>
                    </li>
                </ol>

                <ul>
                    <li><span>가격 포함사항</span></li>
                       <li>1. 다양한 루트 시나리오 제안 / 최적화</li>
                    <li>2. 도시이동편 예약지원</li>
                    <li>3. 도시별 최적 숙소 / 테마 숙소 추천</li>
                    <li>4. 투어/티켓 예약지원</li>
                    <li>5. 맞춤일정표</li>
                    <li>6. 스마트폰으로 확인가능하도록 입력대행</li>
                    <li>7. 유럽 100여권 프리미엄 가이드북</li>
                </ul>


   	</div>
       </section>

        <section class="stu_consulting_pricing">
            <div class="stu_inner_wrap">
                <div class="titArea">
                    <h3 class="stu_title" style="font-size:13pt"> 서비스 2. 루트 + 교통 의뢰 </h3>
                   
                </div>

                <ol>

                    <li >
                        <div class="pricing_plan">10일 이하</div>
                        <div class="pricing_price"><span>5.5</span>만원</div>
                    </li>
                    <li >
                        <div class="pricing_plan">30일 이하</div>
                        <div class="pricing_price"><span>9.9</span>만원</div>
                    </li>
                    <li >
                        <div class="pricing_plan">45일 이하</div>
                        <div class="pricing_price"><span>14.9</span>만원</div>
                    </li>
                    <li >
                        <div class="pricing_plan">60일 이하</div>
                        <div class="pricing_price"><span>19.9</span>만원</div>
                    </li>


                </ol>


                <ul>
                    <li><span>가격 포함사항</span></li>
                    <li>1. 다양한 루트 시나리오 제안 / 최적화</li>
                    <li>2. 도시이동편 예약지원</li>
                    <li>3. 투어/티켓 예약지원</li>
                    <li>4. 유럽 100여권 프리미엄 가이드북</li>
                </ul>

            </div>
        </section>

    </main>

        <section class="stu_event_banner">
            <div class="stu_inner_wrap">
                <div class="event_banner2" style="background:#f3f3f3;height:120px;overflow:hidden;position:relative;">
                   
                            <a href="<%= contextPath %>/consulting/index.do" target="_blank" style="width:100%; height:100%;">
                                <div class="txtWrap">
                                    <p>유럽여행이 처음이라면</p>
                                    <b >전문가의 도움을 받아보세요.</b>
                                </div>
                                <div class="imgWrap" style="background-image:url(<%= contextPath%>/externalData/img_v15/back_private.png);">
                                    <b><span>전문가 유럽계획 의뢰</span>￦ 55,200</b>
                                </div>
                            </a>
		<div style="clear:both"></div>
                </div>
            </div>
        </section>

<jsp:include page="/WEB-INF/layout/footer_large.jsp"></jsp:include>

</div>
<!--//Contents_End-->

		</div>

<script>
$(document).ready(function() {
    $('.swiper-items').each(function() {
        new Swiper($(this), {
            slidesPerView:'auto',
            freeMode:false,
            direction:'horizontal',
            scrollbar: {
                el:$(this).children('.swiper-scrollbar'),
                hide:true,
            },
            navigation: {
                nextEl: $(this).siblings('.swiper-button-next'),
                prevEl: $(this).siblings('.swiper-button-prev'),
            },
            breakpoints: {
                619: {
                    freeMode:true,
                }
            }
        });
    });

    var id = '#'+'${ lnb_item }';
	$(".lnb_item").removeClass("active");
	$(id).addClass("active");
});
</script>

<script>

function startReqConsulting()
{
	if(getMobileOperatingSystem()=='Android')
	{
		openWB('https://www.stubbyplanner.com/consulting/charge_consulting_step1.asp?trip_id=&needlogin=&l=android');
	}
	else
	{
		window.location="charge_consulting_step1.asp?trip_id=&needlogin=&l=";
	}

}
</script>

</body>
</html>
