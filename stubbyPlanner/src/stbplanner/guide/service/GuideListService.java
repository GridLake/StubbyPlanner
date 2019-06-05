package stbplanner.guide.service;

import java.sql.Connection;
import java.util.List;
import java.util.Map;

import com.util.ConnectionProvider;

import stbplanner.guide.dao.GuideDAO;
import stbplanner.guide.model.GuideDTO;

public class GuideListService {
	
	GuideDAO dao = GuideDAO.getInstance();
	private int size = 12;
	public List<GuideDTO> getGuideListPage(GuideDTO dto) {
		try (Connection conn = ConnectionProvider.getConnection()) {
			List<GuideDTO> list = dao.selectGuideList(conn, dto);
			
			return list;
			
			/*int total = dao.selectCount(conn);
			System.out.println(total);
			
			List<GuideDTO> list = dao.selectGuideList(conn, (pageNum-1) * size, size);
			System.out.println(list.size());
			return new GuideListPage(total, pageNum, size, list);*/
		} catch (Exception e) {
			throw new RuntimeException(e);
		} 
	}

}
