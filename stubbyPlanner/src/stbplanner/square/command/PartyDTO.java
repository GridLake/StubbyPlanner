package stbplanner.square.command;

public class PartyDTO {
	private int party_seqno;
	private String member_id;
	private String party_content;
	private int party_like;
	private String profile_pic;
	
	public String getProfile_pic() {
		return profile_pic;
	}
	public void setProfile_pic(String profile_pic) {
		this.profile_pic = profile_pic;
	}
	public int getParty_seqno() {
		return party_seqno;
	}
	public void setParty_seqno(int party_seqno) {
		this.party_seqno = party_seqno;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getParty_content() {
		return party_content;
	}
	public void setParty_content(String party_content) {
		this.party_content = party_content;
	}
	public int getParty_like() {
		return party_like;
	}
	public void setParty_like(int party_like) {
		this.party_like = party_like;
	}
	
}
