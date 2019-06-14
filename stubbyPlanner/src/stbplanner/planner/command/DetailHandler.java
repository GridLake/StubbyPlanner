package stbplanner.planner.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import stbplanner.general.command.CommandHandler;

public class DetailHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session = request.getSession();
		
		String userId = (String)session.getAttribute("authUser");
		System.out.println("userID:" + userId);
		
		
		return "/planner/detail";
	}

	
}
