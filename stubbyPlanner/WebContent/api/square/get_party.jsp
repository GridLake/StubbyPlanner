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

		String sqlNew = "select * from tbl_party p join tbl_member m on p.member_id = m.member_id order by party_seqno desc";
		String sqlLike = "select * from tbl_party p join tbl_member m on p.member_id = m.member_id order by party_like desc";
		String sqlClick = "select * from tbl_party p join tbl_member m on p.member_id = m.member_id order by party_hits desc";

		
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
				JSONObject PartyObj = new JSONObject();
				PartyObj.put("profile_pic", rsNew.getString("profile_pic"));
				PartyObj.put("member_id", rsNew.getString("member_id"));
				PartyObj.put("party_content", rsNew.getString("party_content"));
				PartyObj.put("party_like", rsNew.getInt("party_like"));
				PartyObj.put("party_seqno", rsNew.getInt("party_seqno"));
				jArrNew.add(PartyObj);
				System.out.println(jArrNew);
			} while (rsNew.next());
		}

		if (rsLike.next()) {
			System.out.println("if");
			jObj = new JSONObject();
			jArrLike = new JSONArray();
			do {
				JSONObject PartyObj = new JSONObject();
				PartyObj.put("profile_pic", rsLike.getString("profile_pic"));
				PartyObj.put("member_id", rsLike.getString("member_id"));
				PartyObj.put("party_content", rsLike.getString("party_content"));
				PartyObj.put("party_like", rsLike.getInt("party_like"));
				PartyObj.put("party_seqno", rsLike.getInt("party_seqno"));
				jArrLike.add(PartyObj);
			} while (rsLike.next());
		}
		
		if (rsClick.next()) {
			System.out.println("if");
			jObj = new JSONObject();
			jArrClick = new JSONArray();
			do {
				JSONObject PartyObj = new JSONObject();
				PartyObj.put("profile_pic", rsClick.getString("profile_pic"));
				PartyObj.put("member_id", rsClick.getString("member_id"));
				PartyObj.put("party_content", rsClick.getString("party_content"));
				PartyObj.put("party_like", rsClick.getInt("party_like"));
				PartyObj.put("party_seqno", rsClick.getInt("party_seqno"));
				jArrClick.add(PartyObj);
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