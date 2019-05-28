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
			System.out.println(dao);
			
			result = dao.insert(conn, dto);
//			conn.setAutoCommit(false);
//			this.dao.insert(conn, new RegisterDTO(
//					dto.getName(),
//					dto.getMember_id(),
//					dto.getPassword(),
//					dto.getPassword_confirm(),
//					dto.getMember_email(),
//					dto.getVemail(),
//					dto.getGender(),
//					dto.getBirth_year(),
//					dto.getBirth_month(),
//					dto.getAccept_mail()
//					));
//			conn.commit();
		} catch (NamingException | SQLException e) {
//			JdbcUtil.rollback(conn);
			e.printStackTrace();
			System.out.println("error");
			throw new RuntimeException(e);
		}finally {
			JdbcUtil.close(conn);
			return result;
		}
		
	}
}
