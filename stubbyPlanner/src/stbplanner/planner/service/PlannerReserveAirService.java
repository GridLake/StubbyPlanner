package stbplanner.planner.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.google.gson.JsonArray;
import com.util.ConnectionProvider;

import net.sf.json.JSONArray;
import stbplanner.planner.dao.ReserveAirDAO;
import stbplanner.planner.model.AddResvResDTO;
import stbplanner.planner.model.ScatterInfoDTO;

public class PlannerReserveAirService {
	
	private ReserveAirDAO resAirDao = new ReserveAirDAO();

	public ArrayList<HashMap<String, String>> getAirInfo(String trip_id) {
		try(Connection conn = ConnectionProvider.getConnection()){
			
			ArrayList<HashMap<String, String>> airInfo = resAirDao.getAirInfo(conn,trip_id);
	
			return airInfo;
			
		}catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}

	public JSONArray getScatterInfo() {
		                             //label   //dotsList         x         6.xx
		try(Connection conn = ConnectionProvider.getConnection()){
			
			JSONArray scatterInfoList = resAirDao.getScatterInfo(conn);
	
			return scatterInfoList;
			
		}catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}

	public ArrayList<HashMap<String, String>> getReservers() {
		try(Connection conn = ConnectionProvider.getConnection()){
			
			ArrayList<HashMap<String, String>> reserverList = resAirDao.getReservers(conn);
	
			return reserverList;
			
		}catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}

}
