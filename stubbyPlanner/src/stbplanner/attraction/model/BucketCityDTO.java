package stbplanner.attraction.model;

public class BucketCityDTO {
	
	private int bucketcity_id;
	private int city_id;
	private String img_url;
	private String img_label;
	private String bucketcity_name;
	
	
	public int getBucketcity_id() {
		return bucketcity_id;
	}
	public void setBucketcity_id(int bucketcity_id) {
		this.bucketcity_id = bucketcity_id;
	}
	public int getCity_id() {
		return city_id;
	}
	public void setCity_id(int city_id) {
		this.city_id = city_id;
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
	public String getBucketcity_name() {
		return bucketcity_name;
	}
	public void setBucketcity_name(String bucketcity_name) {
		this.bucketcity_name = bucketcity_name;
	}
	

}
