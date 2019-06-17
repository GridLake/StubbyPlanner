package stbplanner.market.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import stbplanner.general.command.CommandHandler;
import stbplanner.guide.model.GuideDetailDTO;
import stbplanner.guide.service.GuideListService;

public class index_ctryDisplayHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int city_id = Integer.parseInt(request.getParameter("country_id"));
		
		
		GuideDetailDTO dto = new GuideDetailDTO();
		
		dto.setCity_id(city_id);
		
		GuideListService guideListService = new GuideListService();
		
		Map<String, Object> cityGuide = guideListService.getCityGuide(dto);
		
		request.setAttribute("cityGuide", cityGuide);
		return "/market/index_ctry";
	}
	
	
}
