package com.blisgo.client.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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

import static java.lang.System.out;

@Controller
public class CommunityController {

	@Autowired
	private CommunityService communityService;
	HttpSession session;

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


		UserDTO userInfo = (UserDTO) session.getAttribute("mem");
		int bd_no = Integer.parseInt(request.getParameter("bd_no")); // 글번호 HTTP요청의 파라미터에서 값을 가져오기
		BoardDTO articles = communityService.contentBoard(bd_no);
		ArrayList<CommentDTO> comments = communityService.getComment(bd_no);
		ArrayList<UserDTO> comments_user = new ArrayList<UserDTO>();
		communityService.viewIncrease(articles.getBd_no(), articles.getBd_views());//조회수 1증가
		
		// 게시판 댓글에 올라온 mem_no를 통해 사용자를 조회하고 닉네임과 프로필 이미지를 출력함
		for (CommentDTO comment : comments) {
			comments_user.add(communityService.getCommentUser(comment.getMem_no()));
		}

		if(userInfo!=null) {
			model.addAttribute("session_user_nick", userInfo.getNickname());
		}
		model.addAttribute("articles", articles);
		model.addAttribute("comments", comments);
		model.addAttribute("comments_user", comments_user);
		model.addAttribute("bd_no", bd_no);

		return "content";
	}

	// 게시판 글내용 댓글 작성
	@GetMapping("contentPOST")
	public String contentPOST(Model model) {
		return "content";
	}
	// -----------------------------------------------------//

	// -----------------------------------------------------//
	//write.jsp
	// 게시판 글작성
	@GetMapping("write")
	public String write(HttpServletRequest request, HttpServletResponse response, HttpSession session,
						Model model) throws IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();

		UserDTO userInfo = (UserDTO) session.getAttribute("mem");

		if(userInfo == null){
			out.println("<script>");
			out.println("alert('로그인해주세요');");
			out.println("location.href='/login';");
			out.println("</script>");
			out.flush();
			out.close();
		}else{
			model.addAttribute("writer_nick",userInfo.getNickname());
		}

		return "write";
	}

	// -----------------------------------------------------//
	// 게시판 글 올리기
	// write.jsp -> community
	@PostMapping("write_post")
	public String writePOST(HttpServletRequest request, HttpServletResponse response, HttpSession session,
							Model model) throws IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=euc-kr");
		PrintWriter out = response.getWriter();

		String title=request.getParameter("write-title");
		String content=request.getParameter("write-content");

		UserDTO userInfo = (UserDTO) session.getAttribute("mem");

		System.out.println("title="+title+"content=" + content);
		System.out.println(userInfo);

		communityService.regist(userInfo.getEmail(), userInfo.getNickname(),"category", title, content);

		return "redirect:/community";
	}
	// -----------------------------------------------------//

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
	// -----------------------------------------------------//

	// -----------------------------------------------------//
	// 댓글 삭제
	@PostMapping("commentRemove")
	public String commentRemove(Model model, HttpServletRequest request) {
		int comment_no = Integer.parseInt(request.getParameter("comment_no"));
		int bd_no = Integer.parseInt(request.getParameter("bd_no"));
		communityService.removeComment(comment_no, bd_no);
		return "redirect:/content?bd_no=" + bd_no;
	}
	// -----------------------------------------------------//

	// -----------------------------------------------------//
	// 게시판 글삭제
	@GetMapping("content_delete")
	public String content_delete(HttpServletRequest request) throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");

		int bd_no = Integer.parseInt(request.getParameter("bd_no"));

		communityService.deleteBoard(bd_no);

		return "redirect:/community";
	}
	// -----------------------------------------------------//

	// -----------------------------------------------------//
	// write_update.jsp
	// 게시판 글 수정 화면
	@GetMapping("content_update")
	public String content_update(HttpServletRequest request, HttpSession session, Model model)
			throws UnsupportedEncodingException {
		request.setCharacterEncoding("utf-8");

		int bd_no = Integer.parseInt(request.getParameter("bd_no"));
		BoardDTO article = communityService.contentBoard(bd_no);

		model.addAttribute("article", article);

		return "write_update";
	}
	// -----------------------------------------------------//

	// -----------------------------------------------------//
	// write_update.jsp -> community.jsp
	// 게시판 글 수정 제어
	@PostMapping("content_update_post")
	public String contentUpdatepost(HttpServletRequest request, HttpServletResponse response, HttpSession session,
									Model model) throws IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=euc-kr");
		PrintWriter out = response.getWriter();

		String title=request.getParameter("write-title");
		String content=request.getParameter("write-content");
		int bd_no=Integer.parseInt(request.getParameter("write-bd_no"));

		UserDTO userInfo = (UserDTO) session.getAttribute("mem");

		System.out.println("title="+title+"content=" + content);
		System.out.println(userInfo);

		communityService.updateBoard(title, content,bd_no);

		return "redirect:/community";
	}
	// -----------------------------------------------------//

}
