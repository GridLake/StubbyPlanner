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
	System.out.println("ajaxPage호출" + member_id);
%>
<%
	Connection conn = null;

	PreparedStatement pstmt = null;
	ResultSet rs = null;

	PreparedStatement pstmtApply = null;
	ResultSet rsApply = null;

	JSONObject jObj = null;

	JSONArray jArr = null;
	JSONArray jArrApply = null;

	try {
		conn = ConnectionProvider.getConnection();

		//jObj = new JSONObject();
		//JSONArray jArr = new JSONArray();
		String sqlTake = "select * "
				+ " from tbl_friendlist f join tbl_member m on f.member_friendid = m.member_id "
				+ " join tbl_ms s on m.ms_code = s.ms_code " + " where f.status =1 and (f.member_friendid = ? or f.member_myid=?)";
		pstmt = conn.prepareStatement(sqlTake);
		pstmt.setString(1, member_id);
		pstmt.setString(2, member_id);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			System.out.println("sqltake if");
			jObj = new JSONObject();
			jArr = new JSONArray();
			do {
				System.out.println("do");
				JSONObject FriendObj = new JSONObject();
				FriendObj.put("member_myid", rs.getString("member_myid"));
				FriendObj.put("member_friendid", rs.getString("member_friendid"));
				FriendObj.put("profile_pic", rs.getString("profile_pic"));
				FriendObj.put("ms_name", rs.getString("ms_name"));
				FriendObj.put("gender", rs.getString("gender"));
				FriendObj.put("status", rs.getString("status"));

				jArr.add(FriendObj);

			} while (rs.next());
		}
		
		rs.close();
		pstmt.close();
		
		

		String sqlApplyTake = "select * "
				+ " from tbl_friendlist f join tbl_member m on f.member_friendid = m.member_id "
				+ " join tbl_ms s on m.ms_code = s.ms_code " + " where f.status =2 and f.member_friendid = ? ";		
		pstmtApply = conn.prepareStatement(sqlApplyTake);
		pstmtApply.setString(1, member_id);		
		rsApply = pstmtApply.executeQuery();

		if (rsApply.next()) {
			System.out.println("sqlapplytake if");
			jObj = new JSONObject();
			jArrApply = new JSONArray();
			do {
				System.out.println("do");
				JSONObject FriendreqObj = new JSONObject();
				FriendreqObj.put("member_myid", rsApply.getString("member_myid"));
				FriendreqObj.put("profile_pic", rsApply.getString("profile_pic"));
				FriendreqObj.put("ms_name", rsApply.getString("ms_name"));
				FriendreqObj.put("gender", rsApply.getString("gender"));
				FriendreqObj.put("status", rsApply.getString("status"));

				jArrApply.add(FriendreqObj);

			} while (rsApply.next());
		}

		jObj.put("list", jArr);
		jObj.put("listApply", jArrApply);

	} catch (Exception e) {
		e.printStackTrace();
	} finally {		
		pstmtApply.close();
		rsApply.close();
		conn.close();
	}
%>

<%=jObj%>