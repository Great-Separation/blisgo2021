package com.blisgo.client.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Select;

import com.blisgo.client.dto.DictionaryDTO;

public interface HomeMapper {

	// 최근 등록된 물품 출력 메서드
	@Select("SELECT * FROM DICTIONARY order by dic_no desc limit 12")
	ArrayList<DictionaryDTO> recentProduct();
}
