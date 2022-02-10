package com.springboot.starbucks.web.service;

import org.springframework.security.core.annotation.AuthenticationPrincipal;

import com.springboot.starbucks.config.auth.PrincipalDetails;
import com.springboot.starbucks.web.dto.mypage.MypageReqDto;

public interface MypageService {
	
	public int updateMypageProfile(MypageReqDto mypageReqDto,@AuthenticationPrincipal PrincipalDetails principalDetails);

}
