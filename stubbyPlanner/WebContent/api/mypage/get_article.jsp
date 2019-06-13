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
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	JSONObject jObj = null;
	JSONArray jArr = null;
	try {
		conn = ConnectionProvider.getConnection();

		//jObj = new JSONObject();
		//JSONArray jArr = new JSONArray();

		String sql = "select * "
				+ " from tbl_boards "
				+ "where member_id = ? ";

		
		pstmt = conn.prepareStatement(sql);

		pstmt.setString(1, member_id);

		rs = pstmt.executeQuery();

		if (rs.next()) {
			System.out.println("if");
			jObj = new JSONObject();
			jArr = new JSONArray();
			System.out.println("Object");
			do {
				System.out.println("do");
				JSONObject ArticleObj = new JSONObject();
				ArticleObj.put("POST_SUBJECT", rs.getString("POST_SUBJECT"));
				ArticleObj.put("POST_CONTENT", rs.getString("POST_CONTENT"));
				ArticleObj.put("post_like", rs.getString("post_like"));
				ArticleObj.put("post_hits", rs.getString("post_hits"));
				ArticleObj.put("post_regdate", rs.getString("post_regdate".toString()));
				jArr.add(ArticleObj);

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