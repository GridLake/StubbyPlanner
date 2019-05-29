
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:og="http://ogp.me/ns#" xmlns:fb="http://www.facebook.com/2008/fbml">
 <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# stubbyplanner_com: http://ogp.me/ns/fb/stubbyplanner_com#">
    <meta charset="utf-8">
<meta http-equiv="Content-Language" content="ko">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보 변경 -스투비플래너</title>
   <!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

<link type="text/css" href="/css/ui-lightness/jquery-ui-1.8.16.custom.css" rel="Stylesheet" />	
<script type="text/javascript" src="/js/jquery-1.6.2.min.js"></script>
<script type="text/javascript" src="/js/jquery-ui-1.8.16.custom.min.js"></script>

    <script src="../js/bootstrap-dropdown.js"></script>
    <script src="../js/bootstrap-modal.js"></script>
<script src="../js/bootstrap-alerts.js"></script>

    <!-- Le styles -->
    <link href="../bootstrap_notable.css" rel="stylesheet">
    <style type="text/css">
      /* Override some defaults */
      html, body {
        background-color: #eee;
      }
      body {
        padding-top: 65px; /* 40px to make the container go all the way to the bottom of the topbar */
      }
      .container > footer p {
        text-align: center; /* center align it with the container */
      }
      .container {
        padding-top:0px;
       margin-top:0px;
        width: 900px; /* downsize our container to make the content feel a bit tighter and more cohesive. NOTE: this removes two full columns from the grid, meaning you only go to 14 columns and not 16. */
      }

      /* The white background content wrapper */
      .content {
        background-color: #fff;
        padding-left: 20px;
        padding-right: 20px;
        padding-bottom: 20px;
        padding-top:0px;
       margin-top:0px;
        margin: 0 -20px; /* negative indent the amount of the padding to maintain the grid system */
        -webkit-border-radius: 0 0 6px 6px;
           -moz-border-radius: 0 0 6px 6px;
                border-radius: 0 0 6px 6px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.15);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.15);
                box-shadow: 0 1px 2px rgba(0,0,0,.15);
      }

      /* Page header tweaks */
      .page-header {
        background-color: #f5f5f5;
        padding: 20px 20px 10px;
        margin: -20px -20px 10px;
      }

      /* Styles you shouldn't keep as they are for displaying this base example only */
      .content .span10,
      .content .span4 {
        min-height: 500px;
      }
      /* Give a quick and non-cross-browser friendly divider */
      .content .span4 {
        margin-left: 0;
        padding-left: 19px;
        border-left: 1px solid #eee;
      }

      .topbar .btn {
        border: 0;
      }
     .container table{

	padding:10px;
     }
     .container table td{
	padding:10px;
     }
     .clearfix{
	margin-top:5px;
	margin-bottom:5px;

     }
     .input
     {
	padding-left:10px;
     }

    </style>

<script>
 function updatepfimg()
{
	document.getElementById("img_pf").src="/pfimg/9/6/rlrlghk_sq.jpg";
}
</script>
<script src="/js/common.js" type="text/javascript"></script>
<script>
	function agree()
	{
		document.getElementById('contract').style.display='none';
	}
	function URLEncode(sStr)
	{ return escape(sStr).replace(/\+/g, '%2C').replace(/\"/g,'%22').replace(/\'/g, '%27'); }
	function HTTPObject()
	{
		var JXHR;
		if (window.ActiveXObject) 
		{
			if (_XML_ActiveX)
			{
			        JXHR = new ActiveXObject(_XML_ActiveX);
			} 
			else 
			{
				var versions = ["MSXML2.XMLHTTP","Microsoft.XMLHTTP", "Msxml2.XMLHTTP.7.0", "Msxml2.XMLHTTP.6.0","Msxml2.XMLHTTP.5.0", "Msxml2.XMLHTTP.4.0", "MSXML2.XMLHTTP.3.0"];
				for (var i = 0; i < versions.length ; i++) 
				{
					try 
					{
						JXHR = new ActiveXObject(versions[i]);
						if (JXHR)
						{
							var _XML_ActiveX = versions[i];
							break;
						}
					}
					catch (e)
					{
					}
				}
			}
		}
		if (!JXHR && typeof XMLHttpRequest != 'undefined') 
		{
			try
			{
				JXHR = new XMLHttpRequest();
			}
			catch (e) 
			{
				JXHR = false;
			}
		}
		return JXHR;
	}

function selectStartPos()
{
	PosType="";
	
}
function startInput()
{
	document.getElementById("logon").filters.alpha.opacity=100;
}


function FSubmit()
{
	var f=document.form;
	if(f.pname.value=="")
	{
		alert("이름/별명을 입력하셔야 수정됩니다.");
		f.pname.focus();
		return;
	}
	
	if(f.cur_ppass.value=="")
	{
		alert("현재의 비밀번호를 입력하셔야 수정됩니다.");
		f.cur_ppass.focus();
		return;
	}

	if(f.ppass.value!=f.ppass_confirm.value)
	{
		alert("입력된 비밀번호가 서로 일치하지 않습니다.");
		f.ppass.focus();
		return;
	}
	if(f.pemail.value=='')
	{
		alert("이메일이 입력되지 않았습니다.");
		f.pemail.focus();
		return;
	}
	if(document.getElementById("HPURL").value.length<10||document.getElementById("HPURL").value=='http://')
	{
//		alert('미니홈피/블로그주소가 입력되지 않았습니다. 미니홈피/블로그 주소가 없으실 경우 네이버 혹은 다음블로그/싸이월드 미니홈피를 개설한 다음 이용해주시기 바랍니다.');
//		f.HPURL.focus();
//		return;
	}
	if(!document.getElementById("gender_w").checked&&!document.getElementById("gender_m").checked)
	{
		alert('성별이 선택되지 않았습니다. 성별을 선택해주세요.');
		return;
	}
	if(document.getElementById("birth_year").value==''||document.getElementById("birth_month").value=='')
	{
		alert('생년월일이 선택되지 않았습니다. 생년월일을 선택해주세요.');
		return;
	}

	var letters = 'ghijklabvwxyzABCDEFef)_+|<>?:mnQRSTU~!@#$%^VWXYZ`1234567opGHIJKLu./;'+"'"+'[]MNOP890-='+'\\'+'&*("{},cdqrst'+"\n";
	var split = letters.split("");var num = '';var c = '';
	var encrypted = '';
	var it = f.cur_ppass.value;
	var b = '0';var chars = it.split("");while(b<it.length){c = '0';while(c<letters.length){if(split[c] == chars[b]){if(c == "0") { c = ""; }if(eval(c+10) >= letters.length){num = eval(10-(letters.length-c));encrypted += split[num];}else{num = eval(c+10);encrypted += split[num];}}c++;}b++;}f.cur_ppass.value = encrypted;encrypted = '';


	var letters = 'ghijklabvwxyzABCDEFef)_+|<>?:mnQRSTU~!@#$%^VWXYZ`1234567opGHIJKLu./;'+"'"+'[]MNOP890-='+'\\'+'&*("{},cdqrst'+"\n";
	var split = letters.split("");var num = '';var c = '';
	var encrypted = '';
	var it = f.ppass.value;
	var b = '0';var chars = it.split("");while(b<it.length){c = '0';while(c<letters.length){if(split[c] == chars[b]){if(c == "0") { c = ""; }if(eval(c+10) >= letters.length){num = eval(10-(letters.length-c));encrypted += split[num];}else{num = eval(c+10);encrypted += split[num];}}c++;}b++;}f.ppass.value = encrypted;encrypted = '';

	f.submit();
}

</script>
</head>
<body>

    <script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-913663-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>

<script>
function openTourMap(srcserial,ds,mapid)
{


	var NewWin=window.open("/tourmap/tourmap.asp?SrcSerial="+srcserial, "map", "width=1000,height=710,toolbar=No,location=No,scrollbars=no,status=No,resizable=yes"); 
	NewWin.moveTo(0,0);
	NewWin.focus();
}
</script>

<div class="topbar" style="width:100%;text-align:center;border-bottom:1px solid #c0c0c0;background:#fff;padding-bottom:0px;margin-bottom:0px;height:60px;">
<div style="display:inline-block;margin-bottom:-5px;padding-bottom:0px;padding-top:0px;width:1024px;">
	<a href="/"><img src="/img_v8/logo.png" height="55px" style="float:left"></a>
	<div class="stubby_menu_box" onclick="window.location='/plan/planner_step1.asp';" style="border-left:1px solid #c0c0c0;margin-left:120px;" >
		<a href="/plan/planner_step1.asp"><font class="stubby_menu_title" style="color:#fe3608">플래너</font></a>
		<div class="stubby_menu_subtitle" style="display:none;"><font class="stubby_menu_txt">내 여행계획 만들기</font></div>
	</div>
	<div class="stubby_menu_box"  onclick="window.location='/m/recomm.asp';">
		<a href="/m/recomm.asp"><font class="stubby_menu_title">추천여행</font></a>
		<div class="stubby_menu_subtitle" style="display:none;"><font class="stubby_menu_txt">관광지,여행루트,일정 추천</font></div>
	</div>

	<div class="stubby_menu_box" onclick="window.location='/square/';">
		<a href="/square/"><font class="stubby_menu_title">광장</font></a>
		<div class="stubby_menu_subtitle" style="display:none;"><font class="stubby_menu_txt">열린 여행자들과의 대화</font></div>
	</div>



<script>
	$( ".stubby_menu_box" ).bind( "mouseover", function() {
		$(this).children(".stubby_menu_subtitle").show();
		$(this).css("padding-top","10px");
		$(this).css("height","50px");

	});
	$( ".stubby_menu_box" ).bind( "mouseout", function() {
		$(this).children(".stubby_menu_subtitle").hide();
		$(this).css("padding-top","20px");
		$(this).css("height","40px");
	});
	$( ".stubby_menu_box_selected" ).bind( "mouseover", function() {
		$(this).children(".stubby_menu_subtitle").show();
		$(this).css("padding-top","10px");
		$(this).css("height","50px");

	});
	$( ".stubby_menu_box_selected" ).bind( "mouseout", function() {
		$(this).children(".stubby_menu_subtitle").hide();
		$(this).css("padding-top","20px");
		$(this).css("height","40px");
	});
</script>
	<div class="stubby_menu_box_noline" style="text-align:right;">

				<ul class="nav" style="margin-bottom:0px;margin-right:0px;padding-bottom:0px;text-align:left;">

			 		<li class="dropdown" data-dropdown="dropdown"  style="margin-bottom:0px;padding-bottom:0px">
						<a href="#" class="dropdown-toggle"  style="margin-bottom:0px;padding-bottom:0px"><img src="/img_v8/ico_notification.png"></a>
						<ul class="dropdown-menu" style="background:#ffffff;width:240px;margin-left:-140px;margin-top:20px;">
							<li style="border-bottom:1px solid #c0c0c0;padding-top:3px;padding-bottom:3px;">&nbsp;<font style="color:#696969"><b>Notification</b></font></li>

			<li class="stubby_topmenu">
			<div class="row" style="margin-left:5px;border-bottom:1px solid #c0c0c0;padding-top:3px;padding-bottom:3px;">
				<div class="span1" style="margin-left:0px;width:50px;"><a href="/plan/profile.asp?id=xxx6400" target="_blank" alt="xxx6400"  style="padding:1px"><img class="pfimg" onerror="this.src='/img_v6/img_pfnull.gif'" src="/pfimg/6/6/xxx6400_sq.jpg" border="0"></a></div>
				<div class="span" style="margin-left:0px;width:160px;padding-left:0px;padding-right:0px"><a href="javascript:shownotifydetail('newsfeed','1000000000165812997','150252')" title="xxx6400 adds a comment on your post."><font style="font-size:9pt;color:#8a8a8a;">xxx6400 adds a comment on your post.</font></a><span class="corner small"><font style="font-size:9pt;color:#c0c0c0">5월 10일</font></span></div>
			</div>
			</li>

			<li class="stubby_topmenu">
			<div class="row" style="margin-left:5px;border-bottom:1px solid #c0c0c0;padding-top:3px;padding-bottom:3px;">
				<div class="span1" style="margin-left:0px;width:50px;"><a href="/plan/profile.asp?id=xxx6400" target="_blank" alt="xxx6400"  style="padding:1px"><img class="pfimg" onerror="this.src='/img_v6/img_pfnull.gif'" src="/pfimg/6/6/xxx6400_sq.jpg" border="0"></a></div>
				<div class="span" style="margin-left:0px;width:160px;padding-left:0px;padding-right:0px"><a href="javascript:shownotifydetail('newsfeed','1000000000165812998','150251')" title="xxx6400 adds a comment on your post."><font style="font-size:9pt;color:#8a8a8a;">xxx6400 adds a comment on your post.</font></a><span class="corner small"><font style="font-size:9pt;color:#c0c0c0">5월 10일</font></span></div>
			</div>
			</li>

							<li class="stubby_topmenu"><a href="javascript:shownotifylist();"><font color="#8a8a8a" style="font-size:9pt">모두보기</font></a></li>
						</ul>
					</li>
				</ul>
				<ul class="nav" style="float:right;margin-right:0px;margin-left:0px;margin-bottom:0px;padding-bottom:0px;text-align:left;">
			 		<li class="dropdown" data-dropdown="dropdown"  style="margin-bottom:0px;padding-bottom:0px;">
						<a href="#" class="dropdown-toggle"  style="margin-bottom:0px;padding-bottom:0px"><img onerror="this.src='/img_v6/img_pfnull.gif'" src="/pfimg/9/6/rlrlghk_sq.jpg"><img style="margin-bottom:15px;" src="/img_v8/ico_topmenu_down.png"/></a>
						<ul class="dropdown-menu" style="background:#ffffff;width:240px;margin-left:-140px;margin-top:20px;">
							<li class="stubby_topmenu"><a href="/plan/profile.asp?id=rlrlghk"><b><font color="#8a8a8a" style="font-size:9pt">마이페이지</font></b></a></li>

							<li class="stubby_topmenu"><a href="/common/memberinfo.asp"><font color="#8a8a8a" style="font-size:9pt">회원정보변경</font></a></li>
							<li class="stubby_topmenu"><a href="/qa/"><font color="#8a8a8a" style="font-size:9pt">문의하기</font></a></li>
							<li class="stubby_topmenu"><a href="/mentor/"><font color="#8a8a8a" style="font-size:9pt">멘토검색</font></a></li>
							<li class="stubby_topmenu"><a href="/common/logout.asp"><font color="#8a8a8a" style="font-size:9pt">로그아웃</font></a></li>
							<li class="stubby_topmenu"><a href="/common/fb_login.asp" style="margin-bottom:0px;padding-bottom:6px" title="페이스북 연결하기"><img src="/img_v6/btn_facebook_connect.png" class="stubby_topbutton"></a></li>
						</ul>
					</li>
				</ul>
				<div class="clear"></div>


	</div>
	<div class="clear"></div>
</div>
</div>



<script>
function chgmenuimg(img,id)
{
	$("#"+id).attr("src",img);
}
</script>
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

function showAD()
{
	closeModal();
	
	$('#modal-ad').modal({
		keyboard: true,
		backdrop: 'static',
		show:true
	});
}
</script>

        <div id="modal-notifydetail" class="modal hide fade" style="width:600px">
            <div class="modal-header">
              <a href="#" class="close">&times;</a>
              <h3 id="notifydetail_title"></h3>
            </div>
            <div class="modal-body">
              <iframe id="if_notifydetail" frameborder="0" src="about:blank" width="560px" height="400px" scrolling="no"></iframe>
            </div>
          </div>
        <div id="modal-login" class="modal hide fade" style="width:700px">
            <div class="modal-header">
              <a href="#" class="close">&times;</a>
              <h3>스투비 로그인</h3>
            </div>
            <div class="modal-body">
              <iframe id="if_login" frameborder="0" src="about:blank" width="660px" height="400px" scrolling="no"></iframe>
            </div>
          </div>

<script src="http://www.google.com/jsapi"></script>
<script>

</script>


    <div class="container">
      <div class="content">
<div class="page-header">
	<br/>
	<h2>회원정보 변경 <input type="button" class="btn small" style="font-size:11pt" value="회원탈퇴" onclick="window.location='memberexit.asp';"></h2>
</div>
<!--오른쪽 프레임 시작-->
<div style="margin-top:30px;padding-left:100px" id="divX">

	<iframe src="/pfimg/Default.aspx?id=rlrlghk&c=78362538dc6567e2b04029c69a75878c&d=9%2F6" width="100%" height="90px" frameborder="0"></iframe>


<form name="form" action="/asp/join.asp?mode=edit&from=b3" method="post">
				<div class="clearfix">
					<label for="pname">이름&nbsp;</label>
					<div class="input">
						<input class="small" type="text" size=12 name="pname" value="김길환" maxlength="8">	
					</div>
				</div>
				<div class="clearfix">
					<label for="pid">아이디&nbsp;</label>
					<div class="input">
						<b>rlrlghk</b>
					</div>
				</div>
				<div class="clearfix">
					<label for="ppass">변경할 비밀번호&nbsp;</label>
					<div class="input">

						<input class="small" type=password size=12 name="ppass" maxlength="22"> <font class="small">영문/숫자만 사용가능, 4~8자</font>
					</div>
				</div>
				<div class="clearfix">
					<label for="ppass_confirm">변경할 비밀번호 확인&nbsp;</label>
					<div class="input">
						<input class="small" type="password" size="12" name="ppass_confirm" maxlength="22">	
					</div>
				</div>
				<div class="clearfix">
					<label for="ppass_confirm">현재 비밀번호&nbsp;</label>
					<div class="input">
						<input class="small" type="password" size="12" name="cur_ppass" maxlength="22">	
					</div>
				</div>
				<div class="clearfix">
					<label for="vemail">이메일주소&nbsp;</label>
					<div class="input">
						
						<input class="xlarge" type=text size=25 name="pemail" id="pemail" maxlength="100" value="rlrlghk@naver.com"> 

					</div>
				</div>
				<div class="clearfix">
					<label for="gender">성별&nbsp;</label>
					<div class="input">
						<input  id="gender_w" name="gender" type=radio value="W" >여 <input id="gender_m" name="gender" type=radio value="M" checked>남
					</div>
				</div>
				<div class="clearfix">
					<label for="gender">미니홈피/블로그&nbsp;</label>
					<div class="input">
						<input  id="HPURL" name="HPURL" size=50 name="HPURL" maxlength="200" value="">
					</div>
				</div>
				<div class="clearfix">
					<label for="birth_year">생년월일&nbsp;</label>
					<div class="input">	
						<select id="birth_year" name="birth_year" class="small">

<option value="1920" >1920</option>

<option value="1921" >1921</option>

<option value="1922" >1922</option>

<option value="1923" >1923</option>

<option value="1924" >1924</option>

<option value="1925" >1925</option>

<option value="1926" >1926</option>

<option value="1927" >1927</option>

<option value="1928" >1928</option>

<option value="1929" >1929</option>

<option value="1930" >1930</option>

<option value="1931" >1931</option>

<option value="1932" >1932</option>

<option value="1933" >1933</option>

<option value="1934" >1934</option>

<option value="1935" >1935</option>

<option value="1936" >1936</option>

<option value="1937" >1937</option>

<option value="1938" >1938</option>

<option value="1939" >1939</option>

<option value="1940" >1940</option>

<option value="1941" >1941</option>

<option value="1942" >1942</option>

<option value="1943" >1943</option>

<option value="1944" >1944</option>

<option value="1945" >1945</option>

<option value="1946" >1946</option>

<option value="1947" >1947</option>

<option value="1948" >1948</option>

<option value="1949" >1949</option>

<option value="1950" >1950</option>

<option value="1951" >1951</option>

<option value="1952" >1952</option>

<option value="1953" >1953</option>

<option value="1954" >1954</option>

<option value="1955" >1955</option>

<option value="1956" >1956</option>

<option value="1957" >1957</option>

<option value="1958" >1958</option>

<option value="1959" >1959</option>

<option value="1960" >1960</option>

<option value="1961" >1961</option>

<option value="1962" >1962</option>

<option value="1963" >1963</option>

<option value="1964" >1964</option>

<option value="1965" >1965</option>

<option value="1966" >1966</option>

<option value="1967" >1967</option>

<option value="1968" >1968</option>

<option value="1969" >1969</option>

<option value="1970" >1970</option>

<option value="1971" >1971</option>

<option value="1972" >1972</option>

<option value="1973" >1973</option>

<option value="1974" >1974</option>

<option value="1975" >1975</option>

<option value="1976" >1976</option>

<option value="1977" >1977</option>

<option value="1978" >1978</option>

<option value="1979" >1979</option>

<option value="1980" >1980</option>

<option value="1981" >1981</option>

<option value="1982" >1982</option>

<option value="1983" >1983</option>

<option value="1984" >1984</option>

<option value="1985" >1985</option>

<option value="1986" >1986</option>

<option value="1987" >1987</option>

<option value="1988" >1988</option>

<option value="1989" >1989</option>

<option value="1990" >1990</option>

<option value="1991" >1991</option>

<option value="1992" >1992</option>

<option value="1993" selected>1993</option>

<option value="1994" >1994</option>

<option value="1995" >1995</option>

<option value="1996" >1996</option>

<option value="1997" >1997</option>

<option value="1998" >1998</option>

<option value="1999" >1999</option>

<option value="2000" >2000</option>

<option value="2001" >2001</option>

<option value="2002" >2002</option>

<option value="2003" >2003</option>

<option value="2004" >2004</option>

<option value="2005" >2005</option>

<option value="2006" >2006</option>

<option value="2007" >2007</option>

<option value="2008" >2008</option>

<option value="2009" >2009</option>

<option value="2010" >2010</option>

<option value="2011" >2011</option>

<option value="2012" >2012</option>

<option value="2013" >2013</option>

<option value="2014" >2014</option>

<option value="2015" >2015</option>

<option value="2016" >2016</option>

<option value="2017" >2017</option>

<option value="2018" >2018</option>

<option value="2019" >2019</option>
</select>년 
<select id="birth_month" name="birth_month" class="small">
<option value="">--</option>
<option value="01" >01</option>
<option value="02" >02</option>
<option value="03" >03</option>
<option value="04" >04</option>
<option value="05" >05</option>
<option value="06" >06</option>
<option value="07" >07</option>
<option value="08" >08</option>
<option value="09" >09</option>
<option value="10" selected>10</option>
<option value="11" >11</option>
<option value="12" >12</option>
</select>
월

(<input type="checkbox" name="priv_hidebirth" value="1" > 비공개)



					</div>
				</div>
		
<div id="divEmail" style="display:block;margin-left:0px">
	<ul class="unstyled">
	<li><b>공지 이메일수신여부</b> <input type=checkbox name="accept_mail" value="Y" >중요 서비스 공지 및 이벤트에 대한 안내 메일을 받습니다</li>
	<li><b>댓글/메세지 이메일수신</b> <input type=checkbox name="AcceptCommentEmail" value="Y" >작성한 여행계획에 다른 회원이 댓글을 남길경우 이메일로 확인합니다.</li>
	<li><b>리뷰요청 이메일 수신</b> <input type=checkbox name="AcceptReviewEmail" value="Y" >플래너에 기록한 숙소,투어등의 예약정보에 대한 리뷰를 요청하는 메일이 발송됩니다.</li>

	<li><b>멘토 신청 알림</b> <input type=checkbox name="AcceptMentorEmail" value="Y" >누군가 자신을 멘토로 선택하면 메일로 알려줍니다.</li>
	<li><b>멘티 질문 알림</b> <input type=checkbox name="AcceptQnaEmail" value="Y" >나의 멘티가 질문을 남기면 메일로 알려줍니다.</li>
	</ul>
</div>
<div style="padding-left:100px">
	<input type="button" class="large btn primary" onclick="FSubmit();" value="수정하기"> 
	<input type="button"  class="large btn" value=" 취소 " onclick="window.history.go(-1);">
</div>
</form>

</div>
<!--오른쪽 프레임 끝-->
</div>
      <footer>
        <p><a href="http://www.stubbyplanner.com">&copy; STUBBYPLANNER 2015</a> </p>
      </footer>
 </div>

  </body>
</html>