package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dto.UserDTO;
import com.example.demo.mapper.UserMapper;

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
