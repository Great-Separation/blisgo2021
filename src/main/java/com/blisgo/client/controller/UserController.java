package com.blisgo.client.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.blisgo.client.BlisgoClientApplication;
import com.blisgo.client.dto.UserDTO;
import com.blisgo.client.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	HttpSession session;

	// 회원 로그인
	@GetMapping("login")
	public String login(Model model) {
		return "login";
	}

	// 회원 로그인 전송
	@PostMapping("loginPOST")
	public String loginPOST(Model model, HttpServletRequest req, UserDTO user) {
		session = req.getSession();
		UserDTO userInfo = userService.getUser(user);
		String userPass = userService.userLogin(user);
		if (userPass != null) {
			if (user.getPass().equals(userPass)) {
				model.addAttribute("check", 2);
				model.addAttribute("msg", userInfo.getNickname() + "님, 환영합니다");
				session.setAttribute("mem", userInfo);
			} else {
				model.addAttribute("passCheck", 1);
				return "login";
			}
		} else {
			model.addAttribute("check", 2);
			model.addAttribute("msg", "없는 회원입니다. 회원가입을 해주세요");
			return "redirect:register";
		}
		return "redirect:/";
	}

	// -----------------------------------------------------//
	// 회원가입
	@GetMapping("register")
	public String register(Model model) {
		model.addAttribute("check", 1);

		model.addAttribute("termsOfAgreement", BlisgoClientApplication.termsOfAgreement);

		return "register";

	}

	// 회원가입 전송
	@PostMapping("registerPOST")
	public String registerPOST(Model model, UserDTO user) {
		if (userService.insert(user)) {
			model.addAttribute("check", 2);
			model.addAttribute("msg", "회원가입 성공");
		} else {
			model.addAttribute("check", 2);
			model.addAttribute("msg", "회원가입 실패");
			return "redirect:register";
		}
		return "redirect:login";
	}

	// 이메일 중복 확인
	@RequestMapping(value = "/registerCheck", method = RequestMethod.POST)
	@ResponseBody
	public String registerCheck(String memEmail) {
		int result = userService.emailCheck(memEmail);
		if (result != 0) {
			return "fail"; // 중복 아이디가 존재

		} else {
			return "success"; // 중복 아이디 x
		}
	}

	@GetMapping("qrlogin")
	public String qrlogin(Model model, HttpServletRequest request) {
		UserDTO userInfo = (UserDTO) session.getAttribute("mem");
		String imageAsBase64 = userService.qrCreate(userInfo);
		request.setAttribute("imageAsBase64", imageAsBase64);
		return "qrlogin";
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

	@GetMapping("logout")
	public String logout() {
		session.invalidate();
		return "redirect:/";
	}
	// -----------------------------------------------------//

	// -----------------------------------------------------//
	// 구글로그인

	@GetMapping("googleLogin")
	public String googleLogin(Model model) {
		return "googleLogin";
	}

	// -----------------------------------------------------//

}
