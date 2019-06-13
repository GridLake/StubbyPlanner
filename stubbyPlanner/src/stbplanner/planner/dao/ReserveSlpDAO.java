package stbplanner.planner.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;

import oracle.net.aso.a;
import stbplanner.planner.model.AccomInfo;
import stbplanner.planner.model.AddResvResDTO;
import stbplanner.planner.model.RouteDTO;


public class ReserveSlpDAO {

	public AddResvResDTO getResvRes(Connection conn, String trip_id, String ridx) throws SQLException {
		AddResvResDTO resvResDto = null;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		 String sql = 
				 
		"		 select *   "
		+"		 from Tbl_Res_Accom   "
		+"		 where rt_id = (select rt_id from View_Route where Trip_Id = ? and Ridx = ?)    ";
                                               

				 
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, trip_id);
			pstmt.setString(2, ridx);

			
			rs = pstmt.executeQuery();
			

			if (rs.next()) {

					resvResDto = new AddResvResDTO();
					
					resvResDto.setA_type(rs.getString("a_type"));
					resvResDto.setA_name(rs.getString("a_name"));
					resvResDto.setA_price(rs.getDouble("a_price"));
					resvResDto.setA_currency(rs.getString("a_currency"));
					resvResDto.setA_reserver(rs.getString("a_reserver"));
					
					String date = rs.getString("a_checkout");
					
					SimpleDateFormat original_format = new SimpleDateFormat("MM/dd/yyyy"); 
					SimpleDateFormat new_format = new SimpleDateFormat("M월 dd일");
					
					Date original_date;
					try {
						original_date = original_format.parse(date);
						
						String new_date = new_format.format(original_date);
						
						System.out.println(new_date);
						
						resvResDto.setA_checkout(new_date);
						
					} catch (ParseException e) {
					
						e.printStackTrace();
					}
					

					resvResDto.setA_room_type(rs.getString("a_room_type"));
					resvResDto.setA_room_cnt(rs.getInt("a_room_cnt"));
					resvResDto.setA_lat(rs.getDouble("a_lat"));
					resvResDto.setA_lng(rs.getDouble("a_lng"));
					resvResDto.setA_address(rs.getString("a_address"));
					resvResDto.setA_tel(rs.getString("a_tel"));
					resvResDto.setA_url(rs.getString("a_url"));
					resvResDto.setA_memo(rs.getString("a_memo"));
					
			}
			

		
		return resvResDto;
	}

	public ArrayList<AccomInfo> getAccInfoList(Connection conn, String scity_id, String slpType) throws SQLException {
		ArrayList<AccomInfo> accInfoList = null;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		 String sql = 
				 
		"		 select *            "
		+"		 from (  "
		+"		 select Row_Number() Over ( Order By cnt Desc) rnk ,t.*  "
		+"		 from(   "
		+"		 select Tbl_Accommodations.* , (select count(*) from Tbl_Res_Accom where a_name like Tbl_Accommodations.title ) cnt   "
		+"		 from Tbl_Accommodations   "
		+"		 where city_id = ? and type= ?   "
		+"		 )t    "
		+"		 )b   "
		+"		 where rnk <= 10  ";
				 
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, scity_id);
			pstmt.setString(2, slpType);

			
			rs = pstmt.executeQuery();
			

			if (rs.next()) {
				accInfoList = new ArrayList<>();
				do {
					AccomInfo accomInfo = new AccomInfo();
					
					accomInfo.setAccom_seq(rs.getInt("accom_seq"));
					accomInfo.setTitle(rs.getString("title"));
					
					double average = Double.parseDouble(rs.getString("average"))/2;
					int star = (int)Math.round(average);
					
					System.out.println("star>>>>>>"+star);
					
					accomInfo.setStar(star);
					accomInfo.setCnt(rs.getInt("cnt"));
					accomInfo.setImage(rs.getString("image"));
					accomInfo.setLink(rs.getString("link"));
					
					accomInfo.setReviewMap(getReviewMap(conn,rs.getInt("accom_seq")));
					
					accomInfo.setReserverList(getReserverList(conn,rs.getString("title")));

					accInfoList.add(accomInfo);

				} while (rs.next());
			}

		
		return accInfoList;
		
	}

	private ArrayList<HashMap<String, String>> getReserverList(Connection conn, String title) throws SQLException {
		
		ArrayList<HashMap<String, String>> reserverlist = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		 String sql = 
                                                                                                     
			"	 select *                                                                             "
			+"	 from(                                                                                "
			+"	 select row_number() over (order by a.reg_date desc) rnk , d.member_id, D.Profile_Pic "
			+"	 from Tbl_Res_Accom a join tbl_route b on a.rt_id = b.rt_id                           "
			+"	                     join Tbl_Planner c on b.trip_id = C.trip_id                      "
			+"	                     join tbl_member d on C.Member_Id = D.Member_Id                   "
			+"	 where a.a_name like   ?                                     "
			+"	 )                                                                                    "
			+"	 where rnk <= 8                                                                       " ;
				                                                                                 
				 
				 

		 
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, title );

			//like의 에 ' ' 안써줘서 오류 발생가능 
			rs = pstmt.executeQuery();
			

			if (rs.next()) {
				reserverlist = new ArrayList<>();
				do {
					HashMap<String, String> reserver  = new HashMap<>();
					
					reserver.put("member_id", rs.getString("member_id"));
					reserver.put("profile_pic", rs.getString("profile_pic"));

					reserverlist.add(reserver);

				} while (rs.next());
			}
			

		
		return reserverlist;

	}

	private HashMap<String, String> getReviewMap(Connection conn, int accom_seq) throws SQLException {
		HashMap<String, String> reviewMap = null;
		
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		 String sql = 
				 "select * " + 
		 		"from tbl_acc_review a join tbl_member b on a.member_id = b.member_id  " + 
		 		"where accom_seq = ? " + 
		 		"order by reg_date desc  ";
		
		 	pstmt = conn.prepareStatement(sql);
			
		 	
		 	pstmt.setInt(1, accom_seq);

			
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				reviewMap = new HashMap<>();

				reviewMap.put("content", rs.getString("content"));
				reviewMap.put("member_id",rs.getString("member_id"));
				reviewMap.put("profile_pic", rs.getString("profile_pic"));

			}
			
		return reviewMap;
	}

	public ArrayList<HashMap<String, String>> getslpRateMap(Connection conn, String scity_id) throws SQLException {
		ArrayList<HashMap<String, String>> slpRateList = null;
		HashMap<String, String> slpRateMap = null;
		
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		 String sql =                                                                                         
			"	 select type, round(cnt/tot*100,1)||'%' rate                                                  "
			+"	 from(                                                                                        "
			+"	 select type , count(*) cnt, (select count(*) from Tbl_Accommodations where city_id = ?  ) tot "
			+"	 from Tbl_Accommodations                                                                      "
			+"	 where city_id = ?                                                                            "
			+"	 group by Type                                                                                "
			+"	 order by type desc                                                                           "
			+"	 )                                                                                            ";
		
		 	pstmt = conn.prepareStatement(sql);
			
		 	
		 	pstmt.setString(1, scity_id);
		 	pstmt.setString(2, scity_id);

			
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				int i = 0;
				String[] slpType = {"hotel","hostel","apt"};
				slpRateList = new ArrayList<>();
				
				do {
					
					slpRateMap = new HashMap<>();

					//slpRateMap.put("slpType", rs.getString("type"));
					slpRateMap.put(slpType[i] , rs.getString("rate"));
					
					System.out.println(slpType[i] +rs.getString("rate") );
					i++;
					
					slpRateList.add(slpRateMap);
				} while (rs.next());
				
				
				Iterator<Entry<String, String>> itr = slpRateMap.entrySet().iterator();

				while (itr.hasNext()) {
					Entry<java.lang.String, java.lang.String> entry =itr.next();
					System.out.printf("key:%s value:%s", entry.getKey(), entry.getValue());
				}
				

			}
			
		return slpRateList;
	}

}
