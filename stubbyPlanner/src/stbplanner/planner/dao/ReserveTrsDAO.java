package stbplanner.planner.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import stbplanner.planner.model.ResTransInfo;
import stbplanner.planner.model.RouteDTO;

public class ReserveTrsDAO {

	public ArrayList<RouteDTO> getRouteList(Connection conn, String trip_id) throws SQLException  {
		
		ArrayList<RouteDTO> routelist = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		 String sql = 

			"	select Rownum ridx , t.*    "
			+"	from(    "
			+"	select tbl_route.*, extract (month from rt_enddate)||'월 '|| extract (day from rt_enddate)||'일' trs_date   "
			+"  , extract( month from rt_startdate)||'월 '||extract (day from rt_startdate)||'일' arr_date  "
			+"	from tbl_route    "
			+"	where trip_id = ?   "
			+"	order by rt_id asc   "
			+"	)t    ";

		
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, trip_id);

			
			rs = pstmt.executeQuery();
			

			if (rs.next()) {
				routelist = new ArrayList<>();
				do {
					RouteDTO dto = new RouteDTO();
					
					dto.setRidx(rs.getInt("ridx"));
					dto.setScity_name(rs.getString("scity_name"));
					dto.setEcity_name(rs.getString("ecity_name"));
					dto.setTrs_date(rs.getString("trs_date"));
					dto.setScity_id(rs.getInt("scity_id"));
					dto.setEcity_id(rs.getInt("ecity_id"));
					
					dto.setArr_date(rs.getString("arr_date"));
					dto.setRt_days(rs.getInt("rt_days")-1);

					routelist.add(dto);

				} while (rs.next());
			}
			

		
		return routelist;

	}

	public RouteDTO getRoute(Connection conn, String trip_id, String ridx) {
		
		RouteDTO route = null;
	
		try {
			 route =  this.getRouteList(conn, trip_id).get(Integer.parseInt(ridx)-1);
			
		} catch (NumberFormatException | SQLException e) {
		
			e.printStackTrace();
		}
		return route;
	}

	
	
	public ResTransInfo getResTransInfo(Connection conn, String trip_id, String ridx) throws SQLException {
		ResTransInfo resTransInfo = null;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		 String sql = 
                                               
			"	 select *                      "
			+"	 from Tbl_Res_Trans            "
			+"	 where rt_id =                 "
			+"	 (                             "
			+"	 select rt_id                  "
			+"	 from(                         "
			+"	 select Rownum ridx , t.*      "
			+"	 from(                         "
			+"	 select *                      "
			+"	 from tbl_route                "
			+"	 where trip_id = ?       "
			+"	 order by rt_id asc            "
			+"	 )t                            "
			+"	 ) where ridx = ?              "
			+"	 )                             ";
				 
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, trip_id);
			pstmt.setString(2, ridx);

			
			rs = pstmt.executeQuery();
			

			if (rs.next()) {

					resTransInfo = new ResTransInfo();
					resTransInfo.setTr_arrcity(rs.getString("tr_arrcity"));
					resTransInfo.setTr_arrtime(rs.getString("tr_arrtime"));
					resTransInfo.setTr_company(rs.getString("tr_company"));
					resTransInfo.setTr_deptcity(rs.getString("tr_deptcity"));
					resTransInfo.setTr_depttime(rs.getString("tr_depttime"));
					resTransInfo.setTr_memo(rs.getString("tr_memo"));
					resTransInfo.setTr_price(rs.getDouble("tr_price"));
					resTransInfo.setTr_trans(rs.getString("tr_trans"));
					resTransInfo.setTr_url(rs.getString("tr_url"));
					
				
			}
			

		
		return resTransInfo;
	}

	public ArrayList<HashMap> getTrsMap(Connection conn, String scity_id, String ecity_id) throws SQLException {
		 ArrayList<HashMap> trsMapList = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;

			 String sql = 
                                                                                                    
	
		"	 with temp as(                                                                          "
		+"	 select t.*, (select sum(trsfreq) from Tbl_Trsdata where Depcity = ? and descity = ?) tot "
		+"	 from(                                                                                  "
		+"	 select *                                                                               "
		+"	 from Tbl_Trsdata a join tbl_trastype b on A.Trstype = b.trastype_id                    "
		+"	 where a.Depcity = ? and a.descity = ?                                                  "
		+"	 )t                                                                                     "
		+"	 )                                                                                      "
		+"	 select temp.*, round(trsfreq/tot*100,1) percent                                        "
		+"	 from temp  "
		+"	 where trstype in ('1','2','3')   ";
			 
			 
			// System.out.println(sql);

				pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, scity_id);
				pstmt.setString(2, ecity_id);
				pstmt.setString(3, scity_id);
				pstmt.setString(4, ecity_id);
				
				rs = pstmt.executeQuery();
				
				double sum = 0;
		
				
				if (rs.next()) {
					
					trsMapList = new ArrayList<>();
					do {

						HashMap<String, String> trsMap = new HashMap<>();
						trsMap.put("pnt", String.valueOf(rs.getDouble("percent")));
						System.out.println( trsMap.get("pnt"));
						trsMap.put("trastype_name", rs.getString("trastype_name"));
						trsMap.put("traveltime", rs.getString("traveltime"));
						trsMap.put("dep", rs.getString("dep"));
						trsMap.put("des", rs.getString("des"));
						
						sum+=rs.getDouble("percent");
						
						System.out.println(sum);
						
						trsMapList.add(trsMap);

					} while (rs.next());
					
					HashMap<String, String> trsMap = new HashMap<>();
					trsMap.put("pnt",String.valueOf(100-sum));
					trsMap.put("trastype_name", "페리,렌트카등..");
					
					trsMapList.add(trsMap);
					
				}
				

			
			return trsMapList;
	}

	public HashMap<String, String> getTrsInfo(Connection conn, String scity_id, String ecity_id) throws SQLException {
		HashMap<String, String> trsInfoMap = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;

			 String sql = "select *  from Tbl_Trsinfo where depcity = ? and descity = ? ";


				pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, scity_id);
				pstmt.setString(2, ecity_id);
				
				rs = pstmt.executeQuery();
				

		
				
				if (rs.next()) {
					trsInfoMap = new HashMap<>();
					do {
						
						trsInfoMap.put("trsdesc", rs.getString("trsdesc"));
						trsInfoMap.put("member_id",rs.getString("member_id"));
						trsInfoMap.put("write_date", rs.getString("write_date"));


					} while (rs.next());

				}
				

			
			return trsInfoMap;
	}

	public ArrayList<ResTransInfo> getresTransList(Connection conn, String scity_id, String ecity_id) throws SQLException {
		
		ArrayList<ResTransInfo> resTransList = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		 String sql = 
                                                                               
			"	 select *                                                      "
			+"	 from tbl_res_trans a join tbl_route b on a.rt_id = b.rt_id    "
			+"	                     join Tbl_Planner c on B.Trip_Id = c.trip_id "
			+"	                   join Tbl_Member d on c.member_id = d.member_id "
			+"	 where scity_id = ? and ecity_id = ?                           "
			+"	 order by tr_res_date desc                                     ";

		
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, scity_id);
			pstmt.setString(2, ecity_id);

			
			rs = pstmt.executeQuery();
			

			if (rs.next()) {
				resTransList = new ArrayList<>();
				
				int cnt = 1;
				
				do {
					
					ResTransInfo dto = new ResTransInfo();
					// tr_trans, tr_deptcity, tr_depttime, tr_arrcity, tr_arrtime, tr_price, member_id, profile_pic, tr_res_date				
					dto.setTr_trans(rs.getString("tr_trans"));
					dto.setTr_deptcity(rs.getString("tr_deptcity"));
					dto.setTr_depttime(rs.getString("tr_depttime"));
					dto.setTr_arrcity(rs.getString("tr_arrcity"));
					dto.setTr_arrtime(rs.getString("tr_arrtime"));
					dto.setTr_price(rs.getString("tr_price"));
					dto.setMember_id(rs.getString("member_id"));
					dto.setProfile_pic(rs.getString("profile_pic"));
					dto.setTr_res_date(rs.getString("tr_res_date"));
					
					resTransList.add(dto);		
					
					cnt++;
					
				} while (rs.next() && cnt < 9);
				
				for (int i = 0; i < 9; i++) {
					
			
					
					rs.next();
				}

			}
			

		
		return resTransList;
	}

	
	
	

}
