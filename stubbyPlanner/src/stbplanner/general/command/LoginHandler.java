package stbplanner.general.command;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import stbplanner.general.dto.RegisterDTO;
import stbplanner.general.service.LoginService;
import stbplanner.general.service.User;
import stbplanner.service.LoginFailException;


public class LoginHandler implements CommandHandler{
	private static final String FORM_VIEW = "/common/login";
	private LoginService loginService = new LoginService();

	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if( request.getMethod().equalsIgnoreCase("GET") ) {
			return processForm(request, response);
		}else if( request.getMethod().equalsIgnoreCase("POST") ) {
			return processSubmit(request, response);
		}else {
			response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}


	private String processSubmit(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		System.out.println("loginhandler");
		String member_id = trim(request.getParameter("member_id"));
		//String password = trim(request.getParameter("password"));
		String password = trim(request.getParameter("password"));
		
		
		// System.out.println( "XXXX : " +   password );
		

		Map<String, Boolean> errors = new HashMap<>();
		request.setAttribute("errors", errors);
		/*
		if (member_id == null || member_id.isEmpty())
			errors.put("member_id", true );
		if (password == null || password.isEmpty())
			errors.put("password", true );
		System.out.println(errors);
		if (!errors.isEmpty()) {
			return FORM_VIEW;
		}*/

//String referer =  request.getHeader("Referer");
//System.out.println("> LoginHandler - referer : " + referer);
		try {
			System.out.println("loginhandler try ");
			RegisterDTO dto = loginService.login(member_id, password);
			request.getSession().setAttribute("authUser", dto);
			//res.sendRedirect(req.getContextPath() + "/index.jsp");
	HttpSession session = request.getSession(false);
	if ( session.getAttribute("referer") != null) {
		response.sendRedirect( (String)session.getAttribute("referer") );
	}else {
		System.out.println("loginhandlerelse");
		response.sendRedirect(request.getContextPath() + "/common/index.do");
	}
			return null;
		} catch (LoginFailException e) {	
			errors.put("idOrPwNotMatch", true );
			System.out.println(errors);
			e.getMessage();
			return FORM_VIEW;
		}
	}

	private String trim(String str) {
		return str == null ? null : str.trim();
	}


	private String processForm(HttpServletRequest request, HttpServletResponse response) {
		return FORM_VIEW;
	}
}
