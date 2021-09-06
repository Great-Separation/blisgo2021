package com.blisgo.client.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.blisgo.client.dto.UserDTO;

public interface UserMapper {

	@Insert("INSERT INTO user_db(nickname, email, pass, memPoint, dogamList) VALUES (#{nickname}, #{email}, HEX(AES_ENCRYPT(#{pass},#{email})), 0, null)")
	void insertUser(String nickname, String email, String pass);

	@Select("SELECT CAST(AES_DECRYPT(UNHEX(pass), #{email}) AS CHAR) FROM user_db WHERE email=#{email}")
	String userLogin(String email);

	@Select("SELECT * FROM user_db WHERE email=#{email}")
	UserDTO getUser(String email);
	
	@Select("SELECT COUNT(*) FROM user_db WHERE email=#{email}")
	int emailCheck(String email);

	// 게시판 댓글 작성 사용자 정보 조회 메서드(프로필 이미지, 닉네임)
	@Select("SELECT * FROM user_db WHERE mem_no=${mem_no}")
	UserDTO getCommentUser(int mem_no);

}
