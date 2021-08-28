package com.blisgo.client.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blisgo.client.dto.DictionaryDTO;
import com.blisgo.client.mapper.HomeMapper;

@Service
public class HomeServiceImpl implements HomeService {

	@Autowired
	private HomeMapper homeMapper;

	@Override
	public ArrayList<DictionaryDTO> recentProduct() {
		// TODO Auto-generated method stub
		return homeMapper.recentProduct();
	}

}
