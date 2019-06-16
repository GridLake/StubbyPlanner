package stbplanner.planner.model;

public class PlannerDetailDto {
	/*
	city_id:3:기차:O:X:X:X
	city_id
	:nights
	:trstype
	:is_night_move:
	:routelist[i].schdlist[j].tdayofcity
	:routelist[i].schdlist[j].stime
	:routelist[i].schdlist[j].duration
	*/
	private int trip_id;
	
	public int getTrip_id() {
		return trip_id;
	}
	public void setTrip_id(int trip_id) {
		this.trip_id = trip_id;
	}
	
	private int city_id;
	private int nights;
	private String trstype;
	private String is_night_move;
	
	private String schd_id;
	private int rt_id;
	private int city_day;
	private String s_title;
	private String s_content;
	private String s_time;
	private String bucket_id;
	private String s_adrs;
	
	private int country_id;
	private String country_name;
	private String rt_startdate;
	private String rt_enddate;
	
	private String member_id;
	private String startdate;
	
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public int getCountry_id() {
		return country_id;
	}
	public void setCountry_id(int country_id) {
		this.country_id = country_id;
	}
	public String getCountry_name() {
		return country_name;
	}
	public void setCountry_name(String country_name) {
		this.country_name = country_name;
	}
	public String getRt_startdate() {
		return rt_startdate;
	}
	public void setRt_startdate(String rt_startdate) {
		this.rt_startdate = rt_startdate;
	}
	public String getRt_enddate() {
		return rt_enddate;
	}
	public void setRt_enddate(String rt_enddate) {
		this.rt_enddate = rt_enddate;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getCity_id() {
		return city_id;
	}
	public void setCity_id(int city_id) {
		this.city_id = city_id;
	}
	public int getNights() {
		return nights;
	}
	public void setNights(int nights) {
		this.nights = nights;
	}
	public String getTrstype() {
		return trstype;
	}
	public void setTrstype(String trstype) {
		this.trstype = trstype;
	}
	public String getIs_night_move() {
		return is_night_move;
	}
	public void setIs_night_move(String is_night_move) {
		this.is_night_move = is_night_move;
	}
	public String getSchd_id() {
		return schd_id;
	}
	public void setSchd_id(String schd_id) {
		this.schd_id = schd_id;
	}
	public int getRt_id() {
		return rt_id;
	}
	public void setRt_id(int rt_id) {
		this.rt_id = rt_id;
	}
	public int getCity_day() {
		return city_day;
	}
	public void setCity_day(int city_day) {
		this.city_day = city_day;
	}
	public String getS_title() {
		return s_title;
	}
	public void setS_title(String s_title) {
		this.s_title = s_title;
	}
	public String getS_content() {
		return s_content;
	}
	public void setS_content(String s_content) {
		this.s_content = s_content;
	}
	public String getS_time() {
		return s_time;
	}
	public void setS_time(String s_time) {
		this.s_time = s_time;
	}
	public String getBucket_id() {
		return bucket_id;
	}
	public void setBucket_id(String bucket_id) {
		this.bucket_id = bucket_id;
	}
	public String getS_adrs() {
		return s_adrs;
	}
	public void setS_adrs(String s_adrs) {
		this.s_adrs = s_adrs;
	}
	
	
	

}
