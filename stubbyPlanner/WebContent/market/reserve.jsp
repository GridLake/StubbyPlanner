<%@page import="java.util.Calendar"%>
<%@page import="net.sf.json.JSONArray"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="com.util.ConnectionProvider"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	int guide_seq = Integer.parseInt(request.getParameter("tourserial"));
	String m = request.getParameter("m");
	m = m.length() <= 1 ? "0"+m : m;
	String y = request.getParameter("y");
	String date = y+m;
	System.out.println(date);
	
	JSONObject jsonData = null;
	
	try{
		conn = ConnectionProvider.getConnection();
		 
		StringBuffer sql = new StringBuffer("select to_char(r_date,'dd') as s_date, sum(persons) from tbl_reserve group by r_date, guide_seq");
		sql.append(" having guide_seq = ? and to_char(r_date,'YYYYMM') = ? ");
		sql.append(" order by s_date "); 
		
		pstmt = conn.prepareStatement(sql.toString());
		pstmt.setInt(1, guide_seq);
		pstmt.setString(2, date); 
		
		rs = pstmt.executeQuery();
		
		jsonData = new JSONObject();
		
		JSONArray jsonArray = new JSONArray();
 
		while(rs.next()){
			
		} 
		 
		Calendar cal = Calendar.getInstance();
		 
		 
		
		
		cal.set(Integer.parseInt(y),Integer.parseInt(m)-1, 1);
		
		int lastOfDate = cal.getActualMaximum(Calendar.DATE);
	
		int week = cal.get(Calendar.DAY_OF_WEEK);
		
		for(int i =1;i<=lastOfDate;i++){
			JSONObject jsonList = new JSONObject();
			jsonList.put("s_day", i);
			jsonList.put("is_super0", false);
			jsonList.put("pos", "");
			jsonList.put("price_idx", 0);
			jsonArray.add(jsonList);
		}
		
		jsonData.put("available_list", jsonArray);
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		//pstmt.close();
		//rs.close();
		conn.close();
	}
%>
<%=jsonData %>