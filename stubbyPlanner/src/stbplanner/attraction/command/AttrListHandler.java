package stbplanner.attraction.command;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import stbplanner.attraction.model.AttrDTO;
import stbplanner.attraction.model.BucketCityDTO;
import stbplanner.attraction.model.CityDTO;
import stbplanner.attraction.model.CountryDTO;
import stbplanner.attraction.service.AttrListService;
import stbplanner.general.command.CommandHandler;


public class AttrListHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String city_id = request.getParameter("city");
		
		AttrListService attrListService = new AttrListService();
		
		Map<String, ArrayList<AttrDTO>> AttrMap = attrListService.getAttrMap(city_id);
		
		//bucketcity_img 테이블 추가 해야할듯
		BucketCityDTO bucketcity = attrListService.getBucketCity(city_id);
		
		request.setAttribute("bucketcity", bucketcity );
		request.setAttribute("AttrMap", AttrMap);
		
		return  "/attr/index_majorcity" ;
	}

}
