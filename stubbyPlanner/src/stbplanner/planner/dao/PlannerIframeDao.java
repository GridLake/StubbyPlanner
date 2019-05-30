package stbplanner.planner.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import stbplanner.planner.model.PlannerPlanDTO;

public class PlannerIframeDao {
	
	// Singleton
		private static PlannerIframeDao dao = null;

		private PlannerIframeDao() {}

		public static PlannerIframeDao getInstance() {
			if(dao == null) {
				dao = new PlannerIframeDao();
			}
			return dao;
		}
		
		
		public String selectIframe( PlannerPlanDTO dto) {
			
			String city_name = dto.getCity_name();
			String city_info = dto.getCity_info();
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;

			//		 	String sql = "select city_id, city_name, city_x, city_y, city_level,city_info, city_img from tbl_city";

			String sql = "select city_id, city_name, city_x, city_y, city_level, city_info, city_img from tbl_city "
					+ " where city_x between ? and ? " 
					+ " and city_y between ? and ? and city_level <= ? ";
			return null;
			
		}
		
		
		
		

}
