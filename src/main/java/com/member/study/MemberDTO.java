package com.member.study;

import java.io.Serializable;

public class MemberDTO implements Serializable {
	private String member_id, member_pwd, member_name;
	private int member_birthday;
	private String member_gender, member_phone;
	
	public MemberDTO() {}
	
	public MemberDTO(String member_id, String member_pwd, String member_name, int member_birthday, String member_gender,
			String member_phone) {
		super();
		this.member_id = member_id;
		this.member_pwd = member_pwd;
		this.member_name = member_name;
		this.member_birthday = member_birthday;
		this.member_gender = member_gender;
		this.member_phone = member_phone;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pwd() {
		return member_pwd;
	}

	public void setMember_pw(String member_pwd) {
		this.member_pwd = member_pwd;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public int getMember_birthday() {
		return member_birthday;
	}

	public void setMember_age(int member_birthday) {
		this.member_birthday = member_birthday;
	}

	public String getMember_gender() {
		return member_gender;
	}

	public void setMember_gender(String member_gender) {
		this.member_gender = member_gender;
	}
	public String getMember_phone() {
		return member_phone;
	}

	public void setMember_email(String member_phone) {
		this.member_phone = member_phone;
	}
}
