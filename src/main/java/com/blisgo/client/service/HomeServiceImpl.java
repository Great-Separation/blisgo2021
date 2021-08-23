package com.blisgo.client.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blisgo.client.mapper.HomeMapper;

@Service
public class HomeServiceImpl {

	@Autowired
	private HomeMapper homeMapper;
}
