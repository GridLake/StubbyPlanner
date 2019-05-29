package stbplanner.mb.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import stbplanner.general.command.CommandHandler;

public class BookingDisplayHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("lnb_item", "mb");
		
		return "/mb/index";
	}

	
}
