<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/include.jspf" %>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:v="urn:schemas-microsoft-com:vml">
<head>
<meta http-equiv="Content-Language" content="ko">
<meta http-equiv="Content-Type" content="text/html;" charset="UTF-8">
<style type="text/css"> 
BODY { scrollbar-3dlight-color:#000000;
scrollbar-arrow-color:#000000;
scrollbar-track-color:#F2F2F2;
scrollbar-darkshadow-color:#DBE5D0;
scrollbar-face-color:#FFFFFF;
scrollbar-highlight-color:#FFFFFF;
scrollbar-shadow-color:gray}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
td
{
	font-size:8pt;
	color:gray;
	align:left;
	font-family:돋움;
}
.middle
{
	font-weight:bold;
	font-size:11pt;
	color:black;
	align:left; 
	font-family:돋움;
}
.big
{
	font-weight:bold;
	font-size:13pt;
	color:black;
	align:left; 
	font-family:돋움;
}
a{
	text-decoration:none;
	color:gray;
}
 
.small {
	color: #000000;
	font-family:Tahoma;
	font-size: 11px;
}
img {border:0;}
a:hover .alpha{
	filter:Alpha(Opacity=70);
}
.topmenu{
	width:125px;
	height:55px;
	border-top:1px solid #C4C4C4;
	border-left:1px solid #C4C4C4;
	border-right:1px solid #C4C4C4;
	padding:10 5 5 5;
	font-size:10pt;
	color:#000000;
	text-align:center; 
	face:돋움;
}
.topmenu td a{
	font-size:10pt;
	color:#000000;
	text-align:left; 
	face:돋움;
}
.menu
{

	background-color:#efefef;
	border-top:1px solid #C4C4C4;
	padding:0 0 0 5px;
}
.topmenu:hover{
	background-color:#FF0000;
}
.menu:hover{
  background-color:#FF0000;
}
.submenu
{
	border-bottom:1px solid #eeeeee;
	padding:5 5 5 20;
}
.input
{
	font-face:Verdana;
	font-size:11pt;
	font-weight: bold;
	border:1px solid #c4c4c4;
}
.button
{
	font-face:Verdana;
	font-size:11pt;
	font-weight: bold;
}
select
{
	font-face:Verdana;
	font-size:10pt;
	font-weight: bold;
	border:1px solid #c4c4c4;
}
</style>
<!-- <script src="/js/mngtax_UTF8.js"   type="text/javascript"></script>
<script src="/js/common_UTF8.js"   type="text/javascript"></script> -->
<script charset="UTF-8" src="https://maps.google.co.kr/maps/api/js?sensor=false&language=ko&key=AIzaSyD22gGuJambID4g4M2bHWgxOCmWCArzTzM&callback" type="text/javascript"></script>

<script>
function openTourMapX(se)
{
	if(se=="")
		alert("공항을 선택한 뒤에 지도를 보실 수 있습니다.");
	else
		window.open("http://www.stubbyplanner.com/wheretogo/index.asp?srcserial="+se+"&tbl=map");
}
    var map = null;
    var geocoder = null;
  var marker=null;
     function initialize() {
      if (GBrowserIsCompatible()) {
       map = new GMap2(document.getElementById("ggmap"));
       var center = new GLatLng(0,0);
        map.setCenter(center, 3);
       geocoder = new GClientGeocoder();
        map.addControl(new GSmallMapControl());
        map.addControl(new GMapTypeControl());

       marker = new GMarker(center, {draggable: true});
 
        GEvent.addListener(marker, "dragstart", function() {
          map.closeInfoWindow();
        });
 
        GEvent.addListener(marker, "dragend", function() {
          	marker.openInfoWindowHtml("<table height=\"60px\" width=\"150px\"><tr><td align=\"center\"><input type='button' value='현재위치 입력' style='font-size:15pt' onclick='SaveHere(marker.getLatLng().lat(),marker.getLatLng().lng());'></td></tr></table>");
         });
 
        map.addOverlay(marker);
 
      }
    }
 
    function showAddress(address) {
      if (geocoder) {
        geocoder.getLatLng(
          address,
          function(point) {
            if (!point) {
              alert("'"+address+"'(으)로 위치를 자동으로 찾는데 실패했습니다. 지도에서 빨간 마커를 드래그(darg)하여 위치를 직접 지정해주세요.");
            } else {
              map.setCenter(point, 13);
              marker.setLatLng(point);	
	marker.openInfoWindowHtml("<table height=\"60px\" width=\"150px\"><tr><td align=\"center\"><input type='button' value='현재위치 입력' style='font-size:15pt' onclick='SaveHere(marker.getLatLng().lat(),marker.getLatLng().lng());'></td></tr></table>");
            }
          }
        );
      }
    }
var g_id;
function SaveHere(lat,lng)
{
	closeMap();
	completeLocation(g_id,lat,lng);
}
function loadMap(id,title,inilat,inilng,inizl,iniadrs)
{
	g_id=id;
	document.getElementById("_mapTitle").innerHTML=title;
	document.getElementById("input_location").style.display="block";
	var center = new GLatLng(inilat,inilng);
	map.setCenter(center, inizl);
 
	marker.setLatLng(center);
	marker.openInfoWindowHtml("<table height=\"60px\" width=\"150px\"><tr><td align=\"center\"><input type='button' value='현재위치 입력' style='font-size:15pt' onclick='SaveHere(marker.getLatLng().lat(),marker.getLatLng().lng());'></td></tr></table>");
	if(iniadrs)
	{
		document.getElementById("_mapAddress").value=iniadrs;
		if(iniadrs!='')
			showAddress(iniadrs);
	}
}
function closeMap()
{
	document.getElementById("input_location").style.display="none";
}
function ClickSearchAdrs()
{
	var _adrs=document.getElementById("_mapAddress").value;
	showAddress(_adrs);
}

//두개의 인터페이스 , loadMap(id,title,inilat,inilng,inizl,iniadrs)으로 호출가능 , 완료후 completeMap(id,lat,lng) 이 호출됨
 </script>

 </head>


<body>

<!-------------예약완료인때 시작--------------->

<!---왼쪽 시작--->
<!-- &region=&startdate= -->
<form target="_parent" action="<%= contextPath %>/planner/add_resv_info.do?t=air&trip_id=10286254&rs=96768" method="post">

<input type="hidden" name="FromCitySerial" id="FromCitySerial" value="161031002">
<input type="hidden" name="ToCitySerial" value="111011004">
<input type="hidden" name="RT_FromCitySerial" value="111031001">
<input type="hidden" name="RT_ToCitySerial" id="RT_ToCitySerial" value="161031002">
<input type="hidden" name="isSubmit" value="1">

	<table width="100%" style="border:1px solid #c4bd97" cellpadding="2" cellspacing="0" align="center">
	<tr><td style="background-color:#e8dfce;">
		<table width="100%" cellpadding="0" cellspacing="0" >
		<tr><td valign="top">
			<select name="AirlineCode" id="AirlineCode" style="font-face:Verdana;font-size:12pt;font-weight: bold">
		                <option value="__">--------항공사 선택--------</option>
		                <option value="KE" >대한항공[KE]</option>
		                <option value="OZ" >아시아나항공[OZ]</option>
						<option value="D7">에어아시아[D7]</option>
		                <option value="JL" >일본항공[JL]</option>
		                <option value="NH" >전일본공수[NH]</option>
		                <option value="KL" >KLM 네델란드항공[KL]</option>
		                <option value="LH" >루프트한자 독일항공[LH]</option>
		                <option value="BX" >에어부산[BX]</option>
		                <option value="ZE" >이스타 항공 [ZE]</option>
 		                <option value="LJ" >진에어[LJ]</option>
		                <option value="7C" >제주항공[7C]</option>
		                <option value="CX" >캐세이패시픽항공[CX]</option>
		                <option value="MM" >피치항공[MM]</option>
		                <option value="__" >-------전체리스트(가나다순)------</option>
		                <option value="GA" >가루다인도네시아[GA]</option>
		                <option value="GF" >걸프에어[GF]</option>
		                <option value="JS" >고려항공[JS]</option>
		                <option value="K2" >기르키스탄항공[K2]</option>
		                <option value="NW" >노스웨스트항공 [NW]</option>
		                <option value="H8" >달라비아항공[H8]</option>
		                <option value="KE" >대한항공[KE]</option>
		                <option value="DL" >델타항공[DL]</option>
		                <option value="KA" >드래곤항공[KA]</option>
		                <option value="JT" >라이언에어[JT]</option>
		                <option value="LA" >란 칠레항공[LA]</option>
		                <option value="SU" >러시아항공[SU]</option>
		                <option value="RA" >로얄네팔항공[RA]</option>
		                <option value="BI" >로얄브루나이 [BI]</option>
		                <option value="RJ" >로얄요르단항공[RJ]</option>
		                <option value="RK" >로얄크메르항공[RK]</option>
		                <option value="LH" >루프트한자 독일항공[LH]</option>
		                <option value="LG" >룩셈부르크항공[LG]</option>
		                <option value="AE" >만다린항공[AE]</option>
		                <option value="MH" >말레이지아항공[MH]</option>
		                <option value="MZ" >메파티항공[MZ]</option>
		                <option value="MX" >멕시카나항공[MX]</option>
		                <option value="AM" >멕시코항공[AM]</option>
		                <option value="OM" >몽고리안항공[OM]</option>
		                <option value="YX" >미드웨스트익스프레스[YX]</option>
		                <option value="UB" >미얀마항공[UB]</option>
		                <option value="RG" >바릭항공[RG]</option>
		                <option value="VP" >바스피브라질항공[VP]</option>
		                <option value="LZ" >발칸항공[LZ]</option>
		                <option value="PG" >방콕항공[PG]</option>
		                <option value="VN" >베트남항공[VN]</option>
		                <option value="B2" >벨라비아항공[B2]</option>
		                <option value="BU" >부라덴스웨던항공[BU]</option>
		                <option value="BD" >브리티시미들랜드 항공[BD]</option>
		                <option value="XF" >블라디보스톡항공[XF]</option>
		                <option value="BG" >비만방글라데시 항공[BG]</option>
		                <option value="SV" >사우디아라비아 항공[SV]</option>
		                <option value="SA" >사우스아프리칸 항공[SA]</option>
		                <option value="HZ" >사할린항공[HZ]</option>
		                <option value="SC" >산동항공[SC]</option>
		                <option value="FM" >상하이항공[FM]</option>
		                <option value="5J" >세부퍼시픽[5J]</option>
		                <option value="SD" >수단항공[SD]</option>
		                <option value="UL" >스리랑카항공[UL]</option>
		                <option value="SR" >스위스에어[SR]</option>
		                <option value="LX" >스위스항공[LX]</option>
		                <option value="BC" >스카이마크항공[BC]</option>
		                <option value="CB" >스콧트에어웨이[CB]</option>
		                <option value="S7" >시베리아항공[S7]</option>
		                <option value="MI" >실크에어[MI]</option>
		                <option value="ZH" >심천항공[ZH]</option>
		                <option value="SQ" >싱가폴항공[SQ]</option>
		                <option value="AR" >아르헨티나항공[AR]</option>
		                <option value="HP" >아메리칸웨스트 항공[HP]</option>
	
		                <option value="AA" >아메리칸항공[AA]</option>
		                <option value="ZR" >아비콘지토트랜스[ZR]</option>
		                <option value="OZ" >아시아나항공[OZ]</option>
		                <option value="FI" >아이슬랜드에어[FI]</option>
		                <option value="IZ" >아키스이스라엘항공[IZ]</option>
		                <option value="ZQ" >안셋뉴질랜드항공[ZQ]</option>
		                <option value="AN" >안셋항공[AN]</option>
		                <option value="AS" >알라스카항공[AS]</option>
		                <option value="AQ" >알로아항공[AQ]</option>
		                <option value="AZ" >알리탈리아항공[AZ]</option>
		                <option value="LV" >알바니안에어[LV]</option>
		                <option value="NV" >어바이얼NV[NV]</option>
		                <option value="EK" >에미레이트항공[EK]</option>
		                <option value="BR" >에바항공[BR]</option>
		                <option value="OV" >에스토니안에어[OV]</option>
		               <option value="LW" >에어네바다[LW]</option>
		                <option value="PX" >에어뉴기니[PX]</option>
		                <option value="NZ" >에어뉴질랜드[NZ]</option>
		                <option value="EI" >에어링그스[EI]</option>
		                <option value="NX" >에어마카오[NX]</option>
		                <option value="MK" >에어모리서스[MK]</option>
		                <option value="BT" >에어발틱 [BT]</option>
		                <option value="6V" >에어베가스[6V]</option>
		                <option value="AB" >에어베를린[AB]</option>
		                <option value="BX" >에어부산[BX]</option>
		                <option value="BM" >에어시실리아[BM]</option>
		                <option value="4L" >에어아스타나[4L]</option>
						<option value="D7">에어아시아[D7]</option>
		                <option value="A6" >에어알프스 [A6]</option>
		                <option value="PS" >에어우크라이나[PS]</option>
		                <option value="AP" >에어원항공[AP]</option>
		                <option value="PE" >에어유럽[PE]</option>
		                <option value="AC" >에어캐나다[AC]</option>
		                <option value="AD" >에어파라다이스[AD]</option>
		                <option value="FJ" >에어퍼시픽[FJ]</option>
		                <option value="AF" >에어프랑스[AF]</option>
		                <option value="2P" >에어필리핀[2P]</option>
			  <option value="EY">에티하드항공[EY]</option>
			  <option value="ET">에티오피아항공[ET]</option>
		                <option value="BA" >영국항공[BA]</option>
		                <option value="OX" >오리엔트타이항공[OX]</option>
		                <option value="OS" >오스트리아항공[OS]</option>
		                <option value="OA" >올림픽항공[OA]</option>
		                <option value="HY" >우즈벡항공[HY]</option>
		                <option value="YY" >운항항공사[YY]</option>
		                <option value="EF" >원동항공[EF]</option>
		                <option value="UA" >유나이티드항공[UA]</option>
		                <option value="B7" >유니항공[B7]</option>

		                <option value="IR" >이란에어[IR]</option>
		                <option value="IB" >이베리아항공[IB]</option>
		                <option value="LY" >이사라엘항공[LY]</option>
		                <option value="ZE" >이스타 항공 [ZE]</option>
		                <option value="MS" >이집트에어[MS]</option>
		                <option value="IC" >인도항공[IC]</option>
		  	<option value="AI" >인도항공[AI]</option>
		                <option value="JL" >일본항공[JL]</option>
		                <option value="NH" >전일본공수[NH]</option>
			 <option value="7C" >제주항공[7C]</option>
		                <option value="JD" >제팬에어시스템[JD]</option>
		                <option value="CA" >중국국제항공[CA]</option>
		                <option value="CZ" >중국남방항공[CZ]</option>
		                <option value="MU" >중국동방항공[MU]</option>
		                <option value="CJ" >중국북방항공[CJ]</option>
		                <option value="MF" >중국샤먼항공[MF]</option>
		                <option value="WH" >중국서북항공[WH]</option>
		                <option value="9C" >질에어웨이항공[9C]</option>
		                <option value="LJ" >진에어[LJ]</option>
		                <option value="CI" >차이나에어[CI]</option>
		                <option value="OK" >체코항공[OK]</option>
		                <option value="9Y" >카자흐스탄항공[9Y]</option>
		                <option value="QR" >카타르항공[QR]</option>
		                <option value="VJ" >캄푸치아항공[VJ]</option>
		                <option value="CP" >캐나디언항공[CP]</option>
		                <option value="CX" >캐세이패시픽항공[CX]</option>
		                <option value="CO" >컨티넨탈항공[CO]</option>
		                <option value="KQ" >케냐항공 [KQ]</option>
		                <option value="QF" >콴타스항공[QF]</option>
		                <option value="CU" >쿠바나에어웨이[CU]</option>
		                <option value="KU" >쿠웨이트항공[KU]</option>
		                <option value="7B" >크라스노야르스크항공[7B]</option>
		                <option value="X " >크로아티아에어라인[X ]</option>
		                <option value="R8" >키스키스스탄항공[R8]</option>
		                <option value="RO" >타롬에어 [RO]</option>
		                <option value="9I" >타이스카이항공[9I]</option>
		                <option value="TG" >타이항공[TG]</option>
		                <option value="TP" >탬에어포르투갈[TP]</option>
		                <option value="TK" >터어키항공[TK]</option>
		                <option value="GE" >트랜스아시아항공[GE]</option>
		                <option value="TW" >트랜스월드항공[TW]</option>
		                <option value="PK" >파키스탄항공[PK]</option>
		                <option value="LK" >페어라인항공[LK]</option>
		                <option value="NI" >포르튜칼리아항공[NI]</option>
		                <option value="9R" >푸켓항공[9R]</option>
		                <option value="FV" >풀코보항공[FV]</option>
		                <option value="F9" >프론티어항공[F9]</option>
		                <option value="MM" >피치항공[MM]</option>
		                <option value="AY" >핀에어[AY]</option>
		                <option value="PR" >필리핀항공[PR]</option>
		                <option value="HA" >하와이안에어[HA]</option>
		                <option value="HU" >해남항공[HU]</option>
		                <option value="KL" >KLM 네델란드항공[KL]</option>
		                <option value="LO" >LOT폴리시항공[LO]</option>
		                <option value="SK" >SAS항공[SK]</option>
		                <option value="TZ" >Scoot항공[TZ]</option>
		                <option value="US" >US에어[US]</option>
		                <option value="VG" >VLM항공[VG]</option>
			</select>
		
		</td><td align="right">
				<div>
				<input name="cost_raw" value="" type="text" style="font-size:14pt;color:#000000;font-face:arial black" size="3">
				
				<select name="cost_raw_currency">
					<option value="KRW">만원</option>
					
					<option value="EUR" >EUR</option>
					
					<option value="USD" >USD</option>
				</select>
				</div>
				<span></span>	
			</td></tr>
		</table>
	</td></tr>

	<tr><td>
		<table width="100%">


		<tr><td>
			<table cellpadding="0" cellspacing="1" style="border-bottom:1px solid #C4C4C4" >
			<tr>
				<td colspan="3">From | 출발</td>

			</tr>
			<tr>

				<td width="400">
<script>
function showCitySelect(depdes)
{
	if(depdes=='dep')
	{
		document.getElementById('input_FromCitySerial_1').style.display='none';
		document.getElementById('input_FromCitySerial_2').style.display='block';
		document.getElementById('input_RT_ToCitySerial_1').style.display='block';
		document.getElementById('input_RT_ToCitySerial_2').style.display='none';
		if(document.getElementById('RT_ToCitySerial_TaxSerial3').value!="")
		{
			var tobj1=document.getElementById('RT_ToCitySerial_TaxSerial3')
			var ctyname=tobj1.options[tobj1.options.selectedIndex].text;
			var tobj2=document.getElementById('RT_ToCitySerial_TaxSerial2')
			var ctrname=tobj2.options[tobj2.options.selectedIndex].text;
			document.getElementById("input_RT_ToCitySerial_1_span").innerHTML=ctyname+","+ctrname;
		}		
		_sys_TaxSerial1="FromCitySerial_TaxSerial1";
		_sys_TaxSerial2="FromCitySerial_TaxSerial2";
		_sys_TaxSerial3="FromCitySerial_TaxSerial3";
		_sys_TaxSerial4="FromCitySerial_TaxSerial4";
		GetTax('');
		MoveByTax(document.getElementById('FromCitySerial').value,false,false);
	}
	else
	{
		document.getElementById('input_FromCitySerial_1').style.display='block';
		document.getElementById('input_FromCitySerial_2').style.display='none';
		if(document.getElementById('FromCitySerial_TaxSerial3').value!="")
		{
			var tobj1=document.getElementById('FromCitySerial_TaxSerial3')
			var ctyname=tobj1.options[tobj1.options.selectedIndex].text;
			var tobj2=document.getElementById('FromCitySerial_TaxSerial2')
			var ctrname=tobj2.options[tobj2.options.selectedIndex].text;
			document.getElementById("input_FromCitySerial_1_span").innerHTML=ctyname+","+ctrname;
		}

		document.getElementById('input_RT_ToCitySerial_1').style.display='none';
		document.getElementById('input_RT_ToCitySerial_2').style.display='block';
		_sys_TaxSerial1="RT_ToCitySerial_TaxSerial1";
		_sys_TaxSerial2="RT_ToCitySerial_TaxSerial2";
		_sys_TaxSerial3="RT_ToCitySerial_TaxSerial3";
		_sys_TaxSerial4="RT_ToCitySerial_TaxSerial4";
		GetTax('');
		MoveByTax(document.getElementById('RT_ToCitySerial').value,false,false);
	}
}
function GetAirport(CitySerial,obj_id)
{

	var tmppageUrl="/ajax/GetTax.asp?TaxSerial="+CitySerial+"771";
	__tobj_id=obj_id;
	tmp__tTaxSerial=CitySerial;
	tmp_sys_GCurXmlRequest = HTTPObject();
	tmp_sys_GCurXmlRequest.open("GET",tmppageUrl, false);
	tmp_sys_GCurXmlRequest.onreadystatechange=tmp_tGetTax_StateChange;
	tmp_sys_GCurXmlRequest.send(null);
}
var tmp_sys_GCurXmlRequest;
var __tTaxSerial;
var __tobj_id;

function tmp_tGetTax_StateChange()
{
	if (tmp_sys_GCurXmlRequest.readyState==4)
	{

		for(j=document.getElementById(__tobj_id).length-1;j>=0;j--)
		{
			document.getElementById(__tobj_id).remove(j);
		}
	
		if(tmp_sys_GCurXmlRequest.status == 200)
		{
			var strv = tmp_sys_GCurXmlRequest.responseText;
			if(strv!=null)
			{
				var RcvData=decodeURIComponent(strv).replace(/\+/g, ' ');
	
				var TaxData=RcvData.split("@");	
				
				for(i=0;i<TaxData.length;i++) //0:Serial,1:SrcName 2:Lat 3:LNG 4:ZL 5:SiteLevel
				{
					var R=TaxData[i].split("#");

						if(R[1].length>20)
							R[1]=R[1].substring(0,20)+"..";
						document.getElementById(__tobj_id).options[i] = new Option(R[1],R[0]);


				}//for
			}//읽은 값이 빈값이 아닌경우
		}
	}
}
</script>
					<div id="input_FromCitySerial_1" style="display:block;">
						<span id="input_FromCitySerial_1_span" style="font-size:10pt;color:#000000;font-family:Tahoma">Seoul,Korea(South)</span> <a href="javascript:showCitySelect('dep');">[<u>변경</u>]</a>
					</div>
					<div id="input_FromCitySerial_2" style="display:none;">
					<select size="1" name="FromCitySerial_TaxSerial1" id="FromCitySerial_TaxSerial1" LANGUAGE="JavaScript" onChange="GetArr(this.value,1)">
					<option value="">-전체지역-</option>
					</select><select size="1" name="FromCitySerial_TaxSerial2" id="FromCitySerial_TaxSerial2" LANGUAGE="JavaScript" onChange="GetArr(this.value,2)">
					<option value="">-전체국가-</option>
					</select><select size="1" name="FromCitySerial_TaxSerial3" id="FromCitySerial_TaxSerial3" LANGUAGE="JavaScript" onChange="document.getElementById('FromCitySerial').value=this.value;GetAirport(this.value,'FromAirportSerial')">
					<option value="">-전체도시-</option>
					</select><select size="1" name="FromCitySerial_TaxSerial4" id="FromCitySerial_TaxSerial4" LANGUAGE="JavaScript"  style="display:none">
					<option value="">-전체관광지-</option>
					</select>
					</div>

						
						<select name="FromAirportSerial" id="FromAirportSerial">
						
							<option value="16103100270009" >Incheon Internat..(인천국제공항 )</option>
							
							<option value="16103100270008" >Kimpo Airport(김포공항)</option>
							
							<option value="16103100270012" >Gimhae Internati..(김해국제공항)</option>
							
							<option value="16103100270010" >Incheon Air port(인천공항)</option>
							
							<option value="16103100270011" >Seoul City Air T..(서울 도심 공항 ..)</option>
							
						</select> <a href="javascript:openTourMapX(document.getElementById('FromAirportSerial').value);">[<u>지도</u>]</a>
						

				</td>
				<td width="20px" align="center" valign="bottom">|</td>
				<td width="300px">

					<select name="DepDate_Date" id="DepDate_Date">
					
									<option value="2019-07-04" >2019/07/04 (THU)</option>	
							
									<option value="2019-07-05" >2019/07/05 (FRI)</option>	
							
									<option value="2019-07-06" >2019/07/06 (SAT)</option>	
							
									<option value="2019-07-07" >2019/07/07 (SUN)</option>	
							
									<option value="2019-07-08" >2019/07/08 (MON)</option>	
							
									<option value="2019-07-09" selected>2019/07/09 (TUE)</option>	
							
									<option value="2019-07-10" >2019/07/10 (WED)</option>	
							
									<option value="2019-07-11" >2019/07/11 (THU)</option>	
							
									<option value="2019-07-12" >2019/07/12 (FRI)</option>	
							
									<option value="2019-07-13" >2019/07/13 (SAT)</option>	
							
									<option value="2019-07-14" >2019/07/14 (SUN)</option>	
							
					</select>
					<br>
					<select name="DepDate_HOUR" id="DepDate_HOUR">
					
						<option value="00" selected>00</option>
						<c:forEach var="i" begin="01" end="23">
							<option value="${i}">${i}</option>
						</c:forEach>
					</select>시
					<select name="DepDate_MIN" id="DepDate_MIN">
					
						<option value="00" selected>00</option>
						<c:forEach var="i" begin="01" end="59">
							<option value="${i}">${i}</option>
						</c:forEach>						
					</select>분

				</td>
			</tr>
			</table>
		</td></tr>
		<tr><td>
			<table cellpadding="0" cellspacing="1" style="border-bottom:1px solid #C4C4C4" >
			<tr>
				<td colspan="3">To | 도착</td>

			</tr>
			<tr>
				<td width="400">
					<font  style="font-size:10pt;color:#000000;font-family:Tahoma">Paris,France</font><br>

						
						<select name="ToAirportSerial" id="ToAirportSerial">
						
							<option value="11101100470008" >파리-샤를드골 공항(Paris-Charles de..)</option>
							
							<option value="11101100470009" >파리-오를리 공항(Paris-Orly)</option>
							
							<option value="11101100470010" >파리-보베 공항(Paris-Beauvais)</option>
							
						</select> <a href="javascript:openTourMapX(document.getElementById('ToAirportSerial').value);">[<u>지도</u>]</a>
						

				</td>
				<td width="20px" align="center" valign="bottom">|</td>
				<td width="300px">
					<select name="DesDate_Date" id="DesDate_Date">
					
									<option value="2019-07-04" >2019/07/04 (THU)</option>	
							
									<option value="2019-07-05" >2019/07/05 (FRI)</option>	
							
									<option value="2019-07-06" >2019/07/06 (SAT)</option>	
							
									<option value="2019-07-07" >2019/07/07 (SUN)</option>	
							
									<option value="2019-07-08" >2019/07/08 (MON)</option>	
							
									<option value="2019-07-09" selected>2019/07/09 (TUE)</option>	
							
									<option value="2019-07-10" >2019/07/10 (WED)</option>	
							
									<option value="2019-07-11" >2019/07/11 (THU)</option>	
							
									<option value="2019-07-12" >2019/07/12 (FRI)</option>	
							
									<option value="2019-07-13" >2019/07/13 (SAT)</option>	
							
									<option value="2019-07-14" >2019/07/14 (SUN)</option>	
							
					</select>
						<br>
					<select name="DesDate_HOUR" id="DesDate_HOUR">
					
						<option value="00" selected>00</option>
						<c:forEach var="i" begin="01" end="23">
							<option value="${i}">${i}</option>
						</c:forEach>
					</select>시
					<select name="DesDate_MIN" id="DesDate_MIN">
					
						<option value="00" selected>00</option>
						<c:forEach var="i" begin="01" end="59">
							<option value="${i}">${i}</option>
						</c:forEach>
					</select>분

				</td>				
			</tr>
			</table>
		</td></tr>
		<tr><td>
			<table>
			<tr>
			<td width="50" bgcolor="#C4C4C4" style="border:1px solid #C0C0C0">Return</td>
			<td>
				<table>

				<tr><td>
					<table cellpadding="0" cellspacing="1" style="border-bottom:1px solid #C4C4C4" >
					<tr>
						<td colspan="3">From | 출발</td>

					</tr>
					<tr>
						<td width="400">
								<font  style="font-size:10pt;color:#000000;font-family:Tahoma">London,United Kingdom</font>
								<br>
								
								<select name="RT_FromAirportSerial" id="RT_FromAirportSerial">
								
									<option value="11103100170001" >히드로 공항(Heathrow Airport)</option>
									
									<option value="11103100170002" >개트윅 공항(Gatwick Airport)</option>
									
									<option value="11103100170004" >루튼 공항( Luton Airport)</option>
									
									<option value="11103100170008" >사우스엔드 공항(Southend Airport)</option>
									
									<option value="11103100170003" >스텐스테드 공항(Stansted Airport)</option>
									
									<option value="11103100170005" >런던 시티 공항 (London City Airp..)</option>
									
								</select> <a href="javascript:openTourMapX(document.getElementById('RT_FromAirportSerial').value);">[<u>지도</u>]</a>
								

						</td>
						<td width="20px" align="center" valign="bottom">|</td>
						<td width="300px">
							<select name="RT_DepDate_Date" id="RT_DepDate_Date">
							
									<option value="2019-07-10" >2019/07/10 (WED)</option>	
							
									<option value="2019-07-11" >2019/07/11 (THU)</option>	
							
									<option value="2019-07-12" >2019/07/12 (FRI)</option>	
							
									<option value="2019-07-13" >2019/07/13 (SAT)</option>	
							
									<option value="2019-07-14" >2019/07/14 (SUN)</option>	
							
									<option value="2019-07-15" selected>2019/07/15 (MON)</option>	
							
									<option value="2019-07-16" >2019/07/16 (TUE)</option>	
							
									<option value="2019-07-17" >2019/07/17 (WED)</option>	
							
									<option value="2019-07-18" >2019/07/18 (THU)</option>	
							
									<option value="2019-07-19" >2019/07/19 (FRI)</option>	
							
									<option value="2019-07-20" >2019/07/20 (SAT)</option>	
								
							</select>
							<br>
							<select name="RT_DepDate_HOUR" id="RT_DepDate_HOUR">
							
								<option value="00" selected>00</option>
								<c:forEach var="i" begin="01" end="23">
									<option value="${i}">${i}</option>
								</c:forEach>
							</select>시
							<select name="RT_DepDate_MIN" id="RT_DepDate_MIN">
							
								<option value="00" selected>00</option>
								<c:forEach var="i" begin="01" end="59">
									<option value="${i}">${i}</option>
								</c:forEach>
							</select>분

						</td>	
					</tr>
					</table>
				</td></tr>
				<tr><td>
					<table cellpadding="0" cellspacing="1" style="border-bottom:1px solid #C4C4C4" >
					<tr>
						<td colspan="3">To | 도착</td>

					</tr>
					<tr>
						<td width="400">
					<!-- foreach -->
					<div id="input_RT_ToCitySerial_1" style="display:block;">
						<span id="input_RT_ToCitySerial_1_span"  style="font-size:10pt;color:#000000;font-family:Tahoma">Seoul,Korea(South)</span> <a href="javascript:showCitySelect('des');">[<u>변경</u>]</a>
					</div>
					<div id="input_RT_ToCitySerial_2" style="display:none;">
					<select size="1" name="RT_ToCitySerial_TaxSerial1" id="RT_ToCitySerial_TaxSerial1" LANGUAGE="JavaScript" onChange="GetArr(this.value,1)">
					<option value="">-전체지역-</option>
					</select><select size="1" name="RT_ToCitySerial_TaxSerial2" id="RT_ToCitySerial_TaxSerial2" LANGUAGE="JavaScript" onChange="GetArr(this.value,2)">
					<option value="">-전체국가-</option>
					</select><select size="1" name="RT_ToCitySerial_TaxSerial3" id="RT_ToCitySerial_TaxSerial3" LANGUAGE="JavaScript" onChange="document.getElementById('RT_ToCitySerial').value=this.value;GetAirport(this.value,'RT_ToAirportSerial')">
					<option value="">-전체도시-</option>
					</select><select size="1" name="RT_ToCitySerial_TaxSerial4" id="RT_ToCitySerial_TaxSerial4" LANGUAGE="JavaScript"  style="display:none">
					<option value="">-전체관광지-</option>
					</select>
					</div>

								
								<select name="RT_ToAirportSerial" id="RT_ToAirportSerial">
								
									<option value="16103100270009" >Incheon Internat..(인천국제공항 )</option>
									
									<option value="16103100270008" >Kimpo Airport(김포공항)</option>
									
									<option value="16103100270012" >Gimhae Internati..(김해국제공항)</option>
									
									<option value="16103100270010" >Incheon Air port(인천공항)</option>
									
									<option value="16103100270011" >Seoul City Air T..(서울 도심 공항 ..)</option>
									
								</select> <a href="javascript:openTourMapX(document.getElementById('RT_ToAirportSerial').value);">[<u>지도</u>]</a>
								

						</td>
						<td width="20px" align="center" valign="bottom">|</td>
						<td width="300px">
							<select name="RT_DesDate_Date" id="RT_DesDate_Date">
							
									<option value="2019-07-10" >2019/07/10 (WED)</option>	
							
									<option value="2019-07-11" >2019/07/11 (THU)</option>	
							
									<option value="2019-07-12" >2019/07/12 (FRI)</option>	
							
									<option value="2019-07-13" >2019/07/13 (SAT)</option>	
							
									<option value="2019-07-14" >2019/07/14 (SUN)</option>	
							
									<option value="2019-07-15" selected>2019/07/15 (MON)</option>	
							
									<option value="2019-07-16" >2019/07/16 (TUE)</option>	
							
									<option value="2019-07-17" >2019/07/17 (WED)</option>	
							
									<option value="2019-07-18" >2019/07/18 (THU)</option>	
							
									<option value="2019-07-19" >2019/07/19 (FRI)</option>	
							
									<option value="2019-07-20" >2019/07/20 (SAT)</option>	
								
							</select>
							<br>
							<select name="RT_DesDate_HOUR" id="RT_DesDate_HOUR">
							
								<option value="00" selected>00</option>
								<c:forEach var="i" begin="01" end="23">
									<option value="${i}">${i}</option>
								</c:forEach>
							</select>시
							<select name="RT_DesDate_MIN" id="RT_DesDate_MIN">
							
								<option value="00" selected>00</option>
								<c:forEach var="i" begin="01" end="59">
									<option value="${i}">${i}</option>
								</c:forEach>
							</select>분

						</td>	
					</tr>
					</table>
				</td></tr>
				</table>
			</td>
			</tr>
			</table>
		</td></tr>
		<tr><td>
			<table cellpadding="2" cellspacing="1" style="border-bottom:1px solid #C4C4C4" >
			<tr>
				<td width="200px">Company | 항공권 구매처</td>
				<td width="20px" align="center" valign="bottom"></td>
				<td width="430px">URL | 예약 웹싸이트</td>
			</tr>
			<tr>
				<td><input class="input" type="text" size="25" name="companyname" value=""></td>
				<td align="center" valign="bottom">|</td>
				<td><input class="input" type="text" size="35" name="website" value=""></td>
			</tr>
			</table>
		</td></tr>
		</table>
	</td></tr>
	
	</table>
	<table width="100%"><tr><Td align="center">
		<textarea name="memo" rows="3" style="width:100%;border:1px solid #c0c0c0;margin-top:1px;margin-bottom:1px"></textarea>
	</td></tr>
	<tr><td align="center">
		<input class="button" type="submit" value="예약정보 저장" style="background-color:darkred;color:#ffffff;height:30px">
	</td></tr></table>

</form>

</body>
</html>
