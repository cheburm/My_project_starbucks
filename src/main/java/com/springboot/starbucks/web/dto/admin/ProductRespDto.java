package com.springboot.starbucks.web.dto.admin;

import java.util.List;

import com.springboot.starbucks.domain.admin.Product;

import lombok.Data;

@Data
public class ProductRespDto {

	private List<Product> productList;
	private String productCategoryName;
	
	private double total_score;
	private int total_review;
}
