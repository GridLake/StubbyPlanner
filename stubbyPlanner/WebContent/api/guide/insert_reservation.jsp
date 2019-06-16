<%@page import="net.sf.json.JSONObject"%>
<%@page import="com.util.JdbcUtil"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.util.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String yy = request.getParameter("yy");
	String mm = request.getParameter("mm");
	String dd = request.getParameter("dd");
	String date = yy + "-" + mm + "-" + dd;

	Date r_date = Date.valueOf(date);

	String tourserial = request.getParameter("tourserial");
	String comid = request.getParameter("comid");
	String resv_name = request.getParameter("resv_name");
	int policy_id_cnts = Integer.parseInt(request.getParameter("policy_id_cnts"));
	String phone = request.getParameter("phone");
	String kakao = request.getParameter("kakao");
	String email = request.getParameter("email");
	String msg = request.getParameter("msg");
	String price_total = request.getParameter("price_total");
	String user_id = request.getParameter("userid");
	
	comid = comid.trim();
	
	System.out.print("insert_reservation--------------");
	System.out.println(yy);
	System.out.println(mm);
	System.out.println(dd);
	System.out.println(date);
	System.out.println(r_date);
	System.out.println(tourserial);
	System.out.println(comid);
	System.out.println(resv_name);
	System.out.println(policy_id_cnts);
	System.out.println(phone);
	System.out.println(kakao);
	System.out.println(email);
	System.out.println(msg);
	System.out.println(price_total);
	System.out.println(user_id);
	
	JSONObject jsonData =  new JSONObject();
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	PreparedStatement pstmt1 = null;
	ResultSet rs = null;

	String sql = "insert into tbl_reserve (reserve_seq, r_date, persons, price, name, email, tel, kakao_id, status, member_id, guide_seq, pt_email) "
			+ " values (reserve_seq.NEXTVAL, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

	int reservecnt = 0;
	System.out.println(sql);
	try {
		System.out.println("try");
		conn = ConnectionProvider.getConnection();
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setDate(1, r_date);
		pstmt.setInt(2, policy_id_cnts);
		pstmt.setString(3, price_total);
		pstmt.setString(4, resv_name);
		pstmt.setString(5, email);
		pstmt.setString(6, phone);
		pstmt.setString(7, kakao);
		pstmt.setString(8, "신청대기");
		pstmt.setString(9, user_id);
		pstmt.setString(10, tourserial);
		pstmt.setString(11, comid);

		System.out.println(comid);
		
		reservecnt = pstmt.executeUpdate();

		pstmt1 = conn.prepareStatement(" select max(reserve_seq) as reserve_seq from tbl_reserve ");

		rs = pstmt1.executeQuery();
		System.out.println(pstmt);
		System.out.println(pstmt1);
		System.out.println(rs);
		int reserve_seqrs = 0;

		while (rs.next()) {
			System.out.println(rs.getInt("reserve_seq"));
			reserve_seqrs = rs.getInt("reserve_seq");
			System.out.println(reserve_seqrs);
		}
		
		jsonData.put("nid", reserve_seqrs);
		jsonData.put("pid", policy_id_cnts);
		
		
		
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		pstmt.close();
		pstmt1.close();
		rs.close();
		conn.close();
	}
%>
<%=jsonData%>