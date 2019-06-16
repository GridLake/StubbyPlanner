package stbplanner.mb.command;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import stbplanner.general.command.CommandHandler;
import stbplanner.mb.Service.MbService;

public class BookingListHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String city_id = request.getParameter("city_id");
		String stype = request.getParameter("stype");
		
		MbService mbservice = new MbService();
		
		List<Map<String, Object>> attr_list = mbservice.getAttr_list(city_id);

		
		request.setAttribute("attr_list", attr_list);
		return "/mb/index_city";
	}
	

}
