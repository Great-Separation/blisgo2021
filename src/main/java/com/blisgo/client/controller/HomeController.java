package com.blisgo.client.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.blisgo.client.dto.DictionaryDTO;
import com.blisgo.client.service.HomeService;

@Controller
public class HomeController {

	@Autowired
	private HomeService homeService;
	
	@GetMapping("/")
	public String index(Model model) {
		// 최근 등록된 product 나열
		ArrayList<DictionaryDTO> recentProducts = homeService.recentProduct();		
		model.addAttribute("recentProducts", recentProducts);
		
		return "index";
	}

	@GetMapping("errorHandler")
	public String errorHandler(Model model) {
		return "errorHandler";
	}

	@GetMapping("faq")
	public String faq(Model model) {
		return "faq";
	}

	@GetMapping("footer")
	public String footer(Model model) {
		return "footer";
	}

	@GetMapping("header")
	public String header(Model model) {
		return "header";
	}

	@GetMapping("introduce")
	public String introduce(Model model) {
		return "introduce";
	}

	@GetMapping("offline")
	public String offline(Model model) {
		return "offline";
	}

	@RequestMapping("/faq")
	public String faq() {
		return "faq";
	}

}
