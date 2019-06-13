package stbplanner.planner.model;

public class ResTransInfo {
	
	private String tr_trans;
	private double tr_price;
	private String tr_deptcity;
	private String tr_depttime;
	private String tr_arrcity;
	private String tr_arrtime;
	
	private String tr_company;
	private String tr_url;
	private String tr_memo;
	
	// member_id, profile_pic, tr_res_date
	
	private String member_id;
	private String profile_pic;
	private String tr_res_date;

	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getProfile_pic() {
		return profile_pic;
	}
	public void setProfile_pic(String profile_pic) {
		this.profile_pic = profile_pic;
	}
	public String getTr_res_date() {
		return tr_res_date;
	}
	public void setTr_res_date(String tr_res_date) {
		this.tr_res_date = tr_res_date;
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

	public String getTr_deptcity() {
		return tr_deptcity;
	}
	public void setTr_deptcity(String tr_deptcity) {
		this.tr_deptcity = tr_deptcity;
	}
	public String getTr_depttime() {
		return tr_depttime;
	}
	public void setTr_depttime(String tr_depttime) {
		this.tr_depttime = tr_depttime;
	}
	public String getTr_arrcity() {
		return tr_arrcity;
	}
	public void setTr_arrcity(String tr_arrcity) {
		this.tr_arrcity = tr_arrcity;
	}
	public String getTr_arrtime() {
		return tr_arrtime;
	}
	public void setTr_arrtime(String tr_arrtime) {
		this.tr_arrtime = tr_arrtime;
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
	public void setTr_price(String string) {
		this.tr_price = Double.parseDouble(string);
		
	}
	
	
	
	
	

}
