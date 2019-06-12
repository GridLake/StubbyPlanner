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

		String sql = "select * from tbl_gallery g join tbl_gallery_pic p on g.gal_seq=p.gal_seq order by g.gal_seq desc";

		
		pstmt = conn.prepareStatement(sql);

		rs = pstmt.executeQuery();

		if (rs.next()) {
			System.out.println("if");
			jObj = new JSONObject();
			jArr = new JSONArray();
			do {
				
				JSONObject GalleryObj = new JSONObject();
				GalleryObj.put("gal_seq", rs.getInt("gal_seq"));
				GalleryObj.put("gal_pic_seq", rs.getInt("gal_pic_seq"));
				GalleryObj.put("member_id", rs.getString("member_id"));
				GalleryObj.put("gal_subject", rs.getString("gal_subject"));
				GalleryObj.put("gal_pic_path", rs.getString("gal_pic_path"));
				GalleryObj.put("gal_regdate", rs.getString("gal_regdate".toString()));
				GalleryObj.put("post_like", rs.getInt("post_like"));
					

				jArr.add(GalleryObj);

			} while (rs.next());
		}
		System.out.println(rs);
		jObj.put("list", jArr);

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		pstmt.close();
		conn.close();
	}
%>

<%=jObj%>