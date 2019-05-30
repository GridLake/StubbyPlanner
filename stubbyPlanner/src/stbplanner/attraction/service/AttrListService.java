package stbplanner.attraction.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Map;

import com.util.ConnectionProvider;

import stbplanner.attraction.dao.AttractionDAO;
import stbplanner.attraction.model.AttrDTO;
import stbplanner.attraction.model.BucketCityDTO;
import stbplanner.attraction.model.CityDTO;
import stbplanner.attraction.model.CountryDTO;

public class AttrListService {

	private AttractionDAO attrDao = new AttractionDAO();

	public Map<String, ArrayList<AttrDTO>> getAttrMap(String city_id) {

		try(Connection conn = ConnectionProvider.getConnection()){

			Map<String, ArrayList<AttrDTO>> attrMap = attrDao.selectAttr(conn , city_id);

			return attrMap;

		}catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}

	}

	public BucketCityDTO getBucketCity(String city_id) {
	
		try(Connection conn = ConnectionProvider.getConnection()){

			BucketCityDTO bucketcity = attrDao.selectBucketCity(conn , city_id);

			return bucketcity;

		}catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}

}
