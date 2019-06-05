package stbplanner.guide.model;

import java.sql.Connection;
import java.util.List;

public class GuideDTO {
	private int cnt; 
	private int guide_seq;
	private int reserve_seq;
	private String category;
	private String company;
	private String title;
	private String price;
	private String type;
	private String activity;
	private String hours;
	private String filter_item;
	private int total; //총게시글
	private int currentPage; //현재페이지
	
	private int totalPages;
	private int startPage;
	private int endPage;
	private int hot;
	private double review;
	
	



	public int getHot() {
		return hot;
	}


	public void setHot(int hot) {
		this.hot = hot;
	}


	public double getReview() {
		return review;
	}


	public void setReview(double review) {
		this.review = review;
	}


	public GuideDTO() {}
/*
	public GuideDTO(int total, int currentPage, int size) {
		this.total = total;
		this.currentPage = currentPage;
		if (total == 0) {
			totalPages = 0;
			startPage = 0;
			endPage = 0;
		} else {
			totalPages = total / size;
			if (total % size > 0) {
				totalPages++;
			}
		}
	}*/


	public GuideDTO(int guide_seq, int reserve_seq, String category, String company, String title, String price,
			String type, String activity, String hours, String filter_item, 
			List<GuideDTO> content, int totalPages, int startPage, int endPage, String language, int city_id,
			int attr_id, double review, int hot) {
		super();
		this.guide_seq = guide_seq;
		this.reserve_seq = reserve_seq;
		this.category = category;
		this.company = company;
		this.title = title;
		this.price = price;
		this.type = type;
		this.activity = activity;
		this.hours = hours;
		this.filter_item = filter_item;
		this.totalPages = totalPages;
		this.startPage = startPage;
		this.endPage = endPage;
		this.language = language;
		this.city_id = city_id;
		this.attr_id = attr_id;
		this.review = review;
		this.hot = hot;
	}
	
	

	
	public int getCnt() {
		return cnt;
	}


	public void setCnt(int cnt) {
		this.cnt = cnt;
	}


	public double getreview() {
		return review;
	}

	public void setreview(double review) {
		this.review = review;
	}

	public String getFilter_item() {
		return filter_item;
	}


	public void setFilter_item(String filter_item) {
		this.filter_item = filter_item;
	}


	public int getTotal() {
		return total;
	}


	public void setTotal(int total) {
		this.total = total;
	}


	public int getCurrentPage() {
		return currentPage;
	}


	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}



	public int getTotalPages() {
		return totalPages;
	}


	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}


	public int getStartPage() {
		return startPage;
	}


	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}


	public int getEndPage() {
		return endPage;
	}


	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}


	
	public int getReserve_seq() {
		return reserve_seq;
	}
	public void setReserve_seq(int reserve_seq) {
		this.reserve_seq = reserve_seq;
	}
	public int getAttr_id() {
		return attr_id;
	}
	public void setAttr_id(int attr_id) {
		this.attr_id = attr_id;
	}
	private String language;
	private int city_id;
	private int attr_id;
	public int getGuide_seq() {
		return guide_seq;
	}
	public void setGuide_seq(int guide_seq) {
		this.guide_seq = guide_seq;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getActivity() {
		return activity;
	}
	public void setActivity(String activity) {
		this.activity = activity;
	}
	public String getHours() {
		return hours;
	}
	public void setHours(String hours) {
		this.hours = hours;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public int getCity_id() {
		return city_id;
	}
	public void setCity_id(int city_id) {
		this.city_id = city_id;
	}



	
	
	

}
