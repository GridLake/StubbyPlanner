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
		String sqlTake = "select * "
				+ " from tbl_friendlist f join tbl_member m on f.member_friendid = m.member_id "
				+ " join tbl_ms s on m.ms_code = s.ms_code "
				+ " where f.status =1 and f.member_myid = ? ";
		
		
		pstmt = conn.prepareStatement(sqlTake);

		pstmt.setString(1, member_id);

		rs = pstmt.executeQuery();

		if (rs.next()) {
			System.out.println("if");
			jObj = new JSONObject();
			jArr = new JSONArray();
			do {
				System.out.println("do");
				JSONObject FriendObj = new JSONObject();
				FriendObj.put("member_id", rs.getString("member_id"));
				FriendObj.put("profile_pic", rs.getString("profile_pic"));
				FriendObj.put("ms_name", rs.getString("ms_name"));
				FriendObj.put("gender",   rs.getString("gender"));
				FriendObj.put("status",   rs.getString("status"));

				jArr.add(FriendObj);

			} while (rs.next());
		}

		
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