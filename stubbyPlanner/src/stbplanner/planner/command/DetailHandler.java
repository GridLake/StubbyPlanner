package stbplanner.planner.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import stbplanner.general.command.CommandHandler;
import stbplanner.planner.dao.PlannerDetailDao;
import stbplanner.planner.model.PlannerDetailDto;

public class DetailHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int trip_id = Integer.parseInt(request.getParameter("tid"));
		String id  = request.getParameter("member_id");
		System.out.println("handler id: " + id);
		
		PlannerDetailDto dto = new PlannerDetailDto();
		
		dto.setTrip_id(trip_id);
		dto.setMember_id(id);
		
		PlannerDetailDao dao = PlannerDetailDao.getInstance();
		dao.insertMemberId(dto);
		
		return "/planner/detail";
	}
}
