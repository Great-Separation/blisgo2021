package com.blisgo.client.controller;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.blisgo.client.dto.MemberDTO;

public class REST를위한HTTP메서드 {
	@GetMapping(value = "/test2")
	public String memberGet(MemberDTO memberDTO) {
		// @RequestParam("id")식으로 여러개 입력하여 받을 필요 없이
		// 알아서 값을 받아와 뷰로 전달하는 커맨드 객체임
		// model을 쓰든 객체로 하든 자유. 가능한 최신을 지향합시다
		return "member";
	}

	@PostMapping(value = "/test3")
	public String memberPost(MemberDTO memberDTO) {
		// TODO
		return "member";
	}

	@DeleteMapping(value = "/test4")
	public String memberDelete(MemberDTO memberDTO) {
		// TODO
		return "member";
	}

	@PutMapping(value = "/test5")
	public String memberPut(MemberDTO memberDTO) {
		// TODO
		return "member";
	}

	@PatchMapping(value = "/test6")
	public String memberPatch(MemberDTO memberDTO) {
		// TODO
		return "member";
	}

}
