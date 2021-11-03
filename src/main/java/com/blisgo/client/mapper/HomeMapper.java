package com.blisgo.client.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Select;

import com.blisgo.client.dto.DictionaryDTO;

public interface HomeMapper {

	// 최근 등록된 물품 출력 메서드
	@Select("SELECT * FROM DICTIONARY ORDER BY dic_no DESC LIMIT 12")
	ArrayList<DictionaryDTO> recentProduct();
	
	// 조회가 많은 물품 출력 메서드
	@Select("SELECT dic_no, name FROM DICTIONARY ORDER BY hit DESC LIMIT 3")
	ArrayList<DictionaryDTO> rankedProduct();
}
