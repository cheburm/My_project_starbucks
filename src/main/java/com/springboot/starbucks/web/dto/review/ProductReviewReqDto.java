package com.springboot.starbucks.web.dto.review;

import org.springframework.web.multipart.MultipartFile;

import com.springboot.starbucks.domain.admin.ProductDtl;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ProductReviewReqDto {

	private int product_code;
	private int user_id;
	private String product_name;
	private int total_score;
	private String review_write;
	private MultipartFile[] review_files;
	private double product_total_score;
	private int product_total_review;
	
	public ProductDtl toDtlEntity() {
		return ProductDtl.builder()
				.user_id(user_id)
				.product_code(product_code)
				.total_score(total_score)
				.review_write(review_write)
				.build();
	}

}
