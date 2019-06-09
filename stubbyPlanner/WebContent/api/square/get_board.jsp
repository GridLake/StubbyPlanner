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

		String sql = "select * from tbl_boards order by post_seq desc";

		
		pstmt = conn.prepareStatement(sql);

		rs = pstmt.executeQuery();

		if (rs.next()) {
			System.out.println("if");
			jObj = new JSONObject();
			jArr = new JSONArray();
			do {
				
				JSONObject CommonObj = new JSONObject();
					CommonObj.put("post_seq", rs.getInt("post_seq"));
					CommonObj.put("member_id", rs.getString("member_id"));
					CommonObj.put("post_subject", rs.getString("post_subject"));
					CommonObj.put("post_regdate",   rs.getString("post_regdate".toString()));
// 					CommonObj.put("post_regdate",   rs.getString(post_regdate.toString('yyyy-m-d'));
					CommonObj.put("post_hits", rs.getInt("post_hits"));
					CommonObj.put("post_like", rs.getInt("post_like"));
					
					System.out.println(  ">>> " +  rs.getInt("post_seq")   );

				jArr.add(CommonObj);

			} while (rs.next());
		}

		jObj.put("list", jArr);

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		pstmt.close();
		//rs.close();
		conn.close();
	}
%>

<%=jObj%>