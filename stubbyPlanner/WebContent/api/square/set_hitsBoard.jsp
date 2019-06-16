<%@page import="net.sf.json.JSONArray"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.util.ConnectionProvider"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String post_seq =request.getParameter("post_seq");
 		System.out.println("ajaxPage호출 Boardhits"+post_seq);
%>	
<%
	Connection conn = null;	
	PreparedStatement pstmt = null;	
	JSONObject jObj = null;
	int rs = 0;	

	try {
	 	System.out.println("try");

		conn = ConnectionProvider.getConnection();
		String sql = "update tbl_boards set post_hits= (select nvl(max(post_hits),0)+1 from tbl_boards where post_seq = ? ) where post_seq = ?";
		System.out.println(sql);		
	 	pstmt =conn.prepareStatement(sql);
	 	System.out.println(pstmt);
	 			
	 	pstmt.setString(1, post_seq);
	 	pstmt.setString(2, post_seq);	
	 
		rs = pstmt.executeUpdate();		
	 			
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