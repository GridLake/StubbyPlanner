package stbplanner.general.command;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import stbplanner.general.dto.RegisterDTO;
import stbplanner.general.service.FindService;
import stbplanner.service.LoginFailException;

public class FindHandler implements CommandHandler{
	private static final String FORM_VIEW = "/common/findPasswordID";
	private FindService findService = new FindService();

	
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
		
		System.out.println("FindHandler");
		String member_id = request.getParameter("member_id");
		String member_email = request.getParameter("member_email");
		System.out.println("id  : "+member_id);
		System.out.println("email : "+member_email);
/*		RegisterDTO dto = new RegisterDTO();
		dto.setMember_id(request.getParameter("member_id"));
		dto.setMember_email(request.getParameter("member_email"));*/
		if(member_id.equals("")) {
			System.out.println("id null");
			RegisterDTO dto = findService.findID(member_email);
			request.setAttribute("member_email", dto);
			System.out.println(dto);
			System.out.println(dto.getMember_id());
		}else {
			System.out.println("email null");
			RegisterDTO dto = findService.findPassword(member_id);
			request.setAttribute("member_id", dto);
			System.out.println(dto.getPassword());
		}
		return "/common/findPasswordID"; 
	}


	private String processForm(HttpServletRequest request, HttpServletResponse response) {
		return FORM_VIEW;
	}
}
