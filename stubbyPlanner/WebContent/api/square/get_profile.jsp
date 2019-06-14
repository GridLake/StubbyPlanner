<%@page import="net.sf.json.JSONArray"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.util.ConnectionProvider"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String member_myid = request.getParameter("member_myid");
	String friend_id = request.getParameter("friend_id");
 	System.out.println("ajaxPage호출"+member_myid);
 	System.out.println("ajaxPage호출"+friend_id);
%>	
<%
	Connection conn = null;

	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	PreparedStatement pstmtFriend1 = null;
	ResultSet rsFriend1 = null;
	
	PreparedStatement pstmtFriend2 = null;
	ResultSet rsFriend2 = null;

	PreparedStatement pstmtFriend3 = null;
	ResultSet rsFriend3 = null;
	
	JSONObject jObj = null;
	
	JSONArray jArr = null;
	JSONArray jArrApply = null;

	try {
		conn = ConnectionProvider.getConnection();
		System.out.println("try");
		String sql = "select * from tbl_member m join tbl_ms s on m.ms_code = s.ms_code where member_id =?";
		
		String sqlFriend1 = "select m.member_id "
				+ " from tbl_friendlist f join tbl_member m on f.member_friendid = m.member_id "
				+ " join tbl_ms s on m.ms_code = s.ms_code "
				+ " where f.status =1 and ((f.member_myid = ? and f.member_friendid =?) or (f.member_myid = ? and f.member_friendid =?))";
		
		String sqlFriend2 = "select m.member_id "
				+ " from tbl_friendlist f join tbl_member m on f.member_friendid = m.member_id "
				+ " join tbl_ms s on m.ms_code = s.ms_code "
				+ " where f.status =2 and f.member_myid = ? and f.member_friendid =?";
		
		String sqlFriend3 = "select m.member_id "
				+ " from tbl_friendlist f join tbl_member m on f.member_friendid = m.member_id "
				+ " join tbl_ms s on m.ms_code = s.ms_code "
				+ " where f.status =3 and f.member_myid = ? and f.member_friendid =?";
			
		System.out.println(sql);
		System.out.println(sqlFriend1);
		System.out.println(sqlFriend2);
		System.out.println(sqlFriend3);
		
		pstmt = conn.prepareStatement(sql);
		pstmtFriend1 = conn.prepareStatement(sqlFriend1);
		pstmtFriend2 = conn.prepareStatement(sqlFriend2);
		pstmtFriend3 = conn.prepareStatement(sqlFriend3);

		pstmt.setString(1, friend_id);
			System.out.println(pstmt);
				
		pstmtFriend1.setString(1, member_myid);
		pstmtFriend1.setString(2, friend_id);
		pstmtFriend1.setString(3, friend_id);
		pstmtFriend1.setString(4, member_myid);
				
		pstmtFriend2.setString(1, member_myid);
		pstmtFriend2.setString(2, friend_id);
				
		pstmtFriend3.setString(1, member_myid);
		pstmtFriend3.setString(2, friend_id);

		rs = pstmt.executeQuery();
		rsFriend1 = pstmtFriend1.executeQuery();
		rsFriend2 = pstmtFriend2.executeQuery();
		rsFriend3 = pstmtFriend3.executeQuery();
			System.out.println(rs);


		if (rs.next()) {
			System.out.println("sql if");
			jObj = new JSONObject();
			jArr = new JSONArray();
			do {
				System.out.println("do");
				JSONObject FriendObj = new JSONObject();
				FriendObj.put("member_id", rs.getString("member_id"));
				FriendObj.put("profile_pic", rs.getString("profile_pic"));
				FriendObj.put("ms_name", rs.getString("ms_name"));
				FriendObj.put("gender",   rs.getString("gender"));

				jArr.add(FriendObj);

			} while (rs.next());
		}
		
		if (rsFriend1.next()) {
			System.out.println("rsFriend1 if");
			jObj = new JSONObject();
			jObj.put("friendList","친구");
		}else if (rsFriend2.next()) {
			System.out.println("rsFriend2 if");
			jObj = new JSONObject();
			jObj.put("friendList","대기");
		}else if (rsFriend3.next()) {
			System.out.println("rsFriend3 if");
			jObj = new JSONObject();
			jObj.put("friendList","거절");
		}
				
		jObj.put("list", jArr);

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		pstmt.close();
		pstmtFriend1.close();
		pstmtFriend2.close();
		pstmtFriend3.close();
		conn.close();
	}
%>

<%=jObj%>