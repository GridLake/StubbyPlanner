package stbplanner.planner.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import stbplanner.general.command.CommandHandler;

public class PlannerDisplayHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("lnb_item", "planner");
		return "/planner/planner_rt";
	}

	
}
