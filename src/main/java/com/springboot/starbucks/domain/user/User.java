package com.springboot.starbucks.domain.user;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class User {

	private int id;
	private String username;
	private String oauth2_username;
	private String password;
	private String name;
	private String email;
	private String provider;
	private String role;
	
	
	private LocalDateTime create_date;
	private LocalDateTime update_date;
}
