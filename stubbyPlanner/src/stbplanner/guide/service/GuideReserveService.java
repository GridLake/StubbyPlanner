package stbplanner.guide.service;

import java.sql.Connection;
import java.util.List;
import java.util.Map;

import com.util.ConnectionProvider;

import stbplanner.guide.dao.ReserveDAO;
import stbplanner.guide.model.ReserveDTO;

public class GuideReserveService {
	
	private static ReserveDAO reserveDao = new ReserveDAO();
	

	public static List<ReserveDTO> reserve(ReserveDTO dto) {
		
		try (Connection conn = ConnectionProvider.getConnection()) {
			System.out.println("service try");
			List<ReserveDTO> success = reserveDao.select(conn, dto);
				
			return success;
			
			
		} catch (Exception e) {
			System.out.println("service catch");
			e.printStackTrace();
			throw new RuntimeException();
		}
	}



}
