package com.blisgo.client.mapper;

import com.blisgo.client.dto.BoardDTO;
import com.blisgo.client.dto.CommentDTO;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.sql.Timestamp;
import java.util.ArrayList;

public interface CommunityMapper {
	// 글 등록 메서드
	@Select("INSERT INTO board VALUES(null, #{bd_title}, #{bd_writer}, #{bd_category},#{bd_content} ,#{bd_date} ,#{bd_views},#{bd_favorite})")
	void regist(@Param("bd_title") String title, @Param("bd_writer") String writer,
			@Param("bd_category") String category, @Param("bd_content") String content,
			@Param("bd_date") Timestamp date, @Param("bd_views") int views, @Param("bd_favorite") int favorite);

	// 글 목록을 가지고 오는 메서드(페이징 처리를 안하고 목록전체 보여주기)
	@Select("SELECT * FROM board ORDER BY bd_no DESC")
	ArrayList<BoardDTO> listBoard();

	// 글 목록을 가지고 오는 메서드(페이징 처리를 했을때 이런식으로 구현할 예정)
//    @Select("SELECT * FROM board ORDER BY bd_no DESC LIMIT ${startRow}, ${pageSize};")
//    ArrayList<BoardDTO> listBoard(@Param("startRow") int startRow, @Param("pageSize") int pageSize);

	// 글 상세보기 요청을 처리할 메서드
	@Select("SELECT * FROM board WHERE bd_no=#{bd_no}")
	BoardDTO contentBoard(@Param("bd_no") int bd_no);

	// 글갯수를 받아온다.
	@Select("SELECT COUNT(*) FROM board")
	int getCountBoard();

	// 댓글 개수를 받아오는 메서드
	@Select("SELECT * FROM ")
	CommentDTO countBoardComment(int bd_no);

	// 댓글 불러오는 메서드
	@Select("SELECT * FROM comment WHERE bd_no=${bd_no}")
	ArrayList<CommentDTO> getComment(@Param("bd_no") int bd_no);

	// 댓글 추가하는 메서드
	@Insert("INSERT INTO comment VALUES(null, ${bd_no}, ${mem_no}, #{content}, #{comment_date})")
	void addComment(@Param("bd_no") int bd_no, @Param("mem_no") int mem_no, @Param("content") String content,
			@Param("comment_date") Timestamp comment_date);

	// 댓글 삭제하는 메서드
	@Delete("DELETE FROM comment WHERE comment_no=${comment_no} AND bd_no=${bd_no}")
	void removeComment(@Param("comment_no") int comment_no, @Param("bd_no") int bd_no);
}
