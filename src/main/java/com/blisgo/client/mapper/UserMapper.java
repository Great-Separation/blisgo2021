package com.blisgo.client.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.blisgo.client.dto.DictionaryDTO;
import com.blisgo.client.dto.UserDTO;

public interface UserMapper {
	// 회원 정보 생성 메서드 (비밀번호 암호화)
	@Insert("INSERT INTO user_db(nickname, email, pass, memPoint, dogamList) VALUES (#{nickname}, #{email}, HEX(AES_ENCRYPT(#{pass},#{email})), 0, null)")
	void insertUser(String nickname, String email, String pass);

	// 회원 로그인 메서드
	@Select("SELECT CAST(AES_DECRYPT(UNHEX(pass), #{email}) AS CHAR) FROM user_db WHERE email=#{email}")
	String userLogin(String email);

	// 회원 조회 메서드
	@Select("SELECT * FROM user_db WHERE email=#{email}")
	UserDTO getUser(String email);
	
	// 회원 이메일 중복 확인 메서드
	@Select("SELECT COUNT(*) FROM user_db WHERE email=#{email}")
	int emailCheck(String email);

	// 게시판 댓글 작성 사용자 정보 조회 메서드(프로필 이미지, 닉네임)
	@Select("SELECT * FROM user_db WHERE mem_no=${mem_no}")
	UserDTO getCommentUser(int mem_no);
	
	// 회원 정보 수정 메서드
	@Update("UPDATE user_db SET nickname=#{nickname} WHERE mem_no=#{mem_no}")
	void modifyAccount(String nickname, int mem_no);
	
	// 회원 탈퇴 메서드
	@Delete("DELETE FROM user_db WHERE mem_no=#{mem_no}")
	void deleteAccount(int mem_no);
	
	// 회원 비밀번호 변경 메서드
	@Update("UPDATE user_db SET pass=HEX(AES_ENCRYPT(#{pass}, #{email})) WHERE email=#{email}")
	void modifyPassword(String pass, String email);

	// 도감 목록 조회 메서드
	@Select("SELECT * FROM dictionary WHERE dic_no IN (${dogamList}) LIMIT ${index}, ${limit}")
	ArrayList<DictionaryDTO> mydogamList(@Param("dogamList")String dogamList, int index, int limit);
	
	// 회원 순위 조회 메서드
	@Select("SELECT @rownum:=@rownum+1 AS rankNum, user_db.* FROM (SELECT @rownum:=0) AS R, user_db ORDER BY memPoint DESC")
	ArrayList<UserDTO> rankList();
	
	// 북마크 기능 메서드
	@Update("UPDATE user_db SET dogamList = CASE WHEN dogamList='null' THEN #{dic_no} ELSE concat(dogamList,',',#{dic_no}) END WHERE mem_no =#{mem_no};")
	void dogamAddBookmark(int mem_no, String dic_no);
	
	// 회원 프로필 이미지 변경 메서드
	@Update("UPDATE user_db SET profile_image=#{img_url} where email=#{email}")
	void updateProfileImg(String img_url, String email);
}
