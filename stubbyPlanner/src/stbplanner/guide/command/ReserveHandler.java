package stbplanner.guide.command;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;
import java.util.logging.SimpleFormatter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;
import stbplanner.general.command.CommandHandler;
import stbplanner.guide.model.ReserveDTO;
import stbplanner.guide.service.GuideReserveService;

public class ReserveHandler implements CommandHandler {
	
	private GuideReserveService reserveService = new GuideReserveService();
	private static final String FORM_VIEW = "/guide/detail";

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		System.out.println("handlert");
		ReserveDTO dto = new ReserveDTO();
		/*String yy = request.getParameter("yy");
		String mm = request.getParameter("mm");
		String dd = request.getParameter("dd");
		String date = yy+"-"+mm+"-"+dd;
		
		Date r_date = Date.valueOf(date);
		
		dto.setR_date(r_date);
		dto.setTourserial(request.getParameter("tourserial"));
		dto.setComid(request.getParameter("comid"));
		dto.setResv_name(request.getParameter("resv_name"));
		dto.setPolicy_id_cnts(Integer.parseInt(request.getParameter("policy_id_cnts")));//예약인원
		dto.setPhone(request.getParameter("phone"));
		dto.setKakao(request.getParameter("kakao"));
		dto.setEmail(request.getParameter("email"));
		dto.setMsg(request.getParameter("msg"));
		dto.setPrice_total(request.getParameter("price_total"));*/
		int seq = Integer.parseInt(request.getParameter("serial"));
		int pseq = Integer.parseInt(request.getParameter("pseq"));
		dto.setReserve_seq(seq);
		dto.setPrice_seq(pseq);
		System.out.println(dto.getReserve_seq());
		List<ReserveDTO> reserve = GuideReserveService.reserve(dto);
		request.setAttribute("reserve", reserve);
		
		return "/guide/reservation_ok";
	}


}
