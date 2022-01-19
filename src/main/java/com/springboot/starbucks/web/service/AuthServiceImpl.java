package com.springboot.starbucks.web.service;

import org.springframework.stereotype.Service;

import com.springboot.starbucks.domain.user.User;
import com.springboot.starbucks.domain.user.UserRepository;
import com.springboot.starbucks.web.dto.auth.SingupReqDto;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class AuthServiceImpl implements AuthService{

	private final UserRepository userRepository;

	@Override
	public int signup_usernameCheck(SingupReqDto singupReqDto) {
		int result = 0;
		result = userRepository.usernameCheck(singupReqDto);
		return result;
	}
	
	@Override
	public int signup(SingupReqDto singupReqDto) {
		User user = singupReqDto.toEntity();
		int result = userRepository.insertUser(user);
		return result;
	}

}
