package com.blisgo.client.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.blisgo.client.dto.UserDTO;
import com.blisgo.client.service.UserService;

@Controller
public class HomeController {
	@Autowired
	private UserService uService;
	
	@RequestMapping("/")
	public String home() {
		return "index";
	}
	
	@RequestMapping("/qrlogin")
	public String qrlogin() {
		return "qrlogin";
	}
	
	@RequestMapping("/mypage")
	public String mypage() {
		return "mypage";
	}
	
	@RequestMapping("/dictionary")
	public String dictionary() {
		return "dictionary";
	}
	
	@RequestMapping("/community")
	public String community() {
		return "community";
	}
	
	@RequestMapping("/faq")
	public String faq() {
		return "faq";
	}
	
	@RequestMapping(value="/register" , method=RequestMethod.GET)
	public String register(Model model) {
		model.addAttribute("check",1);
		return "register";
	}
	@PostMapping(value="/register")
	public String register(Model model, UserDTO user) {
		model.addAttribute("check", 2);
		if(uService.insert(user))
			model.addAttribute("msg","회원가입이 완료되었습니다.");
		else
		{model.addAttribute("msg","중복된 아이디가 존재합니다");}
			return "redirect:/";
	}

	@RequestMapping("/product")
	public String product() {
		return "product";
	}

	@RequestMapping("/content")
	public String content() {
		return "content";
	}

	@RequestMapping("/errorHandler")
	public String errorHandler() {
		return "errorHandler";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/verify")
	public String verify() {
		return "verify";
	}
	
	@RequestMapping("/write")
	public String write() {
		return "write";
	}

}
