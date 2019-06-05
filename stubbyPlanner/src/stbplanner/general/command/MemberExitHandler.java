package stbplanner.general.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import stbplanner.general.dto.RegisterDTO;
import stbplanner.general.service.MemberExitService;

public class MemberExitHandler implements CommandHandler{
	private static final String FORM_VIEW = "/common/memberExit";
	private MemberExitService memberExitService = new MemberExitService();
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if( request.getMethod().equalsIgnoreCase("GET") ) {
			System.out.println("MemberExitService get");
			return processForm(request, response);
		}else if( request.getMethod().equalsIgnoreCase("POST") ) {
			return processSubmit(request, response);
		}else {
			response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
}

	private String processSubmit(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("MemberExitHandler post");
		// 세션 정보 -> dto 저장
		HttpSession session = request.getSession();
		session.invalidate();
		RegisterDTO dto = new RegisterDTO();
//		dto = (RegisterDTO)httpSession.getAttribute("authUser");
		dto.setMember_id(request.getParameter("member_id"));
		dto.setPassword(request.getParameter("password"));

		memberExitService.delete(dto);
		return "/common/index";
	}

	private String processForm(HttpServletRequest request, HttpServletResponse response) {
		return FORM_VIEW;
	}
}