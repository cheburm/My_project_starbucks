package com.springboot.starbucks.domain.admin;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.springboot.starbucks.web.dto.payment.ProductOrderReqDto;
import com.springboot.starbucks.web.dto.payment.ProductOrderRespDto;

@Mapper
public interface ProductRepository {

	public int insertProduct(Product product);
	// 카테고리별 상품리스트 불러오기
	public List<Product> getProductByProductCategoryName(String productCategoryName);
	
	// 모든상품 리스트 불러오기
	public List<Product> getProductByProductCategoryAll(String productCategoryName);
	
	// 상품 상세정보 불러오기
	public Product getProductByProductDtl(int product_code);
	
	// 상품리뷰창 불러오기
	public Product getProductByProduct(int product_code);
	
	// 상품리뷰 인설트
	public int insertProductReview(ProductDtl productDtl);
	
	// 상품리뷰 불러오기
	public List<ProductDtl> getProductDtlByProductDtl(int product_code);
	
	// 상품코드로 상품불러오기
	public Product getProductInfoByProductCode(int product_code);
	
	// 상품주문 리스트 인설트
	public int insertOrderProduct(ProductOrderRespDto productOrderRespDto);
	
	// 상품주문 리스트 불러오기
	public List<ProductOrderReqDto> getProductOrderListByUserId(int user_id);
}
