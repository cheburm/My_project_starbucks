package com.springboot.starbucks.web.service;

import java.util.List;

import com.springboot.starbucks.domain.admin.Product;
import com.springboot.starbucks.domain.admin.ProductDtl;
import com.springboot.starbucks.web.dto.review.ProductReviewReqDto;
import com.springboot.starbucks.web.dto.review.ProductReviewRespDto;

public interface ReviewService{
	
	public Product productReviewPage(int product_code);
	
	// 상품 리뷰파일 이름 수정 
	public List<String> productReviewFiles(ProductReviewReqDto productReviewReqDto);
	
	public int productReviewUpload(ProductReviewReqDto productReviewReqDto);
	
	public List<ProductReviewRespDto> getProductReview(int product_code);

}
