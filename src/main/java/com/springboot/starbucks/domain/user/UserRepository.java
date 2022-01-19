package com.springboot.starbucks.domain.user;

import org.apache.ibatis.annotations.Mapper;

import com.springboot.starbucks.web.dto.auth.SingupReqDto;

@Mapper
public interface UserRepository {
	public int usernameCheck(SingupReqDto singupReqDto);
	public int insertUser(User user);
	public User getUserByUsername(String username);
	public User getUserByOAuth2Username(String oauth2_username);

}
