package com.blisgo.client.mapper;

import com.blisgo.client.dto.UserDTO;

public interface UserMapper {

	public void insertUser(UserDTO user);
	public String userLogin(UserDTO user);
	public UserDTO getUser(UserDTO user);
}
