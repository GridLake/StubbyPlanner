package stbplanner.guide.command;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONException;
import net.sf.json.JSONObject;
import stbplanner.general.command.CommandHandler;
import stbplanner.guide.model.GuideDTO;
import stbplanner.guide.model.TourtypeDTO;
import stbplanner.guide.service.GuideListPage;
import stbplanner.guide.service.GuideListService;

public class GuideListHandler implements CommandHandler{
	private static final String FORM_VIEW = "/market/index_city";
	
	private GuideListService guideListService = new GuideListService();

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int index = 0;
		
		int city_id = Integer.parseInt(request.getParameter("city_id"));
		
		TourtypeDTO dto = new TourtypeDTO();
		
		dto.setCity_id(city_id);
		
		GuideListService guideListService = new GuideListService();
		
		List<TourtypeDTO> tourtype = guideListService.getTourType(dto);
		
		
		request.setAttribute("tourtype", tourtype);
		
		/*
		List<Map<String, Object>> list = guideListService.getGuideListPage(dto);
		JSONArray jsonArray = new JSONArray();
		for (int i = 0; i < list.size(); i++) {
			 	JSONObject data = new JSONObject();
	            data.put("POPUP_SEQ", list.get(i).get("POPUP_SEQ"));
	            jsonArray.add(i, data);  
		}
*/		
		
		
		
		return FORM_VIEW;
	}
	

}
