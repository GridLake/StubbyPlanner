package stbplanner.square.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import stbplanner.square.command.BoardsDTO;
import stbplanner.square.command.GalleryDTO;
import stbplanner.square.command.PartyDTO;
import stbplanner.square.dao.SquareDAO;

public class SquareService {
	private static SquareService instance = new SquareService();

	public static SquareService getInstance() {
		return instance;
	}

	private SquareService() {
	}
	public List<BoardsDTO> boardSelect() {
		
		Connection conn = null;
		List<BoardsDTO> result = null ;
		try {
			conn = ConnectionProvider.getConnection();
			SquareDAO  dao = new SquareDAO();
			  result = dao.boardSelect(conn);
			 
		} catch (SQLException | NamingException e) {
			System.out.println("XXX : " +e.toString());
		} finally {
			JdbcUtil.close(conn);
		}
		return result;
	}
	
	public List<BoardsDTO> boardLikeSelect() {
		
		Connection conn = null;
		List<BoardsDTO> result = null ;
		try {
			conn = ConnectionProvider.getConnection();
			SquareDAO  dao = new SquareDAO();
			  result = dao.boardLikeSelect(conn);
			 
		} catch (SQLException | NamingException e) {
			System.out.println("XXX : " +e.toString());
		} finally {
			JdbcUtil.close(conn);
		}
		return result;
	}
	
	public List<PartyDTO> partySelect() {
		
		Connection conn = null;
		List<PartyDTO> result = null ;
		try {
			conn = ConnectionProvider.getConnection();
			SquareDAO  dao = new SquareDAO();
			result = dao.partySelect(conn);
			
		} catch (SQLException | NamingException e) {
			System.out.println("XXX : " +e.toString());
		} finally {
			JdbcUtil.close(conn);
		}
		return result;
	}
	
	public List<GalleryDTO> gallerySelect() {
		
		Connection conn = null;
		List<GalleryDTO> result = null ;
		try {
			conn = ConnectionProvider.getConnection();
			SquareDAO  dao = new SquareDAO();
			result = dao.gallerySelect(conn);
			
		} catch (SQLException | NamingException e) {
			System.out.println("XXX : " +e.toString());
		} finally {
			JdbcUtil.close(conn);
		}
		return result;
	}

	
}
