package com.springboot.starbucks.web.service;

import java.util.List;

import com.springboot.starbucks.config.auth.PrincipalDetails;
import com.springboot.starbucks.domain.admin.Product;
import com.springboot.starbucks.web.dto.admin.ProductReqDto;
import com.springboot.starbucks.web.dto.admin.ProductRespDto;
import com.springboot.starbucks.web.dto.payment.ProductOrderReqDto;

public interface ProductService{

	public void productUpload(ProductReqDto productReqDto);
	public ProductRespDto getProductList(String productCategoryName);
	public Product getProductDtl(int product_code);
	
	public int productOrderUpload(int product_code, PrincipalDetails principalDetails);
	public List<ProductOrderReqDto> getProductOrderList(PrincipalDetails principalDetails);
}
