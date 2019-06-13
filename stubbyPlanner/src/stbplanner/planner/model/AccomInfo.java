package stbplanner.planner.model;

import java.util.ArrayList;
import java.util.HashMap;

public class AccomInfo {
	
	private int accom_seq;
	private String title; 
	//private String average;
	private int star;
	private String link;
	private String image;
	private int cnt;
	
	private HashMap<String, String> reviewMap; //member_id , profile_pic, content
	
	private ArrayList<HashMap<String, String>> reserverList;  //map : member_id, profile_pic

	
	
	
	public int getAccom_seq() {
		return accom_seq;
	}

	public void setAccom_seq(int accom_seq) {
		this.accom_seq = accom_seq;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}



	public int getStar() {
		return star;
	}

	public void setStar(int star) {
		this.star = star;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public HashMap<String, String> getReviewMap() {
		return reviewMap;
	}

	public void setReviewMap(HashMap<String, String> reviewMap) {
		this.reviewMap = reviewMap;
	}

	public ArrayList<HashMap<String, String>> getReserverList() {
		return reserverList;
	}

	public void setReserverList(ArrayList<HashMap<String, String>> reserverList) {
		this.reserverList = reserverList;
	}
	
	
	

}
