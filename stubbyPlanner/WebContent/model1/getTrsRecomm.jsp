<%@page import="java.sql.ResultSet"%>
<%@page import="com.util.ConnectionProvider"%>
<%@page import="net.sf.json.JSONArray"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
 String trstype = request.getParameter("trstype");	// 교통편
 int depCityId = Integer.parseInt(request.getParameter("depCityId"));	// 출발도시
 int desCityId = Integer.parseInt(request.getParameter("desCityId"));	// 도착도시
 String thedate = request.getParameter("thedate");	// 일수
%>

<%
 Connection conn = null;
 PreparedStatement pstmt = null;
 ResultSet rs = null;
  
 JSONObject jsObj = null;
 
 if(trstype.equals("")) {
	 try {
		 conn = ConnectionProvider.getConnection();
		 					//  교통편(trstype)			 // 소요시간(traveltime)
		 String sql = " select * from ( "
				    + " select trstype, traveltime from tbl_trsdata "
				    + " where depcity = ? and descity = ? "
				    + " order by trsfreq desc "
					+ " ) where rownum = 1 ";
		 pstmt = conn.prepareStatement(sql);
		 
	 	 pstmt.setInt(1, depCityId);
	 	 pstmt.setInt(2, desCityId);
		 
		 rs = pstmt.executeQuery();
		  
		 
		 while(rs.next()) {
			 trstype = rs.getString("trstype");
			 String traveltime = rs.getString("traveltime");
			 
			 jsObj = new JSONObject();
			 jsObj.put("trstype", trstype);
			 jsObj.put("traveltime", traveltime);
			 
			 
		 }
		 
	 } catch (Exception e) {
		 e.printStackTrace();
	 } finally {
		 pstmt.close();
		 rs.close();
		 conn.close();
	 }
 }
 else {
	 try {
		 conn = ConnectionProvider.getConnection();
		 					
		 String sql = " select trstype, traveltime from tbl_trsdata "
				    + " where depcity = ? and descity = ? and trstype = ?";
		 pstmt = conn.prepareStatement(sql);
		 
	 	 pstmt.setInt(1, depCityId);
	 	 pstmt.setInt(2, desCityId);
		 pstmt.setString(3, trstype);
	 	 
		 rs = pstmt.executeQuery();
		 
		 while(rs.next()) {
			 trstype = rs.getString("trstype");
			 String traveltime = rs.getString("traveltime");
			 
			 jsObj = new JSONObject();
			 jsObj.put("trstype", trstype);
			 jsObj.put("traveltime", traveltime);
		 }
		 
	 } catch (Exception e) {
		 e.printStackTrace();
	 } finally {
		 pstmt.close();
		 rs.close();
		 conn.close();
	 }
 }
%>

<%= jsObj %>