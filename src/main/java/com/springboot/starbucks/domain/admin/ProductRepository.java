package com.springboot.starbucks.domain.admin;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ProductRepository {

	public int insertProduct(Product product);
	public List<Product> getProductByProductCategoryName(String productCategoryName);
}
