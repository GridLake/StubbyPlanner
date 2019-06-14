package stbplanner.planner.service;

import java.io.IOException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import stbplanner.general.command.CommandHandler;
import stbplanner.planner.model.RouteDTO;

public class PlannerDisplayHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setAttribute("lnb_item", "planner");
		
		if (request.getMethod().equalsIgnoreCase("GET")) {
			return processForm(request, response);
		}else if (request.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(request, response);
		}else {
			response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
		
	}

	private String processForm(HttpServletRequest request, HttpServletResponse response) {
		
		String trip_id = request.getParameter("trip_id");
		System.out.println("trip_id: " + trip_id);
		if(trip_id == null) {
			Calendar cal = Calendar.getInstance();
			cal.add(Calendar.MONTH, +1);
			Date currentTime=cal.getTime();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); 
			String defaultDate = sdf.format(currentTime); //.toString();
			System.out.println(defaultDate);
			request.setAttribute("defaultDate", defaultDate);
			return "/planner/planner_rt";
			
		} else {
			RouteDTO rdto = new RouteDTO();
			rdto.setTrip_id(Integer.parseInt(trip_id));
			
			RouteService rservice = RouteService.getInstance();
			JSONArray jsarr = rservice.routeSelect(rdto);
			request.setAttribute("jsarr", jsarr);

			/*try {
				String url = request.getContextPath() + "/planner/planner_rt.do?trip_id=" + URLEncoder.encode(trip_id, "UTF-8");
				response.sendRedirect(url);
			} catch (IOException e) {
				e.printStackTrace();
			}*/
		}
		

		return "/planner/planner_rt";
	}

	private String processSubmit(HttpServletRequest request, HttpServletResponse response) {
		return null;
	}


}
