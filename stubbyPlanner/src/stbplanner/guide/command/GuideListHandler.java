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
import stbplanner.guide.service.GuideListPage;
import stbplanner.guide.service.GuideListService;

public class GuideListHandler implements CommandHandler{
	private static final String FORM_VIEW = "/market/list";
	
	private GuideListService guideListService = new GuideListService();

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int index = 0;
		
		int city_id = Integer.parseInt(request.getParameter("city_id"));
		int attr_id = Integer.parseInt(request.getParameter("attr_id") == null ? "0" : request.getParameter("attr_id"));
		String category = request.getParameter("category") == null ? "all" : request.getParameter("category");
		String filter_item = request.getParameter("orderby")  ;
		String pageNo = request.getParameter("currentPage");
		int currentPage = 1;
		System.out.println("handler" + city_id);
		
		if(pageNo != null) {
			currentPage = Integer.parseInt(pageNo); //currentPage가 넘어오면 넘어온 페이지로 아니면 1페이지
		}
		
		
		GuideDTO dto = new GuideDTO();
		dto.setCity_id(city_id);
		dto.setAttr_id(attr_id);
		dto.setCategory(category);
		dto.setFilter_item(filter_item);
		
		List<GuideDTO> list = guideListService.getGuideListPage(dto);
		
		JSONObject jsonData = new JSONObject();
		
		JSONArray jsonlist = new JSONArray();
		
		/*
		Iterator<GuideDTO> ir = list.iterator();
		
		for (GuideDTO guideDTO : list) {
			System.out.println(guideDTO.getTitle());
			jsonData = new JSONObject();
			jsonData.put("title", guideDTO.getTitle());
			jsonData.put("hours", guideDTO.getHours());
			jsonData.put("price", guideDTO.getPrice());
			jsonData.put("hot", guideDTO.getHot());
			jsonData.put("review", guideDTO.getreview());
			jsonlist.add(jsonData);
			
			
		}
		System.out.println(jsonlist);
		*/
		request.setAttribute("guideList", list);
		
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
