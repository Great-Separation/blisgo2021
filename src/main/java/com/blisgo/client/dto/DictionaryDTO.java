package com.blisgo.client.dto;

public class DictionaryDTO {
	private int dic_no;
	private String name;
	private String eng_name;
	private String category_big;
	private String category_mid;
	private float popularity;
	private short hit;
	private String thumbnail;
	private String guide;

	public int getDic_no() {
		return dic_no;
	}

	public void setDic_no(int dic_no) {
		this.dic_no = dic_no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEng_name() {
		return eng_name;
	}

	public void setEng_name(String eng_name) {
		this.eng_name = eng_name;
	}

	public String getCategory_big() {
		return category_big;
	}

	public void setCategory_big(String category_big) {
		this.category_big = category_big;
	}

	public String getCategory_mid() {
		return category_mid;
	}

	public void setCategory_mid(String category_mid) {
		this.category_mid = category_mid;
	}

	public float getPopularity() {
		return popularity;
	}

	public void setPopularity(float popularity) {
		this.popularity = popularity;
	}

	public short getHit() {
		return hit;
	}

	public void setHit(short hit) {
		this.hit = hit;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public String getGuide() {
		return guide;
	}

	public void setGuide(String guide) {
		this.guide = guide;
	}

	@Override
	public String toString() {
		return "DictionaryDTO [dic_no=" + dic_no + ", name=" + name + ", eng_name=" + eng_name + ", category_big="
				+ category_big + ", category_mid=" + category_mid + ", popularity=" + popularity + ", hit=" + hit
				+ ", thumbnail=" + thumbnail + ", guide=" + guide + "]";
	}
}
