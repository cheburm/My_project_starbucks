package com.springboot.starbucks.web.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.springboot.starbucks.web.dto.auth.SingupReqDto;
import com.springboot.starbucks.web.service.AuthService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
public class AuthController {

	private final AuthService authService;
	
	@GetMapping("/usernameCheck")
	public String usernameCheck(SingupReqDto singupRespDto) {
		int result = authService.signup_usernameCheck(singupRespDto);
		return Integer.toString(result);
	}
	
	@PostMapping("/auth/sign_up")
	public ModelAndView singupForm(SingupReqDto singupRespDto) {
		authService.signup(singupRespDto);
		ModelAndView mav = new ModelAndView("/auth/signin");
		return mav;
	}
	
}
