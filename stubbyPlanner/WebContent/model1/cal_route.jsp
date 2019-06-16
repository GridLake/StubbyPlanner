<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="net.sf.json.JSONArray"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="com.util.ConnectionProvider"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String year = request.getParameter("y");
	String month = request.getParameter("m");
	int trip_id = Integer.parseInt( request.getParameter("trip_id"));
// 	System.out.println("trip_id:: " + trip_id);
%>
<%
	
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

// String sql = "select scity_name , rt_startdate, rt_enddate, att_id from tbl_route where trip_id = ?";
String sql = "select scity_name , rt_startdate, rt_enddate from tbl_route where trip_id = ?";

JSONArray jsonArray = new JSONArray(); // data
JSONObject jsonRoute = new JSONObject(); // routes
JSONArray jsonRoute2 = new JSONArray(); // routes[]

JSONObject jsonArray2 = new JSONObject(); // y , m ,d
JSONObject jsonArray3 = new JSONObject(); // y , m ,d
JSONObject JsonO = new JSONObject(); // index

try {
	conn = ConnectionProvider.getConnection();
	pstmt = conn.prepareStatement(sql);

// 		pstmt.setInt(1, 10000001);
		pstmt.setInt(1, trip_id);

	rs = pstmt.executeQuery();
	while (rs.next()) {
		
		String scity_name = rs.getString("scity_name");
		String y = rs.getString("rt_startDate").substring(0, 4);
		String m = rs.getString("rt_startDate").substring(5, 7);
		String d = rs.getString("rt_startDate").substring(8, 10);
		String y1 = rs.getString("rt_enddate").substring(0, 4);
		String m1 = rs.getString("rt_enddate").substring(5, 7);
		String d1 = rs.getString("rt_enddate").substring(8, 10);
		// Boolean att_id = rs.getString("att_id") == null ? false : true;
		
		jsonArray2.put("y",Integer.parseInt(y));
		jsonArray2.put("m",Integer.parseInt(m));
		jsonArray2.put("d",Integer.parseInt(d));
		jsonArray3.put("y",Integer.parseInt(y1));
		jsonArray3.put("m",Integer.parseInt(m1));
		jsonArray3.put("d",Integer.parseInt(d1));
		
		JsonO.put("title",scity_name);
		JsonO.put("date_in",jsonArray2);
		JsonO.put("date_out",jsonArray3);
		// JsonO.put("has_bucket_list",att_id);
		
		jsonRoute2.add(JsonO); // date_in
		
		jsonRoute.put("routes",jsonRoute2);
		
	}
	jsonArray.add(jsonRoute);	

} catch (Exception e) {
	e.printStackTrace();
} finally {
	pstmt.close();
	rs.close();
	conn.close();
}
%>
<%= jsonRoute %>
