package com.springboot.starbucks.config.oauth2.provider;

import com.springboot.starbucks.domain.user.User;

import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class OAuth2UserDto {

	private String oauth2_username;
	private String name;
	private String email;
	private String provider;
	private String role;
	
	public User toEntity() {
		return User.builder()
				.username(oauth2_username)
				.oauth2_username(oauth2_username)
				.name(name)
				.email(email)
				.provider(provider)
				.role(role)
				.build();
	}
}
