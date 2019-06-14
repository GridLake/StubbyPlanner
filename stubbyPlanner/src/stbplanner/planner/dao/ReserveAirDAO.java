package stbplanner.planner.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.google.gson.JsonArray;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import stbplanner.planner.model.ScatterInfoDTO;

public class ReserveAirDAO {
	
	static int in_city_id ;
	static int out_city_id;

	public ArrayList<HashMap<String, String>> getAirInfo(Connection conn, String trip_id) throws SQLException {
		
		ArrayList<HashMap<String, String>> airInfo = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		 String sql = 
                                                                                                     

		"		 select scity_id, scity_name, country_name, TO_CHAR(rt_startdate, 'MM\"월\"DD\"일\"' ) rt_startdate,  TO_CHAR(rt_enddate, 'MM\"월\"DD\"일\"' ) rt_enddate "
		+"		 from(  "
		+"		 select *   " 
		+"		 from view_route a join tbl_city b on A.Scity_Id = b.city_id   "
		+"		                    join tbl_region c on b.region_id = c.region_id   "
		+"		                    join tbl_country d on C.Country_Id = d.country_id "
		+"		 where trip_id = ?    "
		+"		 order by ridx asc)  "
		+"		 t   "
		+"		 where ridx = 1 or ridx = (select count(*) from view_route where trip_id = ? )   ";
				 
				 

		 
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, trip_id );
			pstmt.setString(2, trip_id );

			//like의 에 ' ' 안써줘서 오류 발생가능 
			rs = pstmt.executeQuery();
			

			if (rs.next()) {
				airInfo = new ArrayList<>();
				int i = 1;
				do {
					HashMap<String, String> air  = new HashMap<>();
					
					air.put("scity_name", rs.getString("scity_name"));
					air.put("country_name", rs.getString("country_name"));
					air.put("date", rs.getString(i==1?"rt_startdate":"rt_enddate"));
					if (i==1) {
						in_city_id = rs.getInt("scity_id");
					} else {
						out_city_id =rs.getInt("scity_id");
					}

					airInfo.add(air);
					
					i++;
				} while (rs.next());
			}
			
			System.out.println("in_city_id>>>>>>>>"+in_city_id);
			System.out.println("out_city_id>>>>>>>"+out_city_id);
		
		return airInfo;
	}

	public JSONArray getScatterInfo(Connection conn) throws SQLException {
		
		JSONArray scatterInfoList = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		 String sql = 
                                                                                                     

			"	 select airline_id, airline_name||'('||pnt||'%)' label   "
			+"	 from(   "
			+"	 select a.airline_id, airline_name, round(count(*)/(select count(*) from tbl_res_flight where in_city_id = 1 and out_city_id = 4)*100) pnt  "
			+"	 from tbl_airline a join tbl_res_flight b on A.Airline_Id = B.Airline_Id   "
			+"	 where in_city_id = ? and out_city_id = ?  "
			+"	 group by a.airline_id, airline_name "
			+"	 order by pnt desc  "
			+"	 )    ";
				 
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, in_city_id );
			pstmt.setInt(2, out_city_id );

			rs = pstmt.executeQuery();
			

			if (rs.next()) {
				scatterInfoList =new JSONArray();
				do {
					JSONObject scatterObj = new JSONObject();
					
	
					scatterObj.put("label",rs.getString("label"));
					scatterObj.put("data", getDotsList(conn,rs.getInt("airline_id")));
					

					scatterInfoList.add(scatterObj);

				} while (rs.next());
			}
			
			System.out.println("in_city_id>>>>>>>>"+in_city_id);
			System.out.println("out_city_id>>>>>>>"+out_city_id);
		
		return scatterInfoList;
	}

	private JSONArray  getDotsList(Connection conn, int airline_id) throws SQLException {
		
		JSONArray dotsList = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		 String sql = 
				                                                                                      
			"	 select flight_price, (dept_e - dept_s )*24 + (arr_e - arr_s)*24 hr                    "
			+"	 from(                                                                                 "
			+"	 select flight_price,                                                                  "
			+"	 to_date(dept_sdate,'mm.dd.yyyy hh24:mi:ss')+substr(dept_stime,1,2)/24 dept_s,         "
			+"	  to_date(dept_edate,'mm.dd.yyyy hh24:mi:ss')+substr(dept_Etime,1,2)/24 dept_e,        "
			+"	  to_date(arr_sdate,'mm.dd.yyyy hh24:mi:ss')+substr(arr_stime,1,2)/24 arr_s,           "
			+"	   to_date(arr_edate,'mm.dd.yyyy hh24:mi:ss')+substr(arr_Etime,1,2)/24 arr_e           "
			+"	 from tbl_res_flight                                                                   "
			+"	 where airline_id = ?                                                                  "
			+"	 )                                                                                     ";
                                                                                                       

		
				 
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, airline_id );

			rs = pstmt.executeQuery();
			

			if (rs.next()) {
				dotsList = new JSONArray();
				do {
					JSONObject dotObj = new JSONObject();
					
					dotObj.put("y", rs.getInt("flight_price"));
					dotObj.put("x", String.valueOf(rs.getDouble("hr")));
					dotsList.add(dotObj);

				} while (rs.next());
			}
			
			System.out.println("in_city_id>>>>>>>>"+in_city_id);
			System.out.println("out_city_id>>>>>>>"+out_city_id);
		
		return dotsList;

	}

	public ArrayList<HashMap<String, String>> getReservers(Connection conn) throws SQLException {
		
		ArrayList<HashMap<String, String>> reserverList = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		 String sql =                                                                                                  
                                                                                                                          
			"	 with temp as (                                                                                           "
			+"			 select Row_number() over (order by reg_date desc) rnk, t.*                                       "
			+"			 from(                                                                                            "
			+"			 select b.*, a.airline_name, c.city_name in_city, d.city_name out_city                            "
			+"			 from tbl_airline a  join  tbl_res_flight b on A.Airline_Id = b.airline_id                        "
			+"			                     join tbl_city c on B.In_City_Id = c.city_id                                  "
			+"			                     join tbl_city d on B.Out_City_Id = d.city_id                                 "
			+"			 )t                                                                                               "
			+"			 )                                                                                                "
			+"			 select airline_name, flight_price||'만원' flight_price , in_city, out_city, Getago(reg_date) ago "
			+"		,	 TO_CHAR(to_date(dept_sdate,'MM/DD/RRRR'), 'RRRR\"년\"MM\"월 출발\"' )  deptdate                      "
			+"			 from temp                                                                                        "
			+"			 where rnk <= 15                                                                                  "              ;                           
                                                                                                   
				 
				 
				                                                                                                                                  
				
		 System.out.println(sql);

		 
			pstmt = conn.prepareStatement(sql);

			//like의 에 ' ' 안써줘서 오류 발생가능 
			rs = pstmt.executeQuery();
			

			if (rs.next()) {
				reserverList = new ArrayList<>();

				do {
					HashMap<String, String> reserver  = new HashMap<>();
					
					
					reserver.put("airline_name",rs.getString("airline_name"));
					reserver.put("flight_price", rs.getString("flight_price"));
					reserver.put("in_city",rs.getString("in_city"));
					reserver.put("out_city", rs.getString("out_city"));
					reserver.put("ago",rs.getString("ago"));
					reserver.put("deptdate", rs.getString("deptdate"));
				

					reserverList.add(reserver);
					

				} while (rs.next());
			}
			
		
		return reserverList;
	}

}
