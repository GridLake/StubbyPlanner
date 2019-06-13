package stbplanner.square.command;

import java.util.Date;

public class GalleryDTO {
	private int gal_seq;
	private String member_id;
	private Date gal_regdate;
	private int post_like;
	private String gal_subject;
	private int post_hits;
	private String gal_pic_path;
	
	public String getGal_pic_path() {
		return gal_pic_path;
	}
	public void setGal_pic_path(String gal_pic_path) {
		this.gal_pic_path = gal_pic_path;
	}
	public int getGal_seq() {
		return gal_seq;
	}
	public void setGal_seq(int gal_seq) {
		this.gal_seq = gal_seq;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public Date getGal_regdate() {
		return gal_regdate;
	}
	public void setGal_regdate(Date gal_regdate) {
		this.gal_regdate = gal_regdate;
	}
	public int getPost_like() {
		return post_like;
	}
	public void setPost_like(int post_like) {
		this.post_like = post_like;
	}
	public String getGal_subject() {
		return gal_subject;
	}
	public void setGal_subject(String gal_subject) {
		this.gal_subject = gal_subject;
	}
	public int getPost_hits() {
		return post_hits;
	}
	public void setPost_hits(int post_hits) {
		this.post_hits = post_hits;
	}
	
	
}
