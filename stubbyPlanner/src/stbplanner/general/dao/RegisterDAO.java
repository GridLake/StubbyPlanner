package stbplanner.general.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.util.JdbcUtil;

import stbplanner.general.dto.RegisterDTO;

public class RegisterDAO {
	private static RegisterDAO dao = null;
	
	private RegisterDAO(){}
	
	public static RegisterDAO getInstance() {
		if (dao==null) {
			dao=new RegisterDAO();
		}
		return dao;
	}
	
	public int delete(Connection conn, RegisterDTO dto)throws SQLException{
		try(PreparedStatement pstmt = conn.prepareStatement("delete from tbl_member where member_id = ?")){
			pstmt.setString(1, dto.getMember_id());
			return pstmt.executeUpdate();
		}
		
	}
	
	public int insert(Connection conn, RegisterDTO dto)throws SQLException{
		System.out.println("registerdao");
		try(PreparedStatement pstmt = conn.prepareStatement("insert into tbl_member values(?,?,?,0,?,1,?,?,?,?,?,?)")){
			pstmt.setString(1, dto.getMember_id());
			pstmt.setString(2, dto.getPassword());
			pstmt.setString(3, dto.getProfile_pic());
			pstmt.setString(4, dto.getMember_email());
			pstmt.setString(5, dto.getName());
			pstmt.setString(6, dto.getGender());
			pstmt.setString(7, dto.getBirth_year());
			pstmt.setString(8, dto.getBirth_month());
			pstmt.setString(9, dto.getAccept_mail());
			pstmt.setString(10, dto.getVemail());
			System.out.println("registerdao");
			return pstmt.executeUpdate();
		}
	}
	
	public int update(Connection conn, RegisterDTO dto)throws SQLException{
		try(PreparedStatement pstmt = conn.prepareStatement
				("update tbl_member set name=?,password=?,member_email=?,gender=?,birth_year=?,birth_month=?,accept_mail=? where member_id=? and password=?")){
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getPassword());
			pstmt.setString(3, dto.getMember_email());
			pstmt.setString(4, dto.getGender());
			pstmt.setString(5, dto.getBirth_year());
			pstmt.setString(6, dto.getBirth_month());
			pstmt.setString(7, dto.getAccept_mail());
			pstmt.setString(8, dto.getMember_id());
			pstmt.setString(9, dto.getPassword_confirm());
			System.out.println(dto.getMember_id());
			System.out.println(dto.getPassword_confirm());
			return pstmt.executeUpdate();
		}                      
	}

	public RegisterDTO selectById(Connection conn, String member_id) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement("select * from tbl_member where member_id=?");
			pstmt.setString(1, member_id);
			rs = pstmt.executeQuery();
			RegisterDTO dto = null;
			if( rs.next()) {
				dto = new RegisterDTO( );
				dto.setName(rs.getString("name"));
				dto.setMember_id(rs.getString("member_id")); 
				dto.setPassword(rs.getString("password"));		
				dto.setMember_email(rs.getString("member_email"));
				dto.setGender(rs.getString("gender"));
				dto.setBirth_year(rs.getString("birth_year"));
				dto.setBirth_month(rs.getString("birth_month"));
				dto.setAccept_mail(rs.getString("accept_mail"));
				dto.setProfile_pic(rs.getString("profile_pic"));						 
			}
			return dto;
		
			
			
			
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	
	public RegisterDTO selectByEmail(Connection conn, String member_email) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement("select * from tbl_member where member_email=?");
			pstmt.setString(1, member_email);
			rs = pstmt.executeQuery();
			System.out.println("selectByEmail");
			RegisterDTO dto = null;
			if( rs.next()) {
				dto = new RegisterDTO( );
				dto.setName(rs.getString("name"));
				dto.setMember_id(rs.getString("member_id")); 
				dto.setPassword(rs.getString("password"));		
				dto.setMember_email(rs.getString("member_email"));
				dto.setGender(rs.getString("gender"));
				dto.setBirth_year(rs.getString("birth_year"));
				dto.setBirth_month(rs.getString("birth_month"));
				dto.setAccept_mail(rs.getString("accept_mail"));
				dto.setProfile_pic(rs.getString("profile_pic"));						 
			}
			return dto;
			
			
			
			
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
}
