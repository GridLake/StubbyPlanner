package stbplanner.planner.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import stbplanner.general.command.CommandHandler;
import stbplanner.planner.model.AddResvAirDTO;
import stbplanner.planner.model.AddResvResDTO;
import stbplanner.planner.model.AddResvTourDTO;
import stbplanner.planner.model.AddResvTrsDTO;
import stbplanner.planner.service.AddResvInfoService;

public class AddResvInfoHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (request.getMethod().equalsIgnoreCase("GET")) {
			return processForm(request, response);
		}else if (request.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(request, response);
		}else {
			response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}

	private String processSubmit(HttpServletRequest request, HttpServletResponse response) {

		// t 파라미터로 분기
		// ~~~서비스 : ㅁ,ㅠ,ㅠ,ㅊ
		
		String t = request.getParameter("t");
		int trip_id = Integer.parseInt(request.getParameter("trip_id"));
		if(t.equals("air")) {
			int rs = Integer.parseInt(request.getParameter("rs"));
			
			AddResvAirDTO airDto = new AddResvAirDTO();
			
			// airDto.setT(t);
			airDto.setTrip_id(trip_id);
			airDto.setRs(rs);
			
			AddResvInfoService airService = AddResvInfoService.getInstance();
			
			
		} else if(t.equals("trs")) {
			int rs = Integer.parseInt(request.getParameter("rs"));
			int serial = Integer.parseInt(request.getParameter("serial"));
			String startdate = request.getParameter("startdate");
			
			AddResvTrsDTO trsDto = new AddResvTrsDTO();
			
			// trsDto.setT(t);
			trsDto.setTrip_id(trip_id);
			trsDto.setRs(rs);
			trsDto.setSerial(serial);
			trsDto.setStartdate(startdate);
			
			
			
		} else if(t.equals("slp")) {
			int rs = Integer.parseInt(request.getParameter("rs"));
			int serial = Integer.parseInt(request.getParameter("serial"));
			String startdate = request.getParameter("startdate");
			String date_in = request.getParameter("date_in");
			
			AddResvResDTO resDto = new AddResvResDTO();
			
			// resDto.setT(t);
			resDto.setTrip_id(trip_id);
			resDto.setRs(rs);
			resDto.setSerial(serial);
			resDto.setStartdate(startdate);
			resDto.setDate_in(date_in);
			
			
			
		} else if(t.equals("tour")) {
			int rs = Integer.parseInt(request.getParameter("rs"));
			int serial = Integer.parseInt(request.getParameter("serial"));
			String startdate = request.getParameter("startdate");
			String date_in = request.getParameter("date_in");
			String date_out = request.getParameter("date_out");
			
			AddResvTourDTO tourDto = new AddResvTourDTO();
			
			// tourDto.setT(t);
			tourDto.setTrip_id(trip_id);
			tourDto.setRs(rs);
			tourDto.setSerial(serial);
			tourDto.setStartdate(startdate);
			tourDto.setDate_in(date_in);
			tourDto.setDate_out(date_out);
			
			
		}

		return null;
	}

	private String processForm(HttpServletRequest request, HttpServletResponse response) {
		return null;
	}

	
}
