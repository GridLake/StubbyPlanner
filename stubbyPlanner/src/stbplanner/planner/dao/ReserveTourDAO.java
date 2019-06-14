package stbplanner.planner.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;


public class ReserveTourDAO {
	
	static int country_id;

	public String getCountryName(Connection conn, String trip_id, String ridx) throws SQLException {
		String country_name = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		 String sql = 
                                                                                                     
			"	 select c.country_id, C.Country_Name   "
			+"	 from tbl_city a join tbl_region b on A.Region_Id = B.Region_Id  "
			+"	                 join tbl_country c on B.Country_Id = C.Country_Id  "
			+"	 where city_id = (select scity_id  from View_Route where trip_id = ? and ridx = ? )   ";
				 
				 

		 
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, trip_id );
			pstmt.setString(2, ridx );

			//like의 에 ' ' 안써줘서 오류 발생가능 
			rs = pstmt.executeQuery();
			

			if (rs.next()) {
				
				country_id= rs.getInt(rs.getInt("country_id"));
				country_name = rs.getString("country_name");
				
			}
			
		return country_name;
	}

	public ArrayList<HashMap<String, String>> getTourList(Connection conn) throws SQLException {
		
		ArrayList<HashMap<String, String>> tourList = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		 String sql = 
                                                                                                     

			"	 select a.guide_seq, round(avg((c.prog_score + c.prop_score + c.kind_score)/ 3)) as avg , count(*) cnt    "
			+"	 from tbl_guide_maket a  join tbl_city d on A.City_Id = d.city_id                           "
			+"	                         join tbl_reserve b on A.Guide_Seq = B.Guide_Seq                    "
			+"	                         join tbl_guide_review c on B.Reserve_Seq = C.Reserve_Seq           "
			+"	                        join tbl_region e on d.Region_Id = e.Region_Id                      "
			+"	                       join tbl_country f on e.Country_Id = f.Country_Id                    "
			+"	 where f.country_id = ?                                                                     "
			+"	 group by a.guide_seq                                                                       "
			+"	 order by avg desc                                                                          ";
				 
				 

		 
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, country_id );


			//like의 에 ' ' 안써줘서 오류 발생가능 
			rs = pstmt.executeQuery();
			

			if (rs.next()) {
				tourList = new ArrayList<>();
				do {
					HashMap<String, String> tourInfo  = new HashMap<>();
					
					tourInfo = getTourInfo(conn,rs.getInt("guide_seq"),tourInfo);
					tourInfo.put("avg", rs.getInt("avg")+"");
					tourInfo.put("cnt", rs.getInt("cnt")+"");
				

					tourList.add(tourInfo);
					
					
				} while (rs.next());
			}
			

		
		return tourList;
	}

	private HashMap<String, String> getTourInfo(Connection conn, int guide_seq, HashMap<String, String> tourInfo) throws SQLException {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		 String sql =
				 
				 
			"	 select company, title, price, price_ealybird, imgurl ,city_name  "
			+"	 from  Tbl_Guide_Maket  a join tbl_city b on A.City_Id = B.City_Id "
			+"	 where Guide_Seq = ? ";
				 
				 

		 
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, guide_seq );

			rs = pstmt.executeQuery();
			

			if (rs.next()) {
				do {
					// company, title, price, price_ealybird, imgurl 
					tourInfo.put("company", rs.getString("company"));
					tourInfo.put("title", rs.getString("title"));
					tourInfo.put("price", rs.getInt("price")+"");
					tourInfo.put("price_ealybird", rs.getInt("price_ealybird")+"");
					tourInfo.put("imgurl", rs.getString("imgurl"));
					tourInfo.put("city_name",rs.getString("city_name"));

					
					
				} while (rs.next());
			}
			

		
		return tourInfo;
	}

}
