package com.blisgo.client.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DictionaryController {

	// 분리배출 사전
	@GetMapping("dictionary")
	public String dictionary(Model model) {
		return "dictionary";
	}

	// 분리배출 물품 안내
	@GetMapping("product")
	public String product(Model model) {
		return "product";
	}
	//-----------------------------------------------------//
	
}
