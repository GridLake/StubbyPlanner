package stbplanner.general.command;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import stbplanner.general.dto.RegisterDTO;
import stbplanner.general.service.InfoChangeService;


public class InfoChangeHandler implements CommandHandler{
	private static final String FORM_VIEW = "/common/infoChange";
	private InfoChangeService infoChangeService = new InfoChangeService();
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if( request.getMethod().equalsIgnoreCase("GET") ) {
			System.out.println("infoChangeHandler get");
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
		// 1. 세션  member_id 얻어면 된다.
		
		// 2. RegisterDTO dto = 서비스 ( member_id )
		//    RegisterDTO dto =   DAO.select멤버정보( member_id);
		
		RegisterDTO dto = new RegisterDTO();
		System.out.println("registerhandler");
		dto.setName(request.getParameter("name"));
		dto.setMember_id(request.getParameter("member_id"));
		dto.setPassword(request.getParameter("password"));
		dto.setPassword_confirm(request.getParameter("cur_password"));
		dto.setMember_email(request.getParameter("member_email"));
		dto.setGender(request.getParameter("gender"));
		dto.setBirth_year(request.getParameter("birth_year"));
		dto.setBirth_month(request.getParameter("birth_month"));
		dto.setAccept_mail(request.getParameter("accept_mail"));
		
		// 3. request.setAttribute("dto",dto);
		
		// InfoChangeService.register(dto);
		return "/common/index_login"; 
	}
	private String processForm(HttpServletRequest request, HttpServletResponse response) {
		return FORM_VIEW;
	}

}
