package stbplanner.planner.model;

public class RouteDTO {
	// ecity_id, ecity_name, rt_days, night_move, rt_trans, city_x, city_y, rt_startdate, rt_enddate;
	
	private int trip_id;
	private int ecity_id;
	private String ecity_name;
	private int rt_days;
	private int night_move;
	private String rt_trans;
	private double city_x;
	private double city_y;
	private String rt_startdate;
	private String rt_enddate;
	
	public int getTrip_id() {
		return trip_id;
	}
	public void setTrip_id(int trip_id) {
		this.trip_id = trip_id;
	}
	public int getEcity_id() {
		return ecity_id;
	}
	public void setEcity_id(int ecity_id) {
		this.ecity_id = ecity_id;
	}
	public String getEcity_name() {
		return ecity_name;
	}
	public void setEcity_name(String ecity_name) {
		this.ecity_name = ecity_name;
	}
	public int getRt_days() {
		return rt_days;
	}
	public void setRt_days(int rt_days) {
		this.rt_days = rt_days;
	}
	public int getNight_move() {
		return night_move;
	}
	public void setNight_move(int night_move) {
		this.night_move = night_move;
	}
	public String getRt_trans() {
		return rt_trans;
	}
	public void setRt_trans(String rt_trans) {
		this.rt_trans = rt_trans;
	}
	public double getCity_x() {
		return city_x;
	}
	public void setCity_x(double city_x) {
		this.city_x = city_x;
	}
	public double getCity_y() {
		return city_y;
	}
	public void setCity_y(double city_y) {
		this.city_y = city_y;
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
		
}
