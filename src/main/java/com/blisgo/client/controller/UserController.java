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
		if(userInfo == null) {
			model.addAttribute("check", 2);
			model.addAttribute("msg", "없는 회원입니다. 회원가입을 해주세요");
			return "register";
		}
		if (userPass != null) {
			if (user.getPass().equals(userPass)) {
				model.addAttribute("check", 2);
				model.addAttribute("msg", userInfo.getNickname() + "님, 환영합니다");
				session.setAttribute("mem", userInfo);
			} else {
				model.addAttribute("passCheck", 1);
				return "login";
			}
		}
		return "index";
	}

	// -----------------------------------------------------//
	// 회원가입
	@GetMapping("register")
	public String register(Model model) {
		model.addAttribute("check", 1);

//		model.addAttribute("termsOfAgreement", BlisgoClientApplication.termsOfAgreement);

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
			return "register";
		}
		return "login";
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

	// QR 코드 출력
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
		model.addAttribute("check", 1);
		return "mypage";
	}

	// 마이페이지 계정 수정
	@PostMapping("mypageModifyAccount")
	public String mypageModifyAccount(Model model, UserDTO user) {
		System.out.println(user);
		UserDTO user_no = (UserDTO)session.getAttribute("mem");
		user.setMem_no(user_no.getMem_no());
		if(userService.modifyAccount(user)) {
			System.out.println("변경 성공");
			model.addAttribute("check", 2);
			model.addAttribute("msg", "회원 정보가 변경되었습니다.");
		} else {
			model.addAttribute("check", 2);
			model.addAttribute("msg", "회원 정보 변경이 실패했습니다.");
			return "mypage";
		}
		UserDTO userInfo = (UserDTO)userService.getUser(user);
		session.setAttribute("mem", userInfo);
		System.out.println(userInfo);
		return "mypage";
	}

	// 마이페이지 계정 삭제
	@PostMapping("mypageDeleteAccount")
	public String mypageDeleteAccount(Model model) {
		UserDTO userInfo = (UserDTO)session.getAttribute("mem");
		if(userService.deleteAccount(userInfo)) {
			return "redirect:logout";
		}
		else {
			model.addAttribute("check", 2);
			model.addAttribute("msg", "회원 탈퇴 실패했습니다. 다시 시도해주시기바랍니다.");
			return "mypage";
		}
	}
	
	// 비밀번호 중복 확인
	@RequestMapping(value = "/newPassCheck", method = RequestMethod.POST)
	@ResponseBody
	public String newPassCheck(String newPass, String passCheck) {
		boolean result = newPass.equals(passCheck);
		if (result != true) {
			return "fail"; // 비밀번호가 같지 않음

		} else {
			return "success"; // 비밀번호 동일
		}
	}
	
	//회원 비밀번호 변경
	@PostMapping("modifyPassword")
	public String modifyPassword(HttpServletRequest request, Model model) {
		UserDTO userInfo = (UserDTO)session.getAttribute("mem");
		String beforePass = request.getParameter("beforePass");
		String newPass = request.getParameter("newPass");
		
		if(beforePass.equals(userService.userLogin(userInfo))){
			userService.modifyPassword(newPass, userInfo.getEmail(), userInfo.getMem_no());
			session.invalidate();
			model.addAttribute("check", 2);
			model.addAttribute("msg", "변경된 비밀번호로 다시 로그인바랍니다.");
			return "login";
		}
		else {
			model.addAttribute("passCheck", 1);
			return "mypage";
		}	
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
