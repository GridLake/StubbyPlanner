package stbplanner.general.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import org.apache.coyote.RequestGroupInfo;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import stbplanner.general.dao.RegisterDAO;
import stbplanner.general.dto.RegisterDTO;

public class RegisterService {
//	private RegisterDAO dao = new RegisterDAO();
private static RegisterService instance = new RegisterService();

public static RegisterService getInstance() {
	System.out.println("registerservice");
	return instance;
}
	public int register(RegisterDTO dto) {
		Connection conn = null;
		int result =0;
		System.out.println("registerservice");
		try {
			conn = ConnectionProvider.getConnection();
			RegisterDAO dao = RegisterDAO.getInstance();			
			result = dao.insert(conn, dto);

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
