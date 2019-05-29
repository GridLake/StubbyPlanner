package stbplanner.general.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import stbplanner.general.dao.RegisterDAO;
import stbplanner.general.dto.RegisterDTO;
import stbplanner.service.LoginFailException;

public class InfoChangeService {
	private static InfoChangeService instance = new InfoChangeService();
	public static InfoChangeService getInstance() {
		return instance;
	}
	public int infoChange(RegisterDTO dto) {
		Connection conn = null;
		int result =0;
		System.out.println("infoChangeservice");
		try {
			conn = ConnectionProvider.getConnection();
			RegisterDAO dao = RegisterDAO.getInstance();	
			result = dao.update(conn, dto);
		} catch (NamingException | SQLException e) {
			e.printStackTrace();
			System.out.println("error");
			throw new RuntimeException(e);
		}finally {
			JdbcUtil.close(conn);
			return result;
		}
		
	}
}
