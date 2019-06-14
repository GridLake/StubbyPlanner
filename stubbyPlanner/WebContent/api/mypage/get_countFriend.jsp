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
	try{
		conn = ConnectionProvider.getConnection();

		//jObj = new JSONObject();
		//JSONArray jArr = new JSONArray();

		String sql = "select count(member_myid) countFriend from tbl_friendlist where (member_myid=? and status=1) or (member_friendid=? and status=1)";

		pstmt = conn.prepareStatement(sql);

		pstmt.setString(1, member_id);
		pstmt.setString(2, member_id);

		rs = pstmt.executeQuery();
		if (rs.next()) {
			System.out.println("if");
			jObj = new JSONObject();
			jArr = new JSONArray();
			do {
				System.out.println("do");
				JSONObject CountFriendObj = new JSONObject();
				CountFriendObj.put("countFriend", rs.getInt("countFriend"));
				jArr.add(CountFriendObj);

			} while (rs.next());
		}
		jObj.put("list", jArr);
	} catch (Exception e) {
		//e.printStackTrace();
	} finally {
		pstmt.close();
		conn.close();
	}
%>

<%=jObj%>