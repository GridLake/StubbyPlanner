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

		String sql = " 			select *  "
				+ " from tbl_gallery a join Tbl_Gallery_Pic b on A.Gal_Seq = B.Gal_Seq  "
				+ "where A.Member_Id = ? ";

		pstmt = conn.prepareStatement(sql);

		pstmt.setString(1, member_id);

		rs = pstmt.executeQuery();

		if (rs.next()) {
			System.out.println("if");
			jObj = new JSONObject();
			jArr = new JSONArray();
			System.out.println("Object");
			do {
				JSONObject PhotoObj = new JSONObject();
				PhotoObj.put("gal_regdate", rs.getString("gal_regdate"));
				PhotoObj.put("gal_title", rs.getString("gal_title"));
				PhotoObj.put("gal_pic_path", rs.getString("gal_pic_path"));

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