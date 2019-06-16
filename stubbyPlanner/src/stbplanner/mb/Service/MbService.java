package stbplanner.mb.Service;

import java.sql.Connection;
import java.util.List;
import java.util.Map;

import com.util.ConnectionProvider;

import stbplanner.mb.dao.MbDAO;

public class MbService {
	private MbDAO dao = new MbDAO();

	public List<Map<String, Object>> getAttr_list(String city_id) {
		
		try (Connection conn = ConnectionProvider.getConnection()){
			List<Map<String, Object>> getAttr = dao.selectAttr(conn, city_id);
			
			return getAttr;
		}catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
		
		
	}

}
