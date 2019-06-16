
<%@page import="java.sql.SQLException"%>
<%@page import="com.util.ConnectionProvider"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page trimDirectiveWhitespaces="true"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% 


	Connection conn = null;
	PreparedStatement pstmt = null;
	PreparedStatement pstmt1 = null;
	ResultSet rs = null;
	
	String slp_id = request.getParameter("slp_id");
 	String city_id = request.getParameter("city_id");
	String user_id = request.getParameter("user_id");

	System.out.println("user_id:" + user_id);
	System.out.println("slp_id:" + slp_id);
	
	JSONObject jsonData = null;
	
	try{
		conn = ConnectionProvider.getConnection();
		String sql = null;
		
		
		pstmt1 = conn.prepareStatement(" select count(*) as cnt from tbl_wishlist where member_id = ? and accom_seq = ? ");
		pstmt1.setString(1, user_id);
		pstmt1.setString(2, slp_id);
		
		rs = pstmt1.executeQuery();
		int result = 0;
		while(rs.next()){
			result = rs.getInt("cnt");
		}
		
		if(result==0){
			sql = " insert into TBL_WISHLIST (WISHLIST_SEQNO, MEMBER_ID, accom_seq) "
			   		+ " values (SEQ_ID.nextval, ?, ?)";
		} else {
			sql = " delete from tbl_wishlist where member_id = ? and accom_seq = ? ";
		}
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, user_id);
		pstmt.setString(2, slp_id);
		pstmt.executeUpdate();
		
		
		
				
	
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		pstmt.close();
		pstmt1.close();
		rs.close();
		conn.close();
	}
	
	jsonData.put("", "");
	//jsonData.put("city_id", city_id);

%>
<%=jsonData %>