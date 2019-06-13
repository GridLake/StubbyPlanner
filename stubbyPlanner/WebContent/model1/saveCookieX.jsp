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
// 함수 선언 
  public String getEnddate(String startdate, String tripgeneRt){
	// startdate - > java.util.Date
	// rt_days+
	// 숙박일에 따른 다음 이동날짜 계산
	String enddate = "";
	int rt_days = Integer.parseInt(startdate.substring(8));
	rt_days = rt_days + Integer.parseInt(tripgeneRt);
		
	StringBuffer replace_rt_days = new StringBuffer();
	if(rt_days < 10) {
		replace_rt_days.append("0");
	}
	replace_rt_days.append(rt_days);
	enddate = startdate.replace(startdate.substring(8), replace_rt_days);
	return enddate;
}

%>
 
<%
	//공통
	String tid = request.getParameter("tid"); // trip_id
	int arr_nextday = Integer.parseInt(request.getParameter("arr_nextday")); // +1 도착
	
	// tbl_route
	String tripgene = request.getParameter("tripgene"); // 기본데이터들 집합. rtstring
	String[] tripgeneArr1 = tripgene.split(",");
	
	System.out.println("tripgene:" + tripgene);
	
		
	// tbl_planner
	
	String startdate = request.getParameter("startdate");
	/* 
	if(arr_nextday == 1) {
		int startdays = Integer.parseInt(startdate.substring(8));
		startdays += 1;
		StringBuffer replacedays = new StringBuffer();
		if(startdays < 10) {
			replacedays.append("0");
		}
		replacedays.append(startdays);
		
		startdate = startdate.replace(startdate.substring(8), replacedays); //출국일
	}
	 */
	String tripwith = request.getParameter("tripwith"); //여행타입
	int term = Integer.parseInt(request.getParameter("term")); // eg., 13박 14일 -> term == 14일
	
	
%>
<%
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String [] tripgeneArr2 = {};
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
			
			// java.util.Date -> java.sql.Date
			
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
	
	sql = " insert into tbl_route(rt_id, trip_id, rt_days, rt_trans "
		+ " , rt_startdate, rt_enddate, scity_id) "
		+ " values(seq_route.nextval, ?, ?, ?, ?, ?, ?) ";
	
	try {
		conn = ConnectionProvider.getConnection();
		pstmt = conn.prepareStatement(sql);
		
		// [1:3:X], [2:3:1], [3:2:2], [4:1:1], [5,2:1]
		
		int tgarrlength = tripgeneArr1.length;
		tripgeneArr2 = tripgeneArr1[tgarrlength - 1].split(":");
		
		String enddate = getEnddate(startdate, tripgeneArr2[1]);
		
		pstmt.setString(1, tid);
		
		pstmt.setString(2, tripgeneArr2[1]);
		pstmt.setString(3, tripgeneArr2[2]);
		
		if(tgarrlength == 1) {
			pstmt.setString(4, startdate);
			pstmt.setString(5, enddate);
		} else if (tgarrlength > 1) {
			startdate = enddate;
			
					
			pstmt.setString(4, startdate);
			pstmt.setString(5, enddate);
		}
		
		pstmt.setString(6, tripgeneArr2[0]);
		
		
		rs = pstmt.executeQuery();
		
		rs.close();
		pstmt.close();
		
		
		sql = " select a.scity_id, b.city_name, a.ecity_id, c.city_name from tbl_route a " 
			+ " left join tbl_city b on a.scity_id = b.city_id "
			+ " left join tbl_city c on a.ecity_id = c.city_id ";
		
		
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		rs.close();
		pstmt.close();
		conn.close();
	}
%>

<%= tid %>