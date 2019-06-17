package stbplanner.guide.model;

public class TourtypeDTO {
	private int tourtype_id;
	private int attr_id;
	private int city_id;
	private String attr_name;
	private String img;
	
	
	
	
	
	
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getAttr_name() {
		return attr_name;
	}
	public void setAttr_name(String attr_name) {
		this.attr_name = attr_name;
	}
	public int getTourtype_id() {
		return tourtype_id;
	}
	public void setTourtype_id(int tourtype_id) {
		this.tourtype_id = tourtype_id;
	}
	public int getAttr_id() {
		return attr_id;
	}
	public void setAttr_id(int attr_id) {
		this.attr_id = attr_id;
	}
	public int getCity_id() {
		return city_id;
	}
	public void setCity_id(int city_id) {
		this.city_id = city_id;
	}
	
	
}
