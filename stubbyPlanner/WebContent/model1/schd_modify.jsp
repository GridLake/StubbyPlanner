<%@page import="com.util.ConnectionProvider"%>
<%@page import="net.sf.json.JSONArray"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String schd_id = request.getParameter("schd_id");
// 	System.out.println("@@@@:@@" + schd_id);
%>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	JSONObject data = null;
	JSONObject data2 = null;
	
	try{
			
			conn = ConnectionProvider.getConnection();

			String selectsql = "select s_title , s_content , s_adrs ,s_time ,s_img  ,s_lat  ,s_lng , bucket_id " 
									+" from tbl_schedule where schd_id = ? ";

		pstmt = conn.prepareStatement(selectsql);

	 	pstmt.setString(1, schd_id);
// 		pstmt.setString(1, "SCHD58");
//	 	pstmt.setInt(2, city_day)

		rs = pstmt.executeQuery();

		while(rs.next()){
			
			data2 = new JSONObject();
			
			String schd_title = rs.getString("s_title");
			String schd_desc = rs.getString("s_content");
			String schd_adrs = rs.getString("s_adrs") == null ? "" : rs.getString("s_adrs");
			String schd_time = rs.getString("s_time");
			String schd_img = rs.getString("s_img") == null ? "" : rs.getString("s_img");
			String schd_lat = rs.getString("s_lat") == null ? "" : rs.getString("s_lat");
			String schd_lng = rs.getString("s_lng") == null ? "" : rs.getString("s_lng");
			String bucket_id = rs.getString("bucket_id");
			
			data2.put("schd_title", schd_title);
			data2.put("schd_desc", schd_desc);
			data2.put("schd_adrs", schd_adrs);
			data2.put("schd_time", schd_time);
			data2.put("schd_img", schd_img);
			data2.put("schd_lat", schd_lat);
			data2.put("schd_lng", schd_lng);
			data2.put("bucket_id", bucket_id);
			
		}
		data = new JSONObject();			
		data.put("data", data2);
		
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		pstmt.close();
		rs.close();
		conn.close();
	}
	
%>
<%= data %>