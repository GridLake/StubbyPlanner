<%@page import="com.util.ConnectionProvider"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="net.sf.json.JSONArray"%>
<%@page import="net.sf.json.JSONObject"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	int trip_id = Integer.parseInt(request.getParameter("trip_id"));
%>
<%
	JSONArray jsonArray = new JSONArray();
	JSONArray jsonArray2 = new JSONArray();
	JSONObject joj = new JSONObject();
	JSONObject joj2 = new JSONObject();
	JSONObject jsonData = new JSONObject();
	JSONObject m = new JSONObject();

	Connection conn = null;
	PreparedStatement pstmt = null;
	PreparedStatement pstmt2 = null;
	PreparedStatement pstmt3 = null;
	ResultSet rs = null;
	ResultSet rs2 = null;
	ResultSet rs3 = null;

	String selectPlansql = "select triptype, terms, startdate from tbl_planner " 
								+ " where trip_id = ? ";

	try {

		conn = ConnectionProvider.getConnection();
		pstmt = conn.prepareStatement(selectPlansql);

// 		pstmt.setInt(1, 10000001);
		pstmt.setInt(1, trip_id);

		rs = pstmt.executeQuery();

		while (rs.next()) {

			String triptype = rs.getString("triptype");
			int terms = rs.getInt("terms");
			String startdate = rs.getString("startdate");

			joj.put("triptype", triptype);
			joj.put("terms", terms);
			joj.put("startdate", startdate);

			m.put("planner", joj);
		}

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		pstmt.close();
		rs.close();
		conn.close();
	}

	String infosql = " select  rt_trans, rt_startdate, rt_enddate, scity_name, scity_id,d.country_id, country_name "
			+ " from tbl_route a join tbl_city b on a.scity_id = b.city_id "
			+ "                 join tbl_region c on b.region_id = c.region_id "
			+ "                 join tbl_country d on c.country_id = d.country_id "
			+ " where trip_id = ? ";

	try {
		conn = ConnectionProvider.getConnection();
		pstmt2 = conn.prepareStatement(infosql);

					pstmt.setInt(1, trip_id);
		// 		pstmt.setInt(1, 10000001);

		rs2 = pstmt2.executeQuery();

		while (rs2.next()) {

			String rt_trans = rs2.getString("rt_trans");
			String rt_startdate = rs2.getString("rt_startdate").replace('/', '-');
			String rt_enddate = rs2.getString("rt_enddate").replace('/', '-');
			String scity_name = rs2.getString("scity_name");
			int Country_id = rs2.getInt("country_id");
			String Country_name = rs2.getString("country_name");

			joj2.put("rt_trans", rt_trans);
			joj2.put("rt_startdate", rt_startdate);
			joj2.put("rt_enddate", rt_enddate);
			joj2.put("scity_name", scity_name);
			joj2.put("Country_id", Country_id);
			joj2.put("Country_name", Country_name);

			jsonArray.add(joj2);
		}
		m.put("calendar", jsonArray);

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		pstmt2.close();
		rs2.close();
		conn.close();
	}
	
	String selectMapInfosql = " select night_move, rt_days, scity_name, city_x, city_y, scity_id "
			+ " from tbl_route a join tbl_city b on a.scity_id = b.city_id "
			+ " where trip_id = ? ";

	try {

		conn = ConnectionProvider.getConnection();
		pstmt3 = conn.prepareStatement(selectMapInfosql);
		
// 		pstmt3.setInt(1, 10000001);
		pstmt2.setInt(1, trip_id);

		rs3 = pstmt3.executeQuery();

		while (rs3.next()) {
			String night_move = rs3.getString("night_move");
			int rt_days = rs3.getInt("rt_days");
			String scity_name = rs3.getString("scity_name");
			Double lat =  Double.parseDouble(rs3.getString("city_x"));
			Double lng = Double.parseDouble(rs3.getString("city_y"));
			int scity_id = rs3.getInt("scity_id");
			
			jsonData.put("night_move", night_move);
			jsonData.put("nights", rt_days);
			jsonData.put("scity_name", scity_name);
			jsonData.put("lat", lat);
			jsonData.put("lng", lng);
			jsonData.put("scity_id", scity_id);

			jsonArray2.add(jsonData);
		}
		m.put("map", jsonArray2);

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		pstmt3.close();
		rs3.close();
		conn.close();
	}
%>
<%= m%>