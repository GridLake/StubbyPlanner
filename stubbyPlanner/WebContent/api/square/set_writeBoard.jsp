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
	String post_subject =request.getParameter("post_subject");
	String post_content =request.getParameter("post_content");
	String board_code =request.getParameter("board_code");
 		System.out.println("ajaxPage호출 writeBoard"+member_id);
 		System.out.println("ajaxPage호출 writeBoard"+post_subject);
 		System.out.println("ajaxPage호출 writeBoard"+post_content);
 		System.out.println("ajaxPage호출 writeBoard"+board_code);
%>	
<%
	Connection conn = null;
	
	PreparedStatement pstmtWriteBoard = null;
	
	JSONObject jObj = null;

	try {
	 	System.out.println("try");

		conn = ConnectionProvider.getConnection();
// 		insert into tbl_message values((select nvl(max(msg_seqno),0)+1 from tbl_message),'rlrlghk','abcd12','test','teeeeeeeeeeeeeest',sysdate);
		String sqlWriteBoard = "insert into tbl_boards values((select nvl(max(post_seq),0)+1 from tbl_boards),?,?,?,?,0,0,0,sysdate,0,0)";
		
	 	pstmtWriteBoard =conn.prepareStatement(sqlWriteBoard);
	 			
	 	pstmtWriteBoard.setString(1, board_code);
	 	pstmtWriteBoard.setString(2, member_id);
	 	pstmtWriteBoard.setString(3, post_subject);
	 	pstmtWriteBoard.setString(4, post_content);
		
	 	System.out.println("pstmtWriteBoard");
	 
		int rsWriteBoard = pstmtWriteBoard.executeUpdate();		
	 		System.out.println(rsWriteBoard);
		if(rsWriteBoard !=0){
	 		System.out.println("if");
			jObj = new JSONObject();
			jObj.put("listWriteBoard", rsWriteBoard);
		}else{
	 		System.out.println("else");
			jObj = new JSONObject();
			jObj.put("listWriteBoard", rsWriteBoard);
		}

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		pstmtWriteBoard.close();
		conn.close();
	}
%>

<%=jObj%>