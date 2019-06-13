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
	String party_content =request.getParameter("party_content");
 		System.out.println("ajaxPage호출 writeParty"+member_id);
 		System.out.println("ajaxPage호출 writeParty"+party_content);
%>	
<%
	Connection conn = null;
	
	PreparedStatement pstmtWriteParty = null;
	
	JSONObject jObj = null;

	try {
	 	System.out.println("try");

		conn = ConnectionProvider.getConnection();
// 		insert into tbl_message values((select nvl(max(msg_seqno),0)+1 from tbl_message),'rlrlghk','abcd12','test','teeeeeeeeeeeeeest',sysdate);
		String sqlWriteBoard = "insert into tbl_party values((select nvl(max(party_seqno),0)+1 from tbl_party),?,?,0,0)";
		
		pstmtWriteParty =conn.prepareStatement(sqlWriteBoard);
	 			
		pstmtWriteParty.setString(1, member_id);
		pstmtWriteParty.setString(2, party_content);
		
	 	System.out.println("pstmtWriteParty");
	 
		int rsWriteParty = pstmtWriteParty.executeUpdate();		
	 		System.out.println(rsWriteParty);
		if(rsWriteParty !=0){
	 		System.out.println("if");
			jObj = new JSONObject();
			jObj.put("listWriteParty", rsWriteParty);
		}else{
	 		System.out.println("else");
			jObj = new JSONObject();
			jObj.put("listWriteParty", rsWriteParty);
		}

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		pstmtWriteParty.close();
		conn.close();
	}
%>

<%=jObj%>