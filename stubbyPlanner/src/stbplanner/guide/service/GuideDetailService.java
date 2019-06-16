package stbplanner.guide.service;

import java.sql.Connection;
import java.util.List;
import java.util.Map;

import com.util.ConnectionProvider;

import stbplanner.guide.dao.GuideDAO;
import stbplanner.guide.model.GuideDetailDTO;

public class GuideDetailService {
	private GuideDAO guideDao = new GuideDAO();
	
	public Map<String, Object> getDetail (GuideDetailDTO dto) {
		
		try (Connection conn = ConnectionProvider.getConnection()){
			Map<String, Object> detail = guideDao.selectDetail(conn, dto);
			
			return detail;
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
		
		
	}
}
