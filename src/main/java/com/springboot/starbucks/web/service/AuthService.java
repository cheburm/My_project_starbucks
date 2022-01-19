package com.springboot.starbucks.web.service;

import com.springboot.starbucks.web.dto.auth.SingupReqDto;

public interface AuthService {
	public int signup_usernameCheck(SingupReqDto singupRespDto);
	public int signup(SingupReqDto singupRespDto);

}
