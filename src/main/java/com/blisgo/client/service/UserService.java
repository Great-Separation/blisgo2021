package com.blisgo.client.service;

import com.blisgo.client.dto.UserDTO;

public interface UserService {

	// 회원가입 회원 추가 메서드
	public boolean insert(UserDTO user);

}
