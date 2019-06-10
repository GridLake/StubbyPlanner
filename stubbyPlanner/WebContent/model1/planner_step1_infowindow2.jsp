<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/include.jspf" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:og="http://ogp.me/ns#" xmlns:fb="http://www.facebook.com/2008/fbml">
  <head>
    <meta charset="utf-8">

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script>
function addCity(city_name,city_id,city_x,city_y,recommSlp,slpRates)
{
	window.parent.addCity(city_name,city_id,city_x,city_y,recommSlp,slpRates);
}
function addSpot(spotname,spotserial,city_x,city_y,imgurl,recommSlp,slpRates)
{
	window.parent.addSpot(spotname,spotserial,city_x,city_y,imgurl,recommSlp,slpRates);
}
</script>
<%
	String city_name = request.getParameter("city_name");
	String city_id = request.getParameter("city_id");
	String city_x = request.getParameter("city_x");
	String city_y = request.getParameter("city_y");
	String recommSlp = request.getParameter("recommSlp");
	String slpRates = request.getParameter("slpRates");
	
	String city_info = request.getParameter("city_info");
	
%>
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
	<a  href="javascript:parent.openGuideBook()"><img border="0" src="<%= contextPath %>/externalData/stbimg/<%=city_name %>.jpg" width="75" style="border-radius:2px;"></a>
	<div style="border-radius:2px;background:#696969;width:75px;padding-top:5px;padding-bottom:5px;"><a  href="javascript:parent.openGuideBook()"><font style="color:#ffffff;font-size:9pt;">가이드북</font></a></div>
</td>

	<td width="10px">&nbsp;</td>


<td width="215px" valign="top">

<table  cellpadding="0">
<tr><td height="20px">
<!-- 나라국기는 아직 테이블 미정 -->
	<a  href="javascript:parent.openGuideBook()"><img border="0" src="<%= contextPath %>/externalData/stbcimg/스페인.gif"> <b><%=city_name %></b></a>
<font style="font-size:8pt" color="#C0C0C0">나라별몇위</font>
</td></tr>

<tr><td> <%=city_info %></td></tr>

</table>
</td>

<td width="40px"><a href="javascript:addCity('${param.city_name}','${param.city_id}','${param.city_x}',${param.city_y},'${param.recommSlp}','${param.slpRates}');" title="이 도시를 내 루트에 추가"><img src="<%= contextPath %>/externalData/img_v8/Btn_AddCity.png"></a></td>
</tr>
</table>

</body>
</html>