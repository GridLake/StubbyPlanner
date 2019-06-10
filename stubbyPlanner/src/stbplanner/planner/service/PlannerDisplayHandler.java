package stbplanner.planner.service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import stbplanner.general.command.CommandHandler;

public class PlannerDisplayHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("lnb_item", "planner");
		
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.MONTH, +1);
		Date currentTime=cal.getTime();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); 
		String defaultDate = sdf.format(currentTime); //.toString();
		System.out.println(defaultDate);
		request.setAttribute("defaultDate", defaultDate);
		
		return "/planner/planner_rt";
	}

	
}
