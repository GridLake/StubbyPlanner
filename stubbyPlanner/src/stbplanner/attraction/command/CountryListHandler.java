package stbplanner.attraction.command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import stbplanner.attraction.model.CountryDTO;
import stbplanner.attraction.service.CountryListService;
import stbplanner.general.command.CommandHandler;

public class CountryListHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		CountryListService countryListService = new CountryListService();
		
		ArrayList<CountryDTO> countryList = countryListService.getCountryList();
		
		request.setAttribute("list", countryList); 
		
		
		return "/attr/list";
	}

}
