package stbplanner.planner.command;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import stbplanner.general.command.CommandHandler;
import stbplanner.planner.model.AccomInfo;
import stbplanner.planner.model.AddResvResDTO;
import stbplanner.planner.model.RouteDTO;
import stbplanner.planner.service.PlannerReserveSlpService;
import stbplanner.planner.service.PlannerReserveTrsService;

public class PlannerReserveSlpHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		PlannerReserveSlpService resvSlpService = new PlannerReserveSlpService();
		
		
		// 왼쪽 탭  리스트 뿌릴때 사용..
		PlannerReserveTrsService resvTransService = new PlannerReserveTrsService();	
		String trip_id = request.getParameter("trip_id");
		ArrayList<RouteDTO> routelist = resvTransService.getRouteList(trip_id);
		
		request.setAttribute("routelist", routelist);

		// 기본 정보 뿌릴때 사용
		String ridx = request.getParameter("ridx");
		RouteDTO route = resvTransService.getRoute(trip_id,ridx);
		
		request.setAttribute("route", route);
		
		// 숙소 타입별 비율
		String scity_id = request.getParameter("scity_id");
		ArrayList<HashMap<String, String>> slpRate = resvSlpService.getSlpRate(scity_id);
		
		request.setAttribute("slpRate", slpRate);
		
		AddResvResDTO resvResDto = resvSlpService.getResvRes(trip_id,ridx);
		
		request.setAttribute("resvResDto", resvResDto);
		
		
		String slpType = request.getParameter("slpType") == null? "호텔": request.getParameter("slpType");
		
		
		ArrayList<AccomInfo> accInfoList = resvSlpService.getAccInfoList(scity_id,slpType);
		request.setAttribute("accInfoList", accInfoList);
		
		
		return "/planner/planner_resv_slp";
	}

}
