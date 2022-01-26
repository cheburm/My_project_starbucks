package com.springboot.starbucks.web.dto.admin;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.springboot.starbucks.domain.admin.Product;
import com.springboot.starbucks.domain.admin.ProductDtl;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class ProductReqDto {

	private String product_name;
	private int product_price;
	private MultipartFile product_img;
	private List<String> product_categoryName;
	private MultipartFile product_introduction_img;
	
	public Product toProductEntity() {
		return Product.builder()
				.product_name(product_name)
				.product_price(product_price)
				.product_categoryNames(product_categoryName)
				.build();
	}
	
}
