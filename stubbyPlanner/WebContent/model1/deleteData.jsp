<%@page import="com.util.ConnectionProvider"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
 String tid = request.getParameter("tid");
 System.out.println("deleteData tid: " + tid);
%>

<%
 Connection conn = null;
 PreparedStatement pstmt = null;
 ResultSet rs = null;
 String [] tripgeneArr2 = {};

 String sql = " update tbl_route set "
		 	+ " "	
		    + " where trip_id = ? ";

	try {
		conn = ConnectionProvider.getConnection();
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, tid);
		
		rs = pstmt.executeQuery();
		
		rs.close();
		pstmt.close();
		
		sql = " delete from tbl_planner where trip_id = ? ";
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, tid);
		
		rs = pstmt.executeQuery();
		
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		pstmt.close();
		rs.close();
		conn.close();
	}
%>

<%= tid %>