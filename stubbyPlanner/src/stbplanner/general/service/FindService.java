package stbplanner.general.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;

import stbplanner.general.dao.RegisterDAO;
import stbplanner.general.dto.RegisterDTO;
import stbplanner.service.LoginFailException;

public class FindService {

//	private RegisterDAO dao = new RegisterDAO();
	private static FindService instance = new FindService();

	public static FindService getInstance() {
		System.out.println("FindService");
		return instance;
	}	
	
	public RegisterDTO findID(String member_email) {
		RegisterDAO dao = RegisterDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()){
			System.out.println("findID try");
			RegisterDTO dto = dao.selectByEmail(conn, member_email);
/*			if (dto == null) {
				throw new LoginFailException();
			}*/
			return new RegisterDTO( dto.getName(), dto.getMember_id(), dto.getPassword(), dto.getMember_email(),  dto.getGender(), dto.getBirth_year(),  dto.getBirth_month(),dto.getAccept_mail(),dto.getProfile_pic());
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} catch (NamingException e1) {
			throw new RuntimeException(e1);
		}
	}
	
	public RegisterDTO findPassword(String member_id) {
		RegisterDAO dao = RegisterDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()){
			System.out.println("findPassword try");
			RegisterDTO dto = dao.selectById(conn, member_id);
/*			if (dto == null) {
				throw new LoginFailException();
			}*/
			return new RegisterDTO( dto.getName(), dto.getMember_id(), dto.getPassword(), dto.getMember_email(),  dto.getGender(), dto.getBirth_year(),  dto.getBirth_month(),dto.getAccept_mail(),dto.getProfile_pic());
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} catch (NamingException e1) {
			throw new RuntimeException(e1);
		}
	}
}


