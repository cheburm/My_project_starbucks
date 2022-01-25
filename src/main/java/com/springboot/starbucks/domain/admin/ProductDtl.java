package com.springboot.starbucks.domain.admin;

import java.time.LocalDateTime;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class ProductDtl {

	private int product_code;
	private MultipartFile product_introductionFile;
	private LocalDateTime create_date;
	private LocalDateTime update_date;
}
