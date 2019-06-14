package stbplanner.square.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import stbplanner.general.command.CommandHandler;
import stbplanner.square.service.SquareService;

public class SquareIndexHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		 
		request.setAttribute("lnb_item", "square");
		// 게시글 
		SquareService service = SquareService.getInstance();
		List<BoardsDTO> boardList = service.boardSelect();
		request.setAttribute("boardList", boardList);
		// 인기 게시글
		List<BoardsDTO> boardLikeList = service.boardLikeSelect();
		request.setAttribute("boardLikeList", boardLikeList);
		// 최근 동행찾기 
		List<PartyDTO> partyList = service.partySelect();
		request.setAttribute("partyList", partyList);
		// 인기 갤러리 
		List<GalleryDTO> galleryList = service.gallerySelect();
		request.setAttribute("galleryList", galleryList);
		
		// 최근살펴본 여행
		// 인기있는 여행지
		
		return "/square/index";
	}

	
}
