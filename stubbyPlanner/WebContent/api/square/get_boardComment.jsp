<%@page import="net.sf.json.JSONArray"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.util.ConnectionProvider"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String post_seq = request.getParameter("post_seq");
 		System.out.println("ajaxPage호출"+post_seq);
%>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	JSONObject jObj = null;
	JSONArray jArr = null;
	
	try {
		conn = ConnectionProvider.getConnection();

		String sql = "select * from tbl_comment where post_seq =?";
		
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, post_seq);
		
		rs = pstmt.executeQuery();
		
		if (rs.next()) {
			System.out.println("if");
			jObj = new JSONObject();
			jArr = new JSONArray();
			do {
				
				JSONObject CommentObj = new JSONObject();
				CommentObj.put("cmt_seq", rs.getInt("cmt_seq"));
				CommentObj.put("member_id", rs.getString("member_id"));
				CommentObj.put("cmt_detail", rs.getString("cmt_detail"));
				CommentObj.put("cmt_regdate",   rs.getString("cmt_regdate".toString()));

				jArr.add(CommentObj);

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