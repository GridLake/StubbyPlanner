package stbplanner.planner.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import stbplanner.planner.model.RouteDTO;

public class RouteDAO {

	public JSONArray routeSelect(Connection conn, RouteDTO rdto) throws SQLException{

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		JSONObject jobj = null;
		JSONArray jarr = null;
		// ecity_id, ecity_name, rt_days, rt_trans, night_move, city_x, city_y, rt_startdate, rt_enddate;
		//('1','파리','3','X','0','48.856614','2.352222',new Date('2019-07-14'),new Date('2019-07-17'));
		//('2','런던','3','X','0','51.507351','-0.127758',new Date('2019-07-17'),new Date('2019-07-20'));
		//('4','암스테르담','1','X','0','52.637984','4.903561',new Date('2019-07-20'),new Date('2019-07-21'));
		
		try {
			String sql = " select scity_id, scity_name, rt_days, rt_trans, nvl(night_move, 0) as night_move, "
					   + " city_x, city_y, rt_startdate, rt_enddate"
					   + " from tbl_route a, tbl_city b"
					   + " where trip_id = ? and a.scity_id = b.city_id";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, rdto.getTrip_id());
			
			rs = pstmt.executeQuery();
			jarr = new JSONArray();
			
			while (rs.next()) {
				jobj = new JSONObject();
				int scity_id = rs.getInt("scity_id");
				String scity_name = rs.getString("scity_name");
				int rt_days = rs.getInt("rt_days");
				String rt_trans = rs.getString("rt_trans");
				int night_move = rs.getInt("night_move");
				double city_x = rs.getDouble("city_x");
				double city_y = rs.getDouble("city_y");
				String rt_startdate = rs.getString("rt_startdate");
				String rt_enddate = rs.getString("rt_enddate");
				
				jobj.put("ecity_id", scity_id);
				jobj.put("ecity_name", scity_name);
				jobj.put("rt_days", rt_days);
				jobj.put("rt_trans", rt_trans);
				jobj.put("night_move", night_move);
				jobj.put("city_x", city_x);
				jobj.put("city_y", city_y);
				jobj.put("rt_startdate", rt_startdate);
				jobj.put("rt_enddate", rt_enddate);
				
				jarr.add(jobj);
			}
			/*
			while (rs.next()) {
				rdto = new RouteDTO();
				
				rdto.setEcity_id(rs.getInt("ecity_id"));
				rdto.setEcity_name(rs.getString("ecity_name"));
				rdto.setRt_days(rs.getInt("rt_days"));
				rdto.setNight_move(rs.getInt("night_move"));
				rdto.setCity_x(rs.getInt("city_x"));
				rdto.setCity_y(rs.getInt("city_y"));
				rdto.setRt_startdate(rs.getString("rt_startdate"));
				rdto.setRt_enddate(rs.getString("rt_enddate"));
				rlist.add(rdto);
				
			}
			*/
			return jarr;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}

}