package stbplanner.guide.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.SystemUtils;
import org.apache.tomcat.dbcp.dbcp2.cpdsadapter.PStmtKeyCPDS;

import com.util.JdbcUtil;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import stbplanner.guide.model.GuideDTO;
import stbplanner.guide.model.GuideDetailDTO;
import stbplanner.guide.model.TourtypeDTO;

public class GuideDAO {
	private static GuideDAO dao = null;
	public GuideDAO() {}
	public static GuideDAO getInstance() {
		if(dao == null) {
			dao = new GuideDAO();
		}
		return dao;
	}


	
	public Map<String, Object> selectDetail(Connection conn, GuideDetailDTO dto) {
		Map<String, Object> detail = new LinkedHashMap<>();
	
		List<GuideDetailDTO> mainInfo = getInfo(conn, dto);
		List<GuideDetailDTO> mainImg = getImg(conn, dto);
		List<GuideDetailDTO> priceDetail = getPrice(conn, dto);
		Map<String, Object> intro = getIntro(conn, dto);
		List<GuideDetailDTO> notice = getNotice(conn, dto);
		List<GuideDetailDTO> getReview = getReview(conn, dto);
		List<GuideDetailDTO> moleList = getmoleList(conn, dto);

		detail.put("mainInfo", mainInfo);
		detail.put("mainImg", mainImg);
		detail.put("priceDetail", priceDetail);
		detail.put("intro", intro);
		detail.put("notice", notice);
		detail.put("getReview", getReview);
		detail.put("moleList", moleList);
		return detail;
	}
	
	
	
	
	private List<GuideDetailDTO> getImg(Connection conn, GuideDetailDTO dto) {
		List<GuideDetailDTO> getMainImg = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = " select * from tbl_guide_photo where guide_seq = ? and photo_group = '메인사진' ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getGuide_seq());
			
			rs = pstmt.executeQuery();
			
			
			while (rs.next()) {
				dto = new GuideDetailDTO();
				dto.setGuide_path(rs.getString("guide_path"));
				dto.setGuide_pt_seq(rs.getInt("guide_pt_seq"));
				getMainImg.add(dto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		
		
		return getMainImg;
	}
	
	
	
	// 같은회사 다른 상품
	private List<GuideDetailDTO> getmoleList(Connection conn, GuideDetailDTO dto) {
		List<GuideDetailDTO> getmoleList = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		PreparedStatement pstmt1 = null;
		ResultSet rs1 = null;


		try {

			String sql = " select company from tbl_guide_maket where guide_seq = ? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getGuide_seq());

			rs = pstmt.executeQuery();
			String company = null;
			while (rs.next()) {
				company = rs.getString("company");
			}
			System.out.println(company);
			
		/*	JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);*/
			
			StringBuffer sql1 = new StringBuffer(" select g.imgurl ,g.guide_seq, g.company, g.hours, g.title, g.price ");
			sql1.append(" , round(avg((v.prog_score + v.prop_score + v.kind_score)/3),1) as avg ");
			sql1.append(" , count(r.reserve_seq) as cnt  ");
			sql1.append(" from tbl_guide_maket g left outer join tbl_reserve r on g.guide_seq = r.guide_seq ");
			sql1.append(" left outer join tbl_guide_review v on r.reserve_seq = v.reserve_seq ");
			sql1.append(" GROUP BY g.company, g.hours, g.title,  g.price, g.guide_seq, g.imgurl ");
			sql1.append(" HAVING g.company = ? and g.guide_seq not in ? ");
			
			pstmt1 = conn.prepareStatement(sql1.toString());
			pstmt1.setString(1, company);
			pstmt1.setInt(2, dto.getGuide_seq());
			rs1 = pstmt1.executeQuery();
			
			while (rs1.next()) {
				dto = new GuideDetailDTO();
				dto.setGuide_seq(rs1.getInt("guide_seq"));
				dto.setGuide_path(rs1.getString("imgurl"));
				dto.setTitle(rs1.getString("title"));
				dto.setCompany(rs1.getString("company"));
				dto.setPrice(rs1.getInt("price"));
				dto.setHours(rs1.getString("hours"));
				dto.setR_cnt(rs1.getInt("cnt"));
				dto.setAvg(rs1.getDouble("avg"));
				System.out.println(rs1.getString("title"));
				getmoleList.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			
			JdbcUtil.close(rs1);
			JdbcUtil.close(pstmt1);
		}

		return getmoleList;
	}

	
	//이용후기
	private List<GuideDetailDTO> getReview(Connection conn, GuideDetailDTO dto) {
		List<GuideDetailDTO> getReview = new ArrayList<>();
		PreparedStatement pstmt = null;
		PreparedStatement pstmt1 = null;
		ResultSet rs = null;
		ResultSet rs1 = null;
		
		try {
			
			String avg = "select round(avg(prog_score),1) as prog_avg, round(avg(prop_score),1) as prop_avg, round(avg(kind_score),1) as kind_avg " + 
					" from tbl_guide_review v join tbl_reserve r on v.reserve_seq = r.reserve_seq " + 
					" where r.guide_seq = ? ";
			
			pstmt1 = conn.prepareStatement(avg);
			pstmt1.setInt(1, dto.getGuide_seq());
			
			rs1 = pstmt1.executeQuery();
			
			while (rs1.next()) {
				dto.setProg_avg(rs1.getDouble("prog_avg"));
				dto.setProp_avg(rs1.getDouble("prop_avg"));
				dto.setKind_avg(rs1.getDouble("kind_avg"));
				System.out.println(dto.getKind_avg());
				getReview.add(dto);
			}
			
			System.out.println("avg"+pstmt1);
			
			String sql = "select v.name, v.type, v.prog_score ,v.prop_score, v.kind_score, v.good, v.not_good " + 
					" from tbl_guide_review v join tbl_reserve r on v.reserve_seq = r.reserve_seq " + 
					"where r.guide_seq = ?";
			
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getGuide_seq());
			
			rs = pstmt.executeQuery();
			
			System.out.println("review" + pstmt);
			
			while (rs.next()) {
				dto = new GuideDetailDTO();
				dto.setName(rs.getString("name"));
				dto.setType(rs.getString("type"));
				dto.setProg_score(rs.getInt("prog_score"));
				dto.setProp_score(rs.getInt("prop_score"));
				dto.setKind_score(rs.getInt("kind_score"));
				dto.setAvg((rs.getInt("prog_score")+rs.getInt("prop_score")+rs.getInt("kind_score"))/3.0);
				dto.setTot((int) Math.round((dto.getAvg()/5)*100));
				dto.setGood(rs.getString("good"));
				dto.setNot_good(rs.getString("not_good"));
				getReview.add(dto);
			}
			/*for (GuideDetailDTO dtoz : getReview) {
				System.out.println(dtoz.getProg_avg());
				System.out.println(dtoz.getName());
			}*/
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs1);
			JdbcUtil.close(pstmt1);
		}
		
		
		
		return getReview;
	}
	
	
	//유의사항
	private List<GuideDetailDTO> getNotice(Connection conn, GuideDetailDTO dto) {
		List<GuideDetailDTO> notice = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "select * from tbl_notice where guide_seq = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getGuide_seq());
			
			rs = pstmt.executeQuery();
			
			System.out.println("notice" + pstmt);
			
			while (rs.next()) {
				dto = new GuideDetailDTO();
				dto.setNote(rs.getString("note").replace("\n", "<br>"));
				dto.setInclusion(rs.getString("inclusion").replace("\n", "<br>"));
				dto.setExclusion(rs.getString("exclusion").replace("\n", "<br>"));
				dto.setRefund(rs.getString("refund").replace("\n", "<br>"));
				notice.add(dto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		
		
		return notice;
	}
	
	
	//상품소개
	private Map<String, Object> getIntro(Connection conn, GuideDetailDTO dto) {
		Map<String, Object> getIntro = new LinkedHashMap<>();
		List<GuideDetailDTO> intro = new ArrayList<>();	
		List<GuideDetailDTO> img = new ArrayList<>();			
		
		PreparedStatement pstmt = null;
		PreparedStatement pstmt1 = null;
		ResultSet rs = null;
		ResultSet rs1 = null;
		
		try {
			int guide_seq = dto.getGuide_seq();
			pstmt1 = conn.prepareStatement(" select * from tbl_guide_photo where guide_seq = ? and photo_group = '상품소개' ");
			
			pstmt1.setInt(1, guide_seq);
			
			rs1 = pstmt1.executeQuery();
			
			while(rs1.next()) {
				dto = new GuideDetailDTO();
				dto.setGuide_path(rs1.getString("guide_path"));
				dto.setGuide_pt_seq(rs1.getInt("guide_pt_seq"));
				img.add(dto);
			}
			
			
			String sql = "select c.mapurl ,c.mapimg ,c.product_introduction, c.meeting_place, c.course, m.stime " + 
					" from tbl_gd_cont c join tbl_guide_maket m on c.guide_seq = m.guide_seq " + 
					" where c.guide_seq = ? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, guide_seq);
			
			System.out.println("info" + pstmt);
			
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				dto = new GuideDetailDTO();
				dto.setMapImg(rs.getString("mapimg"));
				dto.setMapUrl(rs.getString("mapurl"));
				dto.setIntroduction(rs.getString("product_introduction").replace("\n", "<br>"));
				dto.setPlace(rs.getString("meeting_place").replace("\n", "<br>"));
				dto.setCourse(rs.getString("course").replace("\n", "<br>"));
				dto.setStime(rs.getString("stime"));
				intro.add(dto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs1);
			JdbcUtil.close(pstmt1);
		}
		
		getIntro.put("intro", intro);
		getIntro.put("img", img);
		
		return getIntro;
	}
	
	
	//투어 가격표
	private List<GuideDetailDTO> getPrice(Connection conn, GuideDetailDTO dto) {
		List<GuideDetailDTO> priceDetail = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "select division, price from tbl_price_list where guide_seq = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getGuide_seq());
			
			rs = pstmt.executeQuery();
			
			System.out.println("price" + pstmt);
			
			while (rs.next()) {
				dto = new GuideDetailDTO();
				dto.setDivision(rs.getString("division"));
				dto.setPrice(rs.getInt("price"));
				priceDetail.add(dto);
			}
			
		
		
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		
		return priceDetail;
	}
	
	
	
	
	
	//mainInfo
	private List<GuideDetailDTO> getInfo(Connection conn, GuideDetailDTO dto) {
		
		List<GuideDetailDTO> mainInfo = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
		StringBuffer sql = new StringBuffer("select m.pt_email, m.guide_seq, m.title, m.company, m.price, m.price_ealybird, m.activity, m.hours, m.stime, c.keyword, m.language, m.persons");
		sql.append(" ,count(r.reserve_seq) as r_cnt ");		
		sql.append(" ,round(avg((v.prog_score + v.prop_score + v.kind_score)/ 3), 1) as avg ");
		sql.append(" from tbl_guide_maket m join tbl_gd_cont c on m.guide_seq = c.guide_seq ");
		sql.append(" join tbl_reserve r on m.guide_seq = r.guide_seq ");
		sql.append(" join tbl_guide_review v on r.reserve_seq = v.reserve_seq ");
		sql.append(" group by m.pt_email, m.guide_seq, m.title, m.price, m.price_ealybird, m.activity, m.hours, m.stime, c.keyword, m.language, m.company,  m.persons ");
		sql.append(" having m.guide_seq = ? ");
		
		
		pstmt = conn.prepareStatement(sql.toString());
		pstmt.setInt(1, dto.getGuide_seq());
		System.out.println("info" + pstmt);
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			dto = new GuideDetailDTO();
			dto.setPt_email(rs.getString("pt_email"));
			dto.setGuide_seq(rs.getInt("guide_seq"));
			dto.setTitle(rs.getString("title"));
			dto.setCompany(rs.getString("company"));
			dto.setPrice(rs.getInt("price"));
			dto.setPrice_ealybird(rs.getInt("price_ealybird"));
			dto.setActivity(rs.getString("activity"));
			dto.setHours(rs.getString("hours"));
			dto.setStime(rs.getString("stime"));
			dto.setKeyword(rs.getString("keyword"));
			dto.setLanguage(rs.getString("language"));
			dto.setR_cnt(rs.getInt("r_cnt"));
			dto.setAvg(rs.getDouble("avg"));
			
			System.out.println("title:" + dto.getTitle());

			dto.setTot((int) Math.round((dto.getAvg()/5)*100));
			dto.setPersons(rs.getString("persons"));
			
			mainInfo.add(dto);
		}
		sql.delete(0, sql.toString().length());
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return mainInfo;
	}
	
	
	public List<TourtypeDTO> selectTourType(Connection conn, TourtypeDTO dto) {
		List<TourtypeDTO> tourType = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = " select * from Tbl_Tourtype a join Tbl_Attr b on A.Attr_Id = B.Attr_Id where a.city_id = ? ";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getCity_id());
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				dto = new TourtypeDTO();
				dto.setAttr_name(rs.getString("attr_name"));
				dto.setTourtype_id(rs.getInt("tourtype_id"));
				dto.setAttr_id(rs.getInt("attr_id"));
				dto.setCity_id(rs.getInt("city_id"));
				dto.setImg(rs.getString("imgurl"));
				tourType.add(dto);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		
		
		return tourType;
	}
	
	
	public Map<String, Object> selectCityGuide(Connection conn, GuideDetailDTO dto) {
		Map<String, Object> getCityGuide = new LinkedHashMap<>();
		List<GuideDetailDTO> superealybird = getEalybird(conn, dto);
		
		getCityGuide.put("superealybird", superealybird);
		
		return getCityGuide;
	}
	
	private List<GuideDetailDTO> getEalybird(Connection conn, GuideDetailDTO dto) {
		
		List<GuideDetailDTO> superealybird = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			StringBuffer sql = new StringBuffer(" select rownum, a.* from( ");
			sql.append(" select g.out_link ,g.imgurl, g.list, g.guide_seq, g.coupon_txt, g.is_lowest_price, g.price_ealybird, g.stime, g.company, g.title, g.price, g.hours, w.member_id ");
			sql.append(", round(avg((v.prog_score + v.prop_score + v.kind_score)/3),1)  as avg");
			sql.append(", (g.price_ealybird/g.price) as dis");
			sql.append(" from tbl_guide_maket g left outer join tbl_reserve r on g.guide_seq = r.guide_seq "); // 가이드상품, 예약 조인
			sql.append(" 						left outer join tbl_guide_review v on r.reserve_seq = v.reserve_seq "); // 리뷰 조인
			sql.append("                        left outer join tbl_wishlist w on g.guide_seq = w.guide_seq ");
			sql.append(" where g.city_id = ? ");
			sql.append(" group by g.out_link ,g.imgurl, g.list, g.guide_seq, g.title, g.price, g.hours, g.company, g.coupon_txt, g.is_lowest_price, g.stime, g.price_ealybird, w.member_id ");
			sql.append(" order by dis");
			sql.append(" )a where rownum between 1 and 15 ");
		
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, dto.getCity_id());
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				dto = new GuideDetailDTO();
				dto.setGuide_seq(rs.getInt("guide_seq"));
				dto.setCompany(rs.getString("company"));
				dto.setHours(rs.getString("hours"));
				dto.setTitle(rs.getString("title"));
				dto.setPrice(rs.getInt("price"));
				dto.setCoupon_txt(rs.getString("coupon_txt"));
				dto.setPrice_ealybird(rs.getInt("price_ealybird"));
				dto.setMapImg(rs.getString("imgurl"));
				dto.setAvg(rs.getDouble("avg"));
				superealybird.add(dto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		
		return superealybird;
	}

	
	
	
	
}
