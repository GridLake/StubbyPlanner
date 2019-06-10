package stbplanner.planner.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import net.sf.json.JSONArray;
import stbplanner.planner.model.AddResvInfoDTO;

public class AddResvInfoDAO {

	private static AddResvInfoDAO dao = null;
	
	private AddResvInfoDAO() {
		
	}
	
	private static AddResvInfoDAO getInstance() {
		if(dao == null) {
			dao = new AddResvInfoDAO();
		}
		return dao;
	}
	
	private JSONArray addInfo(AddResvInfoDTO dto) {
		
		String t = dto.getT();
		int trip_id = dto.getTrip_id();
		String rs = dto.getRs();
		//String region = dto.getRegion();
		//String startdate = dto.getStartdate();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rst = null;
		
		String sql = "";
		
		JSONArray jarr = null;
		
		try {
			
			
		} catch(Exception e){
			e.printStackTrace();
		} finally{
			try {
				rst.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) { 
				e.printStackTrace();
			}
		}
		
		return jarr;
	}
}
