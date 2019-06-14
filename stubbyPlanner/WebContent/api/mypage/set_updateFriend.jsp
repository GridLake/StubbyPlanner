<%@page import="net.sf.json.JSONArray"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.util.ConnectionProvider"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String member_myid =request.getParameter("member_myid");
	String member_friendid =request.getParameter("member_friendid");
 		System.out.println("ajaxPage호출 update"+member_myid);
 		System.out.println("ajaxPage호출 update"+member_friendid);
%>	
<%
	Connection conn = null;
	
	PreparedStatement pstmtUpdate = null;
	
	JSONObject jObj = null;

	try {
	 	System.out.println("try");

		conn = ConnectionProvider.getConnection();
		
		String sqlUpdate = "update tbl_friendlist set status=1 where member_myid =? and member_friendid =?";
		
	 	pstmtUpdate =	conn.prepareStatement(sqlUpdate);
	 			
		pstmtUpdate.setString(1, member_friendid);
		pstmtUpdate.setString(2, member_myid);
		
	 	System.out.println("pstmtUpdate");
	 
		int rsUpdate = pstmtUpdate.executeUpdate();
		
		if(rsUpdate !=0){
	 		System.out.println("if");
			jObj = new JSONObject();
			jObj.put("listUpdate", rsUpdate);
		}else{
	 		System.out.println("else");
			jObj = new JSONObject();
			jObj.put("listUpdate", rsUpdate);
		}

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		pstmtUpdate.close();
		//rs.close();
		conn.close();
	}
%>

<%=jObj%>