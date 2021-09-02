package com.blisgo.client.dto;

import java.util.Date;

/*CREATE TABLE IF NOT EXISTS `board` (
		`bd_no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
		`bd_title` VARCHAR(45) NOT NULL,
		`bd_writer` VARCHAR(45) NOT NULL,
		`bd_category` VARCHAR(45) NULL,
		`bd_content` mediumtext NULL,
		`bd_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
		`bd_views` INT NULL,
		`bd_favorite` INT NULL,
		PRIMARY KEY (`bd_no`))
		ENGINE = InnoDB;*/


public class BoardDTO {
	private int bd_no;
	private String bd_title;
	private String bd_writer;
	private String bd_category;
	private String bd_content;
	private Date bd_date;
	private int bd_views;
	private int bd_favorite;

	public int getBd_no() {
		return bd_no;
	}
	public void setBd_no(int bd_no) {
		this.bd_no = bd_no;
	}
	public String getBd_title() {
		return bd_title;
	}
	public void setBd_title(String bd_title) {
		this.bd_title = bd_title;
	}
	public String getBd_writer() {
		return bd_writer;
	}
	public void setBd_writer(String bd_writer) {
		this.bd_writer = bd_writer;
	}
	public String getBd_category() {
		return bd_category;
	}
	public void setBd_category(String bd_category) {
		this.bd_category = bd_category;
	}
	public String getBd_content() {
		return bd_content;
	}
	public void setBd_content(String bd_content) {
		this.bd_content = bd_content;
	}
	public Date getBd_date() {
		return bd_date;
	}
	public void setBd_date(Date bd_date) {
		this.bd_date = bd_date;
	}
	public int getBd_views() {
		return bd_views;
	}
	public void setBd_views(int bd_views) {
		this.bd_views = bd_views;
	}
	public int getBd_favorite() {
		return bd_favorite;
	}
	public void setBd_favorite(int bd_favorite) {
		this.bd_favorite = bd_favorite;
	}
}
