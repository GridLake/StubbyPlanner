package stbplanner.planner.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import com.util.ConnectionProvider;

import stbplanner.planner.dao.ReserveSlpDAO;
import stbplanner.planner.model.AccomInfo;
import stbplanner.planner.model.AddResvResDTO;


public class PlannerReserveSlpService {
	
	private ReserveSlpDAO resSlpDao = new ReserveSlpDAO();

	public AddResvResDTO getResvRes(String trip_id, String ridx) {
		try(Connection conn = ConnectionProvider.getConnection()){
			
			AddResvResDTO resvResDto = resSlpDao.getResvRes(conn, trip_id, ridx);
	
			return resvResDto;
			
		}catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}

	public ArrayList<AccomInfo> getAccInfoList(String scity_id, String slpType) {
		try(Connection conn = ConnectionProvider.getConnection()){
			
			ArrayList<AccomInfo> accInfoList = resSlpDao.getAccInfoList(conn, scity_id, slpType);
	
			return accInfoList;
			
		}catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}

	public ArrayList<HashMap<String, String>> getSlpRate(String scity_id) {
		try(Connection conn = ConnectionProvider.getConnection()){
			
			ArrayList<HashMap<String, String>> slpRateList = resSlpDao.getslpRateMap(conn, scity_id);
	
			return slpRateList;
			
		}catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}

}
