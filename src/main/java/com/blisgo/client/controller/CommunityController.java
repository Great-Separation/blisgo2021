package com.blisgo.client.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class CommunityController {

	// 커뮤니티 게시판
	@GetMapping("community")
	public String community(Model model) {
		return "community";
	}
	//-----------------------------------------------------//
	// 게시판 글내용
	@GetMapping("content")
	public String content(Model model) {
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
