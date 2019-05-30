package stbplanner.planner.command;

import java.io.BufferedReader;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.crypto.Data;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import stbplanner.general.command.CommandHandler;
import stbplanner.planner.dao.PlannerPlanDao;
import stbplanner.planner.model.PlannerPlanDTO;

public class PlannerAjaxHandler implements CommandHandler{
	private static final String FORM_VIEW = "/ajax/getSMarkers";
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
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
		 
		String SWlongitude = request.getParameter("SWlongitude");
		String SWlatitude = request.getParameter("SWlatitude");
		String NElongitude = request.getParameter("NElongitude");
		String NElatitude = request.getParameter("NElatitude");
		String zoomLevel	 = request.getParameter("zoomLevel");
//		
//		System.out.println(">>> " + SWlongitude);
//		System.out.println(SWlatitude);
//		System.out.println(NElongitude);
//		System.out.println(NElatitude);
//		System.out.println(zoomLevel);
//	 
		PlannerPlanDTO dto = new PlannerPlanDTO();
		
		dto.setSWlatitude(SWlatitude);
		dto.setNElatitude(NElatitude);
		dto.setSWlongitude(SWlongitude);
		dto.setNElongitude(NElongitude);
		dto.setZoomLevel(zoomLevel);
		
		PlannerPlanDao dao = PlannerPlanDao.getInstance();
		JSONArray jsonArray =  dao.selectMap(dto);
		request.setAttribute("jsonArray", jsonArray);
		
	return FORM_VIEW;
	}

	private String processSubmit(HttpServletRequest request, HttpServletResponse response) throws Exception {

		return FORM_VIEW;
		
	}
	
}
