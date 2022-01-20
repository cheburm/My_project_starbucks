package com.springboot.starbucks.domain.admin;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ProductRepository {

	public int insertProduct(Product product);
}
