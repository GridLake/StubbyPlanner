package stbplanner.general.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class IndexLogoutHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 1. 로직처리                                                                 : 세션 삭제
		HttpSession session =  request.getSession(false);
		
		if( session != null ) {
			System.out.println("!null");
			//response.sendRedirect("/stubbyPlanner/common/checkLogout.do");
			session.invalidate();
			
			response.sendRedirect("/stubbyPlanner/common/login.do");
			
		}/*else {
			System.out.println("null");
//			response.sendRedirect("/stubbyPlanner/common/login.do");
			return "/common/login";
		}*/
		// 2. 결과물  request.setAttribute() 저장
		// 3. View ( jsp 페이지 ) 이동
		
		return null;
	}

}

