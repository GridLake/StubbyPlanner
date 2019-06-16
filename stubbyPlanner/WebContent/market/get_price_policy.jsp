<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.util.ConnectionProvider"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="net.sf.json.JSONArray"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	PreparedStatement pstmt1 = null;
	ResultSet rs1 = null;
	ResultSet rs = null;
	

	int guide_seq = Integer.parseInt(request.getParameter("tourserial"));
	String pos = request.getParameter("pos");
	String y = request.getParameter("y");
	String m = request.getParameter("m");
	String d = request.getParameter("d");
	
	if(m.length() == 1){ 
		m = "0" + m; 
	} 
	
	String ymd = y+m+d;
	System.out.println(ymd);
	
	JSONObject jsonData = null;
	
	Date today = new Date();
	
	
	SimpleDateFormat transFormat = new SimpleDateFormat("yyyyMMdd");
	Date r_date = transFormat.parse(ymd);
	
	int month1 = today.getYear() * 12 + today.getMonth();
	int month2 = r_date.getYear() * 12 + r_date.getMonth();
	
	int result = month2 - month1;
	result = result>=2 ? 2 : result;
	System.out.println("result="+result);
	try{
		conn = ConnectionProvider.getConnection();
		
		String csql = " select sum(r.persons) as cnt from tbl_reserve r join tbl_guide_maket g on r.guide_seq = g.guide_seq where to_char(r_date, 'YYYYMMDD') = ? ";
		pstmt1 = conn.prepareStatement(csql);
		pstmt1.setString(1, ymd);
		
		rs1 = pstmt1.executeQuery();
		
		int cnt = 0;
		while(rs1.next()){
			 cnt = rs1.getInt("cnt");
		}
		
		StringBuffer sql = new StringBuffer(" select g.available_cnt, p.price_seq, p.division , p.price ");
		sql.append(" from tbl_guide_maket  g join tbl_price_list p on g.guide_seq = p.guide_seq ");
		sql.append(" where g.guide_seq = ? and  p.month = ? ");
		
	 	pstmt = conn.prepareStatement(sql.toString());
		pstmt.setInt(1, guide_seq);
		pstmt.setInt(2, result);
		
		rs = pstmt.executeQuery();
		
		jsonData = new JSONObject();
		
		JSONArray price_list = new JSONArray();
		JSONObject jsonList = new JSONObject();
		
		int a_cnt = 0;
		int n = 1;
		while(rs.next()){
			
			a_cnt = rs.getInt("available_cnt");
			
			jsonList.put("price_seq", rs.getInt("price_seq"));
			jsonList.put("policyname", rs.getString("division"));
			jsonList.put("price"+ n, rs.getInt("price"));
			jsonList.put("price"+ n +"_currency", "KRW");
			n++;
			int available_cnt = (a_cnt-cnt);
			jsonList.put("available_cnt", available_cnt);
		}
		
/* 			jsonList.put("price1_KRW", 28500);
			jsonList.put("price1_currency", "KRW");
			jsonList.put("price1_currency_KRW", "KRW");
			jsonList.put("price2", 0);
			jsonList.put("price2_currency", "KRW");
	 */	
			price_list.add(jsonList);
		
		jsonData.put("price_list" , price_list);
		
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		pstmt.close();
		rs.close();
		conn.close();
	}
%>
<%=jsonData  %>