package com.springboot.starbucks.config.oauth2;

import java.util.Map;
import java.util.UUID;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import com.springboot.starbucks.config.auth.PrincipalDetails;
import com.springboot.starbucks.config.oauth2.provider.OAuth2UserDto;
import com.springboot.starbucks.domain.user.User;
import com.springboot.starbucks.domain.user.UserRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class PrincipalOauth2UserService extends DefaultOAuth2UserService{

	private final UserRepository userRepository;
	
	@Override
	public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
		OAuth2User oAuth2User = super.loadUser(userRequest);
		Map<String, Object> oauth2UserAttributes = oAuth2User.getAttributes();
		String provider = userRequest.getClientRegistration().getRegistrationId();
		String providerId = null;
		
		if (provider.equals("naver")) {
			oauth2UserAttributes = (Map<String, Object>) oauth2UserAttributes.get("response");
			providerId = (String)oauth2UserAttributes.get("id");
		} else {
			providerId = UUID.randomUUID().toString().replaceAll("-", "");
		}
		String oauth2_username = provider + "_" + providerId;
		
		OAuth2UserDto oAuth2UserDto = OAuth2UserDto.builder()
					.oauth2_username(oauth2_username)
					.name((String)oauth2UserAttributes.get("name"))
					.email((String)oauth2UserAttributes.get("email"))
					.provider(provider)
					.role("ROLE_USER")
					.build();
		
		User userEntity = userRepository.getUserByOAuth2Username(oauth2_username);
		if (userEntity == null) {
			userEntity = oAuth2UserDto.toEntity();
			userEntity.setPassword(new BCryptPasswordEncoder().encode("1234"));
			userRepository.insertUser(userEntity);
			userEntity = userRepository.getUserByOAuth2Username(oauth2_username);
		}
		
		return new PrincipalDetails(userEntity,oauth2UserAttributes);
		
	}
}
