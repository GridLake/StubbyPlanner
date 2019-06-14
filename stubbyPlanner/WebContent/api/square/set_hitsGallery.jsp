<%@page import="net.sf.json.JSONArray"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.util.ConnectionProvider"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String gal_seq =request.getParameter("gal_seq");
 		System.out.println("ajaxPage호출 Boardlike"+gal_seq);
%>	
<%
	Connection conn = null;	
	PreparedStatement pstmt = null;	
	JSONObject jObj = null;

	try {
	 	System.out.println("try");

		conn = ConnectionProvider.getConnection();
		String sql = "update tbl_gallery set post_hits= (select nvl(max(post_hits),0)+1 from tbl_gallery where gal_seq = ?) where gal_seq = ?";
					
	 	pstmt =conn.prepareStatement(sql);
	 			
	 	pstmt.setString(1, gal_seq);
	 	pstmt.setString(2, gal_seq);	
	 
		int rs = pstmt.executeUpdate();		
	 			
	 		System.out.println(rs);
		if(rs !=0){
	 		System.out.println("if");
			jObj = new JSONObject();
			jObj.put("list", rs);
		}else{
	 		System.out.println("else");
			jObj = new JSONObject();
			jObj.put("list", rs);
		}

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		pstmt.close();
		conn.close();
	}
%>

<%=jObj%>