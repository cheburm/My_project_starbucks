package com.springboot.starbucks.web.dto.mypage;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.multipart.MultipartFile;

import com.springboot.starbucks.domain.user.User;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class MypageReqDto {

	private int user_id;
	private String name;
	private MultipartFile profile_img;
	
	private String password_old;
	private String password_new;
	
	public User toMypageEntity(int id) {
		return User.builder()
				.id(id)
				.name(name)
				.password(new BCryptPasswordEncoder().encode(password_new))
				.build();
	}
}
