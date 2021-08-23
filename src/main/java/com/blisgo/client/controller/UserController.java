package com.blisgo.client.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.blisgo.client.dto.UserDTO;
import com.blisgo.client.service.UserService;

@Controller
public class UserController {

	UserService userService;

	// 회원 로그인
	@GetMapping("login")
	public String login(Model model) {
		return "login";
	}

	// 회원 로그인 전송
	@PostMapping("loginPOST")
	public String loginPOST(Model model) {
		return "login";
	}

	// -----------------------------------------------------//
	// 회원가입
	@GetMapping("register")
	public String register(Model model) {
		model.addAttribute("check", 1);
		return "register";
	}

	// 회원가입 전송
	@GetMapping("registerPOST")
	public String registerPOST(Model model, UserDTO user) {
		model.addAttribute("check", 2);
		if (userService.insert(user))
			model.addAttribute("msg", "회원가입이 완료되었습니다.");
		else {
			model.addAttribute("msg", "중복된 아이디가 존재합니다");
		}
		return "redirect:/";
	}

	// -----------------------------------------------------//
	// 회원 비밀번호 분실 인증
	@GetMapping("verify")
	public String verify(Model model) {
		return "verify";
	}

	// 회원 비밀번호 분실 인증 이메일, 전화번호 전송
	@PostMapping("verifyEmailPOST")
	public String verifyEmailPOST(Model model) {
		return "verify";
	}

	// 회원 비밀번호 분실 인증 확인
	@PostMapping("verifyConfigPOST")
	public String verifyConfigPOST(Model model) {
		return "verify";
	}

	// -----------------------------------------------------//
	// 마이페이지
	@GetMapping("mypage")
	public String mypage(Model model) {
		return "mypage";
	}

	// 마이페이지 계정 수정
	@PostMapping("mypageModifyAccount")
	public String mypageModifyAccount(Model model) {
		return "mypage";
	}

	// 마이페이지 계정 삭제
	@PostMapping("mypageDeleteAccount")
	public String mypageDeleteAccount(Model model) {
		return "mypage";
	}
	// -----------------------------------------------------//
}
