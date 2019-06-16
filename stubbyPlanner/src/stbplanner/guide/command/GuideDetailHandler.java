package stbplanner.guide.command;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import stbplanner.general.command.CommandHandler;
import stbplanner.guide.model.GuideDetailDTO;
import stbplanner.guide.service.GuideDetailService;

public class GuideDetailHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int serial = Integer.parseInt(request.getParameter("serial"));
		String id = request.getParameter("needlogin");
		System.out.println(serial);
		GuideDetailDTO dto = new GuideDetailDTO();
		
		dto.setGuide_seq(serial);
		
		GuideDetailService guideDetailService = new GuideDetailService();
		
		Map<String, Object> detail = guideDetailService.getDetail(dto);
		
		
		
		
		request.setAttribute("detail", detail);
		
		return "/guide/detail";
	}

}
