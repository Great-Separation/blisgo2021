package com.blisgo.client.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blisgo.client.mapper.CommunityMapper;

@Service
public class CommunityServiceImpl {
	@Autowired
	private CommunityMapper communityMapper;
}
