package stbplanner.planner.model;

public class AddResvInfoDTO {

	// 항공편
	private String airline;
	private String continent;
	private String country_name;
	private String city_name;
	private String dept_sairport;
	private String dept_sdate;
	private String dept_stime;
	private String dept_aairport;
	private String dept_edate;
	private String dept_atime;
	private String arr_sairport;
	private String arr_sdate;
	private String arr_stime;
	private String arr_eairport;
	private String arr_edate;
	private String arr_etime;
	private String ar_company;
	private String ar_url;
	private String ar_memo;
	// t=air&planserial=10286254&rs=&region=&startdate
	 
	// 교통편
	private int serial;
	private String startdate;
	private String tr_trans;
	private double tr_price;
	private String tr_deptCity;
	private String tr_deptTime;
	private String tr_arrCity;
	private String tr_arrTime;
	private String tr_company;
	private String tr_url;
	private String tr_memo;
	
	// 숙소
	private String a_type;
	private String a_name;
	private double a_price;
	private String a_reserver;
	private String a_checkout;
	private String a_room_type;
	private int a_room_cnt;
	private String a_room_loc;
	private String a_address;
	private String a_tel;
	private String a_url;
	private String a_memo;
	
	// 투어
	private int tour_id;
	private String t_type;
	private String t_name;
	private double t_price;
	private String t_date;
	private String t_reserver;
	private int t_people;
	private String t_loc;
	private String t_company;
	private String t_time;
	private String t_tel;
	private String t_url;
	
	
	// 공통
	private String t;
	private int rt_id;
	private int trip_id;
	private String rs;
	// private String region;
	// private String startdate;
	
	
	// 공통 gt/st
	public int getRt_id() {
		return rt_id;
	}
	public void setRt_id(int rt_id) {
		this.rt_id = rt_id;
	}
	public String getT() {
		return t;
	}
	public void setT(String t) {
		this.t = t;
	}
	public int getTrip_id() {
		return trip_id;
	}
	public void setTrip_id(int trip_id) {
		this.trip_id = trip_id;
	}
	public String getRs() {
		return rs;
	}
	public void setRs(String rs) {
		this.rs = rs;
	}
	
	
	
	// 교통편 gt/st
	public int getSerial() {
		return serial;
	}
	public void setSerial(int serial) {
		this.serial = serial;
	}
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getTr_trans() {
		return tr_trans;
	}
	public void setTr_trans(String tr_trans) {
		this.tr_trans = tr_trans;
	}
	public double getTr_price() {
		return tr_price;
	}
	public void setTr_price(double tr_price) {
		this.tr_price = tr_price;
	}
	public String getTr_deptCity() {
		return tr_deptCity;
	}
	public void setTr_deptCity(String tr_deptCity) {
		this.tr_deptCity = tr_deptCity;
	}
	public String getTr_deptTime() {
		return tr_deptTime;
	}
	public void setTr_deptTime(String tr_deptTime) {
		this.tr_deptTime = tr_deptTime;
	}
	public String getTr_arrCity() {
		return tr_arrCity;
	}
	public void setTr_arrCity(String tr_arrCity) {
		this.tr_arrCity = tr_arrCity;
	}
	public String getTr_arrTime() {
		return tr_arrTime;
	}
	public void setTr_arrTime(String tr_arrTime) {
		this.tr_arrTime = tr_arrTime;
	}
	public String getTr_company() {
		return tr_company;
	}
	public void setTr_company(String tr_company) {
		this.tr_company = tr_company;
	}
	public String getTr_url() {
		return tr_url;
	}
	public void setTr_url(String tr_url) {
		this.tr_url = tr_url;
	}
	public String getTr_memo() {
		return tr_memo;
	}
	public void setTr_memo(String tr_memo) {
		this.tr_memo = tr_memo;
	}
	
	
	
	// 투어 gt/st
	public int getTour_id() {
		return tour_id;
	}
	public void setTour_id(int tour_id) {
		this.tour_id = tour_id;
	}
	public String getT_type() {
		return t_type;
	}
	public void setT_type(String t_type) {
		this.t_type = t_type;
	}
	public String getT_name() {
		return t_name;
	}
	public void setT_name(String t_name) {
		this.t_name = t_name;
	}
	public double getT_price() {
		return t_price;
	}
	public void setT_price(double t_price) {
		this.t_price = t_price;
	}
	public String getT_date() {
		return t_date;
	}
	public void setT_date(String t_date) {
		this.t_date = t_date;
	}
	public String getT_reserver() {
		return t_reserver;
	}
	public void setT_reserver(String t_reserver) {
		this.t_reserver = t_reserver;
	}
	public int getT_people() {
		return t_people;
	}
	public void setT_people(int t_people) {
		this.t_people = t_people;
	}
	public String getT_loc() {
		return t_loc;
	}
	public void setT_loc(String t_loc) {
		this.t_loc = t_loc;
	}
	public String getT_company() {
		return t_company;
	}
	public void setT_company(String t_company) {
		this.t_company = t_company;
	}
	public String getT_time() {
		return t_time;
	}
	public void setT_time(String t_time) {
		this.t_time = t_time;
	}
	public String getT_tel() {
		return t_tel;
	}
	public void setT_tel(String t_tel) {
		this.t_tel = t_tel;
	}
	public String getT_url() {
		return t_url;
	}
	public void setT_url(String t_url) {
		this.t_url = t_url;
	}
	
	
	
	// 숙소 gt/st
	public String getA_type() {
		return a_type;
	}
	public void setA_type(String a_type) {
		this.a_type = a_type;
	}
	public String getA_name() {
		return a_name;
	}
	public void setA_name(String a_name) {
		this.a_name = a_name;
	}
	public double getA_price() {
		return a_price;
	}
	public void setA_price(double a_price) {
		this.a_price = a_price;
	}
	public String getA_reserver() {
		return a_reserver;
	}
	public void setA_reserver(String a_reserver) {
		this.a_reserver = a_reserver;
	}
	public String getA_checkout() {
		return a_checkout;
	}
	public void setA_checkout(String a_checkout) {
		this.a_checkout = a_checkout;
	}
	public String getA_room_type() {
		return a_room_type;
	}
	public void setA_room_type(String a_room_type) {
		this.a_room_type = a_room_type;
	}
	public int getA_room_cnt() {
		return a_room_cnt;
	}
	public void setA_room_cnt(int a_room_cnt) {
		this.a_room_cnt = a_room_cnt;
	}
	public String getA_room_loc() {
		return a_room_loc;
	}
	public void setA_room_loc(String a_room_loc) {
		this.a_room_loc = a_room_loc;
	}
	public String getA_address() {
		return a_address;
	}
	public void setA_address(String a_address) {
		this.a_address = a_address;
	}
	public String getA_tel() {
		return a_tel;
	}
	public void setA_tel(String a_tel) {
		this.a_tel = a_tel;
	}
	public String getA_url() {
		return a_url;
	}
	public void setA_url(String a_url) {
		this.a_url = a_url;
	}
	public String getA_memo() {
		return a_memo;
	}
	public void setA_memo(String a_memo) {
		this.a_memo = a_memo;
	}
	
	
	
	// 항공편 gt/st
	public String getAirline() {
		return airline;
	}
	public void setAirline(String airline) {
		this.airline = airline;
	}
	public String getContinent() {
		return continent;
	}
	public void setContinent(String continent) {
		this.continent = continent;
	}
	public String getCountry_name() {
		return country_name;
	}
	public void setCountry_name(String country_name) {
		this.country_name = country_name;
	}
	public String getCity_name() {
		return city_name;
	}
	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}
	public String getDept_sairport() {
		return dept_sairport;
	}
	public void setDept_sairport(String dept_sairport) {
		this.dept_sairport = dept_sairport;
	}
	public String getDept_sdate() {
		return dept_sdate;
	}
	public void setDept_sdate(String dept_sdate) {
		this.dept_sdate = dept_sdate;
	}
	public String getDept_stime() {
		return dept_stime;
	}
	public void setDept_stime(String dept_stime) {
		this.dept_stime = dept_stime;
	}
	public String getDept_aairport() {
		return dept_aairport;
	}
	public void setDept_aairport(String dept_aairport) {
		this.dept_aairport = dept_aairport;
	}
	public String getDept_edate() {
		return dept_edate;
	}
	public void setDept_edate(String dept_edate) {
		this.dept_edate = dept_edate;
	}
	public String getDept_atime() {
		return dept_atime;
	}
	public void setDept_atime(String dept_atime) {
		this.dept_atime = dept_atime;
	}
	public String getArr_sairport() {
		return arr_sairport;
	}
	public void setArr_sairport(String arr_sairport) {
		this.arr_sairport = arr_sairport;
	}
	public String getArr_sdate() {
		return arr_sdate;
	}
	public void setArr_sdate(String arr_sdate) {
		this.arr_sdate = arr_sdate;
	}
	public String getArr_stime() {
		return arr_stime;
	}
	public void setArr_stime(String arr_stime) {
		this.arr_stime = arr_stime;
	}
	public String getArr_eairport() {
		return arr_eairport;
	}
	public void setArr_eairport(String arr_eairport) {
		this.arr_eairport = arr_eairport;
	}
	public String getArr_edate() {
		return arr_edate;
	}
	public void setArr_edate(String arr_edate) {
		this.arr_edate = arr_edate;
	}
	public String getArr_etime() {
		return arr_etime;
	}
	public void setArr_etime(String arr_etime) {
		this.arr_etime = arr_etime;
	}
	public String getAr_company() {
		return ar_company;
	}
	public void setAr_company(String ar_company) {
		this.ar_company = ar_company;
	}
	public String getAr_url() {
		return ar_url;
	}
	public void setAr_url(String ar_url) {
		this.ar_url = ar_url;
	}
	public String getAr_memo() {
		return ar_memo;
	}
	public void setAr_memo(String ar_memo) {
		this.ar_memo = ar_memo;
	}
	
	// 항공편 선택시의 전달 파라미터 -> 현재 사용안함
	/*
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	*/
}
