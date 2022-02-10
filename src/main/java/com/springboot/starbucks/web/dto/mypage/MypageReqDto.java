package com.springboot.starbucks.web.dto.mypage;

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
	
	public User toMypageEntity() {
		return User.builder()
				.id(user_id)
				.name(name)
				.build();
	}
}
