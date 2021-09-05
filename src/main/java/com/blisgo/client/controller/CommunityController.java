package com.blisgo.client.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.blisgo.client.dto.BoardDTO;
import com.blisgo.client.dto.CommentDTO;
import com.blisgo.client.dto.UserDTO;
import com.blisgo.client.service.CommunityService;

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

		model.addAttribute("articles", articles);

		return "community";
	}

	// -----------------------------------------------------//
	// 게시판 글내용
	@GetMapping("content")
	public String content(HttpSession session, HttpServletRequest request, Model model)
			throws UnsupportedEncodingException {
		request.setCharacterEncoding("utf-8");

		int bd_no = Integer.parseInt(request.getParameter("bd_no")); // 글번호 HTTP요청의 파라미터에서 값을 가져오기
		BoardDTO articles = communityService.contentBoard(bd_no);
		ArrayList<CommentDTO> comments = communityService.getComment(bd_no);
		ArrayList<UserDTO> comments_user = new ArrayList<UserDTO>();

		// 게시판 댓글에 올라온 mem_no를 통해 사용자를 조회하고 닉네임과 프로필 이미지를 출력함
		for (CommentDTO comment : comments) {
			comments_user.add(communityService.getCommentUser(comment.getMem_no()));
		}

		model.addAttribute("articles", articles);
		model.addAttribute("comments", comments);
		model.addAttribute("comments_user", comments_user);

		return "content";
	}

	// 게시판 글내용 댓글 작성
	@GetMapping("contentPOST")
	public String contentPOST(Model model) {
		return "content";
	}
	// -----------------------------------------------------//

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
	// -----------------------------------------------------//

	// 댓글 작성
	@PostMapping("commentPOST")
	public String commentPOST(Model model, HttpServletRequest request) throws UnsupportedEncodingException {
		request.setCharacterEncoding("utf-8");

		int bd_no = Integer.parseInt(request.getParameter("bd_no"));
		int mem_no = Integer.parseInt(request.getParameter("mem_no"));
		String content = request.getParameter("content");
		communityService.addComment(bd_no, mem_no, content);
		return "redirect:/content?bd_no=" + bd_no;
	}

	// 댓글 삭제
	@PostMapping("commentRemove")
	public String commentRemove(Model model, HttpServletRequest request) {
		int comment_no = Integer.parseInt(request.getParameter("comment_no"));
		int bd_no = Integer.parseInt(request.getParameter("bd_no"));
		communityService.removeComment(comment_no, bd_no);
		return "redirect:/content?bd_no=" + bd_no;
	}
	// -----------------------------------------------------//
}
