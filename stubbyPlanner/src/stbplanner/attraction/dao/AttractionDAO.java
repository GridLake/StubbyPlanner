package stbplanner.attraction.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import stbplanner.attraction.model.CityDTO;

public class AttractionDAO {
	//fields
	
	//contructor
	
	// method
	
	public ArrayList<CityDTO> selectCountry(Connection conn) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = " select * from tbl_country ";
		
		pstmt = conn.prepareStatement(sql);
		
		rs = pstmt.executeQuery();
		
		ArrayList<CityDTO>  cityList = new ArrayList<>();
		
		while (rs.next()) {
			CityDTO dto = new CityDTO();
			dto.setCountry_id(rs.getInt("country_id"));
			dto.setCountry_name(rs.getString("country_name"));
			
			cityList.add(dto);
		}
		
		
		return cityList;
	}
	
	
	
	
	
}
