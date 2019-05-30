<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta http-equiv="Content-Language" content="ko">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>스투비 아이디/비번찾기 - 스투비플래너</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">

    <!-- Web Fonts -->
    <link rel='stylesheet' type='text/css' href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

    <!-- CSS Global Compulsory -->
    <link rel="stylesheet" href="/stubbyPlanner/externalData/chn/assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/stubbyPlanner/externalData/chn/assets/css/shop.style.css">

    <!-- CSS Header and Footer -->
    <link rel="stylesheet" href="/stubbyPlanner/externalData/chn/assets/css/headers/header-v5.css">
    <link rel="stylesheet" href="/stubbyPlanner/externalData/chn/assets/css/footers/footer-v4.css">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="/stubbyPlanner/externalData/chn/assets/plugins/animate.css">    
    <link rel="stylesheet" href="/stubbyPlanner/externalData/chn/assets/plugins/line-icons/line-icons.css">
    <link rel="stylesheet" href="/stubbyPlanner/externalData/chn/assets/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="/stubbyPlanner/externalData/chn/assets/plugins/sky-forms-pro/skyforms/css/sky-forms.css">
    <link rel="stylesheet" href="/stubbyPlanner/externalData/chn/assets/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css">
    <!--[if lt IE 9]><link rel="stylesheet" href="/chn/assets/plugins/sky-forms-pro/skyforms/css/sky-forms-ie8.css"><![endif]-->



 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">


    <!-- CSS/JavaScript -->
    <link rel="stylesheet" type="text/css" href="/stubbyPlanner/externalData/market/css/common4.css">
    <link rel="stylesheet" type="text/css" href="/stubbyPlanner/externalData/market/css/md-search.css">
    <!-- <link rel="stylesheet" type="text/css" href="/stubbyPlanner/externalData/market/css/reservation.css"> -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>




   <link rel="stylesheet" href="/stubbyPlanner/externalData/superguide/assets/css/headers/header-v4.css">
   <link rel="stylesheet" href="/stubbyPlanner/externalData/css/stubbynew_topmenu.css">

<script src="https://www.google.com/jsapi"></script>
<script>
 google.load( "webfont", "1" );
 google	nLoadCallback(function() {
  WebFont.load({ custom: {
   families: [ "NanumGothic" ],
   urls: ['https://fonts.googleapis.com/earlyaccess/nanumgothic.css']
  }});
 });
</script>

    <!-- CSS Customization -->
    <link rel="stylesheet" href="/stubbyPlanner/externalData/chn/assets/css/custom.css">

</head>   

<body class="header-fixed">

<div class="wrapper">
    <!--=== Header v5 ===-->

      <!--=== Header v4 ===-->
      <div id="header" class="header-v4" style="position:fixed;left:0;right: 0;top: 0;background:#fff">
         <!-- Navbar -->
         <div class="navbar navbar-default" role="navigation" >


            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-responsive-collapse" >
<div style="background:#fff">
               <div class="container" style="padding-top:5px;padding-bottom:5px;">


                  <div class="row">
                     <div class="col-md-2" style="padding-top:7px;width:17%;padding-left:0px">
                        <a  href="/stubbyPlanner/common/index.do" style="">
                           <img width="160px" id="logo-header" src="/stubbyPlanner/externalData/img_v9/logo_s.png" alt="Logo">
                        </a>
                     </div>
                     <div class="col-md-10" style="width:83%;padding-right:0px;text-align:right">

<!-- 
<div style="float:left;cursor:pointer;margin-top:5px;margin-right:0px;padding: 0 52px 0 30px;display:inline-block;border-radius:18px!important;border:1px solid #e5e5e5;background: #f5f5f5;line-height: 34px;" onclick="window.location='/market/index.do'">
<button style="border:0px;background: #f5f5f5;display:inline-block;width: 30px;height: 30px;background-position: -60px -30px;background-size: 240px;opacity: .6;background-image: url(/stubbyPlanner/externalData/market/images/common/stu_icon.png);background-repeat: no-repeat;cursor: pointer;vertical-align: middle;"></button>
<font style="font-size: 15px;font-weight: 300;color: rgb(102, 102, 102);cursor:pointer;">유럽도시 또는 국가로 검색해보세요.</font>
</div>

 -->
<!-- 
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



                  </ul> -->



                     </div>
                  </div>






               </div><!--/end container-->
</div>
<div style="padding-top:0px;padding-bottom:0px;" class="container"><div id="header_plannerlist" style="display:none;border-top:1px solid #efefef;margin-top:5px;padding-top:5px;padding-bottom:10px;"></div></div>


            </div><!--/navbar-collapse-->
         </div>
         <!-- End Navbar -->


      </div>
      <!--=== End Header v4 ===-->


<script>
var is_displayed_header_plannerlist=0;
function togglePlannerList()
{
   if(is_displayed_header_plannerlist)
   {
      is_displayed_header_plannerlist=0;
      $("#header_plannerlist").html('');
      $("#header_plannerlist").hide();
   }
   else
   {
      is_displayed_header_plannerlist=1;
      
      thtml='<div style="overflow-x:auto;">';
      thtml+='<div style="float:left;width:20%;"><div style="padding-top:4px;padding-bottom:5px;"><b>새 플래너 시작</b></div><div style="margin-right:10px;height:220px;border:1px solid #efefef;text-align:center;background:#efefef;padding-top:50px;cursor:pointer" onclick="window.location=\'/planner/planner_rt.asp\'"><font style="font-size:49pt"><i class="fa fa-plus-circle" aria-hidden="true"></i></font></div>빈 플래너</div>';
      thtml+='<div style="float:left;width:80%;"><div style="padding-top:4px;padding-bottom:5px;"><b>인기루트로 시작</b></div>';
         thtml+='<div style="float:left;width:25%;"><div style="margin-right:10px;height:160px;"><a href="/planner/planner_rt.asp?tripgene=111031001:3:X:0,111011004:3:0:0,111041006:1:5:0,111041003:1:1:0,111041004:3:1:0"><img  width="100%"  src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/636c475c3ce6932a35fadb740f63bf74_l.jpg" width="100%"></a><br>서유럽 단기</div></div>';
         thtml+='<div style="float:left;width:25%;"><div style="margin-right:10px;height:160px;"><a href="/planner/planner_rt.asp?tripgene=111031001,111011004,111021002,111041006,111041003,111041004"><img  width="100%"  src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/c04eadc3c03e90ca9c25d825120ed706_l.jpg" width="100%"></a><br>서유럽 핵심</div></div>';
         thtml+='<div style="float:left;width:25%;"><div style="margin-right:10px;height:160px;"><a href="/planner/planner_rt.asp?tripgene=131011001,131011003,131041002,131041032,131041001,131021001"><img  width="100%"  src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/467ff806c2e8d1d75abfe661f238595b_l.jpg" width="100%"></a><br>동유럽 단기</div></div>';
         thtml+='<div style="float:left;width:25%;"><div style="margin-right:10px;height:160px;"><a href="/planner/planner_rt.asp?tripgene=121011002,121011001,121011048,121011005,121011057,121011007,121021001,121021041,121011003,121011004,121011008,121011003"><img  width="100%"  src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/41f99a5e1fef95c038f585bc77f827e5_l.jpg" width="100%"></a><br>스페인+포르투갈</div></div>';
         thtml+='<div style="clear:both"></div>';
      thtml+='</div>';
      thtml+='<div style="clear:both"></div>';
      thtml+='</div>';
      
      
      
      $("#header_plannerlist").html(thtml);
      $("#header_plannerlist").show();
      
   }
}
function initializeCart()
{
}
function closeModal(id)
{
   $(".modal.in").modal('hide');
}
function login()
{
   closeModal();
   
   var surl="/planner/if_login.asp?h_url="+escape(document.URL);
   document.getElementById("if_login").src=surl;
   $('#modal-login').modal({
      keyboard: true,
      backdrop: 'static',
      show:true
   });
}
function showASSD()
{
   closeModal();
   $('#modal-assd').modal({
      keyboard: true,
      backdrop: 'static',
      show:true
   });
}
</script>



        <div id="modal-login" class="modal fade bs-example-modal-lg">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">

            <div class="modal-header">
   <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>

              <h3></h3>
            </div>
            <div class="modal-body">
              <iframe id="if_login" frameborder="0" src="about:blank" width="100%" height="400px" scrolling="no"></iframe>
            </div>
</div>
</div>
          </div>
<script>
function shownotifylist()
{
   var surl="/planner/if_notifylist.asp";
   document.getElementById("if_notifydetail").src=surl;
   $("#notifydetail_title").html("Notifications");
   $('#modal-notifydetail').modal({
      keyboard: true,
      backdrop: 'static',
      show:true
   });
}
function closeModal(id)
{
   $(".modal.in").modal('hide');
}
function login()
{
   closeModal();
   
   var surl="/planner/if_login.asp?h_url="+escape(document.URL);
   document.getElementById("if_login").src=surl;
   $('#modal-login').modal({
      keyboard: true,
      backdrop: 'static',
      show:true
   });
}
function shownotifydetail(t,s,ns)
{
      var surl="/planner/if_notifydetail.asp?ns="+ns+"&t="+t+"&s="+s;
      document.getElementById("if_notifydetail").src=surl;
      if(t=="plan")
         $("#notifydetail_title").html("플래너 댓글");
      else
         $("#notifydetail_title").html("NEWS FEED");
      $('#modal-notifydetail').modal({
         keyboard: true,
         backdrop: 'static',
         show:true
      });
}
function openTourMap(srcserial,ds,mapid)
{
   if(ds)
   {
      if(mapid)
      {
         bindex=mapid.indexOf("b");
         cid=mapid.substring(1,bindex);
         bid=mapid.substring(bindex+1);
         NewWin=window.open("/tourmap/tourmap.asp?ds="+ds+"&bid="+bid+"&cid="+cid, "map", "width=1000,height=710,toolbar=No,location=No,scrollbars=no,status=No,resizable=yes"); 
         NewWin.moveTo(0,0);
         NewWin.focus();
      }
      else
      {
         NewWin=window.open("/tourmap/tourmap.asp?ds="+ds, "map", "width=1000,height=710,toolbar=No,location=No,scrollbars=no,status=No,resizable=yes"); 
         NewWin.moveTo(0,0);
         NewWin.focus();
      }
   }
   else
   {
      NewWin=window.open("/tourmap/tourmap.asp?SrcSerial="+srcserial, "map", "width=1000,height=710,toolbar=No,location=No,scrollbars=no,status=No,resizable=yes"); 
      NewWin.moveTo(0,0);
      NewWin.focus();
   }
}
function showASSD()
{
   closeModal();
   $('#modal-assd').modal({
      keyboard: true,
      backdrop: 'static',
      show:true
   });
   
   
}
</script>




        <div id="modal-notifydetail" class="modal fade bs-example-modal-lg"  tabindex="-1"  >

  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">

            <div class="modal-header">
   <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
             <h3 id="notifydetail_title"></h3>
            </div>
            <div class="modal-body">
              <iframe id="if_notifydetail" frameborder="0" src="about:blank" width="100%" height="400px" scrolling="no"></iframe>
            </div>
</div>
</div>

          </div>

        <div id="modal-login" class="modal fade bs-example-modal-lg">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">

            <div class="modal-header">
   <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>

              <h3></h3>
            </div>
            <div class="modal-body">
              <iframe id="if_login" frameborder="0" src="about:blank" width="100%" height="400px" scrolling="no"></iframe>
            </div>
</div>
</div>
          </div>


<script src="https://www.google.com/jsapi"></script>




<!-- Global site tag (gtag.js) - Google Ads: 787954214 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-787954214"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'AW-787954214');
</script>


<script>
 (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
 (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
 m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
 })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
 ga('create', 'UA-913663-1', 'auto');
 ga('send', 'pageview');
</script>
<!-- Facebook Pixel Code -->
<script>
!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
document,'script','https://connect.facebook.net/en_US/fbevents.js');
fbq('init', '597062987120795');
fbq('track', 'ViewContent');
</script>
<noscript><img height="1" width="1" style="display:none"
src="https://www.facebook.com/tr?id=597062987120795&ev=PageView&noscript=1"
/></noscript>
<!-- End Facebook Pixel Code -->

    <!--=== End Header v5 ===-->
    <div class="container">


<!--오른쪽 프레임 시작-->
<div class="row" style="margin-top:95px;margin-bottom:50px;">
   <div class="col-md-3 col-xs-1"></div>
   <div class="col-md-6 col-xs-10">
   <!-- 
                        <form action="#" id="sky-form1" class="sky-form">
                            <header  style="text-align:center">페이스북계정으로 로그인</header>
                            
                            <fieldset>                  
                                <section  style="text-align:center">
         <a href="https://www.stubbyplanner.com/common/fb_login.asp?flink=&h_url=http%3A%2F%2Fwww%2Estubbyplanner%2Ecom%2Fplanner%2Findex%2Easp"><img class="img-responsive" src="/stubbyPlanner/externalData/img_v8/facebook_login.png"></a>
          </section>
          
      </fieldset>
             </form>
      <br>
       -->
             <form name="form" action="/stubbyPlanner/common/find.do" method="post" class="sky-form">
      <input type="hidden" name="h_url" value=""><!-- "http://www.stubbyplanner.com/planner/index.asp" -->
                            <header  style="text-align:center">아이디/비밀번호 찾기</header>      
                                                  
                            <fieldset>                  
                                <section>
                                <b><h6 style="color: gray">아이디 찾기</h6></b>
                                <b5>----------------</b5>
                                    <div class="row">
                                        <label class="label col col-4">이메일 입력</label>
                                        <div class="col col-8">
                                            <label class="input">
                                                <i class="icon-append fa fa-user"></i>
                                                <input type="text" id="member_email" name="member_email" >
                                            </label>
                                        </div>
                                        <c:if test="${member_email.member_id!=null}">
                                        <b id="complete">회원님의 ID 찾기가 완료되었습니다.  <b style="color: ORANGE">[ ID : ${member_email.member_id} ]</b></b>
                                        </c:if>
                                    </div>   
                                </section>

                                <section>
                                <b><h6 style="color: gray">비밀번호 찾기</h6></b>
                                <b5>----------------</b5>
                                    <div class="row">
                                        <label class="label col col-4">아이디 입력</label>
                                        <div class="col col-8">
                                            <label class="input">
                                                <i class="icon-append fa fa-lock"></i>
                                                <input type="text" id="member_id" name="member_id" />
                                            </label>
                                        </div>
                                        <c:if test="${member_id.password!=null}">
                                        <b id="complete">회원님의 PWD 찾기가 완료되었습니다.  <b style="color: ORANGE">[ PWD : ${member_id.password} ]</b></b>
                                        </c:if>
                                    </div>
                                </section>
                            
                            </fieldset>
                            
                            
                            
                            <footer style="text-align:center">
<!--                                 <a href="/stubbyPlanner/common/find.do" class="btn-u btn-u-lg">찾기</a> -->
                                <a href="javascript:FSubmit();" class="btn-u btn-u-lg">찾기</a>
                                <a href="/stubbyPlanner/common/login.do" class="btn-u btn-u-lg btn-u-default">로그인</a>
                                <a href="/stubbyPlanner/common/register.do" class="btn-u btn-u-lg  btn-u-default">회원가입</a>
                            </footer>
                            
                            
                            
                        </form>        
   </div>
   <div class="col-md-3 col-xs-1"></div>
</div>


<script> 
function FSubmit()
{ 
    if (document.form.member_id.value =="" & document.form.member_email.value=="") {
      alert("이메일 또는 아이디를 입력해 주세요.");
      document.form.member_email.focus();
      return false;
   }
    if (document.form.member_id.value !="" & document.form.member_email.value!="") {
      alert("이메일 또는 아이디 중에서 하나만 입력해 주세요.");
      document.form.member_email.focus();
      return false;
   }
   document.form.submit();
   
}
</script>
   </form>

    </div><!--/end cotnainer-->




    <!--=== Footer v4 ===-->


    <!--=== Footer v4 ===-->



   <!--  <div class="footer-v4" >

        <div class="copyright" style="background:#191919;padding-top:15px;">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">                     
      <p style="text-align:left;color:#fff">
         <b>(주)스투비플래너</b>  사업자번호: 220-88-67466 /  대표: 백주흠<br/>
         <font style="color:#efefef;font-size:8pt">서울특별시 관악구 남부순환로 1837 샤론빌딩 4층 (스투비플래너)<br/>
         대표번호 : +82-2-886-0982 |  대표이메일 : stubbyteam@gmail.com <br/> 
         운영시간(한국) 11:00 ~ 19:00, 주말/공휴일은 제외.</font><br/>

      <font style="color:#efefef;font-size:8pt">스투비플래너는 광고서비스 제공자/예약 시스템의 공급자이며 통신판매의 당사자가 아닙니다.
      따라서 스투비플래너는 상품·거래정보 및 거래에 대하여 책임을 지지 않습니다.</font>
      <br>
      2014 &copy; STUBBYPLANNER. ALL Rights Reserved. 


      <a href="https://docs.google.com/forms/d/e/1FAIpQLSdEGNceBzh0dJAaY5oF74W6z9Er9_M7ZMcv2xqvOWMcArKbsA/viewform" style="color:#efefef;font-size:8pt" target="_blank"><u>광고/제휴 문의</u></a> &nbsp;&nbsp;&nbsp;   
      <a href="/qa/" style="color:#efefef;font-size:8pt"><u>서비스 문의</u></a> &nbsp;&nbsp;&nbsp;
      <a href="/personalinfo.asp" style="color:#efefef;font-size:8pt" target="_blank"><u>개인정보 취급방침</u></a> &nbsp;&nbsp;&nbsp;
      <a href="http://www.stubbyplanner.com/common/usercontract.html" style="color:#efefef;font-size:8pt" target="_blank"><u>이용약관</u></a>&nbsp;&nbsp;&nbsp;
      <a href="/common/adserviceinfo.asp" style="color:#efefef;font-size:8pt" target="_blank"><u>광고서비스 이용약관</u></a>


      <br>



                        </p>
                    </div>

                </div>
            </div> 
        </div>/copyright 
    </div>
    === End Footer v4 ===
 -->
 
 
  



        <footer>
            <div class="stu_inner_wrap">
                <div class="stu_footerMenu">
                    <!--유틸메뉴-->
                    <img src="/stubbyPlanner/externalData/market/images/footLogo.png" alt="스투비플래너">
                    <ul class="stu_utilMenu">
                        <li><a href="https://docs.google.com/forms/d/e/1FAIpQLSdEGNceBzh0dJAaY5oF74W6z9Er9_M7ZMcv2xqvOWMcArKbsA/viewform" target="_blank">광고/제휴문의</a></li>
                        <li><a href="http://www.stubbyplanner.com/qa/"  target="_blank">서비스문의</a></li>
                        <li><a href="http://www.stubbyplanner.com/personalinfo.asp" target="_blank">개인정보 취급방침</a></li>
                        <li><a href="http://www.stubbyplanner.com/common/usercontract.html" target="_blank">이용약관 </a></li>
                        <li><a href="http://www.stubbyplanner.com/common/adserviceinfo.asp" target="_blank">광고서비스 이용약관 </a></li>
                        <li><a href="http://www.stubbyplanner.com/common/guidecontract.html" target="_blank">가이드 약관 </a></li>
                    </ul>
                    <!--sns-->
                    <ul class="stu_snsShare">
                        <li id="stu_sns1"><a href="http://www.facebook.com/stubbyplanner/" target="_blank" title="페이스북">페이스북</a></li>
                        <li id="stu_sns2"><a href="https://www.instagram.com/stubbyplanner/" target="_blank" title="인스타그램">인스타그램</a></li>
                    </ul>
                </div>
                <div class="stu_footerInfo">
                    <address>
                        <b>서비스제공</b>&nbsp;&nbsp;스투비` │ 대표 백주흠 │ 사업자등록번호 220-88-67466 │ 서울특별시 관악구 남부순환로 1837 샤론빌딩 402 <br/>
  <b>가이드상품중개</b>&nbsp;&nbsp;스투비익스피어리언스 │ 대표 백주흠 │ 사업자등록번호 635-81-01124 │ 서울특별시 관악구 남부순환로 1837 샤론빌딩 402 <br/>
                        통신판매업 신고 : 2018-서울관악-1368호 | 대표번호 02-886-0982 │  고객문의  stubbyteam@gmail.com │  운영시간(한국) 11:00 ~ 19:00, 주말 / 공휴일은 제외<br/>
스투비익스피어리언스는 통신판매중개자이며 통신판매의 당사자가 아닙니다. 따라서 스투비익스피어리언스는 상품·거래정보 및 거래에 대하여 책임을 지지 않습니다.<br/>
자사는 서울특별시관광협회 공제영업보증보험에 가입이 되어 있습니다.
                    </address>
                </div>
            </div>
        </footer>
 
 
    <!--=== End Footer v4 ===-->
</div><!--/wrapper-->

<!-- JS Global Compulsory -->
<script src="/stubbyPlanner/externalData/chn/assets/plugins/jquery/jquery.min.js"></script>
<script src="/stubbyPlanner/externalData/chn/assets/plugins/jquery/jquery-migrate.min.js"></script>
<script src="/stubbyPlanner/externalData/chn/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- JS Implementing Plugins -->

<!-- JS Customization -->
<script src="/stubbyPlanner/externalData/chn/assets/js/custom.js"></script>
<!-- JS Page Level -->
<script src="/stubbyPlanner/externalData/chn/assets/js/shop.app.js"></script>

<script>
/*     jQuery(document).ready(function() {
        App.init();
$("#password").keyup(function(event){
    if(event.keyCode == 13){
        FSubmit();
    }
});
      
}); */
</script>
<!--[if lt IE 9]>
    <script src="/chn/assets/plugins/respond.js"></script>
    <script src="/chn/assets/plugins/html5shiv.js"></script>
    <script src="/chn/assets/js/plugins/placeholder-IE-fixes.js"></script>
    <script src="/chn/assets/plugins/sky-forms-pro/skyforms/js/sky-forms-ie8.js"></script>
<![endif]-->
<!--[if lt IE 10]>
    <script src="/chn/assets/plugins/sky-forms-pro/skyforms/js/jquery.placeholder.min.js"></script>
<![endif]-->  
</body>
</html>  