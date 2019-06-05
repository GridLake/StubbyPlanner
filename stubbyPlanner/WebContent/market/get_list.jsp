<%@page import="java.sql.SQLException"%>
<%@page import="com.util.JdbcUtil"%>
<%@page import="net.sf.json.JSONArray"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="com.util.ConnectionProvider"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page trimDirectiveWhitespaces="true"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	PreparedStatement c_pstmt = null;
	ResultSet rs = null;
	ResultSet rs_1 = null;

	int city_id = Integer.parseInt(request.getParameter("city_id"));
	String orderby = request.getParameter("orderby");
	int curpage = Integer.parseInt(request.getParameter("page"));
	String thema_code = request.getParameter("thema_code");
	String type = request.getParameter("bucketlist");

	JSONObject jsonData = null;

	System.out.println((type.length() > 0) + request.getParameter("bucketlist"));

	int size = 12; //한페이당 게시글수
	int startRow = (curpage - 1) * size; 

	try {
		conn = ConnectionProvider.getConnection();
		
		StringBuffer cntsql = new StringBuffer("select count(*) as cnt from tbl_guide_maket where city_id = ? ");
		if(!thema_code.equals("0")){
			cntsql.append(" and category = ?");			
		}
		if(type.length() > 0){
			cntsql.append(" and type = ? ");
		}

		StringBuffer sql = new StringBuffer("select * from (" );
		sql.append("select rownum as cnt, a.* from ( ");
		sql.append(" select g.guide_seq, g.company , g.title, g.price, g.hours, count(r.reserve_seq) as hot");
		sql.append(", nvl(avg(round((v.prog_score + v.prop_score + v.kind_score)/ 3, 1)), 0) as review"); // 평점
		sql.append(", count(v.guide_review_seq) as \"view\" "); // 리뷰작성수
		sql.append(" from tbl_guide_maket g left outer join tbl_reserve r on g.guide_seq = r.guide_seq "); // 가이드상품, 예약 조인
		sql.append(" 						left outer join tbl_guide_review v on r.reserve_seq = v.reserve_seq "); // 리뷰 조인
		sql.append(" where g.city_id = ? "); // 도시 검색조건
		if(!thema_code.equals("0")){
			sql.append(" and g.category = ?");			
		}
		if(type.length() > 0){
			sql.append(" and g.type = ? ");
		}
		sql.append(" group by g.guide_seq, g.title, g.price, g.hours, g.company");
		sql.append(" order by ");
		sql.append(orderby);
		sql.append(" desc ");
		sql.append(" 	) a ");
		sql.append(") b ");
		sql.append("where cnt between ? and ?");
		
		
		c_pstmt = conn.prepareStatement(cntsql.toString());
		int i = 1;
		c_pstmt.setInt(i++, city_id);
		if(!thema_code.equals("0")){
			c_pstmt.setString(i++, thema_code);
		}
		if(type.length() > 0){
			c_pstmt.setString(i++, type);
		}
		
		
		i = 1;
	
		pstmt = conn.prepareStatement(sql.toString());
		pstmt.setInt(i++, city_id);
		if(!thema_code.equals("0")){
			pstmt.setString(i++, thema_code);
		}
		if(type.length() > 0){
			pstmt.setString(i++, type);
		}
		pstmt.setInt(i++, startRow + 1);
		pstmt.setInt(i++, startRow + size);

		rs_1 = c_pstmt.executeQuery();
		rs = pstmt.executeQuery();
		
		System.out.println(rs);

		jsonData = new JSONObject();

		JSONArray jsonArray = new JSONArray();
		int cnt = 0;
		
		if (rs_1.next()) {
			cnt = rs_1.getInt("cnt");			
		}
		
		while (rs.next()) {
			int serial = rs.getInt("guide_seq");
			String title = rs.getString("title");
			String company = rs.getString("company");
			String hours = rs.getString("hours");
			String price = rs.getString("price");
			int hot = rs.getInt("hot");
			Double review = rs.getDouble("review");
			int review_cnt = rs.getInt("view");

			JSONObject jsonList = new JSONObject();
			jsonList.put("serial", serial);
			jsonList.put("com_name", company);
			jsonList.put("title", title);
			jsonList.put("duration", hours);
			jsonList.put("price_sale", price);
			jsonList.put("hot", hot);
			jsonList.put("review", review);
			jsonList.put("review_cnt", review_cnt);
			jsonList.put("useoutlink", 0); //
			jsonList.put("is_like", false); //찜하기
			jsonList.put("coupon_txt", "1만원"); //최대얼리버드할인가
			jsonList.put("is_lowest_price", true); //최저가 보장제
			jsonArray.add(jsonList);
		}
		
		
		jsonData.put("totalcnt", cnt);
		jsonData.put("curpage", curpage);
		jsonData.put("list", jsonArray);
		sql.delete(0, sql.toString().length());
		cntsql.delete(0, cntsql.toString().length());
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		c_pstmt.close();
		pstmt.close();
		rs_1.close();
		rs.close();
		conn.close();
	}
%>


<%=jsonData%>