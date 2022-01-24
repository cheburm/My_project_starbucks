package com.springboot.starbucks.web.service;

import com.springboot.starbucks.domain.admin.Product;
import com.springboot.starbucks.web.dto.admin.ProductReqDto;
import com.springboot.starbucks.web.dto.admin.ProductRespDto;

public interface ProductService{

	public void productUpload(ProductReqDto productReqDto);
	public ProductRespDto getProductList(String productCategoryName);
	public Product getProductDtl(int product_code);
}
