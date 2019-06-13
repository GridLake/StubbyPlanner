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
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	JSONObject jObj = null;
	JSONArray jArr = null;
	
	try {
		conn = ConnectionProvider.getConnection();

		//jObj = new JSONObject();
		//JSONArray jArr = new JSONArray();

		String sql = "select * from tbl_party p join tbl_member m on p.member_id = m.member_id order by party_seqno desc";

		
		pstmt = conn.prepareStatement(sql);

		rs = pstmt.executeQuery();

		if (rs.next()) {
			System.out.println("if");
			jObj = new JSONObject();
			jArr = new JSONArray();
			do {
				
				JSONObject PartyObj = new JSONObject();
				PartyObj.put("profile_pic", rs.getInt("profile_pic"));
				PartyObj.put("member_id", rs.getString("member_id"));
				PartyObj.put("party_content", rs.getString("party_content"));
				PartyObj.put("party_like", rs.getInt("party_like"));
				PartyObj.put("party_seqno", rs.getInt("party_seqno"));
					

				jArr.add(PartyObj);

			} while (rs.next());
		}

		jObj.put("list", jArr);

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		pstmt.close();
		conn.close();
	}
%>

<%=jObj%>