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
	String party_seqno = request.getParameter("party_seqno");
	String party_like = request.getParameter("party_like");
 		System.out.println("ajaxPage호출"+member_id);
 		System.out.println("ajaxPage호출"+party_seqno);
 		System.out.println("ajaxPage호출"+party_like);
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

		String sql = "select * from tbl_like where party_seqno =? and member_id=?";
		
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, party_seqno);
		pstmt.setString(2, member_id);
		
		rs = pstmt.executeQuery();
		System.out.println("rssssss "+rs);
		System.out.println("rssssss "+sql);
		System.out.println("rssssss "+pstmt);
			
			
			 
		if ( rs.next() ) {
			jObj = new JSONObject();
			System.out.println("if");
			
			String Deletesql = "delete from tbl_like where member_id=? and party_seqno=?";
			String Minussql = "update tbl_party set party_like= (select nvl(max(party_like),0)-1 from tbl_party where party_seqno = ?) where party_seqno = ?";
			
			System.out.println(Deletesql);
			System.out.println(Minussql);
			
			Deletepstmt = conn.prepareStatement(Deletesql);
			Minuspstmt =conn.prepareStatement(Minussql);
			
			Deletepstmt.setString(1, member_id);
			Deletepstmt.setString(2, party_seqno);
			
			Minuspstmt.setString(1, party_seqno);
		 	Minuspstmt.setString(2, party_seqno);
			
			Deleters = Deletepstmt.executeQuery();	
		 	Minusrs = Minuspstmt.executeQuery();
		 	
			jObj.put("list", "추천취소");    // {"list":"추천취소"}

 			
		}else{
			jObj = new JSONObject();
			System.out.println("else");
			
			String Insertsql = "insert into tbl_like values(( select nvl(max(like_seq),0) from tbl_like )+1,?,null,null,null,?)";
			String Plussql = "update tbl_party set party_like= (select nvl(max(party_like),0)+1 from tbl_party where party_seqno = ?) where party_seqno = ?";

			Insertpstmt = conn.prepareStatement(Insertsql);
			Pluspstmt =conn.prepareStatement(Plussql);

			Insertpstmt.setString(1, member_id);
			Insertpstmt.setString(2, party_seqno);
			
			Pluspstmt.setString(1, party_seqno);
			Pluspstmt.setString(2, party_seqno);	

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