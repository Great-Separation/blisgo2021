package com.blisgo.client.service;

import java.util.ArrayList;
import java.util.Random;
import java.util.StringTokenizer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blisgo.client.dto.DictionaryDTO;
import com.blisgo.client.dto.GuideDTO;
import com.blisgo.client.mapper.DictionaryMapper;

@Service
public class DictionaryServiceImpl implements DictionaryService {
	@Autowired
	private DictionaryMapper dictionaryMapper;

	@Override
	public ArrayList<DictionaryDTO> searchDictionary(DictionaryDTO search_dic) {
		// TODO 물품 조건부 검색
		return dictionaryMapper.searchDictionary(search_dic.getCategory_big(), search_dic.getCategory_mid(),
				search_dic.getName());
	}

	@Override
	public DictionaryDTO productInfo(int dic_no) {
		// TODO 물품 정보 출력
		return dictionaryMapper.productInfo(dic_no);
	}

	@Override
	public ArrayList<GuideDTO> printGuide(String getCategory_mid) {
		// TODO 받은 태그 문자열을 토큰으로 쪼갠 다음 mapper 쿼리문에 사용된 IN 절을 충족하게끔 문자열 재가공
		String multiple_query_in = "";
		StringTokenizer tag_token_str = new StringTokenizer(getCategory_mid, "/");
		System.out.println("getCategory_mid>" + getCategory_mid);
		while (tag_token_str.hasMoreTokens()) {
			multiple_query_in = multiple_query_in.concat("'" + tag_token_str.nextToken() + "',");
		}
		multiple_query_in = multiple_query_in.substring(0, multiple_query_in.length() - 1);
		System.out.println(multiple_query_in);
		return dictionaryMapper.printGuide(multiple_query_in);
	}

	@Override
	public ArrayList<DictionaryDTO> relatedProduct(ArrayList<String> getCategory_mid) {
		// TODO 선택된 태그중 임의 태그 하나와 관련된 물품들 무작위 4개 조회
		int size = getCategory_mid.size();
		System.out.println("size>"+size);
		Random rd = new Random();
		return dictionaryMapper.relatedProduct(getCategory_mid.get(rd.nextInt(size)));
	}

}
