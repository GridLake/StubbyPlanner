package stbplanner.planner.command;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import stbplanner.general.command.CommandHandler;
import stbplanner.planner.model.RouteDTO;
import stbplanner.planner.service.PlannerReserveAirService;
import stbplanner.planner.service.PlannerReserveTrsService;

public class PlannerReserveAirHandler implements CommandHandler {
	
	PlannerReserveAirService resvAirService = new  PlannerReserveAirService();

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 왼쪽 탭  리스트 뿌릴때 사용..
		PlannerReserveTrsService resvTransService = new PlannerReserveTrsService();	
		String trip_id = request.getParameter("trip_id");
		ArrayList<RouteDTO> routelist = resvTransService.getRouteList(trip_id);
		
		request.setAttribute("routelist", routelist);
		
		// 기본정보 뿌릴때 사용
		ArrayList<HashMap<String, String>> airInfo= resvAirService.getAirInfo(trip_id);
		
		request.setAttribute("airInfo", airInfo);
 
		JSONArray scatterInfoList = resvAirService.getScatterInfo();
		
		
		// jsonObject  { "datasets":[{"label":???, "data":[{},{},{]},{}] } , ... ]
		
		JSONObject jObj = new JSONObject();
		
		
		jObj.put("datasets", scatterInfoList);
		
		request.setAttribute("scatterInfoList", jObj);
		
		
		
		ArrayList<HashMap<String,String>> reserverList = resvAirService.getReservers();
		
		request.setAttribute("reserverList", reserverList);
		
		
		return "/planner/planner_resv_air";
	}

	
}
