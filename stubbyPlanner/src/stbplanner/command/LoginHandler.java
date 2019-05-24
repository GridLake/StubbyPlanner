package stbplanner.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginHandler implements CommandHandler{

	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return "/common/login";
	}
}
