<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.google.gson.JsonObject"%>
<%@page import="com.util.ConnectionProvider"%>
<%@page import="net.sf.json.JSONArray"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%
      int city_id = Integer.parseInt(request.getParameter("city_id") );

%>

<%
   Connection conn = null;
   PreparedStatement pstmt = null;
   ResultSet rs = null;

   String sql = "select scity_tip, scity_info  from tbl_citydayselect where city_id = ?";
   JSONObject jsonData = new JSONObject();
   JSONArray jsonArray = new JSONArray();

   try {
      conn = ConnectionProvider.getConnection();
      pstmt = conn.prepareStatement(sql);

//       pstmt.setInt(1, 1);
            pstmt.setInt(1, city_id);

      rs = pstmt.executeQuery();
      while (rs.next()) {

         String scity_tip = rs.getString("scity_tip");
         String scity_info = rs.getString("scity_info");

         jsonData.put("scity_tip", scity_tip);
         jsonData.put("scity_info", scity_info);

      }

   } catch (Exception e) {
      e.printStackTrace();
   } finally {
      pstmt.close();
      rs.close();
      conn.close();
   }

   Connection conn2 = null;
   PreparedStatement pstmt2 = null;
   ResultSet rs2 = null;

   sql = "select city_title, city_subtitle, city_night, schd_info, img_url, scity_slprate from tbl_citydayinfo where city_id = ?";

   try {
      conn2 = ConnectionProvider.getConnection();
      pstmt2 = conn2.prepareStatement(sql);

//       pstmt2.setInt(1, 1);
      pstmt2.setInt(1, city_id);

      rs2 = pstmt2.executeQuery();
      while (rs2.next()) {

         String title = rs2.getString("city_title");
         String subtitle = rs2.getString("city_subtitle");
         int night = rs2.getInt("city_night");
         String schd_info = rs2.getString("schd_info");
         String img_url = rs2.getString("img_url");
         float slprate = rs2.getFloat("scity_slprate");

         JSONObject jsonScity = new JSONObject();

         jsonScity.put("title", title);
         jsonScity.put("subtitle", subtitle);
         jsonScity.put("night", night);
         jsonScity.put("schd_info", schd_info);
         jsonScity.put("img_url", img_url);
         jsonScity.put("slprate", slprate);

         jsonArray.add(jsonScity);

      }

      jsonData.put("schd", jsonArray);

   } catch (Exception e) {
      e.printStackTrace();
   } finally {
      pstmt2.close();
      rs2.close();
      conn2.close();
   }
%>
<%=jsonData%>