package com.springboot.starbucks.web.dto.admin;

import java.util.List;

import com.springboot.starbucks.domain.admin.Product;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ProductRespDto {

	private List<Product> productList;
	private String productCategoryNameKor;
	private String productCategoryNameEng;
	
	private int total_review;
	private double total_score;

}
