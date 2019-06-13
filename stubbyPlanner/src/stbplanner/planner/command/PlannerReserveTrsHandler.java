package stbplanner.planner.command;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import stbplanner.general.command.CommandHandler;
import stbplanner.planner.model.ResTransInfo;
import stbplanner.planner.model.RouteDTO;
import stbplanner.planner.service.PlannerReserveTrsService;

public class PlannerReserveTrsHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)  {
		
		PlannerReserveTrsService resvTransService = new PlannerReserveTrsService();
		
		String trip_id = request.getParameter("trip_id");
		String ridx = request.getParameter("ridx");
		String scity_id = request.getParameter("scity_id");
		String ecity_id = request.getParameter("ecity_id");

		
		ArrayList<RouteDTO> routelist = resvTransService.getRouteList(trip_id);
		
		request.setAttribute("routelist", routelist);
		
		RouteDTO route = resvTransService.getRoute(trip_id,ridx);
		
		request.setAttribute("route", route);
		
		ResTransInfo resTransInfo = resvTransService.getResTransInfo(trip_id,ridx);
		
		request.setAttribute("resTransInfo", resTransInfo);
		
		ArrayList<HashMap> trsMapList = resvTransService.getTrsMap(scity_id, ecity_id);

		request.setAttribute("trsMapList", trsMapList);
		
		HashMap<String, String> trsInfoMap = resvTransService.getTrsInfo(scity_id, ecity_id);
		
		request.setAttribute("trsInfoMap", trsInfoMap);
		
		ArrayList<ResTransInfo> resTransList = resvTransService.getresTransList(scity_id,ecity_id);
		
		request.setAttribute("resTransList", resTransList);
		
		
		return "/planner/planner_resv_trs";
	}

}
