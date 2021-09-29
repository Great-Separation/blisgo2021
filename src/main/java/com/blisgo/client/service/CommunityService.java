package com.blisgo.client.service;

import java.util.ArrayList;

import com.blisgo.client.dto.BoardDTO;
import com.blisgo.client.dto.CommentDTO;
import com.blisgo.client.dto.UserDTO;
import org.apache.ibatis.annotations.Param;

public interface CommunityService {

	// 글 등록 메서드
	void regist(String email, String writer,String category, String title, String content);

	// 글 목록을 가지고 오는 메서드(페이징 없을때)
	ArrayList<BoardDTO> listBoard();

	// 글 목록을 가지고 오는 메서드(페이징했을때)
	// ArrayList<BoardDTO> listBoard(int startRow, int pageSize);

	// 글 상세보기 요청을 처리할 메서드
	BoardDTO contentBoard(int bd_no);

	// 댓글 불러오는 메서드
	ArrayList<CommentDTO> getComment(int bd_no);

	// 댓글 추가하는 메서드
	void addComment(int bd_no, int mem_no, String content);

	// 댓글 작성자 정보 출력(닉네임, 프로필 이미지) 메서드
	UserDTO getCommentUser(int mem_no);

	// 댓글 삭제 메서드
	void removeComment(int comment_no, int bd_no);

	// 글 삭제 요청을 처리할 메서드
	void deleteBoard(int bd_no);

	// DB에 있는 view의 값을 증가 시켜주는 메서드
	void viewIncrease(int bd_no, int bd_views);

	void updateBoard(String bd_title, String bd_content, int bd_no);

	int getCountContentComment(int bd_no);

	//좋아요 +1
	void favoriteBoard(int bd_no, int bd_favorite);


}
