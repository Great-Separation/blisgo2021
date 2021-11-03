package com.blisgo.client.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Map;
import java.util.UUID;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.blisgo.client.dto.DictionaryDTO;
import com.blisgo.client.dto.UserDTO;
import com.blisgo.client.service.MailService;
import com.blisgo.client.service.UserService;
import com.cloudinary.Cloudinary;
import com.cloudinary.Transformation;
import com.cloudinary.utils.ObjectUtils;

@Controller
public class UserController {
	@Autowired
	private UserService userService;

	@Autowired
	MailService mailService;

	HttpSession session;

	// 회원 로그인
	@GetMapping("login")
	public String login(Model model) {
		return "login";
	}

	// 회원 로그인 전송
	@PostMapping("loginPOST")
	public void loginPOST(Model model, HttpServletRequest req, UserDTO user, HttpServletResponse response)
			throws IOException {
		session = req.getSession();
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		UserDTO userInfo = userService.getUser(user);
		String userPass = userService.userLogin(user);
		if (userInfo == null) {
			out.println("<script>");
			out.println("alert('없는 회원입니다. 회원가입 후 로그인 진행하시길 바랍니다.');");
			out.println("location.href='register';");
			out.println("</script>");
		}
		if (userPass != null) {
			if (user.getPass().equals(userPass)) {
				session.setAttribute("mem", userInfo);
				out.println("<script>");
				out.println("alert('" + userInfo.getNickname() + "님, 환영합니다');");
				out.println("location.href='/';");
				out.println("</script>");
			} else {
				// model.addAttribute("passCheck", 1);
				out.println("<script>");
				out.println("alert('비밀번호가 틀렸습니다. 다시 확인해주세요');");
				out.println("location.href='login';");
				out.println("</script>");
			}
		}
	}

	// -----------------------------------------------------//
	// 회원가입
	@GetMapping("register")
	public String register(Model model) {
		ClassLoader classLoader = getClass().getClassLoader();
		InputStream in = classLoader.getResourceAsStream("static/agreement.txt");

		InputStreamReader inputStreamReader = new InputStreamReader(in);
		Stream<String> streamOfString = new BufferedReader(inputStreamReader).lines();
		String termsOfAgreement = streamOfString.collect(Collectors.joining());
		model.addAttribute("termsOfAgreement", termsOfAgreement);

		return "register";

	}

	// 회원가입 전송
	@PostMapping("registerPOST")
	public void registerPOST(Model model, UserDTO user, HttpServletResponse response) throws IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		if (userService.insert(user)) {
			out.println("<script>");
			out.println("alert('회원가입 성공');");
			out.println("location.href='/';");
			out.println("</script>");
		} else {
			out.println("<script>");
			out.println("alert('회원가입 실패');");
			out.println("location.href='register';");
			out.println("</script>");
		}
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
	public void verifyEmailPOST(Model model, HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		session = request.getSession();
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();

		String inputEmail = request.getParameter("email");
		UserDTO tempUser = new UserDTO();
		tempUser.setEmail(inputEmail);

		UserDTO user = userService.getUser(tempUser);

		if (user != null) {
			String email = user.getEmail();
			String nickname = user.getNickname();

			try {
				System.out.println(mailService.sendTemplateEmail(email, nickname));
			} catch (IOException e) {
				// TODO 메일 전송 실패
				e.printStackTrace();
			}
			session.setAttribute("verifyEmail", email);
			out.println("<script>");
			out.println("alert('메일이 전송되었습니다');");
			out.println("location.href='/';");
			out.println("</script>");
		} else {
			out.println("<script>");
			out.println("alert('없는 계정입니다');");
			out.println("location.href='verify';");
			out.println("</script>");
		}

	}

	@GetMapping("changepwd")
	public String pwchange(Model model, HttpServletRequest request) {
		boolean flag = false;
		session = request.getSession();
		String verifyEmail = (String) session.getAttribute("verifyEmail");
		String confirmEmail = request.getParameter("confirmEmail");
		if (verifyEmail.equals(confirmEmail)) {
			flag = true;
		}

		if (flag) {
			return "changepwd";
		} else {
			session.invalidate();
			return "errorHandler";
		}
	}

	// 비밀번호 변경
	@PostMapping("changepwdConfirm")
	public void pwchangeConfirm(Model model, HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		response.setContentType("text/html; charset=utf-8");
		session = request.getSession();
		PrintWriter out = response.getWriter();
		String pass = request.getParameter("pw-new");
		String newPwConfirm = request.getParameter("pw-confirm");
		String email = (String) session.getAttribute("verifyEmail");

		if (pass.equals(newPwConfirm)) {

			userService.modifyPassword(pass, email);
			session.invalidate();
			out.println("<script>");
			out.println("alert('비밀번호가 변경되었습니다');");
			out.println("location.href='/';");
			out.println("</script>");

		} else {
			out.println("<script>");
			out.println("alert('입력한 비밀번호가 일치하지 않습니다');");
			out.println("location.href='/changepwd';");
			out.println("</script>");
		}
	}

	// -----------------------------------------------------//
	// 마이페이지
	@GetMapping("mypage")
	public String mypage(Model model) {
		UserDTO userInfo = (UserDTO) session.getAttribute("mem");
		String dogamNo = userInfo.getDogamList();
		if (dogamNo == null) {

		} else {
			ArrayList<DictionaryDTO> dogamList = userService.mydogamList(dogamNo);
			model.addAttribute("dogamList", dogamList);
		}
		ArrayList<UserDTO> rankList = userService.rankList();
		model.addAttribute("rankList", rankList);
		return "mypage";
	}

	// 마이페이지 프로필 업데이트
	@PostMapping("mypageUpdateProfileImg")
	public String mypageUpdateProfileImg(Model model, HttpServletResponse response,
			@RequestParam("upload-img") MultipartFile profile_img) throws IOException {
		UserDTO userInfo = (UserDTO) session.getAttribute("mem");

		// CDN 연결
		Cloudinary cloudinary = new Cloudinary(ObjectUtils.asMap("cloud_name", "datgsovwo", "api_key",
				"428898964121829", "api_secret", "pRBsjO-mi6-OFLEp4eTUxKplTyQ"));

		// 최적의 프로필 이미지를 위해 이미지 편집 후 업로드
		@SuppressWarnings("rawtypes")
		Map result = cloudinary.uploader().upload(convert(profile_img), ObjectUtils.asMap("folder", "userprofile",
				"transformation", new Transformation().gravity("auto:classic").width(400).height(400).crop("thumb")));
		String profile_img_url = (String) result.get("secure_url");

		// 세션을 갱신하여 프로필 변경사항을 웹 뷰에서 즉시 적용
		userService.updateProfileImg(profile_img_url, userInfo.getEmail());
		userInfo.setProfile_image(profile_img_url);
		session.removeAttribute("mem");
		session.setAttribute("mem", userInfo);

		return "redirect:mypage";
	}

	// multipart -> 파일 변환(stream 사용. heroku에서 파일제어에 제약이 있기 때문)
	public File convert(MultipartFile file) throws IOException {
		// 파일명 충돌방지
		UUID uuid = UUID.randomUUID();
		String uuidFilename = uuid + "_" + file.getOriginalFilename();
		File convFile = new File(uuidFilename);
		convFile.createNewFile();
		FileOutputStream fos = new FileOutputStream(convFile);
		fos.write(file.getBytes());
		fos.close();
		return convFile;
	}

	// 마이페이지 계정 수정
	@PostMapping("mypageModifyAccount")
	public void mypageModifyAccount(Model model, UserDTO user, HttpServletResponse response) throws IOException {
		UserDTO user_no = (UserDTO) session.getAttribute("mem");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		user.setMem_no(user_no.getMem_no());

		if (userService.modifyAccount(user)) {
			UserDTO userInfo = (UserDTO) userService.getUser(user);
			session.setAttribute("mem", userInfo);
			System.out.println(userInfo);
			out.println("<script>");
			out.println("alert('회원 정보가 변경되었습니다.');");
			out.println("location.href='mypage';");
			out.println("</script>");
		} else {
			out.println("<script>");
			out.println("alert('회원 정보 변경이 실패했습니다.');");
			out.println("location.href='/changepwd';");
			out.println("</script>");
		}
	}

	// 마이페이지 계정 삭제
	@GetMapping("mypageDeleteAccount")
	public void mypageDeleteAccount(Model model, HttpServletResponse response) throws IOException {
		UserDTO userInfo = (UserDTO) session.getAttribute("mem");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		if (userService.deleteAccount(userInfo)) {
			out.println("<script>");
			out.println("alert('회원 탈퇴되었습니다.');");
			out.println("location.href='logout';");
			out.println("</script>");
		} else {
			out.println("<script>");
			out.println("alert('회원 탈퇴 실패했습니다. 다시 시도해주시기바랍니다.');");
			out.println("location.href='mypage';");
			out.println("</script>");
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

	// 회원 비밀번호 변경
	@PostMapping("modifyPassword")
	public void modifyPassword(HttpServletRequest request, Model model, HttpServletResponse response)
			throws IOException {
		UserDTO userInfo = (UserDTO) session.getAttribute("mem");
		String beforePass = request.getParameter("beforePass");
		String newPass = request.getParameter("newPass");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		if (beforePass.equals(userService.userLogin(userInfo))) {
			userService.modifyPassword(newPass, userInfo.getEmail());
			session.invalidate();
			out.println("<script>");
			out.println("alert('변경된 비밀번호로 다시 로그인바랍니다.');");
			out.println("location.href='login';");
			out.println("</script>");
		} else {
			out.println("<script>");
			out.println("alert('이전 비밀번호가 틀렸습니다. 다시 확인바랍니다.');");
			out.println("location.href='mypage';");
			out.println("</script>");
		}
	}

	// 도감 목록 더보기
	@ResponseBody
	@PostMapping("/dogam_more")
	public ArrayList<DictionaryDTO> dictionaryLoadMore(Model model) {
		UserDTO userInfo = (UserDTO) session.getAttribute("mem");
		String dogamNo = userInfo.getDogamList();
		ArrayList<DictionaryDTO> products_more = userService.dogamLoadMore(dogamNo);
		return products_more;
	}

	// 북마크 추가 기능
	@GetMapping("dogamBookmark")
	public String addBookmark(Model model, HttpServletRequest request, RedirectAttributes redirect) {
		String dic_no = request.getParameter("dic_no");
		System.out.println(dic_no);
		if (session != null) {
			UserDTO userInfo = (UserDTO) session.getAttribute("mem");
			String dogam = userInfo.getDogamList();
			if (dogam.contains(dic_no)) {
				System.out.println("이미 도감에 추가");
				redirect.addAttribute("dic_no", dic_no);
				return "redirect:product";
			} else {
				System.out.println("도감에 없음 새로 추가");
				if (userService.dogamAddBookmark(userInfo, dic_no)) {
					System.out.println(userService.getUser(userInfo));
					session.setAttribute("mem", userService.getUser(userInfo));
					redirect.addAttribute("dic_no", dic_no);
					return "redirect:product";
				} else {
					System.out.println("북마크 실패");
					redirect.addAttribute("dic_no", dic_no);
					return "redirect:product";
				}
			}
		} else {
			System.out.println("로그인 하지 않음");
			redirect.addAttribute("dic_no", dic_no);
			return "redirect:product";
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
