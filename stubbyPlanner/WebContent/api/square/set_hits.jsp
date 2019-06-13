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
 		System.out.println("ajaxPage호출 Boardlike"+post_seq);
%>	
<%
	Connection conn = null;
	
	PreparedStatement pstmt = null;
// 	PreparedStatement pstmtLike = null;
	
	JSONObject jObj = null;

	try {
	 	System.out.println("try");

		conn = ConnectionProvider.getConnection();
		String sql = "update tbl_boards set post_hits= (select nvl(max(post_hits),0)+1 from tbl_boards where post_seq = ?) where post_seq = ?";
		
// 	 	String sqlLike = "select post_like from tbl_boards where post_seq=?";		
	 			
	 	pstmt =conn.prepareStatement(sql);
// 	 	pstmtLike =conn.prepareStatement(sqlLike);
	 			
	 	pstmt.setString(1, post_seq);
	 	pstmt.setString(2, post_seq);
	 			
// 	 	pstmtLike.setString(1,post_seq);		
		
// 	 	System.out.println("pstmtLike"+pstmtLike);
	 
		int rs = pstmt.executeUpdate();		
// 		int rsLike = pstmtLike.executeUpdate();		
	 			
	 		System.out.println(rs);
// 	 		System.out.println(rsLike);
		if(rs !=0){
	 		System.out.println("if");
			jObj = new JSONObject();
			jObj.put("list", rs);
		}else{
	 		System.out.println("else");
			jObj = new JSONObject();
			jObj.put("list", rs);
		}
		
// 		if(rsLike !=0){
// 	 		System.out.println("if");
// 			jObj = new JSONObject();
// 			jObj.put("listLike", rsLike);
// 		}else{
// 	 		System.out.println("else");
// 			jObj = new JSONObject();
// 			jObj.put("listLike", rsLike);
// 		}

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		pstmt.close();
// 		pstmtLike.close();
		conn.close();
	}
%>

<%=jObj%>