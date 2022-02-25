package com.springboot.starbucks.domain.mypage;

import org.apache.ibatis.annotations.Mapper;

import com.springboot.starbucks.domain.user.User;
import com.springboot.starbucks.web.dto.mypage.MypageReqDto;

@Mapper
public interface MypageRepository {
	
	// 마이페이지 사진변경 및 별명 수정
	public int updateProfileName(User user);

	// 마이페이지 비밀번호 수정
	public int updatePassword(User user);
}
