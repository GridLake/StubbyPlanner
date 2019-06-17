package stbplanner.market.command;

import java.util.Iterator;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import stbplanner.general.command.CommandHandler;
import stbplanner.guide.model.GuideDetailDTO;

public class MarketDisplayHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		Cookie[] cookies = request.getCookies();
		
		GuideDetailDTO dto = new GuideDetailDTO();
		if (cookies != null) {
			for (int j = 0; j < cookies.length; j++) {
				Cookie c = cookies[j];
				String seq = (c.getValue());
			}
			
		}
		
		request.setAttribute("lnb_item", "market");
		return "/market/index";
	}

	
}
