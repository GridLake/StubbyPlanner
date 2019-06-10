<%@page import="net.sf.json.JSONArray"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.util.ConnectionProvider"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String member_id =request.getParameter("member_id");
	String post_seq =request.getParameter("post_seq");
	String cmt_detail =request.getParameter("cmt_detail");
 		System.out.println("ajaxPage호출 writeBoard"+member_id);
 		System.out.println("ajaxPage호출 writeBoard"+post_seq);
 		System.out.println("ajaxPage호출 writeBoard"+cmt_detail);
%>	
<%
	Connection conn = null;
	
	PreparedStatement pstmtWriteBoardComment = null;
	
	JSONObject jObj = null;

	try {
	 	System.out.println("try");

		conn = ConnectionProvider.getConnection();
		String sqlWriteBoardComment = "insert into tbl_comment values((select nvl(max(cmt_seq),0)+1 from tbl_comment),?,?,null,null,?,1,0,0,sysdate,0)";
		
	 	pstmtWriteBoardComment =conn.prepareStatement(sqlWriteBoardComment);
	 			
	 	pstmtWriteBoardComment.setString(1, member_id);
	 	pstmtWriteBoardComment.setString(2, post_seq);
	 	pstmtWriteBoardComment.setString(3, cmt_detail);
		
	 	System.out.println("pstmtWriteBoard");
	 
		int rsWriteBoardComment = pstmtWriteBoardComment.executeUpdate();		
	 		System.out.println(rsWriteBoardComment);
		if(rsWriteBoardComment !=0){
	 		System.out.println("if");
			jObj = new JSONObject();
			jObj.put("listWriteBoardComment", rsWriteBoardComment);
		}else{
	 		System.out.println("else");
			jObj = new JSONObject();
			jObj.put("listWriteBoardComment", rsWriteBoardComment);
		}

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		pstmtWriteBoardComment.close();
		conn.close();
	}
%>

<%=jObj%>