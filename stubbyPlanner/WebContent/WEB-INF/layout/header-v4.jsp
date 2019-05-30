<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>

		<div id="header" class="header-v4" style="position:fixed;left:0;right: 0;top: 0;background:#fff">
			<!-- Navbar -->
			<div class="navbar navbar-default" role="navigation" >


				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-responsive-collapse" >
<div style="background:#fff">
					<div class="container" style="padding-top:5px;padding-bottom:5px;">


						<div class="row">
							<div class="col-md-2" style="padding-top:7px;width:17%;padding-left:0px">
								<a  href="/" style="">
									<img width="160px" id="logo-header" src="/stubbyPlanner/externalData/img_v9/logo_s.png" alt="Logo">
								</a>
							</div>
							<div class="col-md-10" style="width:83%;padding-right:0px;text-align:right">


<div style="float:left;cursor:pointer;margin-top:5px;margin-right:0px;padding: 0 52px 0 30px;display:inline-block;border-radius:18px!important;border:1px solid #e5e5e5;background: #f5f5f5;line-height: 34px;" onclick="window.location='/market/index.asp'">
<button style="border:0px;background: #f5f5f5;display:inline-block;width: 30px;height: 30px;background-position: -60px -30px;background-size: 240px;opacity: .6;background-image: url(/market/images/common/stu_icon.png);background-repeat: no-repeat;cursor: pointer;vertical-align: middle;"></button>
<font style="font-size: 15px;font-weight: 300;color: rgb(102, 102, 102);cursor:pointer;">유럽도시 또는 국가로 검색해보세요.</font>
</div>



						<ul class="nav navbar-nav" style="float:right">



							<li   style="border:0px;color:#696969">
								 <a href="/planner/" style="padding-left:13px;padding-right:20px;">
									 <font style="font-size:12pt;color:#222;font-weight:600;outline: none;font-family: 'Noto Sans KR','dotum','돋움','verdana','snas-serif';letter-spacing: -1px;line-height: 1.4;"> 플래너</font>
								</a>
							</li>

							<li   style="border:0px;color:#696969">
								 <a href="/exp/list.asp" style="padding-left:13px;padding-right:20px;">
									 <font style="font-size:11pt;color:#222;font-weight:500;font-family: 'Noto Sans KR','dotum','돋움','verdana','snas-serif';letter-spacing: -1px;line-height: 1.4;"> 여행지</font>
								</a>
							</li>

							<li   style="border:0px;color:#696969">
								<a href="/market/" style="padding-left:13px;padding-right:20px;">
									 <font style="font-size:11pt;color:#222;font-weight:500;font-family: 'Noto Sans KR','dotum','돋움','verdana','snas-serif';letter-spacing: -1px;line-height: 1.4;"> 투어/일정</font>
								</a>
							</li>
							<li   style="border:0px;color:#696969">
								 <a href="/mb/" style="padding-left:13px;padding-right:20px;">
									 <font style="font-size:11pt;color:#222;font-weight:500;font-family: 'Noto Sans KR','dotum','돋움','verdana','snas-serif';letter-spacing: -1px;line-height: 1.4;"> 숙소</font>
								</a>
							</li>

							<li style="border:0px">
								<a href="/guide/reservation.asp" style="padding-left:13px;padding-right:13px;">
									<font style="font-size:10pt;color:#222;font-family: 'Noto Sans KR','dotum','돋움','verdana','snas-serif';letter-spacing: -1px;line-height: 1.4;"> 내 예약</font> 


    
								</a>
							</li>

							<li style="border:0px">
								<a href="/coupon/index.asp" style="padding-left:13px;padding-right:13px;">
									<font style="font-size:10pt;color:#222;font-family: 'Noto Sans KR','dotum','돋움','verdana','snas-serif';letter-spacing: -1px;line-height: 1.4;"> 쿠폰함</font> 
								</a>
							</li>





							<li class="dropdown" style="border:0px;">
								<a href="javascript:window.location='/market/'" class="dropdown-toggle" data-toggle="dropdown" style="padding-left:13px;padding-right:30px">
									 <font style="font-size:15pt;color:#696969"><i class="fa fa-user" aria-hidden="true"></i></font>
								</a>
								<ul class="dropdown-menu" style="margin-left:-150px">

								<li><a href="https://www.stubbyplanner.com/common/login.asp">로그인</a></li>
								<li><a href="https://www.stubbyplanner.com/common/register.asp">회원가입</a></li>



								<li><a href="/square/"><b>광장</b></a></li>

								<li><a href="/selfguide/"><b>프리미엄</b></a></li>
								<li><a href="/crowd/tripwith.asp"><b>동행</b></a></li>
								<li><a href="/qa/">문의</a></li>
								</ul>
							</li>



						</ul>

						

							</div>
						</div>






					</div><!--/end container-->
</div>
<div style="padding-top:0px;padding-bottom:0px;" class="container"><div id="header_plannerlist" style="display:none;border-top:1px solid #efefef;margin-top:5px;padding-top:5px;padding-bottom:10px;"></div></div>


				</div><!--/navbar-collapse-->
			</div>
			<!-- End Navbar -->


		</div>
