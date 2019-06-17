package stbplanner.guide.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.naming.NamingException;

import com.util.ConnectionProvider;

import stbplanner.guide.dao.GuideDAO;
import stbplanner.guide.model.GuideDTO;
import stbplanner.guide.model.GuideDetailDTO;
import stbplanner.guide.model.TourtypeDTO;

public class GuideListService {
	
	GuideDAO dao = GuideDAO.getInstance();
	
	
	public List<TourtypeDTO> getTourType(TourtypeDTO dto) throws SQLException, NamingException {
		try (Connection conn = ConnectionProvider.getConnection()) {
			List<TourtypeDTO> tourType = dao.selectTourType(conn, dto);
			return tourType;

		}
		
	}


	public Map<String, Object> getCityGuide(GuideDetailDTO dto) throws SQLException, NamingException {
		try (Connection conn = ConnectionProvider.getConnection()) {
			Map<String, Object> cityGuide = dao.selectCityGuide(conn, dto);
			return cityGuide;
		}
	}

}
