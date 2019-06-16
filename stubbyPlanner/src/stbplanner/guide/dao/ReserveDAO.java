package stbplanner.guide.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import com.util.JdbcUtil;

import stbplanner.guide.model.ReserveDTO;

public class ReserveDAO {
	private static ReserveDAO dao = null;
	public ReserveDAO() {}
	public static ReserveDAO getInstance() {
		if(dao == null) {
			dao = new ReserveDAO();
		}
		return dao;
	}
	
	public List<ReserveDTO> select(Connection conn, ReserveDTO dto) {
		
		System.out.println("select");
		List<ReserveDTO> select = new ArrayList<>();
		PreparedStatement pstmt = null;
		PreparedStatement pstmt1 = null;
		ResultSet rs1 = null;
		ResultSet rs = null;
		
		
		try {
			
			pstmt1 = conn.prepareStatement("select * from tbl_price_list where price_seq = ? ");

			pstmt1.setInt(1, dto.getPrice_seq());
			
			rs1 = pstmt1.executeQuery();
			
			while (rs1.next()) {
				dto.setDivision(rs1.getString("division"));
				dto.setPrice(rs1.getString("price"));
				select.add(dto);
			}
			
			
			
			
			String sql = " select r.name, r.tel, r.kakao_id, r.email, r.price, r.reserve_seq, r.r_date, r.persons, g.company, g.title, p.pt_email as m_email, p.pt_tel as m_tel " + 
					"from tbl_reserve r join tbl_guide_maket g on r.guide_seq = g.guide_seq " + 
					"                    join tbl_partner p on g.pt_email = p.pt_email " + 
					" where r.reserve_seq = ? ";
			System.out.println(sql);
			pstmt = conn.prepareStatement(sql);
			int reserve_seq = dto.getReserve_seq();
			System.out.println(reserve_seq);
			pstmt.setInt(1, reserve_seq);
			
			rs = pstmt.executeQuery();
			while (rs.next()) {
				dto.setPrice_total(rs.getString("price"));
				System.out.println(rs.getString("price"));
				dto.setReserve_seq(rs.getInt("reserve_seq"));
				dto.setR_date(rs.getDate("r_date"));
				dto.setPolicy_id_cnts(rs.getInt("persons"));
				dto.setResv_name(rs.getString("name"));
				dto.setPhone(rs.getString("tel"));
				dto.setKakao(rs.getString("kakao_id"));
				dto.setEmail(rs.getString("email"));
				
				dto.setTitle(rs.getString("title"));
				dto.setCompany(rs.getString("company"));
				dto.setM_email(rs.getString("m_email"));
				dto.setTel(rs.getString("m_tel"));
				select.add(dto);
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		
		return select;
	}
	

}
