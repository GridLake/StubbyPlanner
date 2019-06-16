<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="net.sf.json.JSONArray"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.util.ConnectionProvider"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	JSONObject jsondate = new JSONObject();
	JSONArray jsonArray = new JSONArray();
	JSONObject joj = new JSONObject();

	Connection conn = null;
	PreparedStatement pstmt = null;
	PreparedStatement pstmt2 = null;
	ResultSet rs = null;
	ResultSet rs2 = null;

	String sdatesql = "select rownum , x.rt_startdate " + " from (select * from tbl_route where trip_id = ? )x "
			+ " where rownum = ?";

	try {

		conn = ConnectionProvider.getConnection();
		pstmt = conn.prepareStatement(sdatesql);

		// 		pstmt2.setInt(1, trip_id);
		pstmt.setInt(1, 10000001);
		pstmt.setInt(2, 1);

		rs = pstmt.executeQuery();

		while (rs.next()) {
			String startdate = rs.getString("rt_startdate").replace('/', '-');
			
			System.out.println(startdate);
			jsondate.put("startdate", startdate);
		}
		jsonArray.add(jsondate);

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
			+ " where trip_id = 10000001 ";
	
	
	
	try {
		conn = ConnectionProvider.getConnection();
		pstmt2 = conn.prepareStatement(infosql);

		// 			pstmt.setInt(1, trip_id);
// 		pstmt.setInt(1, 10000001);

		rs2 = pstmt2.executeQuery();
	
		while (rs2.next()) {
			
			String rt_trans = rs2.getString("rt_trans");
			String rt_startdate = rs2.getString("rt_startdate").replace('/', '-');
			String rt_enddate = rs2.getString("rt_enddate").replace('/', '-');
			String scity_name = rs2.getString("scity_name");
			int Country_id = rs2.getInt("country_id");
			String Country_name = rs2.getString("country_name");
			
			System.out.println(rt_trans);
			System.out.println(rt_startdate);
			System.out.println(rt_enddate);
			System.out.println(Country_id);
			System.out.println(Country_name);

			joj.put("rt_trans",rt_trans);
			joj.put("rt_startdate",rt_startdate);
			joj.put("rt_enddate",rt_enddate);
			joj.put("scity_name",scity_name);
			joj.put("Country_id",Country_id);
			joj.put("Country_name",Country_name);
			
			jsonArray.add(joj);
		}

	}catch (Exception e) {
		e.printStackTrace();
	} finally {
		pstmt2.close();
		rs2.close();
		conn.close();
	}
%>
<%= jsonArray %>