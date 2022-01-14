package com.springboot.starbucks.web.dto.auth;

import com.springboot.starbucks.domain.user.User;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class SingupRespDto {
	
	private String username;
	private String password;
	private String name;
	private String email;
	
	public User toEntity() {
		return User.builder()
				.username(username)
				.password(password)
				.name(name)
				.email(email)
				.build();
	}

}
