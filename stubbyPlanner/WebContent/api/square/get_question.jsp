<%@page import="net.sf.json.JSONArray"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.util.ConnectionProvider"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String board_code = request.getParameter("board_code");
 		System.out.println("ajaxPage호출"+board_code);
%>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	PreparedStatement pstmtTotal = null;
	ResultSet rs = null;
	ResultSet rsTotal = null;
	JSONObject jObj = null;
	JSONArray jArr = null;
	JSONArray jArrTotal = null;
	
	try {
		conn = ConnectionProvider.getConnection();

		//jObj = new JSONObject();
		//JSONArray jArr = new JSONArray();

		String sql = "select * from (select post_seq,member_id,post_subject,post_content,post_regdate,post_hits,post_like, ROW_NUMBER() OVER (order by post_like desc) rank from tbl_boards where board_code = ?) where rank between 1 and 5";

		String sqlTotal ="select * from tbl_boards where board_code = ? order by post_seq desc";
		
		pstmt = conn.prepareStatement(sql);
		pstmtTotal = conn.prepareStatement(sqlTotal);
		
		pstmt.setString(1, board_code);
		pstmtTotal.setString(1, board_code);
		
		rs = pstmt.executeQuery();
		rsTotal = pstmtTotal.executeQuery();

		if (rs.next()) {
			System.out.println("if");
			jObj = new JSONObject();
			jArr = new JSONArray();
			do {
				
				JSONObject PhotoObj = new JSONObject();
					PhotoObj.put("post_seq", rs.getInt("post_seq"));
					PhotoObj.put("member_id", rs.getString("member_id"));
					PhotoObj.put("post_subject", rs.getString("post_subject"));
					PhotoObj.put("post_content", rs.getString("post_content"));
					PhotoObj.put("post_regdate",   rs.getString("post_regdate".toString()));
// 					PhotoObj.put("post_regdate",   rs.getString(post_regdate.toString('yyyy-m-d'));
					PhotoObj.put("post_hits", rs.getInt("post_hits"));
					PhotoObj.put("post_like", rs.getInt("post_like"));
					
					System.out.println(  ">>> " +  rs.getInt("post_seq")   );

				jArr.add(PhotoObj);

			} while (rs.next());
		}

		if (rsTotal.next()) {
			System.out.println("if");
			jObj = new JSONObject();
			jArrTotal = new JSONArray();
			do {
				
				JSONObject CommonObj = new JSONObject();
					CommonObj.put("post_seq", rsTotal.getInt("post_seq"));
					CommonObj.put("member_id", rsTotal.getString("member_id"));
					CommonObj.put("post_subject", rsTotal.getString("post_subject"));
					CommonObj.put("post_content", rsTotal.getString("post_content"));
					CommonObj.put("post_regdate",   rsTotal.getString("post_regdate".toString()));
					CommonObj.put("post_hits", rsTotal.getInt("post_hits"));
					CommonObj.put("post_like", rsTotal.getInt("post_like"));
					
					System.out.println(  ">>> " +  rsTotal.getInt("post_seq")   );

					jArrTotal.add(CommonObj);

			} while (rsTotal.next());
		}

		jObj.put("list", jArr);
		jObj.put("listTotal", jArrTotal);

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		pstmt.close();
		pstmtTotal.close();
		conn.close();
	}
%>

<%=jObj%>