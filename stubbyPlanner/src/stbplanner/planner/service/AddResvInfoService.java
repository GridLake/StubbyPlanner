package stbplanner.planner.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import stbplanner.planner.dao.AddResvInfoDAO;
import stbplanner.planner.model.AddResvAirDTO;
import stbplanner.planner.model.AddResvResDTO;
import stbplanner.planner.model.AddResvTourDTO;
import stbplanner.planner.model.AddResvTrsDTO;

public class AddResvInfoService {

	private static AddResvInfoService instance = new AddResvInfoService();
	
	public static AddResvInfoService getInstance() {
		return instance;
	}
	
	private AddResvInfoService() {}
	
	public AddResvAirDTO doAirRegister() {
		
		Connection conn = null;
		
		
		try {
			conn = ConnectionProvider.getConnection();
			AddResvInfoDAO airDao = new AddResvInfoDAO();
			airlist = airDao.airRegister(conn);
		} catch (SQLException | NamingException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
		}
		
		return airlist;
	}
	
	public List<AddResvTrsDTO> doTrsRegister() {
		
		Connection conn = null;
		List<AddResvTrsDTO> trslist = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			AddResvInfoDAO trsDao = new AddResvInfoDAO();
			trslist = trsDao.trsRegister(conn);
		} catch (SQLException | NamingException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
		}
		
		return trslist;
	}
	
	public List<AddResvResDTO> doResRegister() {
		
		Connection conn = null;
		List<AddResvResDTO> reslist = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			AddResvInfoDAO resDao = new AddResvInfoDAO();
			reslist = resDao.resRegister(conn);
		} catch (SQLException | NamingException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
		}
		
		return reslist;
	}
	
	public List<AddResvTourDTO> doTourRegister() {
		
		Connection conn = null;
		List<AddResvTourDTO> tourlist = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			AddResvInfoDAO tourDao = new AddResvInfoDAO();
			tourlist = tourDao.tourRegister(conn);
		} catch (SQLException | NamingException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
		}
		
		return tourlist;
	}
}
