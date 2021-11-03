package com.blisgo.client.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.blisgo.client.dto.DictionaryDTO;
import com.blisgo.client.dto.GuideDTO;

public interface DictionaryMapper {

	// 사전 조회 메서드
	@Select("SELECT * FROM DICTIONARY WHERE category_big like '%${category_big}%' and category_mid like '%${category_mid}%' and name like '%${category_small}%' LIMIT ${index}, ${limit}")
	ArrayList<DictionaryDTO> searchDictionary(@Param("category_big") String category_big,
			@Param("category_mid") String category_mid, @Param("category_small") String name, int index, int limit);

	// 물품 상세 내용 보는 메서드
	@Select("SELECT * FROM DICTIONARY WHERE dic_no = ${dic_no}")
	DictionaryDTO productInfo(@Param("dic_no") int dic_no);

	// 분리배출 가이드 이미지 출력 메서드
	@Select("SELECT * FROM GUIDE WHERE guide_name IN (${multiple_query_in})")
	ArrayList<GuideDTO> printGuide(String multiple_query_in);

	// 관련 물품 나열 메서드
	@Select("SELECT * FROM DICTIONARY WHERE category_mid like '%${category_mid}%' order by rand() limit 4")
	ArrayList<DictionaryDTO> relatedProduct(@Param("category_mid") String category_mid);
	
	// 별점 매기는 메서드
	@Select("SELECT star FROM (SELECT *, NTILE(10) OVER (ORDER BY hit ASC) star FROM DICTIONARY) c WHERE dic_no=${dic_no}")
	int getStar(@Param("dic_no") int dic_no);
	
	// 사전 조회수 증가 메서드
	@Update("UPDATE DICTIONARY SET hit=hit+1 WHERE dic_no=${dic_no}")
	void countHit(@Param("dic_no") int dic_no);

}
