package stbplanner.guide.model;

public class GuideDetailDTO {
	
	//main_info
	private int city_id;
	private int guide_seq;
	private int price;
	private int price_ealybird;
	private int tot;
	private String title;
	private String activity;
	private String hours;
	private String stime;
	private String keyword;
	private String language;
	private String company;
	private int r_cnt;
	private double avg;
	private String persons;
	private String pt_email;
	private String coupon_txt;
	private String id;
	
	
	//사진
	private String guide_path;
	private int guide_pt_seq;
	
	
	//투어가격표
	private String division;
	
	//상품소개
	private String introduction;
	private String place;
	private String course;
	private String mapUrl;
	private String mapImg;
	
	//유의사항
	private String note;
	private String inclusion;
	private String exclusion;
	private String refund;
	
	//리뷰
	private String name;
	private String type;
	private int prog_score;
	private int prop_score;
	private int kind_score;
	private String good;
	private String not_good;
	private double prog_avg;
	private double prop_avg;
	private double kind_avg;
	
	
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCoupon_txt() {
		return coupon_txt;
	}
	public void setCoupon_txt(String coupon_txt) {
		this.coupon_txt = coupon_txt;
	}
	public int getCity_id() {
		return city_id;
	}
	public void setCity_id(int city_id) {
		this.city_id = city_id;
	}
	public String getPt_email() {
		return pt_email;
	}
	public void setPt_email(String pt_email) {
		this.pt_email = pt_email;
	}
	public String getMapUrl() {
		return mapUrl;
	}
	public void setMapUrl(String mapUrl) {
		this.mapUrl = mapUrl;
	}
	public String getMapImg() {
		return mapImg;
	}
	public void setMapImg(String mapImg) {
		this.mapImg = mapImg;
	}
	public String getGuide_path() {
		return guide_path;
	}
	public void setGuide_path(String guide_path) {
		this.guide_path = guide_path;
	}
	public int getGuide_pt_seq() {
		return guide_pt_seq;
	}
	public void setGuide_pt_seq(int guide_pt_seq) {
		this.guide_pt_seq = guide_pt_seq;
	}
	public int getTot() {
		return tot;
	}
	public void setTot(int tot) {
		this.tot = tot;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getProg_score() {
		return prog_score;
	}
	public void setProg_score(int prog_score) {
		this.prog_score = prog_score;
	}
	public int getProp_score() {
		return prop_score;
	}
	public void setProp_score(int prop_score) {
		this.prop_score = prop_score;
	}
	public int getKind_score() {
		return kind_score;
	}
	public void setKind_score(int kind_score) {
		this.kind_score = kind_score;
	}
	public String getGood() {
		return good;
	}
	public void setGood(String good) {
		this.good = good;
	}
	public String getNot_good() {
		return not_good;
	}
	public void setNot_good(String not_good) {
		this.not_good = not_good;
	}
	public double getProg_avg() {
		return prog_avg;
	}
	public void setProg_avg(double prog_avg) {
		this.prog_avg = prog_avg;
	}
	public double getProp_avg() {
		return prop_avg;
	}
	public void setProp_avg(double prop_avg) {
		this.prop_avg = prop_avg;
	}
	public double getKind_avg() {
		return kind_avg;
	}
	public void setKind_avg(double kind_avg) {
		this.kind_avg = kind_avg;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public String getInclusion() {
		return inclusion;
	}
	public void setInclusion(String inclusion) {
		this.inclusion = inclusion;
	}
	public String getExclusion() {
		return exclusion;
	}
	public void setExclusion(String exclusion) {
		this.exclusion = exclusion;
	}
	public String getRefund() {
		return refund;
	}
	public void setRefund(String refund) {
		this.refund = refund;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public String getDivision() {
		return division;
	}
	public void setDivision(String division) {
		this.division = division;
	}
	public String getPersons() {
		return persons;
	}
	public void setPersons(String persons) {
		this.persons = persons;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public GuideDetailDTO() {
		super();
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getGuide_seq() {
		return guide_seq;
	}
	public void setGuide_seq(int guide_seq) {
		this.guide_seq = guide_seq;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getPrice_ealybird() {
		return price_ealybird;
	}
	public void setPrice_ealybird(int price_ealybird) {
		this.price_ealybird = price_ealybird;
	}
	public String getActivity() {
		return activity;
	}
	public void setActivity(String activity) {
		this.activity = activity;
	}
	public String getHours() {
		return hours;
	}
	public void setHours(String hours) {
		this.hours = hours;
	}
	public String getStime() {
		return stime;
	}
	public void setStime(String stime) {
		this.stime = stime;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public int getR_cnt() {
		return r_cnt;
	}
	public void setR_cnt(int r_cnt) {
		this.r_cnt = r_cnt;
	}
	public double getAvg() {
		return avg;
	}
	public void setAvg(double avg) {
		this.avg = avg;
	}
	
	

}
