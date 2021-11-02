package com.blisgo.client.mapper;

import com.blisgo.client.dto.BoardDTO;
import com.blisgo.client.dto.CommentDTO;

import org.apache.ibatis.annotations.*;

import java.sql.Timestamp;
import java.util.ArrayList;

public interface CommunityMapper {
	// 글 등록 메서드
	@Select("INSERT INTO board VALUES(null,#{bd_title},#{bd_writer},#{bd_content},#{bd_category},#{bd_date},#{bd_views},#{bd_favorite},#{bd_commentCount})")
	void regist(@Param("bd_title") String title, @Param("bd_writer") String writer, @Param("bd_content") String content,
			@Param("bd_category") String category,@Param("bd_date") Timestamp date, @Param("bd_views") int views,
			 @Param("bd_favorite") int favorite, @Param("bd_commentCount") int bd_commentCount);

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
	//게시글 삭제
	@Select("DELETE FROM board WHERE bd_no=#{bd_no}")
	void deleteBoard(@Param("bd_no") int bd_no);

	//조회수 +1
	@Update("UPDATE board SET bd_views=${bd_views}+1 WHERE bd_no=${bd_no}")
	void viewIncrease(@Param("bd_no") int bd_no, @Param("bd_views") int bd_views);

	// 글 수정 요청을 처리할 메서드
	@Update("UPDATE board SET bd_title=#{bd_title}, bd_content=#{bd_content} WHERE bd_no=#{bd_no}")
	void updateBoard(@Param("bd_title") String bd_title, @Param("bd_content") String bd_content,
					 @Param("bd_no") int bd_no);

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

	// 해당글의 댓글 개수를 받아오는 메서드
	@Select("SELECT COUNT(*) FROM comment WHERE bd_no=${bd_no}")
	int getCountContentComment(@Param("bd_no") int bd_no);

	//board 테이블에 댓글갯수 컬름을 맞게 수정합니다.
	@Update("UPDATE board SET bd_commentCount=${bd_commentCount} WHERE bd_no=${bd_no}")
	void updateCommentCount(@Param("bd_commentCount") int bd_commentCount, @Param("bd_no") int bd_no);

	//좋아요 +1 메소드
	@Update("UPDATE board SET bd_favorite=#{bd_favorite}+1 WHERE bd_no=#{bd_no}")
	void favoriteBoard(@Param("bd_favorite") int bd_favorite, @Param("bd_no") int bd_no);


}
