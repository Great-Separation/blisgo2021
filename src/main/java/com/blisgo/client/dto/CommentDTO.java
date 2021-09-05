package com.blisgo.client.dto;

import java.util.Date;

//CREATE TABLE IF NOT EXISTS `comment` (
//		  `comment_no` INT NOT NULL AUTO_INCREMENT,
//		  `bd_no` INT NOT NULL,
//		  `mem_no` INT NOT NULL,
//		  `content` VARCHAR(300) NULL,
//		  `comment_date` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
//		  PRIMARY KEY (`comment_no`, `bd_no`, `mem_no`)
//		)ENGINE = InnoDB;

public class CommentDTO {
	private int comment_no; // 댓글번호
	private int bd_no; // 게시글번호
	private int mem_no; // 회원번호
	private String content; // 내용
	private Date comment_date; // 작성시간

	public int getComment_no() {
		return comment_no;
	}

	public void setComment_no(int comment_no) {
		this.comment_no = comment_no;
	}

	public int getBd_no() {
		return bd_no;
	}

	public void setBd_no(int bd_no) {
		this.bd_no = bd_no;
	}

	public int getMem_no() {
		return mem_no;
	}

	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getComment_date() {
		return comment_date;
	}

	public void setComment_date(Date comment_date) {
		this.comment_date = comment_date;
	}

}
