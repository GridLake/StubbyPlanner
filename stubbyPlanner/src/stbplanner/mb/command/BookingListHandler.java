package stbplanner.mb.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import stbplanner.general.command.CommandHandler;

public class BookingListHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String city_id = request.getParameter("city_id");
		
		request.setAttribute(city_id, city_id);
		
		return "/mb/index_city";
	}
	

}
