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
	PreparedStatement pstmtSubject = null;
	PreparedStatement pstmtContent = null;
	PreparedStatement pstmtId = null;
	
	ResultSet rsSubject = null;
	ResultSet rsContent = null;
	ResultSet rsId = null;
	
	JSONObject jObj = null;
	JSONArray jArrSubject = null;
	JSONArray jArrContent = null;
	JSONArray jArrId = null;
	
	try {
		conn = ConnectionProvider.getConnection();

		String sqlSubject = "select * from tbl_boards where post_subject like ('%'||?||'%') order by post_seq desc";
		String sqlContent = "select * from tbl_boards where post_content like ('%'||?||'%') order by post_seq desc";
		String sqlId = "select * from tbl_boards where member_id like ('%'||?||'%') order by post_seq desc";



		pstmtSubject = conn.prepareStatement(sqlSubject);
		pstmtContent = conn.prepareStatement(sqlContent);
		pstmtId = conn.prepareStatement(sqlId);
		
		pstmtSubject.setString(1, search);
		pstmtContent.setString(1, search);
		pstmtId.setString(1, search);

		rsSubject = pstmtSubject.executeQuery();
		rsContent = pstmtContent.executeQuery();
		rsId = pstmtId.executeQuery();
	
		
		if (rsSubject.next()) {
			System.out.println("if");
			jObj = new JSONObject();
			jArrSubject = new JSONArray();
			do {
				
				JSONObject CommonObj = new JSONObject();
					CommonObj.put("post_seq", rsSubject.getInt("post_seq"));
					CommonObj.put("member_id", rsSubject.getString("member_id"));
					CommonObj.put("post_subject", rsSubject.getString("post_subject"));
					CommonObj.put("post_content", rsSubject.getString("post_content"));
					CommonObj.put("post_regdate",   rsSubject.getString("post_regdate".toString()));
// 					CommonObj.put("post_regdate",   rs.getString(post_regdate.toString('yyyy-m-d'));
					CommonObj.put("post_hits", rsSubject.getInt("post_hits"));
					CommonObj.put("post_like", rsSubject.getInt("post_like"));
					

					jArrSubject.add(CommonObj);

			} while (rsSubject.next());
		}
		
		if (rsContent.next()) {
			System.out.println("if");
			jObj = new JSONObject();
			jArrContent = new JSONArray();
			do {
				
				JSONObject CommonObj = new JSONObject();
					CommonObj.put("post_seq", rsContent.getInt("post_seq"));
					CommonObj.put("member_id", rsContent.getString("member_id"));
					CommonObj.put("post_subject", rsContent.getString("post_subject"));
					CommonObj.put("post_content", rsContent.getString("post_content"));
					CommonObj.put("post_regdate",   rsContent.getString("post_regdate".toString()));
// 					CommonObj.put("post_regdate",   rs.getString(post_regdate.toString('yyyy-m-d'));
					CommonObj.put("post_hits", rsContent.getInt("post_hits"));
					CommonObj.put("post_like", rsContent.getInt("post_like"));
					

					jArrContent.add(CommonObj);

			} while (rsContent.next());
		}
		
		if (rsId.next()) {
			System.out.println("if");
			jObj = new JSONObject();
			jArrId = new JSONArray();
			do {
				
				JSONObject CommonObj = new JSONObject();
					CommonObj.put("post_seq", rsId.getInt("post_seq"));
					CommonObj.put("member_id", rsId.getString("member_id"));
					CommonObj.put("post_subject", rsId.getString("post_subject"));
					CommonObj.put("post_content", rsId.getString("post_content"));
					CommonObj.put("post_regdate",   rsId.getString("post_regdate".toString()));
// 					CommonObj.put("post_regdate",   rs.getString(post_regdate.toString('yyyy-m-d'));
					CommonObj.put("post_hits", rsId.getInt("post_hits"));
					CommonObj.put("post_like", rsId.getInt("post_like"));
					
					jArrId.add(CommonObj);

			} while (rsId.next());
		}
		
		if(option.equals("subject")) jObj.put("listSubject", jArrSubject);
		else if(option.equals("content")) jObj.put("listContent", jArrContent);
		else if(option.equals("member_id"))jObj.put("listId", jArrId);

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		pstmtSubject.close();
		pstmtContent.close();
		pstmtId.close();
		conn.close();
	}
%>

<%=jObj%>