package com.springboot.starbucks.web.dto.review;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ProductReviewRespDto {

	private int review_code;
	private int user_id;
	private int total_score;
	private String review_write;
	private List<String> review_files;
}
