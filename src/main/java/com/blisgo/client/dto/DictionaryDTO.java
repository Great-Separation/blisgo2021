package com.blisgo.client.dto;

public class DictionaryDTO {
	private int dictionary_no;
	private String name;
	private String eng_name;
	private String category;
	private String way;
	private String tag;
	private String img;

	public int getDictionary_no() {
		return dictionary_no;
	}

	public void setDictionary_no(int dictionary_no) {
		this.dictionary_no = dictionary_no;
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

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getWay() {
		return way;
	}

	public void setWay(String way) {
		this.way = way;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

}
