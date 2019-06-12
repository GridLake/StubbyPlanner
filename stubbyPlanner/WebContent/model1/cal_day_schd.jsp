<%@page import="java.util.Arrays"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="net.sf.json.JSONArray"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="com.util.ConnectionProvider"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
		String year = request.getParameter("y");
		String month = request.getParameter("m");
		String day = request.getParameter("d");
		int trip_id = Integer.parseInt( request.getParameter("trip_id"));
// 		System.out.println("year:: " + year);
// 		System.out.println("month:: " + month);
// 		System.out.println("day:: " + day);
%>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	Connection conn2 = null;
	PreparedStatement pstmt2 = null;
	ResultSet rs2 = null;
	int rowcount = 0;

	try {
		conn = ConnectionProvider.getConnection();
	
		String sql = "select count(*) from tbl_route where ? between rt_startdate and rt_enddate and trip_id = ? ";

		pstmt = conn.prepareStatement(sql);

// 		pstmt.setString(1, 2019 + "." + 7 + "." + 10);
// 		pstmt.setInt(2, 10000001);
		pstmt.setString(1, year+ "." + month + "." + day);
		pstmt.setInt(2, trip_id);

		rs = pstmt.executeQuery();

		while (rs.next()) {
			rowcount = rs.getInt(1);
		}
// 				System.out.println("Total rows : " + rowcount);

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		pstmt.close();
		rs.close();
		conn.close();
	}

	// 	System.out.println("Total rows22 : " + rowcount);
	JSONArray jsonArray = new JSONArray(); // data                           
	JSONObject jsonBucket = new JSONObject(); // bucket
	JSONObject jsonTotal = new JSONObject(); // items
	JSONArray jsonArray2 = new JSONArray(); // items
	JSONArray jsonArray3 = new JSONArray(); // items
	JSONObject JsonO = null; // index
	
	JSONArray jsonscheduleA = new JSONArray();
	JSONObject jsonImg = new JSONObject();
	JSONArray jsonimginfo = new JSONArray();
	JSONObject jsonSpot = new JSONObject();
	
	String amonth ="";
	String aday = "";
	if(month.length() == 1){
		amonth = 0 + month;
	}else{
		amonth = month;
	}
	if(day.length() == 1){
		aday = 0 + day;
	}else{
		aday = day;
	}
	String date = year + amonth  + aday;
// 	String date = 20190710 + "";

	try {
		conn = ConnectionProvider.getConnection();
		
		int count [];

		String sql = "select a.city_id, a.city_name, a.city_x, a.city_y , c.country_name, att_id, b.rt_id , rt_startdate, rt_enddate, rt_days, scity_name"
				+ " from tbl_city a join tbl_route b on a.city_id = b.scity_id "
				+ " join tbl_country c on a.country_id = c.country_id "
				+ " where trip_id = ? and ? between rt_startdate and rt_enddate"
				+ " order by rt_id ";

		pstmt = conn.prepareStatement(sql);

// 		pstmt.setInt(1, 10000001);
// 		pstmt.setString(2, 2019 + "." + 7 + "." + 10);
		pstmt.setInt(1, trip_id);
		pstmt.setString(2, year+ "." + month + "." + day);
		rs = pstmt.executeQuery();
		while (rs.next()) {
			int i = 1;
			int city_id = rs.getInt("city_id");
			String city_name = rs.getString("city_name");
			double city_x = rs.getDouble("city_x");
			double city_y = rs.getDouble("city_y");
			String country_name = rs.getString("country_name");
			String att_id = rs.getString("att_id");
			String rt_startdate = rs.getString("rt_startdate").substring(0,4) + rs.getString("rt_startdate").substring(5,7) + rs.getString("rt_startdate").substring(8,10);
			String rt_enddate = rs.getString("rt_enddate").substring(0,4) + rs.getString("rt_enddate").substring(5,7) + rs.getString("rt_enddate").substring(8, 10);
			int rt_days = rs.getInt("rt_days");
			int rt_id = rs.getInt("rt_id");
			String scity_name = rs.getString("scity_name");
// 			System.out.println(rt_id);
			
			if(rt_startdate.equals(date)){
				i = 1;
			}else if( !rt_startdate.equals(date) && !rt_enddate.equals(date)){
				i =  Integer.parseInt(date)+1 - Integer.parseInt(rt_startdate);
			}else if(rt_enddate.equals(date)){
				i = rt_days;
			}
			try {

				conn2 = ConnectionProvider.getConnection();

				String selectsql = "select schd_id ,s_title, s_content, s_time, bucket_id, s_img  "
						+ " from tbl_schedule  a join tbl_route b on a.rt_id = b.rt_id " 
						+ " where city_day = ? and a.rt_id = ? and scity_name = ?";

				pstmt2 = conn2.prepareStatement(selectsql);
				
				pstmt2.setInt(1, i);
				pstmt2.setInt(2, rt_id);
				pstmt2.setString(3, scity_name);

				rs2 = pstmt2.executeQuery();
				
				JSONObject joj = new JSONObject();
				 while (rs2.next()){
					
					String schd_id = rs2.getString("schd_id");
					String s_title = rs2.getString("s_title");
					String s_content = rs2.getString("s_content");
					String s_time = rs2.getString("s_time");
					String bucket_id = rs2.getString("bucket_id");
					String s_img = rs2.getString("s_img");

					jsonImg.put("url", s_img);
					jsonImg.put("width", 75);
					jsonImg.put("height", 75);
					joj.put("schd_id", schd_id);
					joj.put("title", s_title);
					joj.put("desc", s_content);
					joj.put("s_time", s_time);
					joj.put("bucket_id", bucket_id);
					joj.put("img", jsonImg);
					jsonscheduleA.add(joj);
// 				 	System.out.println(jsonscheduleA.size());
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				pstmt2.close();
				rs2.close();
				conn2.close();
			}
			JsonO = new JSONObject();
			JsonO.put("item_type", "city_schd");
			JsonO.put("city_id", city_id);
			JsonO.put("city_name", city_name);
			JsonO.put("city_lat", city_x);
			JsonO.put("city_lng", city_y);
			JsonO.put("ctry_name", country_name);
			JsonO.put("city_day", i);
			JsonO.put("can_select_bucket", city_id < 10000000 ? true : false);
			JsonO.put("city_bucket_id", att_id);
			JsonO.put("r_id", rt_id); // 일단 "0";
			JsonO.put("buckets", jsonBucket); // 일단 그냥 object
			JsonO.put("schedule", jsonscheduleA);
			jsonscheduleA = new JSONArray();
			int k = 0;			
			jsonArray2.add(k,JsonO); // date_in
			
			k = k + 2;
		}
			jsonTotal.put("items", jsonArray2);
			

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		pstmt.close();
		rs.close();
		conn.close();
	}
	
	JSONObject JsonO2 = new JSONObject(); // new items

	if (rowcount > 1) {
		try {
			conn = ConnectionProvider.getConnection();

			String sql = "select scity_name , ecity_name ,rt_trans " 
					+ " from tbl_route "
					+ " where rt_enddate = ? and trip_id = ? ";

			pstmt = conn.prepareStatement(sql);

// 			pstmt.setString(1, 2019 + "." + 7 + "." + 10);
// 			pstmt.setInt(2, 10000001);
			// 		pstmt.setInt(1, trip_id);
			pstmt.setString(1, year+ "." + month + "." + day);
			pstmt.setInt(2, trip_id);

			rs = pstmt.executeQuery();
			while (rs.next()) {

				String scity_name = rs.getString("scity_name");
				String ecity_name = rs.getString("ecity_name");
				String rt_trans = rs.getString("rt_trans");
				
// 				System.out.println("scity_name::" + scity_name);
// 				System.out.println("ecity_name::" + ecity_name);
				
				JsonO2.put("item_type", "city_move");
				JsonO2.put("dep_name", scity_name);
				JsonO2.put("des_name", ecity_name);
				JsonO2.put("desc", rt_trans);
				int k = 1;
				jsonArray2.add(k,JsonO2);
				k = k+2;
			}
				jsonTotal.put("items", jsonArray2);
			

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pstmt.close();
			rs.close();
			conn.close();
		}
	}
%>
<%=jsonTotal%>