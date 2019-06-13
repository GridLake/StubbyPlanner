<%@page import="net.sf.json.JSONArray"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.util.ConnectionProvider"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	Connection conn = null;
	PreparedStatement pstmtNew = null;
	PreparedStatement pstmtLike = null;
	PreparedStatement pstmtClick = null;
	ResultSet rsNew = null;
	ResultSet rsLike = null;
	ResultSet rsClick = null;
	JSONObject jObj = null;
	JSONArray jArrNew = null;
	JSONArray jArrLike = null;
	JSONArray jArrClick = null;
	
	try {
		conn = ConnectionProvider.getConnection();

		//jObj = new JSONObject();
		//JSONArray jArr = new JSONArray();

		String sqlNew = "select * from tbl_boards order by post_seq desc";
		String sqlLike = "select * from tbl_boards order by post_like desc";
		String sqlClick = "select * from tbl_boards order by post_hits desc";

		
		pstmtNew = conn.prepareStatement(sqlNew);
		pstmtLike = conn.prepareStatement(sqlLike);
		pstmtClick = conn.prepareStatement(sqlClick);

		rsNew = pstmtNew.executeQuery();
		rsLike = pstmtLike.executeQuery();
		rsClick = pstmtClick.executeQuery();

		if (rsNew.next()) {
			System.out.println("if");
			jObj = new JSONObject();
			jArrNew = new JSONArray();
			do {
				
				JSONObject CommonObj = new JSONObject();
					CommonObj.put("post_seq", rsNew.getInt("post_seq"));
					CommonObj.put("member_id", rsNew.getString("member_id"));
					CommonObj.put("post_subject", rsNew.getString("post_subject"));
					CommonObj.put("post_content", rsNew.getString("post_content"));
					CommonObj.put("post_regdate",   rsNew.getString("post_regdate".toString()));
// 					CommonObj.put("post_regdate",   rs.getString(post_regdate.toString('yyyy-m-d'));
					CommonObj.put("post_hits", rsNew.getInt("post_hits"));
					CommonObj.put("post_like", rsNew.getInt("post_like"));
					jArrNew.add(CommonObj);
			} while (rsNew.next());
		}

		if (rsLike.next()) {
			System.out.println("if");
			jObj = new JSONObject();
			jArrLike = new JSONArray();
			do {
				
				JSONObject CommonObj = new JSONObject();
					CommonObj.put("post_seq", rsLike.getInt("post_seq"));
					CommonObj.put("member_id", rsLike.getString("member_id"));
					CommonObj.put("post_subject", rsLike.getString("post_subject"));
					CommonObj.put("post_content", rsLike.getString("post_content"));
					CommonObj.put("post_regdate",   rsLike.getString("post_regdate".toString()));
// 					CommonObj.put("post_regdate",   rs.getString(post_regdate.toString('yyyy-m-d'));
					CommonObj.put("post_hits", rsLike.getInt("post_hits"));
					CommonObj.put("post_like", rsLike.getInt("post_like"));
					jArrLike.add(CommonObj);
			} while (rsLike.next());
		}
		
		if (rsClick.next()) {
			System.out.println("if");
			jObj = new JSONObject();
			jArrClick = new JSONArray();
			do {
				
				JSONObject CommonObj = new JSONObject();
					CommonObj.put("post_seq", rsClick.getInt("post_seq"));
					CommonObj.put("member_id", rsClick.getString("member_id"));
					CommonObj.put("post_subject", rsClick.getString("post_subject"));
					CommonObj.put("post_content", rsClick.getString("post_content"));
					CommonObj.put("post_regdate",   rsClick.getString("post_regdate".toString()));
// 					CommonObj.put("post_regdate",   rs.getString(post_regdate.toString('yyyy-m-d'));
					CommonObj.put("post_hits", rsClick.getInt("post_hits"));
					CommonObj.put("post_like", rsClick.getInt("post_like"));
					jArrClick.add(CommonObj);
			} while (rsClick.next());
		}
		
		jObj.put("listNew", jArrNew);
		jObj.put("listLike", jArrLike);
		jObj.put("listClick", jArrClick);

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		pstmtNew.close();
		pstmtLike.close();
		pstmtClick.close();
		conn.close();
	}
%>

<%=jObj%>