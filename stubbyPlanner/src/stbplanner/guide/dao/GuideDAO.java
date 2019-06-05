package stbplanner.guide.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.SystemUtils;
import org.apache.tomcat.dbcp.dbcp2.cpdsadapter.PStmtKeyCPDS;

import com.util.JdbcUtil;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import stbplanner.guide.model.GuideDTO;

public class GuideDAO {
	private static GuideDAO dao = null;
	public GuideDAO() {}
	public static GuideDAO getInstance() {
		if(dao == null) {
			dao = new GuideDAO();
		}
		return dao;
	}


	public List<GuideDTO> selectGuideList(Connection conn, GuideDTO dto) throws SQLException{
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		List<GuideDTO> list = new ArrayList<>();
		int city_id = dto.getCity_id();
		int attr_id = dto.getAttr_id();
		String category = dto.getCategory();
		String filter_item = dto.getFilter_item();
		System.out.println(city_id + "/" + filter_item);
		int i  = 1;
		try {
			
			StringBuffer sql = new StringBuffer("select COUNT(*)OVER() cnt, a.* from ( ");
			sql.append("select g.title, g.price, g.hours, NVL(count(r.reserve_seq), 0) as hot");
			sql.append(", avg(round((v.prog_score + v.prop_score + v.kind_score)/ 3,1)) as review"); // 평점
			sql.append(" from tbl_guide_maket g left outer join tbl_reserve r on g.guide_seq = r.guide_seq "); // 가이드상품, 예약 조인
			sql.append(" 						left outer join tbl_guide_review v on r.reserve_seq = v.reserve_seq "); // 리뷰 조인
			sql.append(" where g.city_id = ? "); // 도시 검색조건
			
			if (attr_id != 0) {
				System.out.println(attr_id);
				sql.append(" and attr_id = ? ");  // 투어 종류 검색
			}
			if (!category.equals("all")) {	
				System.out.println(category);
				sql.append(" and category = ?"); // 카테고리 토글
			}
			
			sql.append(" group by g.title, g.price, g.hours");
			sql.append(" order by ? desc ");
			//sql.append(" )a where a.no between ? and ?");
			sql.append(") a ");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(i++, city_id);
			if (attr_id != 0) {
				pstmt.setInt(i++, attr_id);
				
			}
			if (!category.equals("all")) {
				pstmt.setString(i++, category);
			}
			
			pstmt.setString(i++, filter_item);
			rs= pstmt.executeQuery();
			while (rs.next()) {
				dto = new GuideDTO();
					dto.setCnt(rs.getInt("cnt"));	//상품 전체 갯수
					dto.setTitle(rs.getString("title"));
					dto.setHours(rs.getString("hours"));
					dto.setPrice(rs.getString("price"));
					dto.setHot(rs.getInt("hot"));
					dto.setreview(rs.getDouble("review"));
					
			    list.add(dto);
			}
			sql.delete(0, sql.toString().length());//버퍼 비우기
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return list;
		
		
	}
/*

	public int selectCount(Connection conn) throws SQLException {
		GuideDTO dto = new GuideDTO();
		int city_id = dto.getCity_id();
		int attr_id = dto.getAttr_id();
		String category = dto.getCategory();
		int result = 0;
		try {
			StringBuffer sql = new StringBuffer("select count(*) from (select ");
			sql.append("g.title, g.price, count(r.reserve_seq) 예약자수,");
			sql.append(" avg(round((v.prog_score + v.prop_score + v.kind_score) 3,1)) avg "); // 평점
			sql.append(" from tbl_guide_maket g left outer join tbl_reserve r on g.guide_seq = r.guide_seq "); // 가이드상품, 예약 조인
			sql.append(" 						left outer join tbl_guide_review v on r.reserve_seq = v.reserve_seq "); // 리뷰 조인
			sql.append(" where g.city_id = ? "); // 도시 검색조건
			if (attr_id != 0) {
				sql.append(" and g.attr_id = ? ");  // 투어 종류 검색
			}
			if (!category.equals(null)) {				
				sql.append(" and g.category = ?"); // 카테고리 토글
			}
			sql.append(" ) ");
			System.out.println(sql.toString());
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, city_id);
			if (attr_id != 0) pstmt.setInt(2, attr_id);
			if (!category.equals("all")) pstmt.setString(3, category);
			
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getInt(1);
			}
			sql.delete(0, sql.toString().length());//버퍼 비우기

			return 0;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(stmt);
		}
	}*/


	
	
	
	
}
