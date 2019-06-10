<%@page import="net.sf.json.JSONObject"%>
<%@page import="com.util.ConnectionProvider"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>

<%
	String tripgene = request.getParameter("tripgene"); // 기본데이터들 집합. rtstring
	String startdate = request.getParameter("startdate"); //출국일
	String tid = request.getParameter("tid"); // trip_id
	System.out.println("tid:" + tid);
	String tripwith = request.getParameter("tripwith"); //여행타입
	int term = Integer.parseInt(request.getParameter("term")); // 총숙박일?
	int arr_nextday = Integer.parseInt(request.getParameter("arr_nextday")); // +1
	String r_trip_id = request.getParameter("r_trip_id");
%>
<%
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	JSONObject jobj = null;
	
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
	//쿠키 생성코딩 해야됨.
	//    Cookie info = new Cookie("stubbytour",);
%>
<%=tid%>