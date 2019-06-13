package stbplanner.planner.model;

public class AddResvResDTO {

	private String a_type;
	private String a_name;
	private double a_price;
	
	private String a_currency;
	
	private String a_reserver;
	private String a_checkout;
	private String a_room_type;
	private int a_room_cnt;
	//private String a_room_loc;
	private double a_lat;
	private double a_lng;

	private String a_address;
	private String a_tel;
	private String a_url;
	private String a_memo;
	private String t;
	private int rt_id;
	private int trip_id;
	private int rs;
	private int serial;
	private String startdate;
	private String date_in;
	
	
	
	public String getA_currency() {
		return a_currency;
	}
	public void setA_currency(String a_currency) {
		this.a_currency = a_currency;
	}
	public double getA_lat() {
		return a_lat;
	}
	public void setA_lat(double a_lat) {
		this.a_lat = a_lat;
	}
	public double getA_lng() {
		return a_lng;
	}
	public void setA_lng(double a_lng) {
		this.a_lng = a_lng;
	}
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
	public String getDate_in() {
		return date_in;
	}
	public void setDate_in(String date_in) {
		this.date_in = date_in;
	}
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
	public String getT() {
		return t;
	}
	public void setT(String t) {
		this.t = t;
	}
	public int getRt_id() {
		return rt_id;
	}
	public void setRt_id(int rt_id) {
		this.rt_id = rt_id;
	}
	public int getTrip_id() {
		return trip_id;
	}
	public void setTrip_id(int trip_id) {
		this.trip_id = trip_id;
	}
	public int getRs() {
		return rs;
	}
	public void setRs(int rs) {
		this.rs = rs;
	}
	
	
}
