<%@page import="net.sf.json.JSONArray"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.util.ConnectionProvider"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String member_myid = request.getParameter("member_myid");
	String member_friendid = request.getParameter("member_friendid");
 		System.out.println("ajaxPage호출 delete"+member_myid);
 		System.out.println("ajaxPage호출 delete"+member_friendid);
%>	
<%
	Connection conn = null;

	PreparedStatement pstmtDelete = null;

	
	JSONObject jObj = null;

	try {
		conn = ConnectionProvider.getConnection();
		
		String sqlDelete = "update tbl_friendlist set status=3 where member_myid =? and member_friendid =?";
		
		pstmtDelete = conn.prepareStatement(sqlDelete);

		pstmtDelete.setString(1, member_friendid);
		pstmtDelete.setString(2, member_myid);

		int rsDelete = pstmtDelete.executeUpdate();

		if(rsDelete !=0){
			jObj = new JSONObject();
			jObj.put("listDelete", rsDelete);
		}else{
			jObj = new JSONObject();
			jObj.put("listDelete", rsDelete);
		}
	
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		pstmtDelete.close();
		//rs.close();
		conn.close();
	}
%>

<%=jObj%>