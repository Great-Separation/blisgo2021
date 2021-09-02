package com.blisgo.client.service;

import com.blisgo.client.dto.BoardDTO;

import java.util.ArrayList;

public interface CommunityService {

    // 글 등록 메서드
    void regist(String email, String writer, String category, String title, String content);

    // 글 목록을 가지고 오는 메서드(페이징 없을때)
    ArrayList<BoardDTO> listBoard();

    // 글 목록을 가지고 오는 메서드(페이징했을때)
//    ArrayList<BoardDTO> listBoard(int startRow, int pageSize);

    // 글 상세보기 요청을 처리할 메서드
    BoardDTO contentBoard(int bd_no);


}
