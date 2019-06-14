package stbplanner.planner.command;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import stbplanner.general.command.CommandHandler;
import stbplanner.planner.model.RouteDTO;
import stbplanner.planner.service.PlannerReserveTourService;
import stbplanner.planner.service.PlannerReserveTrsService;

public class PlannerReserveTourHandler implements CommandHandler {
	
	PlannerReserveTourService resvTourService = new PlannerReserveTourService();

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 왼쪽 탭  리스트 뿌릴때 사용..
		PlannerReserveTrsService resvTransService = new PlannerReserveTrsService();	
		String trip_id = request.getParameter("trip_id");
		ArrayList<RouteDTO> routelist = resvTransService.getRouteList(trip_id);
		
		request.setAttribute("routelist", routelist);
		
		// 기본 정보 뿌릴때 사용
		String ridx = request.getParameter("ridx");
		RouteDTO route = resvTransService.getRoute(trip_id,ridx);
		
		request.setAttribute("route", route);
		
		String country_name = resvTourService.getCountryName(trip_id,ridx);
		
		request.setAttribute("country_name", country_name);
		
		ArrayList<HashMap<String, String>>  tourList = resvTourService.getTourList();
		
		request.setAttribute("tourList", tourList);
		
		return "/planner/planner_resv_tour";
	}

}
