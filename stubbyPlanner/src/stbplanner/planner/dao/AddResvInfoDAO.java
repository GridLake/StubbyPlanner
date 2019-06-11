package stbplanner.planner.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import stbplanner.planner.model.AddResvAirDTO;
import stbplanner.planner.model.AddResvResDTO;
import stbplanner.planner.model.AddResvTourDTO;
import stbplanner.planner.model.AddResvTrsDTO;

public class AddResvInfoDAO {

	private static AddResvInfoDAO dao = null;
	
	public AddResvInfoDAO() {}
	
	public static AddResvInfoDAO getInstance() {
		if(dao == null) dao = new AddResvInfoDAO();
		
		return dao;
	}
	
	public List<AddResvAirDTO> airRegister(Connection conn) throws SQLException{
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		AddResvAirDTO airDto = null;
		
		String sql = " insert into tbl_res_flight " 
				   + " values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? ) ";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, airDto.getTrip_id());
			pstmt.setString(2, airDto.getAirline());
			pstmt.setString(3, airDto.getContinent());
			pstmt.setString(4, airDto.getCountry_name());
			pstmt.setString(5, airDto.getCity_name());
			pstmt.setString(6, airDto.getDept_sairport());
			pstmt.setString(7, airDto.getDept_sdate());
			pstmt.setString(8, airDto.getDept_stime());
			pstmt.setString(9, airDto.getDept_aairport());
			
			
			rs = pstmt.executeQuery();
			List<AddResvAirDTO> alist = new ArrayList<>();
			
			while (rs.next()) {
				airDto = new AddResvAirDTO();
				
				alist.add(airDto);
			}
			
			return alist;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	
	public List<AddResvTrsDTO> trsRegister(Connection conn) throws SQLException {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		AddResvTrsDTO trsDto = null;
		
		return null;
	}

	public List<AddResvResDTO> resRegister(Connection conn) {
		
		return null;
	}
	
	public List<AddResvTourDTO> tourRegister(Connection conn) {
		
		return null;
	}
}
