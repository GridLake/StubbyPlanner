<%@page import="java.time.LocalDate"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="com.util.ConnectionProvider"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>

<%!
	// 날짜 변경 함수 선언 
  	public String getDate (String startdate, int tripgeneRt) {
		
		int year = Integer.parseInt(startdate.substring(0, 4));
		int month = Integer.parseInt(startdate.substring(5, 7));
		int day = Integer.parseInt(startdate.substring(8));
		
		LocalDate date = LocalDate.of(year, month, day);
		date = date.plusDays(tripgeneRt);
		
		return date.toString();
	}

%>
 
<%
	//공통
	String tid = request.getParameter("tid"); // trip_id
	System.out.println("saveCookieX tid:" + tid);
	int arr_nextday = Integer.parseInt(request.getParameter("arr_nextday")); // +1 도착
	
	// tbl_route
	String tripgene = request.getParameter("tripgene"); // 기본데이터들 집합. rtstring
	String[] tripgeneArr1 = tripgene.split(",");
	
	System.out.println("tripgene:" + tripgene);
	
		
	// tbl_planner
	
	String startdate = request.getParameter("startdate");
	String tripwith = request.getParameter("tripwith"); 		//여행타입
	int term = Integer.parseInt(request.getParameter("term")); 	// eg., 13박 14일 -> term == 14일
	System.out.println("term:" + term);
	if(arr_nextday == 1) {
		startdate = getDate(startdate, arr_nextday);
	}
%>
<%
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String [] tripgeneArr2;
	String [] tripgeneArr3;
	String sql = "";
	
	if (tid == "") {
		sql = " insert into tbl_planner(trip_id, triptype, startdate, terms) "
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
			rs.close();
			pstmt.close();
			conn.close();
		}
		
	} else {
		sql = "update tbl_planner set triptype = ?, startdate = ?, terms = ? where trip_id = ?";
		try {
			conn = ConnectionProvider.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, tripwith);
			pstmt.setString(2, startdate);
			pstmt.setInt(3, term);
			pstmt.setString(4, tid);

			rs = pstmt.executeQuery();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			rs.close();
			pstmt.close();
			conn.close();
		}
		
		
	}
	
	sql = " insert into tbl_route(rt_id, trip_id, rt_days, rt_trans, "
		+ " rt_startdate, rt_enddate, scity_id, ecity_id, night_move ) "
		+ " values(seq_route.nextval, ?, ?, ?, ?, ?, ?, ?, ?) ";
	 	
	try {
		conn = ConnectionProvider.getConnection();
		pstmt = conn.prepareStatement(sql);
		
		// [1:3:X], [2:3:1], [3:2:2], [4:1:1], [5,2:1]
		int tgarrlength = tripgeneArr1.length;
		tripgeneArr2 = tripgeneArr1[tgarrlength - 1].split(":");
		
		// 출발도시, 도착도시 id
		int scity_id = 0;
		int ecity_id = 0;
		
		// 숙박일수
		int rt_days = Integer.parseInt(tripgeneArr2[1]);
		
		// 날짜 정리 
		// rt_startdate = startdate + term - rt_days - 1
		// rt_enddate = rt_startdate + rt_days
		int duration;
		if(tripgeneArr2.length -1 == 3) {		// 야간이동 포함
			duration = term - rt_days;
			pstmt.setString(8, tripgeneArr2[3]);
		} else {
			duration = term - rt_days - 1;
			pstmt.setString(8, "");
		}
		
		String rt_startdate = getDate(startdate, duration);
		String rt_enddate = "";
		
		pstmt.setInt(1, Integer.parseInt(tid));
		pstmt.setInt(2, rt_days);
		pstmt.setString(3, tripgeneArr2[2]);
		pstmt.setString(4, rt_startdate);
		rt_enddate = getDate(rt_startdate, rt_days);
		pstmt.setString(5, rt_enddate);
		
		if(tgarrlength == 1) {
			
			scity_id = ecity_id = Integer.parseInt(tripgeneArr2[0]);
			pstmt.setInt(6, scity_id);
			pstmt.setInt(7, ecity_id);
			
		}
		
		else if (tgarrlength > 1) {
			
			tripgeneArr3 = tripgeneArr1[tgarrlength - 2].split(":");
			
			scity_id = Integer.parseInt(tripgeneArr3[0]);
			ecity_id = Integer.parseInt(tripgeneArr2[0]);
			pstmt.setInt(6, scity_id);
			pstmt.setInt(7, ecity_id);
					
		}
		
		rs = pstmt.executeQuery();
		
		rs.close();
		pstmt.close();
		
		sql = " select a.city_name as scity_name, b.city_name as ecity_name " 
	     	+ " from tbl_city a, tbl_city b, tbl_route c "
	     	+ " where a.city_id = ? and b.city_id = ? " 
	     	+ " and trip_id = ? and rt_startdate = ? "; 
		
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setInt(1, scity_id);
		pstmt.setInt(2, ecity_id);
		pstmt.setString(3, tid);
		pstmt.setString(4, rt_startdate);
		
		rs = pstmt.executeQuery();
		
		String scity_name = "";
		String ecity_name = "";
		
		if(rs.next()) {
			scity_name = rs.getString("scity_name");
			ecity_name = rs.getString("ecity_name");
		}
		System.out.println("scity_name: " + scity_name + "/" + "ecity_name: " + ecity_name);
		
		rs.close();
		pstmt.close();
		
		sql = " update tbl_route set "
			+ " scity_name = ? , ecity_name = ?"
			+ " where trip_id = ? and rt_startdate = ?";
		
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, scity_name);
		pstmt.setString(2, ecity_name);
		pstmt.setString(3, tid);
		pstmt.setString(4, rt_startdate);
		
		rs = pstmt.executeQuery();
		
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		rs.close();
		pstmt.close();
		conn.close();
	}
%>

<%= tid %>