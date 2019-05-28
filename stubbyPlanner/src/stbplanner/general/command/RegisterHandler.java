package stbplanner.general.command;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import stbplanner.general.dto.RegisterDTO;
import stbplanner.general.service.RegisterService;

public class RegisterHandler implements CommandHandler{
	private static final String FORM_VIEW = "/common/register";
	private RegisterService registerService = new RegisterService();
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

	private String processSubmit(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		
		RegisterDTO dto = new RegisterDTO();
		System.out.println("registerhandler");
		dto.setName(request.getParameter("name"));
		dto.setMember_id(request.getParameter("member_id"));
		dto.setPassword(request.getParameter("password"));
		
		System.out.println( "XXXX password : " +  request.getParameter("password"));
		
 
		dto.setPassword_confirm(request.getParameter("password_confirm"));
		dto.setMember_email(request.getParameter("member_email"));
		dto.setVemail(request.getParameter("vemail"));
		dto.setGender(request.getParameter("gender"));
		dto.setBirth_year(request.getParameter("birth_year"));
		dto.setBirth_month(request.getParameter("birth_month"));
		dto.setAccept_mail(request.getParameter("accept_mail"));
		
		registerService.register(dto);
		return "/common/index"; 
	}
	private String processForm(HttpServletRequest request, HttpServletResponse response) {		 
		return FORM_VIEW;
	}
	
}
