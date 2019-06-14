package stbplanner.personal.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import stbplanner.general.command.CommandHandler;
import stbplanner.general.dto.RegisterDTO;
import stbplanner.personal.model.MyPageDTO;
import stbplanner.personal.service.MyPageService;

public class MyPageHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		MyPageService myPageService = new MyPageService();
		
		RegisterDTO dto = (RegisterDTO)request.getSession().getAttribute("authUser");
		
		String member_id = dto.getMember_id();
		
		MyPageDTO myPage =  myPageService.getMyPage(member_id);		
		int myFriend =  myPageService.getMyFriend(member_id);		
		
		request.setAttribute("myPage", myPage);
		request.setAttribute("myFriend", myFriend);
		
		return "/personal/myPage";
	}

}
