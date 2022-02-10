package com.springboot.starbucks.web.service;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Service;

import com.springboot.starbucks.config.auth.PrincipalDetails;
import com.springboot.starbucks.domain.mypage.MypageRepository;
import com.springboot.starbucks.domain.user.User;
import com.springboot.starbucks.web.dto.mypage.MypageReqDto;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MypageServiceImpl implements MypageService {

	@Value("${file.path}")
	private String filePath;

	private final MypageRepository mypageRepository;

	@Override
	public int updateMypageProfile(MypageReqDto mypageReqDto,@AuthenticationPrincipal PrincipalDetails principalDetails) {
		int result = 0;
		String originFileName = mypageReqDto.getProfile_img().getOriginalFilename();
		String originFileExtension = originFileName.substring(originFileName.lastIndexOf("."));
		String tempfilename = UUID.randomUUID().toString().replaceAll("-", "") + originFileExtension;
		String userFolder = "profile/" + mypageReqDto.getUser_id() + "/";
		String imageFilePath = filePath + userFolder + tempfilename;
		File file = new File(imageFilePath);

		if (!file.exists()) {
			file.mkdirs(); // 폴더경로 생성
		}

		try {
			mypageReqDto.getProfile_img().transferTo(file); // 파일을 복붙느낌
			User userEntity = mypageReqDto.toMypageEntity();
			userEntity.setProfile_img(tempfilename);
			result = mypageRepository.insertProfileName(userEntity);
			principalDetails.getUser().setProfile_img(userEntity.getProfile_img());
			principalDetails.getUser().setName(userEntity.getName());
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		return result;
	}

}
