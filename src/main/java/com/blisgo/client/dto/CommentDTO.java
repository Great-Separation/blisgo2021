package com.blisgo.client.dto;

import java.util.Date;

public class CommentDTO {
	private int comment_no;
	private int notice;
	private int member_no;
	private String content;
	private Date notice_time;

	public int getComment_no() {
		return comment_no;
	}

	public void setComment_no(int comment_no) {
		this.comment_no = comment_no;
	}

	public int getNotice() {
		return notice;
	}

	public void setNotice(int notice) {
		this.notice = notice;
	}

	public int getMember_no() {
		return member_no;
	}

	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getNotice_time() {
		return notice_time;
	}

	public void setNotice_time(Date notice_time) {
		this.notice_time = notice_time;
	}

}
