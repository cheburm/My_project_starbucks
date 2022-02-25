package com.springboot.starbucks.web.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.springboot.starbucks.config.auth.PrincipalDetails;
import com.springboot.starbucks.web.dto.mypage.MypageReqDto;
import com.springboot.starbucks.web.service.MypageService;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class MypageController {

	private final MypageService mypageService;
	
	@PutMapping("/mypage/profile")
	public String profileNameUpdate(MypageReqDto mypageReqDto,@AuthenticationPrincipal PrincipalDetails principalDetails) {
		return Integer.toString(mypageService.updateMypageProfile(mypageReqDto,principalDetails));
	}
	
	@PutMapping("/mypage/password")
	public String passwordUpdate(@RequestBody MypageReqDto mypageReqDto,@AuthenticationPrincipal PrincipalDetails principalDetails) {
		int result = mypageService.updateMypagePassword(mypageReqDto, principalDetails);
		return Integer.toString(result);
	}
}
