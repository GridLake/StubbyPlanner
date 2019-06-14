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
	String msg_subject =request.getParameter("msg_subject");
	String msg_content =request.getParameter("msg_content");
 		System.out.println("ajaxPage호출 MsgFriend"+member_myid);
 		System.out.println("ajaxPage호출 MsgFriend"+member_friendid);
 		System.out.println("ajaxPage호출 MsgFriend"+msg_subject);
 		System.out.println("ajaxPage호출 MsgFriend"+msg_content);
%>	
<%
	Connection conn = null;
	
	PreparedStatement pstmtMsgFriend = null;
	
	JSONObject jObj = null;

	try {
	 	System.out.println("try");

		conn = ConnectionProvider.getConnection();
// 		insert into tbl_message values((select nvl(max(msg_seqno),0)+1 from tbl_message),'rlrlghk','abcd12','test','teeeeeeeeeeeeeest',sysdate);
		String sqlMsgFriend = "insert into tbl_message values((select nvl(max(msg_seqno),0)+1 from tbl_message),?,?,?,?,sysdate)";
		
	 	pstmtMsgFriend =conn.prepareStatement(sqlMsgFriend);
	 			
	 	pstmtMsgFriend.setString(1, member_friendid);
	 	pstmtMsgFriend.setString(2, member_myid);
	 	pstmtMsgFriend.setString(3, msg_subject);
	 	pstmtMsgFriend.setString(4, msg_content);
		
	 	System.out.println("pstmtMsgFriend");
	 
		int rsMsgFriend = pstmtMsgFriend.executeUpdate();		
	 		System.out.println(rsMsgFriend);
		if(rsMsgFriend !=0){
	 		System.out.println("if");
			jObj = new JSONObject();
			jObj.put("listMsgFriend", rsMsgFriend);
		}else{
	 		System.out.println("else");
			jObj = new JSONObject();
			jObj.put("listMsgFriend", rsMsgFriend);
		}

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		pstmtMsgFriend.close();
		conn.close();
	}
%>

<%=jObj%>