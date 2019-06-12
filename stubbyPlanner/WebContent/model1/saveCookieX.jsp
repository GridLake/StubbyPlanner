<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="com.util.ConnectionProvider"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>

<%
	// tbl_route
	String tripgene = request.getParameter("tripgene"); // 기본데이터들 집합. rtstring
	String[] tripgene1 = tripgene.split(",");
	for(int i = 0; i < tripgene1.length; i++) {
		System.out.println("tripgene 2nd value:" + tripgene1[i].charAt(2));
	}
	System.out.println("tripgene:" + tripgene);
	String r_trip_id = request.getParameter("r_trip_id");
	
	
	/* 
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	Date startdate = sdf.parse(request.getParameter("startdate"));
	Date enddate = startdate + 3;
	*/
	
	
	// tbl_planner
	String startdate = request.getParameter("startdate"); //출국일
	String tripwith = request.getParameter("tripwith"); //여행타입
	int term = Integer.parseInt(request.getParameter("term")); // eg., 13박 14일 -> term == 14일
	
	
	// 공통
	String tid = request.getParameter("tid"); // trip_id
	int arr_nextday = Integer.parseInt(request.getParameter("arr_nextday")); // +1 도착
	
%>
<%
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	if (tid == "") {
		String sql = " insert into tbl_planner(trip_id, triptype, startdate, terms) "
				   + " values(seq_planner.nextval, ?, ?, ?)";

		try {
			conn = ConnectionProvider.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, tripwith);
			pstmt.setString(2, startdate);
			pstmt.setInt(3, term);
			
			rs = pstmt.executeQuery();
			
			rs.close();
			pstmt.close();
			
			sql = " select seq_planner.currval as trip_id from dual ";
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				tid = rs.getString("trip_id");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pstmt.close();
			rs.close();
			conn.close();
		}
	} else {
		String sql = "update tbl_planner set triptype = ?, startdate = ?, terms = ? where trip_id = ?";
		try {
			conn = ConnectionProvider.getConnection();
			pstmt = conn.prepareStatement(sql);

			//       pstmt.setInt(1, 1);
			pstmt.setString(1, tripwith);
			pstmt.setString(2, startdate);
			pstmt.setInt(3, term);
			pstmt.setString(4, tid);

			rs = pstmt.executeQuery();
			//jobj.put("trip_id", tid);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pstmt.close();
			rs.close();
			conn.close();
		}
	}
	
%>
<%= tid %>