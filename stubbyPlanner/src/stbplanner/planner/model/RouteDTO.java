package stbplanner.planner.model;

public class RouteDTO {
	private int ridx;
	private String scity_name;
	private String ecity_name;
	
	private int scity_id;
	private int ecity_id;
	
	private String rt_startdate;
	private String rt_enddate;
	
	private String trs_date;
	
	private int rt_days;
	private String arr_date;

	
	public int getRt_days() {
		return rt_days;
	}

	public void setRt_days(int rt_days) {
		this.rt_days = rt_days;
	}

	public String getArr_date() {
		return arr_date;
	}

	public void setArr_date(String arr_date) {
		this.arr_date = arr_date;
	}

	public int getScity_id() {
		return scity_id;
	}

	public void setScity_id(int scity_id) {
		this.scity_id = scity_id;
	}

	public int getEcity_id() {
		return ecity_id;
	}

	public void setEcity_id(int ecity_id) {
		this.ecity_id = ecity_id;
	}

	public int getRidx() {
		return ridx;
	}

	public void setRidx(int ridx) {
		this.ridx = ridx;
	}

	public String getScity_name() {
		return scity_name;
	}

	public void setScity_name(String scity_name) {
		this.scity_name = scity_name;
	}

	public String getEcity_name() {
		return ecity_name;
	}

	public void setEcity_name(String ecity_name) {
		this.ecity_name = ecity_name;
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

	public String getTrs_date() {
		return trs_date;
	}

	public void setTrs_date(String trs_date) {
		this.trs_date = trs_date;
	}
	
	
	
	
	

}
