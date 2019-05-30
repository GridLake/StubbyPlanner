package stbplanner.attraction.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import com.util.ConnectionProvider;

import stbplanner.attraction.dao.AttractionDAO;

import stbplanner.attraction.model.CountryDTO;

public class CountryListService {

	private AttractionDAO attrDao = new AttractionDAO();
	
	public ArrayList<CountryDTO> getCountryList(){
		
		try(Connection conn = ConnectionProvider.getConnection()){
			
			ArrayList<CountryDTO> countryList = attrDao.selectCountry(conn);
	
			return countryList;
			
		}catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}

	}

}
