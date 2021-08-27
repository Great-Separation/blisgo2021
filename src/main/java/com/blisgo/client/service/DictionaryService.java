package com.blisgo.client.service;

import java.util.ArrayList;
import java.util.StringTokenizer;

import com.blisgo.client.dto.DictionaryDTO;
import com.blisgo.client.dto.GuideDTO;

public interface DictionaryService {

	// 사전 조회 메서드
	ArrayList<DictionaryDTO> searchDictionary(DictionaryDTO search_dic);

	// 물품 상세 내용 보는 메서드
	DictionaryDTO productInfo(int dic_no);

	// 분리배출 가이드 출력 메서드
	ArrayList<GuideDTO> printGuide(String getCategory_mid);
	
	// 연관 물품 나열 메서드
	ArrayList<DictionaryDTO> relatedProduct(ArrayList<String> getCategory_mid);
}
