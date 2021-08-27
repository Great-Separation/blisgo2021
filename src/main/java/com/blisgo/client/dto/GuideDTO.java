package com.blisgo.client.dto;

public class GuideDTO {
	private String guide_name;
	private String image_path;

	public String getGuide_name() {
		return guide_name;
	}

	public void setGuide_name(String guide_name) {
		this.guide_name = guide_name;
	}

	public String getImage_path() {
		return image_path;
	}

	public void setImage_path(String image_path) {
		this.image_path = image_path;
	}

	@Override
	public String toString() {
		return "GuideDTO [guide_name=" + guide_name + ", image_path=" + image_path + "]";
	}

}
