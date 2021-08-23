package com.blisgo.client.dto;

public class MemberDTO {
	private int member_no;
	private String nickname;
	private String email;
	private String password;
	private int point;
	private String dogam_list;

	public int getMember_no() {
		return member_no;
	}

	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public String getDogam_list() {
		return dogam_list;
	}

	public void setDogam_list(String dogam_list) {
		this.dogam_list = dogam_list;
	}

}
