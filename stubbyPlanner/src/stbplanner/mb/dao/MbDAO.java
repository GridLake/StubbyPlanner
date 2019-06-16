package stbplanner.mb.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class MbDAO {

	public List<Map<String, Object>> selectAttr(Connection conn, String city_id) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = " select a.attr_id, a.attr_name, c.city_name, c.city_x, c.city_y  from tbl_attr a join tbl_city c on a.city_id = c.city_id  where a.city_id = ? and lat is not null  ";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, city_id);

		rs = pstmt.executeQuery();

		List<Map<String, Object>> attr_list = new ArrayList<>();
		
		
		while (rs.next()) {
			Map<String, Object> attr = new LinkedHashMap<>();
			attr.put("city_id", city_id);
			attr.put("city_name", rs.getString("city_name"));
			attr.put("city_x", rs.getString("city_x"));
			attr.put("city_y", rs.getString("city_y"));
			attr.put("attr_id", rs.getString("attr_id"));
			attr.put("attr_name", rs.getString("attr_name"));
			attr_list.add(attr);
		}
		
		return attr_list;
	}
	

}
