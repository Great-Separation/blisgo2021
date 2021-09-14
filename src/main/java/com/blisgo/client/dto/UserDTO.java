package com.blisgo.client.dto;

//CREATE TABLE IF NOT EXISTS `comment` (
//		  `comment_no` INT NOT NULL AUTO_INCREMENT,
//		  `bd_no` INT NOT NULL,
//		  `mem_no` INT NOT NULL,
//		  `content` VARCHAR(300) NULL,
//		  `comment_date` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
//		  PRIMARY KEY (`comment_no`, `bd_no`, `mem_no`)
//		)ENGINE = InnoDB;

public class UserDTO {

	int mem_no; // 회원번호
	String nickname; // 닉네임
	String email; // 이메일
	String pass; // 비밀번호
	int memPoint; // 적립 포인트
	String dogamList; // 북마크로 추가된 도감
	String profile_image; // 사용자 프로필 이미지
	int rankNum;

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

	public int getMemPoint() {
		return memPoint;
	}

	public void setMemPoint(int memPoint) {
		this.memPoint = memPoint;
	}

	public String getDogamList() {
		return dogamList;
	}

	public void setDogamList(String dogamList) {
		this.dogamList = dogamList;
	}

	public String getProfile_image() {
		return profile_image;
	}

	public void setProfile_image(String profile_image) {
		this.profile_image = profile_image;
	}
	
	public int getRankNum() {
		return rankNum;
	}

	public void setRankNum(int rankNum) {
		this.rankNum = rankNum;
	}

	@Override
	public String toString() {
		return "UserDTO [mem_no=" + mem_no + ", nickname=" + nickname + ", email=" + email + ", pass=" + pass
				+ ", memPoint=" + memPoint + ", dogamList=" + dogamList + ", profile_image=" + profile_image
				+ ", rankNum=" + rankNum + "]";
	}

	

}
