package com.blisgo.client.service;

import com.blisgo.client.dto.UserDTO;

public interface UserService {

	// 회원가입 회원 추가 메서드
	public boolean insert(UserDTO user);
	
	//회원 로그인 메서드
	public String userLogin(UserDTO user); 
	
	// 회원 전체 정보 조회 메서드
	public UserDTO getUser(UserDTO user);
	
	// 회원 QR 생성 메서드
	public String qrCreate(UserDTO user);

}
