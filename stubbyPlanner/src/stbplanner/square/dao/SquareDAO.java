package stbplanner.square.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.util.JdbcUtil;
import stbplanner.square.command.BoardsDTO;
import stbplanner.square.command.GalleryDTO;
import stbplanner.square.command.PartyDTO;

public class SquareDAO {
	
	public List<BoardsDTO> boardSelect(Connection conn) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BoardsDTO dto = null;
		try {
			pstmt = conn.prepareStatement("select * from tbl_boards order by post_seq desc");
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
	
	public List<BoardsDTO> boardLikeSelect(Connection conn) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BoardsDTO dto = null;
		try {
			pstmt = conn.prepareStatement("select * from (select post_seq,member_id,post_subject,post_regdate,post_hits,post_like, ROW_NUMBER() OVER (order by post_like desc) rank from tbl_boards) where rank between 1 and 5");
			rs = pstmt.executeQuery();
			List<BoardsDTO> list = new ArrayList<>();
			
			while(rs.next()) {
				dto = new BoardsDTO();
					
					dto.setPost_seq(rs.getInt("post_seq"));
					dto.setMember_id(rs.getString("member_id"));
					dto.setPost_subject(rs.getString("post_subject"));
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
			pstmt = conn.prepareStatement("select * from tbl_party p join tbl_member m on p.member_id = m.member_id where p.member_id = m.member_id order by party_seqno desc");
			rs = pstmt.executeQuery();
			List<PartyDTO> list = new ArrayList<>();
			
			while(rs.next()) {
				dto = new PartyDTO();
				
				dto.setParty_seqno(rs.getInt("party_seqno"));
				dto.setMember_id(rs.getString("member_id"));
				dto.setParty_content(rs.getString("party_content"));
				dto.setParty_like(rs.getInt("party_like"));
				dto.setProfile_pic(rs.getString("profile_pic"));

				list.add(dto);
			}
			return list;
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	
	public List<GalleryDTO> gallerySelect(Connection conn) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		GalleryDTO dto = null;
		try {
			pstmt = conn.prepareStatement("with a as(select gal_seq, min(gal_pic_seq) gal_pic_seq from tbl_gallery_pic group by gal_seq), b as(select distinct gal_seq ,min(gal_pic_path) gal_pic_path from tbl_gallery_pic group by gal_seq), c as(select*from tbl_gallery) select * from a,b,c where a.gal_seq=b.gal_seq and b.gal_seq=c.gal_seq order by c.post_like desc");
			rs = pstmt.executeQuery();
			List<GalleryDTO> list = new ArrayList<>();
			
			while(rs.next()) {
				dto = new GalleryDTO();
				
				dto.setGal_seq(rs.getInt("gal_seq"));
				dto.setMember_id(rs.getString("member_id"));
				dto.setGal_subject(rs.getString("gal_subject"));
				dto.setPost_like(rs.getInt("post_like"));
				dto.setPost_hits(rs.getInt("post_hits"));
				dto.setGal_pic_path(rs.getString("gal_pic_path"));

				list.add(dto);
			}
			return list;
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
}
