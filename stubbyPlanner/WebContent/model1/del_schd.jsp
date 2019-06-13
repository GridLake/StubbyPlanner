<%@page import="net.sf.json.JSONObject"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.util.ConnectionProvider"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%
	String year = request.getParameter("y");
	String month = request.getParameter("m");
	String day = request.getParameter("d");
	int trip_id = Integer.parseInt(request.getParameter("trip_id"));
	String schd_id = request.getParameter("schd_id");
	int r_id = Integer.parseInt(request.getParameter("r_id"));
// 	System.out.println("year" + year);
// 	System.out.println("month" + month);
// 	System.out.println("day" + day);
// 	System.out.println("trip_id" + trip_id);
// 	System.out.println("schd_id" + schd_id);
// 	System.out.println("r_id" + r_id);
// 	System.out.println("idx" + idx);
%>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	JSONObject joj = new JSONObject();

	try {
		conn = ConnectionProvider.getConnection();

		String deletesql = "delete from tbl_schedule where schd_id = ? ";

		pstmt = conn.prepareStatement(deletesql);

		pstmt.setString(1, schd_id);
// 		pstmt.setString(1, "SCHD58");

		pstmt.executeQuery();
		joj.put("data", "");

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		pstmt.close();
		conn.close();
	}
%>
<%= joj%>