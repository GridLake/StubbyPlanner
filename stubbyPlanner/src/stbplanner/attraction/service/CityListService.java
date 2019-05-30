package stbplanner.attraction.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Map;

import com.util.ConnectionProvider;

import stbplanner.attraction.dao.AttractionDAO;
import stbplanner.attraction.model.CityDTO;
import stbplanner.attraction.model.CountryDTO;

public class CityListService {

	private AttractionDAO attrDao = new AttractionDAO();

	public Map<String, ArrayList<CityDTO>> getCityMap(String country_id) {

		try(Connection conn = ConnectionProvider.getConnection()){

			Map<String, ArrayList<CityDTO>> cityMap = attrDao.selectCity(conn , country_id);

			return cityMap;

		}catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}


	}

	public CountryDTO getCountry(String country_id) {
		
		try(Connection conn = ConnectionProvider.getConnection()){

			CountryDTO country = attrDao.selectCountry(conn , country_id);

			return country;

		}catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}

}
