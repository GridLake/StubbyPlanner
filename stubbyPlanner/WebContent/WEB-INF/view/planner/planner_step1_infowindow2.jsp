<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:og="http://ogp.me/ns#" xmlns:fb="http://www.facebook.com/2008/fbml">
  <head>
    <meta charset="utf-8">

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script>
function addCity(cityname,cityserial,lat,lng,a,b)
{
	window.parent.addCity(cityname,cityserial,lat,lng,a,b);
}
function addSpot(spotname,spotserial,lat,lng,imgurl,a,b)
{
	window.parent.addSpot(spotname,spotserial,lat,lng,imgurl,a,b);
}
</script>
<style>
a,b,div,td,p
{
	font-family:'돋움'
}
td, b
{
	font-size:9pt;
	color:gray;
}
a{
	text-decoration:none;
	color:gray;
}
a img{
	border:0px;
}
</style>
<body topmargin="0" leftmargin="0" style="overflow:hidden;" scroll="no">

<table cellpadding="0">
<tr>

<td valign="top" width="75" align="center">
	<a  href="javascript:parent.openGuideBook('111011004','파리')"><img border="0" src="/stubbyPlanner/externalData/CDN_Images/d3b39vpyptsv01.cloudfront.net/photo/1/2/f05895c8ae813c28eb31ad103770f487_m.jpg" width="75" style="border-radius:2px;"></a>
	<div style="border-radius:2px;background:#696969;width:75px;padding-top:5px;padding-bottom:5px;"><a  href="javascript:parent.openGuideBook('111011004','파리')"><font style="color:#ffffff;font-size:9pt;">가이드북</font></a></div>
</td>

	<td width="10px">&nbsp;</td>


<td width="215px" valign="top">

<table  cellpadding="0">
<tr><td height="20px">
	<a  href="javascript:parent.openGuideBook('111011004','파리')"><img border="0" src="/stubbyPlanner/externalData/images/is/flag/11101_s.gif"> <b>파리</b></a>
<font style="font-size:8pt" color="#C0C0C0">프랑스1위 </font>
</td></tr>

<tr><td>예술과 낭만의 도시. </td></tr>

</table>
</td>

<td width="40px"><a href="javascript:addCity('파리','111011004','48.86110101269274','2.3421478271484375','3','4|7|46|24|20');" title="이 도시를 내 루트에 추가"><img src="/stubbyPlanner/externalData/img_v8/Btn_AddCity.png"></a></td>
</tr>
</table>

</body>
</html>