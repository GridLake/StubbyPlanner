package stbplanner.general.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import stbplanner.general.dao.RegisterDAO;
import stbplanner.general.dto.RegisterDTO;

public class MemberExitService {
	private static MemberExitService instance = new MemberExitService();

	public static MemberExitService getInstance() {
		System.out.println("MemberExitService");
		return instance;
	}
		public int delete(RegisterDTO dto) {
			Connection conn = null;
			int result =0;
			System.out.println("MemberExitService");
			try {
				conn = ConnectionProvider.getConnection();
				RegisterDAO dao = RegisterDAO.getInstance();
				result = dao.delete(conn, dto);
				System.out.println(result);

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
