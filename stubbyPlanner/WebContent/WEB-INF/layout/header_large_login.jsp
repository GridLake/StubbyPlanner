<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <header>

        <div class="header_banner">
            <div class="stu_inner_wrap">
                <a href="/stubbyPlanner/consulting/index.do?from=top1">
                    <div class="header_banner_wrap">
                        <p class="txtWrap">복잡한 유럽 자유여행이 처음이라면
                            <span>전문가 맞춤여행 의뢰 55,200원~</span>
                        </p>
                        <p class="btnWrap">자세히</p>
                    </div>
                </a>
                <i class="ico_close"></i>
            </div>
        </div>

        <div class="stu_header">
            <div class="stu_inner_wrap">
                <nav class="gnb_container">
                    <div class="aside_button on-mobile">
                        <a href="#" class="gnb_menu">
                            <i class="ico_menu"></i>
                        </a>
                    </div>
                    <h1 class="stu_logo">
                        <a href="/stubbyPlanner/common/index.do">
                            <img class="fh" src="/stubbyPlanner/externalData/images2/stu_logo_mobile.png" alt="logo"/>
                        </a>
                    </h1>
                    <div class="gnb_banner on-pc">
                        <div class="swiper-container swiper-gnb_banner">
                            <ul class="swiper-wrapper">

<!--
                              <li class="swiper-slide">
                                    <a href="http://www.stubbyplanner.com/coupon/iceland_coupon.do">
                                        <img class="fw" src="/images2/sample/GB02.jpg" alt=""/>
                                        <div class="txtWrap">
                                            <p>아이슬란드 특급 할인!</p>
                                            <b><span>130,000원</span> 할인쿠폰</b>
                                        </div>
                                    </a>
                                </li>

-->
                                <li class="swiper-slide">
                                   <a href="/stubbyPlanner/consulting/index.do?from=top2">
                                        <img class="fw" src="/stubbyPlanner/externalData/images2/sample/GB03.jpg" alt=""/>
                                        <div class="txtWrap">
                                            <p>유럽 초보자를 위한</p>
                                            <b>전문가 유럽 맞춤계획 의뢰<span> </span></b>
                                        </div>
                                    </a>
                                </li>
<!--

                                <li class="swiper-slide">
                                    <a href="http://www.stubbyplanner.com/event_1/event_1plus1.do">
                                        <img class="fw" src="http://d3b39vpyptsv01.cloudfront.net/0/0/1547623875104u6XHHWT7nu.jpg" alt=""/>
                                        <div class="txtWrap">
                                            <p>하나만 사도 핵이득!</p>
                                            <b><span>1+1 할인상품</span> 총집합</b>
                                        </div>
                                    </a>
                                </li>
                                <li class="swiper-slide">
                                    <a href="http://www.stubbyplanner.com/coupon/winter_coupon.do">
                                        <img class="fw" src="/images2/sample/GB01.jpg" alt=""/>
                                        <div class="txtWrap">
                                            <p>유럽 현지투어 / 액티비티</p>
                                            <b><span>100,000원</span> 할인쿠폰</b>
                                        </div>
                                    </a>
                                </li>
  -->
                            </ul>
                            <div class="swiper-pagination gnb_banner-pagination"></div>
                            <div class="swiper-button-prev gnb_banner-button-prev"></div>
                            <div class="swiper-button-next gnb_banner-button-next"></div>
                        </div>
                    </div>
                    <ul class="gnb_wrap on-pc">
                        <li class="gnb_item">
                            <a href="/stubbyPlanner/guide/reservation.do">예약내역</a>
                        </li>
                        <li class="gnb_item">
                            <a href="/stubbyPlanner/coupon/index.do">쿠폰함</a>
                        </li>



<!--  -->
						<li class="gnb_item gnb_profile sign_in">
                            <a href="#" class="profile_photo">
                                        <c:if test="${!empty authUser.profile_pic }">
                                            <img class="fh" src="${authUser.profile_pic}" alt="프로필 사진"/>
                                        </c:if>
                                        <c:if test="${empty authUser.profile_pic }">
                                            <img class="fh" src="/stubbyPlanner/externalData/img_v9/img_pfnull.jpg" alt="프로필 사진"/>
                                        </c:if>
                            </a>


                            <div class="prfPopup">
                                <ul class="prfPopup_section">
                                    <li class="prfPopup_item prfPopup_profile">
                                        <a href="#" class="profile_photo">
                                        <c:if test="${!empty authUser.profile_pic }">
                                            <img class="fh" src="${authUser.profile_pic}" alt="프로필 사진"/>
                                        </c:if>
                                        <c:if test="${empty authUser.profile_pic }">
                                            <img class="fh" src="/stubbyPlanner/externalData/img_v9/img_pfnull.jpg" alt="프로필 사진"/>
                                        </c:if>
                                        </a>
                                        <div class="profile_name">
                                            <p>${authUser.member_id}</p>
                                            <a href="/stubbyPlanner/personal/mypage.do" class="mng_account">마이페이지</a>
                                        </div>
                                    </li>
                                </ul>
                                <ul class="prfPopup_section">
<!--
                                    <li class="prfPopup_item prfPopup_coupon">
                                        <a href="/coupon/index.asp"><i></i>쿠폰함</a>
                                    </li>
                                    <li class="prfPopup_item prfPopup_square">
                                        <a href="/square/"><i></i>광장</a>
                                    </li>
                                    <li class="prfPopup_item prfPopup_premium">
                                        <a href="/selfguide/"><i></i>프리미엄</a>
                                    </li>
-->
                                </ul>

                                <ul class="prfPopup_section">
                                    <li class="prfPopup_item">
                                        <a href="/qa/">1:1문의</a>
                                    </li>
                                    <li class="prfPopup_item">
                                        <a href="/stubbyPlanner/common/infoChange.do">회원정보변경</a>
                                    </li>
                                    <li class="prfPopup_item">
                                        <a href="/stubbyPlanner/common/login.do">로그아웃</a>
                                    </li>
                                </ul>

                            </div>
                        </li>


                    </ul>
                </nav>
                <nav class="lnb_container">
                    <ul class="lnb_wrap">
                        <li id="common" class="lnb_item">
                            <a href="/stubbyPlanner/common/index.do">홈</a>
                        </li>
                        <li id="planner" class="lnb_item">
                            <a href="/stubbyPlanner/planner/index.do">계획짜기</a>
                        </li>
                        <li id="market" class="lnb_item">
                            <a href="/stubbyPlanner/market/index.do">투어예약</a>
                        </li>
                        <li id="mb" class="lnb_item">
                            <a href="/stubbyPlanner/mb/index.do">숙소예약</a>
                        </li>

                        <li id="exp" class="lnb_item">
                            <a href="/stubbyPlanner/exp/list.do">여행지</a>
                        </li>
                        <li id="square" class="lnb_item">
                            <a href="/stubbyPlanner/square/index.do">광장</a>
         				   <ul class="a">
      				       </ul>
                        </li>
                    </ul>
                    <div class="gnb_search_wrap">
                        <a href="#" class="gnb_search">
                            <i class="ico_search"></i>
                        </a>
                    </div>
                </nav>
                <div class="side_background"></div>
                <aside class="side_container on-mobile">
                    <ul class="side_section">
                        <li class="side_item side_logo sign_out">
                            <a href="/stubbyPlanner/common/index.do">
                                <img class="fh" src="/stubbyPlanner/externalData/images2/stu_logo_mobile.png" alt="logo"/>
                            </a>
                        </li>

                        <li class="side_item side_btn sign_out">
                            <a href="/stubbyPlanner/common/login.do" class="btn_login">로그인</a>
                        </li>
                        <li class="side_item side_btn sign_out">
                            <a href="/stubbyPlanner/common/register.do" class="btn_signup">회원가입</a>
                        </li>

                    </ul>
                    <ul class="side_section">

                        <li class="side_item side_resv">
                            <a href="/stubbyPlanner/guide/reservation.do">
                                <i></i><span class="sign_out">비회원&nbsp;</span>예약내역
                            </a>
                        </li>
<!--
                        <li class="side_item side_coupon">
                            <a href="/coupon/index.do"><i></i>쿠폰함</a>
                        </li>
                        <li class="side_item side_square">
                            <a href="/square/index.do"><i></i>광장</a>
                        </li>
-->
                        <li class="side_item side_premium">
                            <a href="/stubbyPlanner/selfguide/index.do"><i></i>프리미엄</a>
                        </li>
                    </ul>



                </aside>
            </div>
        </div>
        <a href="#" class="stu_scroll_top"><span>맨 위로 가기</span><i></i></a>
    </header>
    
