package stbplanner.attraction.command;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import stbplanner.attraction.model.NSDetDTO;
import stbplanner.attraction.model.SelfBookDTO;
import stbplanner.attraction.service.AttrDetailService;
import stbplanner.general.command.CommandHandler;


public class AttrDetailHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		AttrDetailService attrDetailService = new AttrDetailService();
		
		String attr = request.getParameter("attr");
		
		Map<String,Object> sectionMap = attrDetailService.getSectionMap(attr);
		
		request.setAttribute("sectionMap", sectionMap);
		
		return "/attr/attr_detail";
	}

}
