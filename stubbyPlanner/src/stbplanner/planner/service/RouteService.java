package stbplanner.planner.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import net.sf.json.JSONArray;
import stbplanner.planner.dao.RouteDAO;
import stbplanner.planner.model.RouteDTO;

public class RouteService {

	private static RouteService instance = new RouteService();
	
	public static RouteService getInstance() {
		return instance;
	}
	
	public RouteService() {}
	
	public JSONArray routeSelect(RouteDTO rdto) {
		
		Connection conn = null;
		
		JSONArray jsarr = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			RouteDAO rdao = new RouteDAO();
			jsarr = rdao.routeSelect(conn, rdto);
		} catch (SQLException | NamingException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
		}
		return jsarr;
	}
}
