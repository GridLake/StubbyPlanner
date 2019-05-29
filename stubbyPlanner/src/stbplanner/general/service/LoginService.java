package stbplanner.general.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;

import stbplanner.general.dao.RegisterDAO;
import stbplanner.general.dto.RegisterDTO;
import stbplanner.service.LoginFailException;

public class LoginService {

//	private RegisterDAO dao = new RegisterDAO();
	
//	public User login(String member_id, String password) {
	public RegisterDTO login(String member_id, String password) {
		RegisterDAO dao = RegisterDAO.getInstance();
		System.out.println("loginservice");
		try (Connection conn = ConnectionProvider.getConnection()){
			System.out.println("loginservice try");
			RegisterDTO dto = dao.selectById(conn, member_id);
			if (dto == null) {
				throw new LoginFailException();
			}
			if (!dto.matchPassword(password)) {
				System.out.println(password);
				throw new LoginFailException();
			}
			return new RegisterDTO( dto.getName(), dto.getMember_id(), dto.getPassword(), dto.getMember_email(),  dto.getGender(), dto.getBirth_year(),  dto.getBirth_month(),dto.getAccept_mail(),dto.getProfile_pic());
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} catch (NamingException e1) {
			throw new RuntimeException(e1);
		}
	}
}
