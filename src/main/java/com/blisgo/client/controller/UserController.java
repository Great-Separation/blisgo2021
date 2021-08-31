package com.blisgo.client.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

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
		model.addAttribute("check", 1);
		return "login";
	}

	// 회원 로그인 전송
	@PostMapping("loginPOST")
	public String loginPOST(Model model, HttpServletRequest req, UserDTO user) {
		session = req.getSession();
		UserDTO userInfo = userService.getUser(user);
		session.setAttribute("mem", userInfo);
		String userPass = userService.userLogin(user);
		if(userPass != null) {
			if(user.getPass().equals(userPass)) {
				model.addAttribute("check", 2);
				model.addAttribute("msg",userInfo.getNickname() + "님, 환영합니다");
			}
			else {
				model.addAttribute("msg","비밀번호가 틀렸습니다");
				return "login";
			}
		}
		else {
			model.addAttribute("msg","없는 회원입니다. 회원가입을 해주세요");
			return "register";
		}
//		
//		String name = userInfo.getNickname()+".png";
//		String string = userInfo.getEmail() + "&" + userInfo.getPass();
//		model.addAttribute("memNick", name);
//		try {
//		     File file = null;
//		     // qr코드 이미지를 저장할 디렉토리 지정
//		     file = new File("C:\\develop\\workspace\\test-client-web\\src\\main\\resources\\static\\assets\\img");
//		     if(!file.exists()) {
//		         file.mkdirs();
//		     }
//		        // qr코드 변환 문자열
//		        String userString = new String(string.getBytes("UTF-8"), "ISO-8859-1");		    
//		        // qr코드 바코드 생성값
//		        int qrcodeColor = 0xFF2e4e96;
//		        // qr코드 배경색상값
//		        int backgroundColor = 0xFFFFFFFF;
//		          
//		        QRCodeWriter qrCodeWriter = new QRCodeWriter();
//		        // 3,4번째 parameter값 : width/height값 지정
//		        BitMatrix bitMatrix = qrCodeWriter.encode(userString, BarcodeFormat.QR_CODE,200, 200);
//		        //
//		        MatrixToImageConfig matrixToImageConfig = new MatrixToImageConfig(qrcodeColor,backgroundColor);
//		        BufferedImage bufferedImage = MatrixToImageWriter.toBufferedImage(bitMatrix,matrixToImageConfig);
//		        // ImageIO를 사용한 QR 저장
//		        ImageIO.write(bufferedImage, "png", new File("C:\\develop\\workspace\\test-client-web\\src\\main\\resources\\static\\assets\\img\\"+name));
//		          
//		    } catch (Exception e) {
//		        e.printStackTrace();
//		    }
//		
		return "index";
	}

	// -----------------------------------------------------//
	// 회원가입
	@GetMapping("register")
	public String register(Model model) {
		model.addAttribute("check", 1);
		return "register";
	}

	// 회원가입 전송
	@PostMapping("registerPOST")
	public String registerPOST(Model model, UserDTO user) {
		if (userService.insert(user)) {
			model.addAttribute("check", 2);
			model.addAttribute("msg", "회원가입 성공");
		}
		else {
			model.addAttribute("check", 2);
			model.addAttribute("msg", "회원가입 실패");
			return "register";
		}
		return "login";
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
//		UserDTO user = (UserDTO) session.getAttribute("mem");
//        // 파일의 경로 + 파일명
//        String filePath = "C:\\develop\\workspace\\test-client-web\\src\\main\\resources\\static\\assets\\img\\" + user.getNickname() + ".png";
//        
//        File deleteFile = new File(filePath);
// 
//        // 파일이 존재하는지 체크 존재할경우 true, 존재하지않을경우 false
//        if(deleteFile.exists()) {
//            
//            // 파일을 삭제합니다.
//            deleteFile.delete(); 
//            
//            System.out.println("파일을 삭제하였습니다.");
//            
//        } else {
//            System.out.println("파일이 존재하지 않습니다.");
//        }
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
