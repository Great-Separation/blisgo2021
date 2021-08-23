package com.blisgo.client.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blisgo.client.mapper.DictionaryMapper;

@Service
public class DictionaryServiceImpl {
	@Autowired
	private DictionaryMapper dictionaryMapper;
}
