package stbplanner.attraction.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Map;

import com.util.ConnectionProvider;

import stbplanner.attraction.dao.AttractionDAO;
import stbplanner.attraction.model.AttrDTO;

public class AttrDetailService {
	
	private AttractionDAO attrDao = new AttractionDAO();

	public Map<String, Object> getSectionMap(String attr) {
		
		try(Connection conn = ConnectionProvider.getConnection()){

			Map<String, Object> sectionMap = attrDao.selectSection(conn , attr);

			return sectionMap;

		}catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}

	}
	
	

}
;