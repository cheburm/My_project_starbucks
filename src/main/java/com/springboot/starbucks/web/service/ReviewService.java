package com.springboot.starbucks.web.service;

import java.util.List;

import com.springboot.starbucks.domain.admin.Product;
import com.springboot.starbucks.web.dto.review.ProductReviewReqDto;

public interface ReviewService{
	
	public Product productReviewPage(int product_code);
	
	public List<String> productReviewFiles(ProductReviewReqDto productReviewReqDto);
	
	public int productReviewUpload(ProductReviewReqDto productReviewReqDto);

}
