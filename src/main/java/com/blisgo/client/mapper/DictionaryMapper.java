package com.blisgo.client.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.blisgo.client.dto.DictionaryDTO;
import com.blisgo.client.dto.GuideDTO;

public interface DictionaryMapper {

	// 사전 조회 메서드
	@Select("SELECT * FROM DICTIONARY WHERE category_big like '%${category_big}%' and category_mid like '%${category_mid}%' and name like '%${category_small}%'")
	ArrayList<DictionaryDTO> searchDictionary(@Param("category_big") String category_big,
			@Param("category_mid") String category_mid, @Param("category_small") String name);

	// 물품 상세 내용 보는 메서드
	@Select("SELECT * FROM DICTIONARY WHERE dic_no = ${dic_no}")
	DictionaryDTO productInfo(@Param("dic_no") int dic_no);
	
	// 분리배출 가이드 이미지 출력 메서드
	@Select("SELECT * FROM GUIDE WHERE guide_name IN (${multiple_query_in})")
	ArrayList<GuideDTO> printGuide(String multiple_query_in);
	
	// 관련 물품 나열 메서드
	@Select("SELECT * FROM DICTIONARY WHERE category_mid like '%${category_mid}%' order by rand() limit 4")
	ArrayList<DictionaryDTO> relatedProduct(@Param("category_mid") String category_mid);
			
}
