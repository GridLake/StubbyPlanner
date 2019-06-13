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

	PreparedStatement pstmtRequest = null;

	
	JSONObject jObj = null;

	try {
		conn = ConnectionProvider.getConnection();
		
		String sqlRequest = "insert into tbl_friendlist values((select nvl(max(friendlist_seq),0)+1 from tbl_friendlist),?,?,2)";
		
		pstmtRequest = conn.prepareStatement(sqlRequest);

		pstmtRequest.setString(1, member_myid);
		pstmtRequest.setString(2, member_friendid);

		int rsRequest = pstmtRequest.executeUpdate();

		if(rsRequest !=0){
			jObj = new JSONObject();
			jObj.put("listRequest", rsRequest);
		}else{
			jObj = new JSONObject();
			jObj.put("listRequest", rsRequest);
		}
	
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		pstmtRequest.close();
		//rs.close();
		conn.close();
	}
%>

<%=jObj%>