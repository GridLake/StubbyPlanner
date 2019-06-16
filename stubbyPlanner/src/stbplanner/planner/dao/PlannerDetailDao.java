package stbplanner.planner.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import com.util.ConnectionProvider;

import stbplanner.planner.model.PlannerDetailDto;

public class PlannerDetailDao {

	private static PlannerDetailDao dao = null;

	private PlannerDetailDao() {}

	public static PlannerDetailDao getInstance() {
		if(dao == null) {
			dao = new PlannerDetailDao();
		}
		return dao;
	}

	public void insertMemberId(PlannerDetailDto dto ){

		int trip_id = dto.getTrip_id();
		String member_id = dto.getMember_id();

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sdatesql = " update tbl_planner set member_id = ? where trip_id = ? ";

		try {

			conn = ConnectionProvider.getConnection();
			pstmt = conn.prepareStatement(sdatesql);

			pstmt.setString(1, member_id);
			pstmt.setInt(2, trip_id);

			rs = pstmt.executeQuery();

		}catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				pstmt.close();rs.close();conn.close();
			} catch (SQLException e) { 
				e.printStackTrace();
			}
		}

	}
}
