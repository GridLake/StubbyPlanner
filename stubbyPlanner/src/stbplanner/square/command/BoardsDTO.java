package stbplanner.square.command;

import java.sql.Date;

import oracle.sql.DATE;

public class BoardsDTO {
	private int post_seq;
	private int board_code;
	private String member_id;
	private String post_subject;
	private String post_content;
	private int post_ref;
	private int post_step;
	private int post_depth;
	private Date post_regdate;
	private int post_hits;
	private int post_like;
	
	public BoardsDTO() {
		this.post_seq = post_seq;
		this.board_code = board_code;
		this.member_id = member_id;
		this.post_subject = post_subject;
		this.post_content = post_content;
		this.post_ref = post_ref;
		this.post_step = post_step;
		this.post_depth = post_depth;
		this.post_regdate = post_regdate;
		this.post_hits = post_hits;
		this.post_like = post_like;
	}


	public int getPost_seq() {
		return post_seq;
	}
	public void setPost_seq(int post_seq) {
		this.post_seq = post_seq;
	}
	public int getBoard_code() {
		return board_code;
	}
	public void setBoard_code(int board_code) {
		this.board_code = board_code;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getPost_subject() {
		return post_subject;
	}
	public void setPost_subject(String post_subject) {
		this.post_subject = post_subject;
	}
	public String getPost_content() {
		return post_content;
	}
	public void setPost_content(String post_content) {
		this.post_content = post_content;
	}
	public int getPost_ref() {
		return post_ref;
	}
	public void setPost_ref(int post_ref) {
		this.post_ref = post_ref;
	}
	public int getPost_step() {
		return post_step;
	}
	public void setPost_step(int post_step) {
		this.post_step = post_step;
	}
	public int getPost_depth() {
		return post_depth;
	}
	public void setPost_depth(int post_depth) {
		this.post_depth = post_depth;
	}
	public Date getPost_regdate() {
		return post_regdate;
	}
	public void setPost_regdate(Date post_regdate) {
		this.post_regdate = post_regdate;
	}
	public int getPost_hits() {
		return post_hits;
	}
	public void setPost_hits(int post_hits) {
		this.post_hits = post_hits;
	}
	public int getPost_like() {
		return post_like;
	}
	public void setPost_like(int post_like) {
		this.post_like = post_like;
	}
	
	
}

