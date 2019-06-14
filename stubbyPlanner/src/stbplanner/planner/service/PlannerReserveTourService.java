package stbplanner.planner.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import com.util.ConnectionProvider;

import stbplanner.planner.dao.ReserveTourDAO;

public class PlannerReserveTourService {

	private ReserveTourDAO resTourDao = new ReserveTourDAO();
	
	public String getCountryName(String trip_id, String ridx) {
		
		try(Connection conn = ConnectionProvider.getConnection()){
			
			String country_name = resTourDao.getCountryName(conn,trip_id,ridx);
	
			return country_name;
			
		}catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}

	public ArrayList<HashMap<String, String>> getTourList() {
		try(Connection conn = ConnectionProvider.getConnection()){
			
			 ArrayList<HashMap<String, String>> tourList = resTourDao.getTourList(conn);
	
			return tourList;
			
		}catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}

}
