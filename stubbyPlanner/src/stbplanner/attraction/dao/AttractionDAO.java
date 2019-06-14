package stbplanner.attraction.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import stbplanner.attraction.model.AttrDTO;
import stbplanner.attraction.model.BucketCityDTO;
import stbplanner.attraction.model.CityDTO;
import stbplanner.attraction.model.CountryDTO;
import stbplanner.attraction.model.NSDetDTO;
import stbplanner.attraction.model.SelfBookDTO;

public class AttractionDAO {
	//fields

	//contructor

	// method

	public ArrayList<CountryDTO> selectCountry(Connection conn) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = " select a.country_id, a.country_name, B.Img_Url " + 
				" from Tbl_Country a join Tbl_Country_Img b on A.Country_Id = B.Country_Id ";

		pstmt = conn.prepareStatement(sql);

		rs = pstmt.executeQuery();

		ArrayList<CountryDTO>  countryList = new ArrayList<>();

		String[] majorList = {"프랑스", "이탈리아", "동유럽", "스페인", "영국", "독일","스위스", "포르투갈","네덜란드", "벨기에"};

		while (rs.next()) {
			CountryDTO dto = new CountryDTO();
			dto.setCountry_id(rs.getInt("country_id"));
			dto.setCountry_name(rs.getString("country_name"));
			dto.setImg_url(rs.getString("img_url"));
			dto.setUsercnt(userCnt(conn, 6, rs.getInt("country_id")));
			if (Arrays.asList(majorList).indexOf(rs.getString("country_name"))!=-1) { //majorCountry라면
				dto.setMajor(1);
			}

			countryList.add(dto);
		}


		return countryList;
	}


	public Map<Integer, Integer> userCnt(Connection conn, int month, int country_id) throws SQLException{
		Map<Integer, Integer> userCntMap =new HashMap<>();

		for (int i = month; i <=month+5; i++) { userCntMap.put(i, 0);}



		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "select month , count(*) user_cnt " + 
				"from( " + 
				"select A.Country_Name , extract (month from D.rt_enddate) month " + 
				"from tbl_country a join tbl_region b on A.Country_Id = B.Country_Id " + 
				"                    join tbl_city c on B.Region_Id = C.Region_Id " + 
				"                    join Tbl_Route d on C.City_Id  = D.SCity_Id  " + 
				"                    where A.Country_Id = ?  ) " + 
				" group by month " + 
				" having month between ? and ? ";


		
		

		pstmt = conn.prepareStatement(sql);

		pstmt.setInt(1, country_id);
		pstmt.setInt(2, month);
		pstmt.setInt(3, month+5);

		rs = pstmt.executeQuery();

		if (rs.next()) {
			do {
				// userCntMap에서 해당 month에 대응하는 value 에 user_cnt 값 넣기
				userCntMap.replace(rs.getInt("month"), rs.getInt("user_cnt"));
			} while (rs.next());	
		}

		return userCntMap;
	}


	public Map<String, ArrayList<CityDTO>> selectCity(Connection conn, String country_id) throws SQLException {
		//Map<지역명, ArrayList<CityDTO>>
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Map<String , ArrayList<CityDTO>> citymap = null;

		String sql = "select * from tbl_region where Country_Id = ?";

		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, country_id);

		rs = pstmt.executeQuery();



		if (rs.next()) {
			citymap = new LinkedHashMap<>(); // 순서유지
			do {
				citymap.put(rs.getString("region_name"), getCityList(conn, country_id, rs.getString("region_name")));

			} while (rs.next());
		}

		return citymap;
	}


	private ArrayList<CityDTO> getCityList(Connection conn, String country_id, String region_name) throws SQLException {
		ArrayList<CityDTO> citylist = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = 

				"select F.Bucketcity_Id,  E.City_Img, A.C_Favorite, A.City_Id, A.City_Name, A.City_Info   "
						+"			from tbl_city a join tbl_region b on A.Region_Id = B.Region_Id          "
						+"			                join Tbl_Country c on B.Country_Id = C.Country_Id       "
						+"			                join Tbl_Country_Img d on C.Country_Id = D.Country_Id   "
						+"			                join Tbl_City_Img e on A.City_Id = E.City_Id            "
						+"                        left outer join Tbl_Bucketcity f on A.City_Id = F.City_Id"
						+"			where C.Country_Id = ? and B.Region_Name = ?                  ";
		
		
		System.out.println(sql);
		
		

		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, country_id);
		pstmt.setString(2, region_name);

		rs = pstmt.executeQuery();

		if (rs.next()) {
			citylist = new ArrayList<>();
			do {
				CityDTO dto = new CityDTO();

				dto.setCity_id(rs.getInt("city_id"));
				dto.setCity_name(rs.getString("city_name"));
				dto.setCity_info(rs.getString("city_info"));
				dto.setC_favorite(rs.getInt("c_favorite"));
				dto.setCity_img(rs.getString("city_img"));

				dto.setBucketcity_id(rs.getInt("bucketcity_id"));

				citylist.add(dto);

			} while (rs.next());
		}


		return citylist;
	}


	public CountryDTO selectCountry(Connection conn, String country_id) throws SQLException {
		CountryDTO country = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = 

				" select * " + 
						" from Tbl_Country a join Tbl_Country_Img b on A.Country_Id = B.Country_Id " + 
						" where a.country_id = ?";

		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, country_id);

		rs = pstmt.executeQuery();

		if (rs.next()) {
			do {
				country = new CountryDTO();
				country.setCountry_id(rs.getInt("country_id"));
				country.setCountry_name(rs.getString("country_name"));
				country.setImg_url(rs.getString("img_url"));
				country.setImg_label(rs.getString("img_label"));

			} while (rs.next());


		}

		return country;
	}


	public Map<String, ArrayList<AttrDTO>> selectAttr(Connection conn, String city_id) throws SQLException {
		//Map<테마명, ArrayList<CityDTO>>
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Map<String , ArrayList<AttrDTO>> attrmap = null;


		String sql = "select * from tbl_theme where City_Id = ?";

		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, city_id);

		rs = pstmt.executeQuery();



		if (rs.next()) {
			attrmap = new LinkedHashMap<>(); // 순서유지
			do {
				attrmap.put(rs.getString("theme_name"), getAttrList(conn, city_id, rs.getString("theme_name")));

			} while (rs.next());
		}

		return attrmap;

	}


	private ArrayList<AttrDTO> getAttrList(Connection conn, String city_id, String theme_name) throws SQLException {
		ArrayList<AttrDTO> attrlist = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = 
				"	select A.Attr_Id ,C.Theme_Name , A.Attr_Name , B.A_Favorite, B.A_Title, B.A_Img  "
						+"	 from tbl_attr a join tbl_attr_info b on A.Attr_Id = B.Attr_Id "
						+"	                join Tbl_Theme c on A.Theme_Id = C.Theme_Id  "
						+"	where A.City_Id = ? and C.Theme_Name= ?  ";
		
		System.out.println(sql);

		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, city_id);
		pstmt.setString(2, theme_name);

		rs = pstmt.executeQuery();

		if (rs.next()) {
			attrlist = new ArrayList<>();
			do {
				AttrDTO dto = new AttrDTO();

				dto.setAttr_id(rs.getInt("attr_id"));
				dto.setAttr_name(rs.getString("attr_name"));
				dto.setTheme_name(rs.getString("theme_name"));
				dto.setA_favorite(rs.getInt("a_favorite"));
				dto.setA_title(rs.getString("a_title"));
				dto.setA_img(rs.getString("a_img"));


				attrlist.add(dto);

			} while (rs.next());
		}


		return attrlist;

	}


	public BucketCityDTO selectBucketCity(Connection conn, String city_id) throws SQLException {
		BucketCityDTO bucketcity = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = 

				"	select *  "
						+	"	from Tbl_Bucketcity_Img a join Tbl_Bucketcity b on A.Bucketcity_Id = B.Bucketcity_Id  "
						+	"	where B.City_Id = ?  ";

		
		//System.out.println(sql);
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, city_id);

		rs = pstmt.executeQuery();

		if (rs.next()) {

			do {
				bucketcity = new BucketCityDTO();

				bucketcity.setBucketcity_id(rs.getInt("bucketcity_id"));
				bucketcity.setCity_id(rs.getInt("city_id"));
				bucketcity.setImg_url(rs.getString("img_url"));
				bucketcity.setImg_label(rs.getString("img_label"));
				bucketcity.setBucketcity_name(rs.getString("bucketcity_name"));

			} while (rs.next());		
		}

		return bucketcity;
	}


	public Map<String, Object> selectSection(Connection conn, String attr) throws SQLException {

		Map<String, Object> sectionMap = new LinkedHashMap<>();


		Map<String,String> attrInfoMap = getinfo(conn, attr);
		ArrayList<String> photoList = getphotos(conn, attr);
		Map<String, ArrayList<NSDetDTO>>   NearSightMap = getnearsights(conn,attr);
		SelfBookDTO selfbook = getselfbook(conn, attr);
		//ArrayList<AttrDTO> attrList= getattrs(conn, attr); // or Map
		HashMap<String, Object> expsmap = getexps(conn,attr); //{title : "", list : ArrayList<> }
		//Map <String, ArrayList<???DTO>> = getprds(conn, attr);

		sectionMap.put("attrInfoMap", attrInfoMap);
		sectionMap.put("photoList", photoList);
		sectionMap.put("NearSightMap", NearSightMap);
		sectionMap.put("selfbook", selfbook);
		sectionMap.put("expsmap", expsmap);



		return sectionMap;
	}


	private HashMap<String, Object> getexps(Connection conn, String attr) throws SQLException {

		HashMap<String, Object> expsmap = null;

		PreparedStatement pstmt = null;
		ResultSet rs = null;		

		String sql = " select *  from tbl_attr a " ;
		sql += (attr.length() < 8 )? " join Tbl_Theme b on a.theme_id = b.theme_id join tbl_city c on b.city_id = c.city_id ":" join Tbl_Region b on A.Region_Id = b.region_id join Tbl_Country c on B.Country_Id = c.country_id "; 
		
		sql +=" where a.attr_id = ? ";

		System.out.println(sql);
		System.out.println(attr);
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, attr);

		rs = pstmt.executeQuery();

		if (rs.next()) {
			
			expsmap = new HashMap<>();
			
			if (attr.length() < 8 ) {
				expsmap.put("title",rs.getString("theme_name"));
				expsmap.put("list", getAttrList(conn, String.valueOf(rs.getInt("city_id")) , rs.getString("theme_name")));
				expsmap.put("prev_name",rs.getString("city_name"));
				expsmap.put("prev_id",rs.getInt("city_id"));

			}else {
				expsmap.put("title",rs.getString("region_name"));
				expsmap.put("list", getCityList(conn, String.valueOf(rs.getInt("country_id")), rs.getString("region_name")) );
				expsmap.put("prev_name",rs.getString("country_name"));
				expsmap.put("prev_id",rs.getInt("country_id"));
			}
		}
		return expsmap;
	}





	private SelfBookDTO getselfbook(Connection conn, String attr) throws SQLException {

		SelfBookDTO selfbook = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "select * from Tbl_Selfbook where attr_id = ?";

		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, attr);

		rs = pstmt.executeQuery();

		if (rs.next()) {

			do {
				selfbook = new SelfBookDTO();
				selfbook.setSb_id(rs.getInt("sb_id"));
				selfbook.setSb_title(rs.getString("sb_title"));
				selfbook.setSb_subtitle(rs.getString("sub_title"));
				selfbook.setSb_desc(String.valueOf(rs.getClob("sb_desc")));
				selfbook.setSb_amount(String.valueOf((rs.getInt("sb_amount"))));
				selfbook.setSb_img(rs.getString("sb_img"));

			} while (rs.next());		
		}

		return selfbook;

	}


	private Map<String, ArrayList<NSDetDTO>> getnearsights(Connection conn, String attr) throws SQLException {

		Map<String, ArrayList<NSDetDTO>> NearSightMap = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = " select * from Tbl_Nearsight where Attr_Id = ? ";


		pstmt = conn.prepareStatement(sql);

		pstmt.setString(1, attr);

		rs = pstmt.executeQuery();

		if (rs.next()) {
			NearSightMap = new LinkedHashMap<>();
			do {

				NearSightMap.put(rs.getString("n_subject"), getNSDetList(conn, attr, rs.getString("n_subject")));

			} while (rs.next());
		}



		return NearSightMap;
	}


	private ArrayList<NSDetDTO> getNSDetList(Connection conn, String attr, String n_subject) throws SQLException {

		ArrayList<NSDetDTO> NSDetList = null; 
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = 

				"	select * " 
						+"	from Tbl_Nearsightdet a join Tbl_Nearsight b on A.Nearsight_Id = B.Nearsight_Id "
						+"	where b.attr_id = ? and B.N_Subject = ?  ";

		
		
		pstmt = conn.prepareStatement(sql);

		pstmt.setString(1, attr);
		pstmt.setString(2, n_subject);

		rs = pstmt.executeQuery();

		if (rs.next()) {
			NSDetList = new ArrayList<>();
			do {

				NSDetDTO dto = new NSDetDTO();

				dto.setN_title(rs.getString("n_title"));
				dto.setN_info(rs.getString("n_info"));
				dto.setN_img(rs.getString("n_img"));
				dto.setN_tag(rs.getString("n_tag"));

				
				NSDetList.add(dto);

			} while (rs.next());
		}


		return NSDetList;
	}


	private ArrayList<String> getphotos(Connection conn, String attr) throws SQLException {

		ArrayList<String> photoList = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = 	"	select * from Tbl_Mainphotos where  Attr_Id = ? " ;

		pstmt = conn.prepareStatement(sql);

		pstmt.setString(1, attr);

		rs = pstmt.executeQuery();

		if (rs.next()) {
			photoList = new ArrayList<>();
			do {		
				photoList.add(rs.getString("main_img"));
			} while (rs.next());
		}

		return photoList;

	}


	private Map<String, String> getinfo(Connection conn, String attr) throws SQLException {

		Map<String, String> attrInfoMap = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = 

				"		select B.Attr_Name, A.A_Title, A.A_Content, A.A_Favorite, A.A_Img, B.Theme_Id, B.Region_Id "
						+"		from Tbl_Attr_Info a join Tbl_Attr b on A.Attr_Id = B.Attr_Id "
						+"		where a.Attr_Id = ? ";

		pstmt = conn.prepareStatement(sql);

		pstmt.setString(1, attr);

		rs = pstmt.executeQuery();

		if (rs.next()) {
			attrInfoMap = new HashMap<>();
			do {

				attrInfoMap.put("attr_name", rs.getString("attr_name"));
				attrInfoMap.put("a_title", rs.getString("a_title")) ;
				attrInfoMap.put("a_content", rs.getString("a_content")) ;
				attrInfoMap.put("a_favorite",Integer.toString(rs.getInt("A_Favorite")) ) ;
				attrInfoMap.put("a_img",rs.getString("A_Img") ) ;

			} while (rs.next());
		}



		return attrInfoMap;
	}






























}
