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
	String gal_seq = request.getParameter("gal_seq");
 		System.out.println("ajaxPage호출"+member_id);
 		System.out.println("ajaxPage호출"+gal_seq);
%>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;	
	JSONObject jObj = null;
	
			PreparedStatement Deletepstmt = null;
			PreparedStatement Minuspstmt = null;
			PreparedStatement Insertpstmt = null;
			PreparedStatement Pluspstmt = null;
			
			ResultSet Minusrs = null;
			ResultSet Deleters = null;
			ResultSet Insertrs = null;
			ResultSet Plusrs = null;
			
	try {
		conn = ConnectionProvider.getConnection();

		String sql = "select * from tbl_like where gal_seq =? and member_id=?";
		
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, gal_seq);
		pstmt.setString(2, member_id);
		
		rs = pstmt.executeQuery();
		System.out.println("rssssss "+rs);
		System.out.println("rssssss "+sql);
		System.out.println("rssssss "+pstmt);
			
			
			 
		if ( rs.next() ) {
			jObj = new JSONObject();
			System.out.println("if 추천취소");
			
			String Deletesql = "delete from tbl_like where member_id=? and gal_seq=?";
			String Minussql = "update tbl_gallery set post_like= (select nvl(max(post_like),0)-1 from tbl_gallery where gal_seq = ?) where gal_seq = ?";
			
			System.out.println(Deletesql);
			System.out.println(Minussql);
			
			Deletepstmt = conn.prepareStatement(Deletesql);
			Minuspstmt =conn.prepareStatement(Minussql);
			
			Deletepstmt.setString(1, member_id);
			Deletepstmt.setString(2, gal_seq);
			
			Minuspstmt.setString(1, gal_seq);
		 	Minuspstmt.setString(2, gal_seq);
			
			Deleters = Deletepstmt.executeQuery();	
		 	Minusrs = Minuspstmt.executeQuery();
		 	
			jObj.put("list", "추천취소");    // {"list":"추천취소"}

			System.out.println(jObj);
		}else{
			jObj = new JSONObject();
			System.out.println("else 추천천");
			
			String Insertsql = "insert into tbl_like values(( select nvl(max(like_seq),0) from tbl_like )+1,?,?,null,null,null)";
			String Plussql = "update tbl_gallery set post_like= (select nvl(max(post_like),0)+1 from tbl_gallery where gal_seq = ?) where gal_seq = ?";

			Insertpstmt = conn.prepareStatement(Insertsql);
			Pluspstmt =conn.prepareStatement(Plussql);

			Insertpstmt.setString(1, member_id);
			Insertpstmt.setString(2, gal_seq);
			
			Pluspstmt.setString(1, gal_seq);
			Pluspstmt.setString(2, gal_seq);	

			Insertrs = Insertpstmt.executeQuery();
		 	Plusrs = Pluspstmt.executeQuery();
		 	
			System.out.println(Insertrs);			
			System.out.println(Plusrs);
			
			jObj.put("list", "추천");

		}

	} catch (Exception e) {
		System.out.println(">>>> " + e.toString());
		e.printStackTrace();
	} finally {
		pstmt.close();
		if( Deletepstmt != null )	Deletepstmt.close();
		if( Minuspstmt != null )	Minuspstmt.close();
		if( Insertpstmt != null ) 	Insertpstmt.close();
		if( Pluspstmt != null )		Pluspstmt.close();
		conn.close();
	}
%>

<%=jObj%>