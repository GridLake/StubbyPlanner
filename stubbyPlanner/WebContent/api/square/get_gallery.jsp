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

		String sqlNew = "with a as(select gal_seq, min(gal_pic_seq) gal_pic_seq from tbl_gallery_pic group by gal_seq), b as(select distinct gal_seq ,min(gal_pic_path) gal_pic_path from tbl_gallery_pic group by gal_seq), c as(select*from tbl_gallery) select * from a,b,c where a.gal_seq=b.gal_seq and b.gal_seq=c.gal_seq order by a.gal_seq desc";
		String sqlLike = "with a as(select gal_seq, min(gal_pic_seq) gal_pic_seq from tbl_gallery_pic group by gal_seq), b as(select distinct gal_seq ,min(gal_pic_path) gal_pic_path from tbl_gallery_pic group by gal_seq), c as(select*from tbl_gallery) select * from a,b,c where a.gal_seq=b.gal_seq and b.gal_seq=c.gal_seq order by c.post_like desc";
		String sqlClick = "with a as(select gal_seq, min(gal_pic_seq) gal_pic_seq from tbl_gallery_pic group by gal_seq), b as(select distinct gal_seq ,min(gal_pic_path) gal_pic_path from tbl_gallery_pic group by gal_seq), c as(select*from tbl_gallery) select * from a,b,c where a.gal_seq=b.gal_seq and b.gal_seq=c.gal_seq order by c.post_hits desc";

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
				
				JSONObject GalleryObj = new JSONObject();
				GalleryObj.put("gal_seq", rsNew.getInt("gal_seq"));
				GalleryObj.put("gal_pic_seq", rsNew.getInt("gal_pic_seq"));
				GalleryObj.put("member_id", rsNew.getString("member_id"));
				GalleryObj.put("gal_subject", rsNew.getString("gal_subject"));
				GalleryObj.put("gal_pic_path", rsNew.getString("gal_pic_path"));
				GalleryObj.put("gal_regdate", rsNew.getString("gal_regdate".toString()));
				GalleryObj.put("post_like", rsNew.getInt("post_like"));
				jArrNew.add(GalleryObj);

			} while (rsNew.next());
		}
		
		if (rsLike.next()) {
			System.out.println("if");
			jObj = new JSONObject();
			jArrLike = new JSONArray();
			do {
				
				JSONObject GalleryObj = new JSONObject();
				GalleryObj.put("gal_seq", rsLike.getInt("gal_seq"));
				GalleryObj.put("gal_pic_seq", rsLike.getInt("gal_pic_seq"));
				GalleryObj.put("member_id", rsLike.getString("member_id"));
				GalleryObj.put("gal_subject", rsLike.getString("gal_subject"));
				GalleryObj.put("gal_pic_path", rsLike.getString("gal_pic_path"));
				GalleryObj.put("gal_regdate", rsLike.getString("gal_regdate".toString()));
				GalleryObj.put("post_like", rsLike.getInt("post_like"));
				jArrLike.add(GalleryObj);

			} while (rsLike.next());
		}
		
		if (rsClick.next()) {
			System.out.println("if");
			jObj = new JSONObject();
			jArrClick = new JSONArray();
			do {
				
				JSONObject GalleryObj = new JSONObject();
				GalleryObj.put("gal_seq", rsClick.getInt("gal_seq"));
				GalleryObj.put("gal_pic_seq", rsClick.getInt("gal_pic_seq"));
				GalleryObj.put("member_id", rsClick.getString("member_id"));
				GalleryObj.put("gal_subject", rsClick.getString("gal_subject"));
				GalleryObj.put("gal_pic_path", rsClick.getString("gal_pic_path"));
				GalleryObj.put("gal_regdate", rsClick.getString("gal_regdate".toString()));
				GalleryObj.put("post_like", rsClick.getInt("post_like"));
				jArrClick.add(GalleryObj);

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