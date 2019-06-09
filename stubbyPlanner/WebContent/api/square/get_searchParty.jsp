<%@page import="net.sf.json.JSONArray"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.util.ConnectionProvider"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String option = request.getParameter("option");
	String search = request.getParameter("search");
			System.out.println("ajaxPage호출"+option);
			System.out.println("ajaxPage호출"+search);
%>
<%
	Connection conn = null;
	PreparedStatement pstmtContent = null;
	PreparedStatement pstmtId = null;
	
	ResultSet rsContent = null;
	ResultSet rsId = null;
	
	JSONObject jObj = null;
	JSONArray jArrContent = null;
	JSONArray jArrId = null;
	
	try {
		conn = ConnectionProvider.getConnection();

		String sqlContent = "select * from tbl_party p join tbl_member m on p.member_id = m.member_id where party_content like ('%'||?||'%') order by party_seqno desc";
		String sqlId = "select * from tbl_party p join tbl_member m on p.member_id = m.member_id where p.member_id like ('%'||?||'%') order by party_seqno desc";



		pstmtContent = conn.prepareStatement(sqlContent);
		pstmtId = conn.prepareStatement(sqlId);
		
		pstmtContent.setString(1, search);
		pstmtId.setString(1, search);

		rsContent = pstmtContent.executeQuery();
		rsId = pstmtId.executeQuery();
		
		
		if (rsContent.next()) {
			System.out.println("if");
			jObj = new JSONObject();
			jArrContent = new JSONArray();
			do {
				
				JSONObject PartyObj = new JSONObject();
				PartyObj.put("profile_pic", rsContent.getInt("profile_pic"));
				PartyObj.put("member_id", rsContent.getString("member_id"));
				PartyObj.put("party_content", rsContent.getString("party_content"));
				PartyObj.put("party_like", rsContent.getInt("party_like"));
					

					jArrContent.add(PartyObj);

			} while (rsContent.next());
		}
		
		if (rsId.next()) {
			System.out.println("if");
			jObj = new JSONObject();
			jArrId = new JSONArray();
			do {
				
				JSONObject PartyObj = new JSONObject();
				PartyObj.put("profile_pic", rsId.getInt("profile_pic"));
				PartyObj.put("member_id", rsId.getString("member_id"));
				PartyObj.put("party_content", rsId.getString("party_content"));
				PartyObj.put("party_like", rsId.getInt("party_like"));
					

				jArrId.add(PartyObj);

			} while (rsId.next());
		}
		
		if(option.equals("content")) jObj.put("listContent", jArrContent);
		else if(option.equals("member_id")) jObj.put("listId", jArrId);

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		pstmtContent.close();
		pstmtId.close();
		conn.close();
	}
%>

<%=jObj%>