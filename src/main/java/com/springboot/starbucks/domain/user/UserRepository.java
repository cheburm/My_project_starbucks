package com.springboot.starbucks.domain.user;

import org.apache.ibatis.annotations.Mapper;

import com.springboot.starbucks.web.dto.auth.SingupRespDto;

@Mapper
public interface UserRepository {
	public int usernameCheck(SingupRespDto singupRespDto);
	public int signup(User user);

}
