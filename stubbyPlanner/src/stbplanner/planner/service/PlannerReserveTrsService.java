package stbplanner.planner.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import com.util.ConnectionProvider;

import stbplanner.planner.dao.ReserveTrsDAO;
import stbplanner.planner.model.ResTransInfo;
import stbplanner.planner.model.RouteDTO;

public class PlannerReserveTrsService {
	
	private ReserveTrsDAO resTrsDao = new ReserveTrsDAO();

	public ArrayList<RouteDTO> getRouteList(String trip_id) {
		
		try(Connection conn = ConnectionProvider.getConnection()){
			
			ArrayList<RouteDTO> routeList = resTrsDao.getRouteList(conn, trip_id);
	
			return routeList;
			
		}catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}

	}

	public RouteDTO getRoute(String trip_id, String ridx) {
		try(Connection conn = ConnectionProvider.getConnection()){
			
			RouteDTO route = resTrsDao.getRoute(conn, trip_id, ridx);
	
			return route;
			
		}catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}

	public ResTransInfo getResTransInfo(String trip_id, String ridx) {
		try(Connection conn = ConnectionProvider.getConnection()){
			
			ResTransInfo resTransInfo = resTrsDao.getResTransInfo(conn, trip_id, ridx);
	
			return resTransInfo;
			
		}catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}

	public ArrayList<HashMap> getTrsMap(String scity_id, String ecity_id) {
		try(Connection conn = ConnectionProvider.getConnection()){
			
			 ArrayList<HashMap> trsMapList = resTrsDao.getTrsMap(conn, scity_id, ecity_id);
	
			return trsMapList;
			
		}catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}

	public HashMap<String, String> getTrsInfo(String scity_id, String ecity_id) {
		try(Connection conn = ConnectionProvider.getConnection()){
			
			HashMap<String, String> trsInfoMap  = resTrsDao.getTrsInfo(conn, scity_id, ecity_id);
	
			return trsInfoMap;
			
		}catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}

	public ArrayList<ResTransInfo> getresTransList(String scity_id, String ecity_id) {
		
		try(Connection conn = ConnectionProvider.getConnection()){
			
			ArrayList<ResTransInfo> resTransList = resTrsDao.getresTransList(conn, scity_id,ecity_id);
	
			return resTransList;
			
		}catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}



}
