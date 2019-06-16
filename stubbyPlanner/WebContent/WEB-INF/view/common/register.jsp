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
<title> 회원가입 - 스투비플래너</title>

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

<script src="https://www.google.com/jsapi"></script>
<script>
 google.load( "webfont", "1" );
 google.setOnLoadCallback(function() {
  WebFont.load({ custom: {
   families: [ "NanumGothic" ],
	urls: ['https://fonts.googleapis.com/earlyaccess/nanumgothic.css']
  }});
 });
</script>

    <!-- CSS Customization -->
    <link rel="stylesheet" href="/stubbyPlanner/externalData/chn/assets/css/custom.css">
	<link rel="stylesheet" href="/stubbyPlanner/externalData/superguide/assets/css/headers/header-v4.css">
	<link rel="stylesheet" href="/stubbyPlanner/externalData/css/stubbynew_topmenu.css">
</head>	

<body >
<div class="wrapper">
    <div class="container">
	

<!--오른쪽 프레임 시작-->
<div class="row" style="margin-top:15px;margin-bottom:50px;">
	<div class="col-md-3 col-xs-1"></div>
	<div class="col-md-6 col-xs-10">

<script>
	function agree()
	{
		document.getElementById('contract').style.display='none';
	}


function selectStartPos()
{
	PosType="";
	
}
function startInput()
{
	document.getElementById("logon").filters.alpha.opacity=100;
}


	var JuminValidated=false;
	var IDValidated=0;

function FSubmit()
{
	var f=document.form;

	if(!f.agree.checked)
	{
		func_alert("약관에 동의하셔야 회원가입이 가능합니다.");
		return;
	}



	if(f.name.value=='')
	{
		func_alert("이름이 입력되지 않았습니다.");
		f.name.focus();
		return;
	}

	if(f.member_id.value=='')
	{
		func_alert("아이디가 입력되지 않았습니다.");
		f.member_id.focus();
		return;
	}
	if(f.member_id.value.length<4)
	{
		func_alert("아이디는 4자 이상이어야 합니다.");
		f.member_id.focus();
		return;
	}
	if(f.password.value=='')
	{
		func_alert("비밀번호가 입력되지 않았습니다.");
		f.password.focus();
		return;
	}
	if(f.password.value.length<4)
	{
		func_alert("비밀번호는 4자이상이어야 합니다.");
		f.password.focus();
		return;
	}

	if(f.password.value!=f.password_confirm.value)
	{
		func_alert("입력된 비밀번호가 서로 일치하지 않습니다.");
		f.password.focus();
		return;
	}
	if(f.member_email.value=='')
	{
		func_alert("이메일이 입력되지 않았습니다.");
		f.member_email.focus();
		return;
	}
	if(f.vemail.value!='1')
	{
		func_alert("이메일 인증버튼을 눌러 메일을 인증받으셔야 합니다.");
		f.pemail.focus();
		return;
	}
if(f.gender.value=='')
{
	func_alert('성별이 선택되지 않았습니다. 성별을 선택해주세요.');
	return;
}
if(document.getElementById("birth_year").value==''||document.getElementById("birth_month").value=='')
{
	func_alert('생년월일이 선택되지 않았습니다. 생년월일을 선택해주세요.');
	return;
}

	/* if(IDValidated==0)
	{func_alert("아이디 중복검사를 먼저 하세요.");return;} */
/* 
	var letters = 'ghijklabvwxyzABCDEFef)_+|<>?:mnQRSTU~!@#$%^VWXYZ`1234567opGHIJKLu./;'+"'"+'[]MNOP890-='+'\\'+'&*("{},cdqrst'+"\n";
	var split = letters.split("");var num = '';var c = '';
	var encrypted = '';
	var it = f.password.value;
	var b = '0';var chars = it.split("");while(b<it.length){c = '0';while(c<letters.length){if(split[c] == chars[b]){if(c == "0") { c = ""; }if(eval(c+10) >= letters.length){num = eval(10-(letters.length-c));encrypted += split[num];}else{num = eval(c+10);encrypted += split[num];}}c++;}b++;}f.password.value = encrypted;encrypted = '';
 */
	alert("회원가입이 완료되었습니다.");
	f.submit();
}


	function check(ctype)
	{
		member_id=$("#member_id").val();

		if($("#member_id").val().length<5||$("#member_id").val().length>10)
		{
			func_alert("아이디는 5자~10자까지 가능합니다.");
			$("#member_id").focus();
			return;
		}

		 $.ajax({
			   url: '/stubbyPlanner/api/common/get_id.jsp?member_id='+member_id,
			   	dataType: 'json',
              	cache:false,
              	success: function(data){
				if(!data){
				IDValidated=1;
				func_alert("사용가능한 아이디입니다.");

				$("#pid_btn").removeClass("btn-u-red");
				$("#pid_btn").addClass("btn-u-default");
				
			}else{
					IDValidated=0;

					$("#pid_btn").addClass("btn-u-red");
					$("#pid_btn").removeClass("btn-u-default");
	
					func_alert("이미 등록된 아이디입니다. 다른 아이디를 입력하세요.");
					$("#member_id").val("");
					$("#member_id").focus("");
					}					
			}
		});
	}
	
	function ferror()
	{
		IDValidated=0;
		if(!$("#pid_btn").hasClass("btn-u-red"))
			$("#pid_btn").addClass("btn-u-red");
		$("#pid_btn").removeClass("btn-u-default");
	}

</script>


<script>
	function verify(ctype)
	{
		member_email=$("#member_email").val();
		var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
		
		if(exptext.test(member_email)==false){

			func_alert("이메일 형식이 올바르지 않습니다.");
			$("#member_email").focus();
			return;
		}
		
		 $.ajax({
			   url: '/stubbyPlanner/api/common/get_email.jsp?member_email='+member_email,
			   	dataType: 'json',
             	cache:false,
             	success: function(data){
				if(!data){
				vemail.value=1;
				func_alert("사용가능한 이메일입니다.");

				$("#btnemail").removeClass("btn-u-red");
				$("#btnemail").addClass("btn-u-default");
				
			}else{
				vemail.value=0;

					$("#btnemail").addClass("btn-u-red");
					$("#btnemail").removeClass("btn-u-default");
	
					func_alert("이미 등록된 이메일입니다. 다른 이메일을 입력하세요.");
					$("#member_email").val("");
					$("#member_email").focus("");
					}					
			}
		});
	}
	
</script>





	<form name="form" action="/stubbyPlanner/asp/join.do" method="post" class="sky-form" 
	enctype="multipart/form-data">
<!-- 	<input type="hidden" name="h_url" value="">


                        <header  style="text-align:center">회원가입 with FACEBOOK</header>                            
                            <fieldset>                  
                                <section>
			<a href="fb_login.asp?lang=ko&flink=&h_url="><img  src="/stubbyPlanner/externalData/img_v8/facebook_login.png"></a>
		    </section>
		 </fieldset>
	
	<hr/> -->
				<section>
                 <fieldset>                  
	 				<h1 class="c">
	 				<div style="text-align: center;">
                        <a href="/stubbyPlanner/common/index.do">
                            <img class="fh" src="/stubbyPlanner/externalData/images2/stu_logo_mobile.png" alt="logo"/>
                        </a>
	 				</div>
                    </h1>
				 </fieldset>
				</section>
				<hr/>
                        <header  style="text-align:center">회원가입</header>                            
                            <fieldset>                  
                                <section>
                                    <div class="row">
                                        <label class="label col col-4">이름</label>
                                        <div class="col col-8">
                                            <label class="input">
                                                <i class="icon-append fa fa-user"></i>
                                                <input type="text" name="name">
                                            </label>
                                        </div>
                                    </div>
                                </section>
                                <section>
                                    <div class="row">
                                        <label class="label col col-4">아이디</label>
                                        <div class="col col-8">
                                            <label class="input">
                                <div class="input-group">
			<input class="form-control" type="text" size="12" name="member_id" id="member_id" maxlength="12"  placeholder="영문/숫자만 사용가능, 5~10자"> 
                                    <span class="input-group-btn">
				<button onclick="javascript:check('');" class="btn-u btn-u-red" type="button" id="pid_btn">중복확인</button>
                                    </span>
                                </div>
                                            </label>
                                        </div>
                                    </div>
                                </section>

                                <section>



                                    <div class="row">
                                        <label class="label col col-4">비밀번호</label>
                                        <div class="col col-8">
                                            <label class="input">
                                                <i class="icon-append fa fa-lock"></i>
                                                <input type="password" name="password" maxlength="18" placeholder="영문/숫자만 사용가능, 4~8자">
                                            </label>
                                        </div>
                                    </div>
                                </section>
                                <section>
                                    <div class="row">
                                        <label class="label col col-4">비밀번호 확인</label>
                                        <div class="col col-8">
                                            <label class="input">
                                                <i class="icon-append fa fa-lock"></i>
                                                <input type="password"  size="12" name="password_confirm" maxlength="18">
                                            </label>
                                        </div>
                                    </div>
                                </section>

                                <section>
                                    <div class="row">
                                        <label class="label col col-4">이메일</label>
                                        <div class="col col-8">
                                            <label class="input">
                                <div class="input-group">
	                            <input type="text" class="form-control"  size="25" name="member_email" id="member_email" maxlength="100">
			<input type="hidden" name="vemail" id="vemail" value="0">
                                    <span class="input-group-btn">
                                        <button onclick="javascript:verify('');"  id="btnemail"  class="btn-u btn-u-red" type="button">이메일 인증받기</button>
                                    </span>
                                </div>
                                            </label>
                                        </div>
                                    </div>
                                </section>

                                <section>
                                    <div class="row">
                                        <label class="label col col-4">성별</label>
                                        <div class="col col-8">
                                            <label class="input">

				<select id="gender" name="gender" class="form-control  col-5">
				<option value="">----</option>
				<option value="M">남성</option>
				<option value="W">여성</option>
				</select>

                                            </label>
                                        </div>
                                    </div>
                                </section>
                                <section>
                                    <div class="row">
                                        <label class="label col col-4">생년월일</label>
                                        <div class="col col-8">
				<div class="row">
				<div class="col-md-6 col-xs-6">
				<select id="birth_year" name="birth_year" class="form-control">
				<option value="">---년---</option>
				
				<option value="1920">1920</option>
				
				<option value="1921">1921</option>
				
				<option value="1922">1922</option>
				
				<option value="1923">1923</option>
				
				<option value="1924">1924</option>
				
				<option value="1925">1925</option>
				
				<option value="1926">1926</option>
				
				<option value="1927">1927</option>
				
				<option value="1928">1928</option>
				
				<option value="1929">1929</option>
				
				<option value="1930">1930</option>
				
				<option value="1931">1931</option>
				
				<option value="1932">1932</option>
				
				<option value="1933">1933</option>
				
				<option value="1934">1934</option>
				
				<option value="1935">1935</option>
				
				<option value="1936">1936</option>
				
				<option value="1937">1937</option>
				
				<option value="1938">1938</option>
				
				<option value="1939">1939</option>
				
				<option value="1940">1940</option>
				
				<option value="1941">1941</option>
				
				<option value="1942">1942</option>
				
				<option value="1943">1943</option>
				
				<option value="1944">1944</option>
				
				<option value="1945">1945</option>
				
				<option value="1946">1946</option>
				
				<option value="1947">1947</option>
				
				<option value="1948">1948</option>
				
				<option value="1949">1949</option>
				
				<option value="1950">1950</option>
				
				<option value="1951">1951</option>
				
				<option value="1952">1952</option>
				
				<option value="1953">1953</option>
				
				<option value="1954">1954</option>
				
				<option value="1955">1955</option>
				
				<option value="1956">1956</option>
				
				<option value="1957">1957</option>
				
				<option value="1958">1958</option>
				
				<option value="1959">1959</option>
				
				<option value="1960">1960</option>
				
				<option value="1961">1961</option>
				
				<option value="1962">1962</option>
				
				<option value="1963">1963</option>
				
				<option value="1964">1964</option>
				
				<option value="1965">1965</option>
				
				<option value="1966">1966</option>
				
				<option value="1967">1967</option>
				
				<option value="1968">1968</option>
				
				<option value="1969">1969</option>
				
				<option value="1970">1970</option>
				
				<option value="1971">1971</option>
				
				<option value="1972">1972</option>
				
				<option value="1973">1973</option>
				
				<option value="1974">1974</option>
				
				<option value="1975">1975</option>
				
				<option value="1976">1976</option>
				
				<option value="1977">1977</option>
				
				<option value="1978">1978</option>
				
				<option value="1979">1979</option>
				
				<option value="1980">1980</option>
				
				<option value="1981">1981</option>
				
				<option value="1982">1982</option>
				
				<option value="1983">1983</option>
				
				<option value="1984">1984</option>
				
				<option value="1985">1985</option>
				
				<option value="1986">1986</option>
				
				<option value="1987">1987</option>
				
				<option value="1988">1988</option>
				
				<option value="1989">1989</option>
				
				<option value="1990">1990</option>
				
				<option value="1991">1991</option>
				
				<option value="1992">1992</option>
				
				<option value="1993">1993</option>
				
				<option value="1994">1994</option>
				
				<option value="1995">1995</option>
				
				<option value="1996">1996</option>
				
				<option value="1997">1997</option>
				
				<option value="1998">1998</option>
				
				<option value="1999">1999</option>
				
				<option value="2000">2000</option>
				
				<option value="2001">2001</option>
				
				<option value="2002">2002</option>
				
				<option value="2003">2003</option>
				
				<option value="2004">2004</option>
				
				<option value="2005">2005</option>
				
				<option value="2006">2006</option>
				
				<option value="2007">2007</option>
				
				<option value="2008">2008</option>
				
				<option value="2009">2009</option>
				
				<option value="2010">2010</option>
				
				<option value="2011">2011</option>
				
				<option value="2012">2012</option>
				
				<option value="2013">2013</option>
				
				<option value="2014">2014</option>
				
				<option value="2015">2015</option>
				
				<option value="2016">2016</option>
				
				<option value="2017">2017</option>
				
				<option value="2018">2018</option>
				
				<option value="2019">2019</option>
				</select>
				</span> 
				</div>
				<div class="col-md-6 col-xs-6">
				<select id="birth_month" name="birth_month" class="form-control" style="">
				<option value="">---월---</option>
				<option value="01">01</option>
				<option value="02">02</option>
				<option value="03">03</option>
				<option value="04">04</option>
				<option value="05">05</option>
				<option value="06">06</option>
				<option value="07">07</option>
				<option value="08">08</option>
				<option value="09">09</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
				</select>
				 </span>
				</div>
				</div>
                                            
                                        </div>
                                    </div>
                                </section>

							<section>
								<div class="row">
									<label class="label col col-4">프로필 사진</label>
									<div class="col col-8">
										<label class="input">
											<input type="file" class="profile_pic" name="profile_pic" style="border: none;"/>
										</label>
									</div>
								</div>
							</section>

							<section>
                                    <label class="checkbox"><input type="checkbox" name="accept_mail" value="Y" id="accept_mail" checked><i></i>여행(계획)중일때에 해당 여행과 관련된 회원특가 광고메일을 받겠습니다.</label>
                                </section>
                                
                                <section>
			<a class="btn-u btn-u-dark btn-block" href="https://www.stubbyplanner.com/common/usercontract.html" target="_blank">이용약관</a>
			<a class="btn-u btn-u-dark btn-block" href="https://www.stubbyplanner.com/personalinfo.asp" target="_blank">개인정보 취급방침</a>
                                    <label class="checkbox"><input type="checkbox" name="agree" id="agree"><i></i>약관과 개인정보 수집 및 이용방침에 동의합니다.</label>
                                </section>
                            </fieldset>
                            <footer style="text-align:center">
			<a class="btn-u btn-u-lg" href="javascript:FSubmit();">회원가입</a> <a class="btn-u btn-u-lg btn-u-default" href="javascript:window.history.go(-1);">취소</a>
                            </footer>

                        </form>      
	</div>
	<div class="col-md-3 col-xs-1"></div>

</div>


    </div><!--/end cotnainer-->

 <script>
function showUserAgree()
{
	$("#useragree").show();
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


</div><!--/wrapper-->


<div id="alert_modal" style="z-index:99999;display:none;position:fixed;top:100px;left:50%;margin-left:-125px;">
	<div style="text-align:right"><a href="javascript:closeAlertModal()" class="btn-u btn-u-xs" style="border:4px solid #fff;border-radius:50px;background:#3ad195"><font style="font-size:18pt;color:#fff"><i class="fa fa-times"></i></font></a></div>
	<div style="padding-right:12px;">
		<div style="z-index:109999;margin-top:-18px;background:#3ad195;border:4px solid #fff;width:250px;padding-top:10px;padding-left:10px;padding-right:10px;padding-bottom:10px;border-radius:10px;">
			<div id="alert_modal_msg" style="font-size:13pt;color:#fff"></div>
		</div>
	</div>
</div>


<!-- JS Global Compulsory -->
<script src="/stubbyPlanner/externalData/chn/assets/plugins/jquery/jquery.min.js"></script>
<script src="/stubbyPlanner/externalData/chn/assets/plugins/jquery/jquery-migrate.min.js"></script>
<script src="/stubbyPlanner/externalData/chn/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="/stubbyPlanner/externalData/chn/assets/plugins/sky-forms-pro/skyforms/js/jquery.validate.min.js"></script>
<script src="/stubbyPlanner/externalData/chn/assets/plugins/sky-forms-pro/skyforms/js/jquery.maskedinput.min.js"></script>
<script src="/stubbyPlanner/externalData/chn/assets/plugins/sky-forms-pro/skyforms/js/jquery-ui.min.js"></script>
<script src="/stubbyPlanner/externalData/chn/assets/plugins/sky-forms-pro/skyforms/js/jquery.form.min.js"></script>

<!-- JS Implementing Plugins -->
<script type="text/javascript" src="/stubbyPlanner/externalData/chn/assets/js/forms/reg.js"></script>

<!-- JS Customization -->
<script src="/stubbyPlanner/externalData/chn/assets/js/custom.js"></script>


<script>
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