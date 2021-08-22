package com.blisgo.client.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blisgo.client.dto.UserDTO;
import com.blisgo.client.mapper.UserMapper;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserMapper uMapper;
	
	@Override
	public boolean insert(UserDTO user) {
		uMapper.insertUser(user);
		return true;
	}
	

}
