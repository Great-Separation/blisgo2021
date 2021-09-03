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
	
	
}
