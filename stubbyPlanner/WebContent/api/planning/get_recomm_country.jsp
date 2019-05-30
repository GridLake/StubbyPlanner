<%@page import="net.sf.json.JSONArray"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.util.ConnectionProvider"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	//int tt = Integer.parseInt(request.getParameter("tt"));
	String tt = request.getParameter("tt");
	String mm = request.getParameter("mm");
	//int mm = Integer.parseInt(request.getParameter("mm"));
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

		String sql = " select country_name, country_id ,img_url, count(*) item_cnt                                             "
				+ " from(                                                                                                   "
				+ " select D.Country_Name , d.country_id , e.img_url                                                        "
				+ " from tbl_attr a join tbl_city b on A.City_Id = B.City_Id                                                "
				+ "                 join tbl_region c on B.Region_Id = C.Region_Id                                          "
				+ "                 join Tbl_Country d on C.Country_Id = D.Country_Id                                       "
				+ "                 join Tbl_Country_Img e on D.Country_Id = e.country_id                                   "
				+ " where D.Country_Id = any (with temp as (                                                                "
				+ " select triptype, month, country_id, country_name,  percent_rank() over (order by visit_cnt desc ) r     "
				+ " from View_Visit_Info                                                                                    ";

		//+ " where triptype = ? and month = ?                                                                        "

		if (tt != "" && mm != "") {
			sql += " where triptype = ? and month = ? ";
		} else if (tt != "" && mm == "") {
			sql += " where triptype = ?  ";
		} else if (tt == "" && mm != "") {
			sql += " where month = ?  ";
		}

		sql += " )                                                                                                       "
				+ " select country_id                                                                                       "
				+ " from temp                                                                                               "
				+ " where r < 0.1)                                                                                          "
				+ " )                                                                                                       "
				+ " group by country_name, country_id, img_url                                                             ";

		System.out.println(sql);

		pstmt = conn.prepareStatement(sql);

		if (tt != "" && mm != "") {
			pstmt.setString(1, tt);
			pstmt.setString(2, mm);
		} else if (tt != "" && mm == "") {
			pstmt.setString(1, tt);
		} else if (tt == "" && mm != "") {
			pstmt.setString(1, mm);
		}

		rs = pstmt.executeQuery();
		
		
		if(rs.next()){
			
			jObj = new JSONObject();
			jArr = new JSONArray();
			
			do{
				JSONObject countryObj = new JSONObject();
				countryObj.put("country_name", rs.getString("country_name"));
				countryObj.put("country_id", rs.getInt("country_id"));
				countryObj.put("img_url", rs.getString("img_url"));
				countryObj.put("item_cnt", rs.getInt("item_cnt"));

				jArr.add(countryObj);
				
			}while(rs.next()) ;			
		}
		
		

/* 		while (rs.next()) {
			JSONObject countryObj = new JSONObject();
			countryObj.put("country_name", rs.getString("country_name"));
			countryObj.put("country_id", rs.getInt("country_id"));
			countryObj.put("img_url", rs.getString("img_url"));
			countryObj.put("item_cnt", rs.getInt("item_cnt"));

			jArr.add(countryObj);

		} */

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