package stbplanner.personal.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import stbplanner.personal.model.MyPageDTO;

public class MyPageDAO {

	public MyPageDTO selectMyPage(Connection conn, String member_id) throws SQLException {
		
		MyPageDTO myPage = new MyPageDTO();
		
		Map<String, String> memberInfoMap = getMemberInfo(conn,member_id);
		
		
		
		myPage.setMemberInfoMap(memberInfoMap);

		return myPage;
	}

	private Map<String, String> getMemberInfo(Connection conn, String member_id) throws SQLException {
		
		Map<String, String> memberInfoMap = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = 

		"		select *  "
		+"		from Tbl_Member a join tbl_ms b on a.ms_code = b.ms_code "
		+"		where a.member_id = ? ";

		pstmt = conn.prepareStatement(sql);

		pstmt.setString(1, member_id);

		rs = pstmt.executeQuery();

		if (rs.next()) {
			memberInfoMap = new HashMap<>();
			do {
				// 프로필사진 /아이디 /등급 /마일리지
				
				memberInfoMap.put("member_id", rs.getString("member_id"));
				memberInfoMap.put("ms_name", rs.getString("ms_name")) ;
				memberInfoMap.put("mileage",Integer.toString(rs.getInt("mileage")) ) ;
				memberInfoMap.put("profile_pic",rs.getString("profile_pic") ) ;

			} while (rs.next());
		}



		return memberInfoMap;
	}



}
