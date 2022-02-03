package com.springboot.starbucks.domain.admin;

import java.time.LocalDateTime;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class ProductDtl {
	
	private int user_id;
	private int product_code;
	private int total_score;
	private String review_write;
	private List<String> review_files;
	private LocalDateTime create_date;
	private LocalDateTime update_date;
}
