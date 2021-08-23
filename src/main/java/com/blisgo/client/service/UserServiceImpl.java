package com.blisgo.client.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blisgo.client.dto.UserDTO;
import com.blisgo.client.mapper.UserMapper;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public boolean insert(UserDTO user) {
		userMapper.insertUser(user);
		return true;
	}
	

}
