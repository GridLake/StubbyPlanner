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
	
	PreparedStatement c_pstmt = null;
	ResultSet c_rs = null;
	
	
	
	String dep = request.getParameter("dep");
	String des = request.getParameter("des");
	String city_id = request.getParameter("city_id");		//도시ID
	String bucket = request.getParameter("bucketlist");		//방문예정지
	String roomtype = request.getParameter("roomtype");		//호텔타입
	String orderby = request.getParameter("orderby");		//이동거리순+예약자 많은순
	String max_price = request.getParameter("max_price");	//가격검색 범위 최대값
	String min_price = request.getParameter("min_price");	//가격검색 범위 최소값
	int curpage = Integer.parseInt(request.getParameter("page")); //페이지
	String review_score = request.getParameter("review_score"); //리뷰 스코어
	String star = request.getParameter("grade");			//호텔 타입
	String type = request.getParameter("type");
	
	
	
	int size = 12;
	int startRow = (curpage - 1) * size;

	System.out.println(bucket.length());
	System.out.println("bucket : " + bucket);
	
	String bucketlist [] = bucket.split(",");	//방문예정지 
	
	
	
	JSONObject jsonData = null;
	int i=1;
	try{
		conn = ConnectionProvider.getConnection();
		
		StringBuffer c_sql = new StringBuffer(" select count(*) as cnt from tbl_accommodations where city_id = ? and type = ? ");
		if(max_price.length()>1){ 				// 가격 범위 확인
			c_sql.append(" and price between ? and ? ");
		}
		if(review_score.length()>=1){			// 이용자 평점 검색 조건
			c_sql.append(" and average >= ?");
		}
		if(star.length()>=1){					// 호텔 타입 검색 조건
			c_sql.append(" and grade >= ?");
		}
		
		
		
		c_pstmt = conn.prepareStatement(c_sql.toString());
		c_pstmt.setString(i++, city_id);
		c_pstmt.setString(i++, type);
		if(max_price.length()>1){
			c_pstmt.setInt(i++, Integer.parseInt(min_price));
			c_pstmt.setInt(i++, Integer.parseInt(max_price));	
		}
		
		if(review_score.length()>=1){				//평점 검색값
			c_pstmt.setInt(i++, Integer.parseInt(review_score));
		}
		
		if(star.length()>=1){					// 호텔 타입 검색 조건
			c_pstmt.setInt(i++, Integer.parseInt(star));
		}
		
		c_rs = c_pstmt.executeQuery();
		
		int cnt = 0;
		while(c_rs.next()) {
			cnt = c_rs.getInt("cnt");
		}
		//총페이지 구하기
		
		
		
				
		StringBuffer sql = new StringBuffer("select * from ( ");
				sql.append("select rownum as cnt, b.* from (");
		sql.append("select  a.review, a.imgurl, a.linkurl, a.accom_seq, a.title, a.price, a.grade, a.average, a.lat, a.lng ");
		if(bucket.length()>=1){												// 방문예정지 검색시 거리계산
			sql.append(", sum(round(DISTNACE_WGS84(t.lat, t.lng, a.lat, a.lng),1)) as distance ");			
		}
		sql.append(" from tbl_accommodations a"); 
		if(bucket.length()>=1){												// 방문예정지 검색 조건
			sql.append(" left outer join tbl_attr t on a.city_id = t.city_id ");			
		}
		sql.append(" where a.city_id = ? and a.type = ? ");
		if(max_price.length()>1){ 											// 가격 범위 검색 조건
			sql.append(" and a.price between ? and ? ");
		}
		if(review_score.length()>=1){										// 이용자 평점 검색 조건
			sql.append(" and a.average >= ?");
		}
		if(star.length()>=1){												// 호텔 타입 검색 조건
			sql.append(" and a.grade >= ? ");
		}
		if(bucket.length()>=1) {												// 방문예정지 검색 값
			sql.append(" and t.attr_id in ( ");
			for(int j = 0; j<bucketlist.length; j++){		// 
				if((bucketlist.length-1)==j){
					sql.append("? )");				
				} else
					sql.append("?, ");
			}
			sql.append(" group by a.review, a.imgurl, a.linkurl, a.accom_seq, a.title, a.price, a.grade, a.average, a.lat, a.lng ");
			sql.append(" order by distance asc ");
		} else {
			sql.append(" order by average desc, review desc ");
		}
		sql.append(" ) b ");
		sql.append(" ) c ");
		sql.append("where cnt between ? and ?");
		
		i=1;
		
		pstmt = conn.prepareStatement(sql.toString());
		System.out.println(sql.toString());
		
		pstmt.setString(i++, city_id);				//도시 검색값
		pstmt.setString(i++, type);					//숙박종류 검색값
		
		if(max_price.length()>1){					//가격 검색 범위값
			
			pstmt.setInt(i++, Integer.parseInt(min_price));
			pstmt.setInt(i++, Integer.parseInt(max_price));	
		}
		
		if(review_score.length()>=1){				//평점 검색값
			pstmt.setInt(i++, Integer.parseInt(review_score));
		}
		if(star.length()>=1){					// 호텔 타입 검색 조건
			pstmt.setInt(i++, Integer.parseInt(star));
		}
		
		
		
		if(bucket.length()>=1){						//방문예정지 검색 값
			for(int j = 0; j<bucketlist.length; j++){
				pstmt.setString(i++, bucketlist[j]);
			}
		}
		
		
		
		
		pstmt.setInt(i++, startRow + 1);
		pstmt.setInt(i++, startRow + size);
		
		rs = pstmt.executeQuery();
		
		jsonData = new JSONObject();
		
		JSONArray jsonArray = new JSONArray();
		JSONArray recom_list = new JSONArray();
		/* String linkurl = "https://www.booking.com/hotel/gb/the-lalit-london.html?aid=308767&label=city111031001";
		String imgurl = "https://q-xx.bstatic.com/xdata/images/hotel/max500/14507282.jpg?k=6b6494b2305d39900891a53843678dd352b386050c7d8bf95a72972208247d6b&o="; */
		Double distance = 0.0;
		while(rs.next()){
			String hotel_id = rs.getString("accom_seq");	//숙소id
			String title = rs.getString("title");			//숙소이름
			int price = rs.getInt("price");					//숙박비
			String grade = rs.getString("grade");			//등급
			String average = rs.getString("average");		//평점
			String review = rs.getString("review");
			if(bucket.length()>=1){
				distance = rs.getDouble("distance");
			}
			String lat = rs.getString("lat");
			String lng = rs.getString("lng");
			String linkurl = rs.getString("linkurl");
			String imgurl = rs.getString("imgurl");
			
			JSONObject jsonList = new JSONObject();
			jsonList.put("hotel_id", hotel_id);
			jsonList.put("linkurl", linkurl);
			jsonList.put("title", title);
			jsonList.put("price", price);
			jsonList.put("class", grade);
			jsonList.put("review_score", average);
			jsonList.put("review", review);
			jsonList.put("dist", distance);
			jsonList.put("is_like", false); // 좋아요
			jsonList.put("com_name", "");
			jsonList.put("tag", "");
			jsonList.put("lat", lat);
			jsonList.put("lng", lng);
			jsonList.put("imgurl", imgurl);
			jsonArray.add(jsonList);
		}
		jsonData.put("type", type);
		jsonData.put("totalcnt", cnt);
		jsonData.put("curpage", curpage);
		jsonData.put("recom_list", recom_list);
		jsonData.put("list", jsonArray);		
		sql.delete(0, sql.toString().length());
		c_sql.delete(0, c_sql.toString().length());
	} catch(SQLException e) {
		e.printStackTrace();
	} finally {
		c_pstmt.close();
		pstmt.close();
		c_rs.close();
		rs.close();
		conn.close();
	}
	
%>


<%=jsonData%>