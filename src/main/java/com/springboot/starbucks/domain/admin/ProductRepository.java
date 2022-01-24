package com.springboot.starbucks.domain.admin;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ProductRepository {

	public int insertProduct(Product product);
	// 카테고리별 상품리스트 불러오기
	public List<Product> getProductByProductCategoryName(String productCategoryName);
	// 모든상품 리스트 불러오기
	public List<Product> getProductByProductCategoryAll(String productCategoryName);
	
	public Product getProductByProductDtl(int product_code);
}
