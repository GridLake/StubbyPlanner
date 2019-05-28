package stbplanner.general.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.util.JdbcUtil;

import stbplanner.general.dto.RegisterDTO;

public class RegisterDAO {
	private static RegisterDAO dao = null;
	
	public RegisterDAO(){}
	
	public static RegisterDAO getInstance() {
		if (dao==null) {
			dao=new RegisterDAO();
		}
		return dao;
	}
	
	public int insert(Connection conn,RegisterDTO dto)throws SQLException{
		System.out.println("registerdao");
		try(PreparedStatement pstmt = conn.prepareStatement("insert into tbl_member values(?,?,null,0,?,1,?,?,?,?,?,?)")){
			pstmt.setString(1, dto.getMember_id());
			pstmt.setString(2, dto.getPassword());
			pstmt.setString(3, dto.getMember_email());
			pstmt.setString(4, dto.getName());
			pstmt.setString(5, dto.getGender());
			pstmt.setString(6, dto.getBirth_year());
			pstmt.setString(7, dto.getBirth_month());
			pstmt.setString(8, dto.getAccept_mail());
			pstmt.setString(9, dto.getVemail());
			System.out.println("registerdao");
			return pstmt.executeUpdate();
//		}finally {
//			JdbcUtil.close(pstmt);
		}
	}

	public RegisterDTO selectById(Connection conn, String member_id) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement("select member_id,password from tbl_member where member_id=?");
			pstmt.setString(1, member_id);
			rs = pstmt.executeQuery();
			RegisterDTO dto = null;
			if( rs.next()) {
				
				dto = new RegisterDTO(
						rs.getString("member_id"),
						rs.getString("password")
						);
			}
			return dto;
			
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
}
