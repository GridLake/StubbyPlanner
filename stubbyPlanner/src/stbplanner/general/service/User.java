package stbplanner.general.service;

public class User {

	private String member_id;
	private String profile_pic;
	
	public User(String member_id, String profile_pic) {
		this.member_id = member_id;
		this.profile_pic = profile_pic;
	}

	public String getMember_id() {
		return member_id;
	}

	public String getProfile_pic() {
		return profile_pic;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public void setProfile_pic(String profile_pic) {
		this.profile_pic = profile_pic;
	}
	
}
