package stbplanner.general.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CheckLogoutHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session =  request.getSession(false);
	    session.invalidate();
System.out.println("check");
		response.sendRedirect("/stubbyPlanner/common/login.do");
		return null;
	}

}