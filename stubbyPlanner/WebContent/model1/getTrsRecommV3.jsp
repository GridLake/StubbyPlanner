<%@page import="net.sf.json.JSONArray"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="com.util.ConnectionProvider"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
 int depid = Integer.parseInt(request.getParameter("dep"));
 int desid = Integer.parseInt(request.getParameter("des"));
 System.out.println("depid:" + depid + "/" + "desid:" + desid);
%>

<%
 Connection conn = null;
 PreparedStatement pstmt = null;
 ResultSet rs = null;
 
 JSONObject jobj = new JSONObject();
 JSONObject trsobj = null;
 JSONObject hisobj = null;
 
 JSONArray jarr1 = null;
 JSONArray jarr2 = null;
 
 try {
	 conn = ConnectionProvider.getConnection();
	 
	 String sql = "with t2 as ( "
			    + " select depcity, descity, sum(trsfreq) total from tbl_trsdata "
			    + " where depcity = ? and descity = ? "
			    + " group by depcity, descity "
			    + " order by descity "
				+ " ) select t1.depcity, t1.descity, t1.trstype, nvl(t1.traveltime,' ') as traveltime, round(trsfreq/t2.total * 100,2) rate " 
				+ " from tbl_trsdata t1, t2 "
				+ " where t1.depcity = t2.depcity and t1.descity = t2.descity "
				+ " order by t1.depcity, t1.descity, t1.trstype ";
	 
	 pstmt = conn.prepareStatement(sql);
	 
	 pstmt.setInt(1, depid);
	 pstmt.setInt(2, desid);
	
	 rs = pstmt.executeQuery();
	 jarr1 = new JSONArray();
	 
	 while(rs.next()) {
		 trsobj = new JSONObject();
		 
		 String trstype = rs.getString("trstype");
		 float rate = rs.getFloat("rate");
		 String duration = rs.getString("traveltime").trim();
		 
		 trsobj.put("trstype", trstype);
		 trsobj.put("rate", rate);
		 trsobj.put("duration", duration);
		 
		 jarr1.add(trsobj);
		 
		 jobj.put("trslist", jarr1);
	 }
	 
 } catch(Exception e) {
	 e.printStackTrace();
 } finally {
	 rs.close();
	 pstmt.close();
	 conn.close();
 }
 
 try {
	 conn = ConnectionProvider.getConnection();
	 String sql = " select trsdesc from tbl_trsinfo "
			 	+ " where depcity = ? and descity = ? ";
	 
	 pstmt = conn.prepareStatement(sql);
	 
	 pstmt.setInt(1, depid);
	 pstmt.setInt(2, desid);
	 
	 rs = pstmt.executeQuery();
	 
	 if(rs.next()) {
		 String trsdesc = rs.getString("trsdesc");
		 
		 jobj.put("trsdesc", trsdesc);
	 }
 } catch (Exception e) {
	 e.printStackTrace();
 } finally {
	 rs.close();
	 pstmt.close();
	 conn.close();
 }
 
 try {
	 conn = ConnectionProvider.getConnection();
	 
	 String sql = " select userimg, trstitle, nvl(trscost,' ') as trscost, trsdep, trsdes, trstime "
			 	+ " from tbl_trshistory "
			 	+ " where depcity = ? and descity = ? ";
			    
	 pstmt = conn.prepareStatement(sql);
	 
	 pstmt.setInt(1, depid);
	 pstmt.setInt(2, desid);
	 
	 rs = pstmt.executeQuery();
	 jarr2 = new JSONArray();
	 
	 while(rs.next()) {
		 hisobj = new JSONObject();
		 
		 String user_img = rs.getString("userimg");
		 String title = rs.getString("trstitle");
		 String cost_txt = rs.getString("trscost").trim();
		 String dep = rs.getString("trsdep");
		 String des = rs.getString("trsdes");
		 String time_txt = rs.getString("trstime");
		 
		 hisobj.put("user_img", user_img);
		 hisobj.put("title", title);
		 hisobj.put("cost_txt", cost_txt);
		 hisobj.put("dep", dep);
		 hisobj.put("des", des);
		 hisobj.put("time_txt", time_txt);
		 
		 jarr2.add(hisobj);
		 
		 jobj.put("history", jarr2);
	 }
	 
 } catch(Exception e) {
	 e.printStackTrace();
 } finally {
	 rs.close();
	 pstmt.close();
	 conn.close();
 }
	 
%>

<%= jobj %>