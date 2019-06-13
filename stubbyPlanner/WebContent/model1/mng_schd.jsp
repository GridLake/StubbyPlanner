<%@page import="net.sf.json.JSONObject"%>
<%@page import="com.util.ConnectionProvider"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String schd_id = request.getParameter("schd_id");
	String year = request.getParameter("y");
	String month = request.getParameter("m");
	String day = request.getParameter("d");
	int trip_id = Integer.parseInt( request.getParameter("trip_id") );
	String r_id = request.getParameter("r_id") ;  // 요거 문제
	String schd_title = request.getParameter("schd_title");
	String schd_desc = request.getParameter("schd_desc");
	String schd_adrs = request.getParameter("schd_adrs");
	String schd_time = request.getParameter("schd_time");
	String schd_lat = request.getParameter("schd_lat");
	String schd_lng = request.getParameter("schd_lng");
	String schd_img = request.getParameter("schd_img");
	String bucket_id = request.getParameter("bucket_id");
	String city_d = request.getParameter("city_day");
// 	System.out.println("schd_id::" + schd_id);
// 	System.out.println("schd_title::" + schd_title);
// 	System.out.println("schd_desc::" + schd_desc);
// 	System.out.println("schd_adrs::" + schd_adrs);
// 	System.out.println("schd_time::" + schd_time);
// 	System.out.println("bucket_id::" + bucket_id);
%>

<%
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	PreparedStatement pstmt2 = null;
	PreparedStatement pstmt3 = null;
	ResultSet rs3 = null;
	
	
	JSONObject jsonObject = new JSONObject();
	JSONObject s_id = null;
	JSONObject data = null;
	
	try{
		
		conn = ConnectionProvider.getConnection();
		
		String selectsql = "select rt_id , rt_startdate, rt_enddate, rt_days from tbl_route "
							+ " where trip_id = ? and ? between rt_startdate and rt_enddate ";
		
		String amonth ="";
		String aday = "";
		if(month.length() == 1){
			amonth = 0 + month;
		}else{
			amonth = month;
		}
		if(day.length() == 1){
			aday = 0 + day;
		}else{
			aday = day;
		}
		String date = year + amonth  + aday;
		
		pstmt = conn.prepareStatement(selectsql);
		pstmt.setInt(1, trip_id);
		pstmt.setString(2, year+ "." + month + "." + day);
		
		rs = pstmt.executeQuery();
		int city_day = 0;
		int rt_id = 0;
		
		while (rs.next()) {
			int i = 1;
			
			String rt_startdate = rs.getString("rt_startdate").substring(0,4) + rs.getString("rt_startdate").substring(5,7) + rs.getString("rt_startdate").substring(8,10);
			String rt_enddate = rs.getString("rt_enddate").substring(0,4) + rs.getString("rt_enddate").substring(5,7) + rs.getString("rt_enddate").substring(8, 10);
			int rt_days = rs.getInt("rt_days");
			
			if(rt_startdate.equals(date)){
				i = 1;
			}else if( !rt_startdate.equals(date) && !rt_enddate.equals(date)){
				i =  Integer.parseInt(date)+1 - Integer.parseInt(rt_startdate);
			}else if(rt_enddate.equals(date)){
				i = rt_days;
			} 
			city_day = i;
		}
		
		String insertsql = "insert into tbl_schedule (schd_id ,rt_id, s_title, s_content, s_adrs, s_time, s_lat, s_lng, s_img, bucket_id, city_day) "
				+ " values ('SCHD'||seq_schd_id.nextval, ? , ?, ?, ?, ?, ? , ? , ?, ? , ?) ";
		
		String updatesql = "update tbl_schedule set s_title = ?, s_content = ?, s_adrs = ?, s_time = ? where schd_id = ? ";
		
		if(schd_id.equals("")){
			System.out.println(" insert start ~~~~");
			pstmt2 = conn.prepareStatement(insertsql);
// 			System.out.println("rid::: " + r_id);
			pstmt2.setInt(1, Integer.parseInt( r_id));
			pstmt2.setString(2, schd_title);
			pstmt2.setString(3, schd_desc);
			pstmt2.setString(4, schd_adrs);
			pstmt2.setString(5, schd_time);
			pstmt2.setString(6, schd_lat);
			pstmt2.setString(7, schd_lng);
			pstmt2.setString(8, schd_img);
			pstmt2.setString(9, bucket_id );
// 			System.out.println(city_day);
			pstmt2.setInt(10, Integer.parseInt(city_d) );
			
			pstmt2.executeQuery();
// 			System.out.println("complete");
			
			/* 
			String selectschd_idsql = "select seq_schd_id.currval from dual ";
			
			rs3 = pstmt3.executeQuery(); 
			String sh_id = "";
			while(rs3.next()){
				sh_id = "SCHD" + rs3.getInt("seq_schd_id");
			}
			 */
			 
			s_id = new JSONObject();
			s_id.put("schd_id", "schd_id");
		}
// 		String updatesql = "update tbl_schedule set s_title = ?, s_content = ?, s_adrs = ?, s_time = ? where schd_id = ? ";
		else if( !schd_id.equals("") ){
			System.out.println(" update start ~~~~");
			pstmt2 = conn.prepareStatement(updatesql);
			
// 			System.out.println("schd_id:: " + schd_id);
// 			System.out.println("schd_title:: " + schd_title == null ? 1 : 0);
// 			System.out.println("schd_desc:: " + schd_desc  == null ? 1 : 0);
// 			System.out.println("schd_adrs:: " + schd_adrs  == null ? 1 : 0);
// 			System.out.println("schd_time:: " + schd_time  == null ? 1 : 0);
			
			pstmt2.setString(1, schd_title);
			pstmt2.setString(2, schd_desc);
			pstmt2.setString(3, schd_adrs);
			pstmt2.setString(4, schd_time);
			pstmt2.setString(5, schd_id);
			
			pstmt2.executeQuery();
			
			s_id = new JSONObject();
			s_id.put("schd_id", "schd-_id");
		}
		data.put("schd_id", s_id);
	
	}catch (Exception e) {
		e.printStackTrace();
	} finally {
		pstmt.close();
		rs.close();
		pstmt2.close();
		conn.close();
	}
	
%>
<%= data %>
