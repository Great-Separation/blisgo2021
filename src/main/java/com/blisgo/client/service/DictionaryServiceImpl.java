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

	private static int index = 0;

	@Override
	public ArrayList<DictionaryDTO> searchDictionary(DictionaryDTO search_dic) {
		// TODO 물품 조건부 검색
		index = 0;
		return dictionaryMapper.searchDictionary(search_dic.getCategory_big(), search_dic.getCategory_mid(),
				search_dic.getName(), 0, 12);
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
		while (tag_token_str.hasMoreTokens()) {
			multiple_query_in = multiple_query_in.concat("'" + tag_token_str.nextToken() + "',");
		}
		multiple_query_in = multiple_query_in.substring(0, multiple_query_in.length() - 1);
		return dictionaryMapper.printGuide(multiple_query_in);
	}

	@Override
	public ArrayList<DictionaryDTO> relatedProduct(ArrayList<String> getCategory_mid) {
		// TODO 선택된 태그중 임의 태그 하나와 관련된 물품들 무작위 4개 조회
		int size = getCategory_mid.size();
		Random rd = new Random();
		return dictionaryMapper.relatedProduct(getCategory_mid.get(rd.nextInt(size)));
	}

	@Override
	public ArrayList<DictionaryDTO> productLoadMore(DictionaryDTO search_dic) {
		// TODO 더보기
		index += 12;

		ArrayList<DictionaryDTO> result = null;

		// 더이상 조회되는 내용이 없을때의 오류 방지
		try {
			result = dictionaryMapper.searchDictionary(search_dic.getCategory_big(), search_dic.getCategory_mid(),
					search_dic.getName(), index, 12);
		} catch (Exception e) {
			// TODO 조회를 마침
			System.out.println("사전 물품>더이상 조회할 것이 없습니다");
			return null;
		}
		return result;
	}

	@Override
	public int getStar(int dic_no) {
		// TODO Auto-generated method stub
		return dictionaryMapper.getStar(dic_no);
	}

	@Override
	public void countHit(int dic_no) {
		// TODO Auto-generated method stub
		dictionaryMapper.countHit(dic_no);
	}

}
