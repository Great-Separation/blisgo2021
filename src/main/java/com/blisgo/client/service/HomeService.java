package com.blisgo.client.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.blisgo.client.dto.DictionaryDTO;

public interface HomeService {

	// 최근 등록된 물품 출력 메서드
	ArrayList<DictionaryDTO> recentProduct();

	// 조회가 많은 물품 출력 메서드
	ArrayList<DictionaryDTO> rankedProduct();
}
