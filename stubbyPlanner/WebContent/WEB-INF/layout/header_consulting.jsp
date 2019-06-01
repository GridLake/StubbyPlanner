<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/include.jspf" %>
<header>

        <div class="stu_header">
            <div class="stu_inner_wrap">
                <nav class="gnb_container">
                    <!-- 
                    <div class="aside_button on-mobile">
                        <a href="#" class="gnb_menu">
                            <i class="ico_menu"></i>
                        </a>
                    </div>
                     -->
                    <h1 class="stu_logo">
                        <a href="<%= contextPath %>/common/index.do">
                            <img class="fh" src="<%= contextPath %>/externalData/images2/stu_logo_mobile.png" alt="logo"/>
                        </a>
                    </h1>
                    <!--
                    <div class="gnb_banner on-pc">
                        <div class="swiper-container swiper-gnb_banner">
                         
                            <ul class="swiper-wrapper">
                                <li class="swiper-slide">
                                    <a href="http://www.stubbyplanner.com/coupon/winter_coupon.asp">
                                        <img class="fw" src="images/sample/GB01.jpg" alt=""/>
                                        <div class="txtWrap">
                                            <p>유럽 현지투어 / 액티비티</p>
                                            <b><span>100,000원</span> 할인쿠폰</b>
                                        </div>
                                    </a>
                                </li>
                                <li class="swiper-slide">
                                    <a href="http://www.stubbyplanner.com/coupon/iceland_coupon.asp">
                                        <img class="fw" src="images/sample/GB02.jpg" alt=""/>
                                        <div class="txtWrap">
                                            <p>아이슬란드 리뷰없으면 할인!</p>
                                            <b><span>130,000원</span> 할인쿠폰</b>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                             -->
                            <!-- 
                            <div class="swiper-pagination gnb_banner-pagination"></div>
                            <div class="swiper-button-prev gnb_banner-button-prev"></div>
                            <div class="swiper-button-next gnb_banner-button-next"></div>
                             
                        </div>
                    </div>
                    -->
                    <ul class="gnb_wrap on-pc">
                        <li class="gnb_item">
                            <a href="<%= contextPath %>/guide/reservation.do">예약내역</a>
                        </li>
                        <li class="gnb_item">
                            <a href="<%= contextPath %>/coupon/index.do">쿠폰함</a>
                        </li>


                        <li class="gnb_item sign_out">	
                            <a href="<%= contextPath %>/common/login.do">로그인</a>
                        </li>
                        <li class="gnb_item sign_out">
                            <a href="<%= contextPath %>/common/register.do" class="signup">회원가입</a>
                        </li>



                    </ul>
                </nav>
                <nav class="lnb_container">
                    <ul class="lnb_wrap">
                        <li id="common" class="lnb_item">
                            <a href="<%= contextPath %>/common/index.do">홈</a>
                        </li>
                        <li id="planner" class="lnb_item">
                            <a href="<%= contextPath %>/planner/index.do">계획짜기</a>
                        </li>
                        <li id="market" class="lnb_item">
                            <a href="<%= contextPath %>/market/index.do">투어예약</a>
                        </li>
                        <li id="mb" class="lnb_item">
                            <a href="<%= contextPath %>/mb/index.do">숙소예약</a>
                        </li>

                        <li id="exp" class="lnb_item">
                            <a href="<%= contextPath %>/attr/list.do">여행지</a>
                        </li>
                        <li id="square" class="lnb_item">
                            <a href="<%= contextPath %>/square/index.do">광장</a>
         				   <ul class="a">
      				       </ul>
                        </li>
                    </ul>
                    <div class="gnb_search_wrap">
                        <a href="<%= contextPath %>/market/" class="gnb_search">
                            <i class="ico_search"></i>
                        </a>
                    </div>
                </nav>
                <div class="side_background"></div>
                <aside class="side_container on-mobile">
                    <ul class="side_section">
                        <li class="side_item side_logo sign_out">
                            <a href="<%= contextPath %>/common/index.do">
                                <img class="fh" src="<%= contextPath %>/externalData/images/stu_logo_mobile.png" alt="logo"/>
                            </a>
                        </li>
                        <li class="side_item side_btn sign_out">
                            <a href="<%= contextPath %>/common/login.do" class="btn_login">로그인</a>
                        </li>
                        <li class="side_item side_btn sign_out">
                            <a href="<%= contextPath %>/common/register.do" class="btn_signup">회원가입</a>
                        </li>
                        <li class="side_item sign_in">
                            <div class="side_profile">
                                <a href="#" class="profile_photo">
                                    <i>
                                        <img class="fh" src="<%= contextPath %>/externalData/img_v9/img_pfnull.jpg" alt="프로필 사진"/>
                                    </i>
                                </a>
                                <div class="profile_name">
                                    <p></p>
                                    <!-- 마이페이지 처리 -->
                                    <a href="/" class="mng_account">마이페이지</a>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <ul class="side_section">
                        <li class="side_item side_resv">
                            <a href="<%= contextPath %>/guide/reservation.do">
                                <i></i><span class="sign_out">비회원&nbsp;</span>예약내역
                            </a>
                        </li>
                        <!-- 
                        <li class="side_item side_coupon">
                            <a href="/coupon/index.asp"><i></i>쿠폰함</a>
                        </li>
                        <li class="side_item side_square">
                            <a href="/square/index.asp"><i></i>광장</a>
                        </li>
                        <li class="side_item side_premium">
                            <a href="/selfguide/index.asp"><i></i>프리미엄</a>
                        </li>
                         -->
                    </ul>
                    <ul class="side_section sign_in">
                        <li class="side_item">
                        	<!-- 로그아웃 처리? -->
                            <a href="<%= contextPath %>/common/index.do">로그아웃</a>
                        </li>
                    </ul>
                </aside>
            </div>
        </div>
        <a href="#" class="stu_scroll_top"><span>맨 위로 가기</span><i></i></a>
    </header>