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
	ResultSet rs = null;
	JSONObject jObj = null;
	JSONArray jArr = null;
	
	try {
		conn = ConnectionProvider.getConnection();

		//jObj = new JSONObject();
		//JSONArray jArr = new JSONArray();

		String sql = "select * from (select post_seq,member_id,post_subject,post_regdate,post_hits,post_like, ROW_NUMBER() OVER (order by post_like desc) rank from tbl_boards where board_code = ?) where rank between 1 and 5";

		
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, board_code);

		rs = pstmt.executeQuery();

		if (rs.next()) {
			System.out.println("if");
			jObj = new JSONObject();
			jArr = new JSONArray();
			do {
				
				JSONObject PhotoObj = new JSONObject();
					PhotoObj.put("post_seq", rs.getInt("post_seq"));
					PhotoObj.put("member_id", rs.getString("member_id"));
					PhotoObj.put("post_subject", rs.getString("post_subject"));
					PhotoObj.put("post_regdate",   rs.getString("post_regdate".toString()));
// 					PhotoObj.put("post_regdate",   rs.getString(post_regdate.toString('yyyy-m-d'));
					PhotoObj.put("post_hits", rs.getInt("post_hits"));
					PhotoObj.put("post_like", rs.getInt("post_like"));
					
					System.out.println(  ">>> " +  rs.getInt("post_seq")   );

				jArr.add(PhotoObj);

			} while (rs.next());
		}

		/* 		while (rs.next()) {
					JSONObject countryObj = new JSONObject();
					countryObj.put("country_name", rs.getString("country_name"));
					countryObj.put("country_id", rs.getInt("country_id"));
					countryObj.put("img_url", rs.getString("img_url"));
					countryObj.put("item_cnt", rs.getInt("item_cnt"));
		
					jArr.add(countryObj);
		
				} */

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