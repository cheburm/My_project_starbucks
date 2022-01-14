package com.springboot.starbucks.web.service;

import com.springboot.starbucks.web.dto.auth.SingupRespDto;

public interface AuthService {
	public int signup_usernameCheck(SingupRespDto singupRespDto);
	public int signup(SingupRespDto singupRespDto);

}
