package stbplanner.planner.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import com.util.ConnectionProvider;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import stbplanner.planner.model.PlannerPlanDTO;

public class PlannerPlanDao {

	// Singleton
	private static PlannerPlanDao dao = null;

	private PlannerPlanDao() {}

	public static PlannerPlanDao getInstance() {
		if(dao == null) {
			dao = new PlannerPlanDao();
		}
		return dao;
	}

	// 구글맵 정보 가져오기
	public JSONArray selectMap( PlannerPlanDTO dto) {

		String SWlatitude = dto.getSWlatitude();
		String SWlongitude = dto.getSWlongitude();
		String NElatitude = dto.getNElatitude();
		String NElongitude = dto.getNElongitude();
		String zoomLevel = dto.getZoomLevel();

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		//		 	String sql = "select city_id, city_name, city_x, city_y, city_level,city_info, city_img from tbl_city";

		String sql = "select city_id, city_name, city_x, city_y, city_level, city_info, city_img, recommSlp, slpRates from tbl_city "
				+ " where city_x between ? and ? " 
				+ " and city_y between ? and ? and city_level <= ? ";

		JSONArray jsonArray = null;
		try{ 
			conn = ConnectionProvider.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setFloat(1, Float.parseFloat(SWlatitude));
			pstmt.setFloat(2, Float.parseFloat(NElatitude));
			pstmt.setFloat(3, Float.parseFloat(SWlongitude));
			pstmt.setFloat(4, Float.parseFloat(NElongitude));
			pstmt.setInt(5, Integer.parseInt(zoomLevel));

			rs = pstmt.executeQuery();

			jsonArray = new JSONArray();

			while(rs.next()){
				int city_id = rs.getInt("city_id");
				String city_name = rs.getString("city_name");
				double city_x = rs.getDouble("city_x");
				double city_y = rs.getDouble("city_y");
				int city_level = rs.getInt("city_level");
				String city_info = rs.getString("city_info");
				String city_img  = rs.getString("city_img");
				int recommSlp = rs.getInt("recommSlp");
				int slpRates = rs.getInt("slpRates");

				JSONObject jsonCity = new JSONObject();
				jsonCity.put("city_id", city_id);
				jsonCity.put("city_name", city_name);
				jsonCity.put("city_x", city_x);
				jsonCity.put("city_y", city_y);
				jsonCity.put("city_level", city_level);
				jsonCity.put("city_info", city_info);
				jsonCity.put("city_img", city_img);
				jsonCity.put("recommSlp", recommSlp);
				jsonCity.put("slpRates", slpRates);

				jsonArray.add(jsonCity);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try {
				pstmt.close();rs.close();conn.close();
			} catch (SQLException e) { 
				e.printStackTrace();
			}
		}

		return jsonArray;
	}
}
