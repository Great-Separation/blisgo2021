package com.blisgo.client.dto;

public class UserDTO {
	int mem_no;
    String nickname;
    String email;
    String pass;
    int memPoint;
    String dogamList;
	public int getMem_no() {
		return mem_no;
	}
	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
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
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public int getMempoint() {
		return memPoint;
	}
	public void setMempoint(int mempoint) {
		this.memPoint = mempoint;
	}
	public String getDogamlist() {
		return dogamList;
	}
	public void setDogamlist(String dogamlist) {
		this.dogamList = dogamlist;
	}
	@Override
	public String toString() {
		return "UserDTO [mem_no=" + mem_no + ", nickname=" + nickname + ", email=" + email + ", pass=" + pass
				+ ", mempoint=" + memPoint + ", dogamlist=" + dogamList + "]";
	}
    
    
}
