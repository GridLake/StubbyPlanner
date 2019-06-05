<%@page import="net.sf.json.JSONArray"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.util.ConnectionProvider"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String member_id = request.getParameter("member_id");
 		System.out.println("ajaxPage호출"+member_id);
%>	
<%
	Connection conn = null;

	PreparedStatement pstmtTake = null;
	ResultSet rsTake = null;

	PreparedStatement pstmtGive = null;
	ResultSet rsGive = null;
	
	JSONObject jObj = null;
	
	
// 	JSONObject jObjGive = null;
	JSONArray jArrGive = null;
	
// 	JSONObject jObjTake = null;
	JSONArray jArrTake = null;
	try {
		conn = ConnectionProvider.getConnection();

		//jObj = new JSONObject();
		//JSONArray jArr = new JSONArray();

		String sqlTake = "select * "
				+ " from tbl_message "
				+ "where member_myid = ? "
				+ " order by msg_seqno desc";
		
		String sqlGive = "select * "
				+ " from tbl_message "
				+ "where member_friendid = ? "
				+ " order by msg_seqno desc";
		
		
		pstmtTake = conn.prepareStatement(sqlTake);
		pstmtGive = conn.prepareStatement(sqlGive);

		pstmtTake.setString(1, member_id);
		pstmtGive.setString(1, member_id);

		rsTake = pstmtTake.executeQuery();
		rsGive = pstmtGive.executeQuery();

		if (rsTake.next()) {
			System.out.println("if");
			jObj = new JSONObject();
			jArrTake = new JSONArray();
			do {
				System.out.println("do");
				JSONObject MessageObj = new JSONObject();
				MessageObj.put("member_friendid", rsTake.getString("member_friendid"));
				MessageObj.put("msg_subject", rsTake.getString("msg_subject"));
				MessageObj.put("msg_content", rsTake.getString("msg_content"));
				MessageObj.put("msg_regdate",   rsTake.getString("msg_regdate".toString()));

				jArrTake.add(MessageObj);

			} while (rsTake.next());
		}
		
		if (rsGive.next()) {
			System.out.println("if");
			jObj = new JSONObject();
			jArrGive = new JSONArray();
			do {
				System.out.println("do");
				JSONObject MessageObj = new JSONObject();
				MessageObj.put("member_myid", rsGive.getString("member_myid"));
				MessageObj.put("msg_subject", rsGive.getString("msg_subject"));
				MessageObj.put("msg_content", rsGive.getString("msg_content"));
				MessageObj.put("msg_regdate",   rsGive.getString("msg_regdate".toString()));

				jArrGive.add(MessageObj);

			} while (rsGive.next());
		}
		
		
		
		jObj.put("listTake", jArrTake);
		jObj.put("listGive", jArrGive);

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		pstmtTake.close();
		pstmtGive.close();
		//rs.close();
		conn.close();
	}
%>

<%=jObj%>