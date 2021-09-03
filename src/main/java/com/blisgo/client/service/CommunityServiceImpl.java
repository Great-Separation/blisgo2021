package com.blisgo.client.service;

import com.blisgo.client.dto.BoardDTO;
import com.blisgo.client.mapper.CommunityMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.ArrayList;

@Service("CommunityService")
public class CommunityServiceImpl implements CommunityService{

	@Autowired
	private CommunityMapper communityMapper;

	//글등록 메서드
	@Override
	public void regist(String email, String writer, String category,String title, String content) {
		Timestamp date = new Timestamp(System.currentTimeMillis());
		communityMapper.regist(title, writer, category, content, date, 1, 0);
	}

	@Override
	public ArrayList<BoardDTO> listBoard() {

		return communityMapper.listBoard();
	}



	@Override
	public BoardDTO contentBoard(int bd_no) {

		return communityMapper.contentBoard(bd_no);
	}

}
