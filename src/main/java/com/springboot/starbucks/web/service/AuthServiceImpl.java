package com.springboot.starbucks.web.service;

import org.springframework.stereotype.Service;

import com.springboot.starbucks.domain.user.User;
import com.springboot.starbucks.domain.user.UserRepository;
import com.springboot.starbucks.web.dto.auth.SingupRespDto;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class AuthServiceImpl implements AuthService{

	private final UserRepository userRepository;

	@Override
	public int signup_usernameCheck(SingupRespDto singupRespDto) {
		int result = 0;
		result = userRepository.usernameCheck(singupRespDto);
		return result;
	}
	
	@Override
	public int signup(SingupRespDto singupRespDto) {
		User user = singupRespDto.toEntity();
		int result = userRepository.signup(user);
		return result;
	}
}
