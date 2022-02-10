package com.springboot.starbucks.domain.mypage;

import org.apache.ibatis.annotations.Mapper;

import com.springboot.starbucks.domain.user.User;

@Mapper
public interface MypageRepository {
	public int insertProfileName(User user);

}
