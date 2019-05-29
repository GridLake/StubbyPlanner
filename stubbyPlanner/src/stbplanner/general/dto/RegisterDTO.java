package stbplanner.general.dto;

public class RegisterDTO {
	private String name;
	private String member_id;
	private String password;
	private String password_confirm;
	private String member_email;
	private String vemail;
	private String gender;
	private String birth_year;
	private String birth_month;
	private String accept_mail;
	private String profile_pic;
	
	public RegisterDTO(String member_id, String password) {
		this.member_id = member_id;
		this.password = password;
	}
 
	public RegisterDTO() { 
	}

	public RegisterDTO(String name, String member_id, String password, String member_email, String gender,
			String birth_year, String birth_month, String accept_mail, String profile_pic) {
		this.name = name;
		this.member_id = member_id;
		this.password = password;
		this.member_email = member_email;
		this.gender = gender;
		this.birth_year = birth_year;
		this.birth_month = birth_month;
		this.accept_mail = accept_mail;
		this.profile_pic = profile_pic;
	}

	public String getVemail() {
		return vemail;
	}
	public void setVemail(String vemail) {
		this.vemail = vemail;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPassword_confirm() {
		return password_confirm;
	}
	public void setPassword_confirm(String password_confirm) {
		this.password_confirm = password_confirm;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirth_year() {
		return birth_year;
	}
	public void setBirth_year(String birth_year) {
		this.birth_year = birth_year;
	}
	public String getBirth_month() {
		return birth_month;
	}
	public void setBirth_month(String birth_month) {
		this.birth_month = birth_month;
	}
	public String getAccept_mail() {
		return accept_mail;
	}
	public void setAccept_mail(String accept_mail) {
		this.accept_mail = accept_mail;
	}

	public boolean matchPassword(String password) {
		return this.password.equals(password);
	}

	public String getProfile_pic() {
		return profile_pic;
	}

	public void setProfile_pic(String profile_pic) {
		this.profile_pic = profile_pic;
	}

	
	
}
