package com.blisgo.client.controller;

import com.blisgo.client.dto.BoardDTO;
import com.blisgo.client.dto.DictionaryDTO;
import com.blisgo.client.service.CommunityService;
import com.blisgo.client.service.DictionaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

@Controller
public class CommunityController {

	@Autowired
	private CommunityService communityService;

	BoardDTO boardDTO = new BoardDTO();
	// 커뮤니티 게시판
	@GetMapping("community")
	public String community(HttpSession session, HttpServletRequest request, Model model)
			throws UnsupportedEncodingException {
		request.setCharacterEncoding("utf-8");

		ArrayList<BoardDTO> articles = communityService.listBoard();

		model.addAttribute("articles",articles);

		return "community";
	}
	//-----------------------------------------------------//
	// 게시판 글내용
	@GetMapping("content")
	public String content(HttpSession session, HttpServletRequest request, Model model)
			throws UnsupportedEncodingException {
		request.setCharacterEncoding("utf-8");

		int bd_no = Integer.parseInt(request.getParameter("bd_no")); //글번호 HTTP요청의 파라미터에서 값을 가져오기
		BoardDTO articles = communityService.contentBoard(bd_no);


		model.addAttribute("articles", articles);

		return "content";
	}
	
	// 게시판 글내용 댓글 작성
	@GetMapping("contentPOST")
	public String contentPOST(Model model) {
		return "content";
	}
	//-----------------------------------------------------//
	
	// 게시판 글작성
	@GetMapping("write")
	public String write(Model model) {
		return "write";
	}
	
	// 게시판 글 올리기
	@PostMapping("writePOST")
	public String writePOST(Model model) {
		return "write";
	}
	//-----------------------------------------------------//
}
