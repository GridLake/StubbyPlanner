package stbplanner.attraction.model;

public class AttrDTO {
// A.Attr_Id ,C.Theme_Name , A.Attr_Name , B.A_Favorite, B.A_Title, B.A_Img
	
	private int attr_id;
	private String attr_name;
	private String theme_name;
	private int a_favorite;
	private String a_title;
	private String a_img;
	
	
	public int getAttr_id() {
		return attr_id;
	}
	public void setAttr_id(int attr_id) {
		this.attr_id = attr_id;
	}
	public String getAttr_name() {
		return attr_name;
	}
	public void setAttr_name(String attr_name) {
		this.attr_name = attr_name;
	}
	public String getTheme_name() {
		return theme_name;
	}
	public void setTheme_name(String theme_name) {
		this.theme_name = theme_name;
	}
	public int getA_favorite() {
		return a_favorite;
	}
	public void setA_favorite(int a_favorite) {
		this.a_favorite = a_favorite;
	}
	public String getA_title() {
		return a_title;
	}
	public void setA_title(String a_title) {
		this.a_title = a_title;
	}
	public String getA_img() {
		return a_img;
	}
	public void setA_img(String a_img) {
		this.a_img = a_img;
	}
	
	
	
	
	
}
