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
	ResultSet rs = null;
	
	String tour_id = request.getParameter("tour_id");
	String city_id = request.getParameter("city_id");
	String user_id = request.getParameter("user_id");
	
	JSONObject jsonData = null;
	
	try{
		conn = ConnectionProvider.getConnection();
		String sql = "insert into TBL_WISHLIST (WISHLIST_SEQNO, MEMBER_ID, guide_seq)"
			   		+ "values (SEQ_ID.nextval, ?, ?)";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, user_id);
		pstmt.setString(2, tour_id);
		
		
				
	
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		pstmt.close();
		rs.close();
		conn.close();
	}
	
	jsonData.put("", "");
	//jsonData.put("city_id", city_id);

%>
<%=jsonData %>