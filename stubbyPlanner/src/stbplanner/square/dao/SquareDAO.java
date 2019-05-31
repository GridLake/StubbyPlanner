package stbplanner.square.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.util.JdbcUtil;
import stbplanner.square.command.BoardsDTO;
import stbplanner.square.command.PartyDTO;

public class SquareDAO {
	
	public List<BoardsDTO> boardSelect(Connection conn) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BoardsDTO dto = null;
		try {
			pstmt = conn.prepareStatement("select * from tbl_boards");
			rs = pstmt.executeQuery();
			List<BoardsDTO> list = new ArrayList<>();
			
			while(rs.next()) {
				dto = new BoardsDTO();
					
					dto.setPost_seq(rs.getInt("post_seq"));
					dto.setBoard_code(rs.getInt("board_code"));
					dto.setMember_id(rs.getString("member_id"));
					dto.setPost_subject(rs.getString("post_subject"));
					dto.setPost_content(rs.getString("post_content"));
					dto.setPost_ref(rs.getInt("post_ref"));
					dto.setPost_step(rs.getInt("post_step"));
					dto.setPost_depth(rs.getInt("post_depth"));
					dto.setPost_regdate(rs.getDate("post_regdate"));
					dto.setPost_hits(rs.getInt("post_hits"));
					dto.setPost_like(rs.getInt("post_like"));
				list.add(dto);
			}
			return list;
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	
	public List<PartyDTO> partySelect(Connection conn) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		PartyDTO dto = null;
		try {
			pstmt = conn.prepareStatement("select * from tbl_party");
			rs = pstmt.executeQuery();
			List<PartyDTO> list = new ArrayList<>();
			
			while(rs.next()) {
				dto = new PartyDTO();
				
				dto.setParty_seqno(rs.getInt("party_seqno"));
				dto.setMember_id(rs.getString("member_id"));
				dto.setParty_content(rs.getString("party_content"));
				dto.setParty_like(rs.getInt("party_like"));

				list.add(dto);
			}
			return list;
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
}