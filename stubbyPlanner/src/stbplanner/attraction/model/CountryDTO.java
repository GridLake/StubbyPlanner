package stbplanner.attraction.model;

import java.util.Map;

public class CountryDTO {
	//fields
	private int country_id;
	private String country_name;
	private Map<Integer, Integer> usercnt;
	private int major; //통계 표시할
	private String img_url;
	private String img_label;
	
	//getter/setter
	
	public int getMajor() {
		return major;
	}
	public void setMajor(int major) {
		this.major = major;
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
	
	public Map<Integer, Integer> getUsercnt() {
		return usercnt;
	}
	public void setUsercnt(Map<Integer, Integer> usercnt) {
		this.usercnt = usercnt;
	}
	public String getImg_url() {
		return img_url;
	}
	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}
	public String getImg_label() {
		return img_label;
	}
	public void setImg_label(String img_label) {
		this.img_label = img_label;
	}
	
	

}
