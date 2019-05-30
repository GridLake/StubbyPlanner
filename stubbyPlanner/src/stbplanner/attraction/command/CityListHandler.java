package stbplanner.attraction.command;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import stbplanner.attraction.model.CityDTO;
import stbplanner.attraction.model.CountryDTO;
import stbplanner.attraction.service.CityListService;
import stbplanner.general.command.CommandHandler;


public class CityListHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String country_id = request.getParameter("country");
		
		CityListService cityListService = new CityListService();
		
		Map<String, ArrayList<CityDTO>> cityMap = cityListService.getCityMap(country_id);
		CountryDTO country = cityListService.getCountry(country_id);
		
		request.setAttribute("country", country );
		request.setAttribute("cityMap", cityMap);
		
		return "/attr/index_citylist";
	}

}
