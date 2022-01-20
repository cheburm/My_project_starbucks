package com.springboot.starbucks.web.dto.admin;

import java.time.LocalDateTime;

import org.springframework.web.multipart.MultipartFile;

import com.springboot.starbucks.domain.admin.Product;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class ProductDto {

	private String product_name;
	private int product_price;
	private MultipartFile product_img;
	private String[] product_categoryName;
	
	public Product toProductEntity() {
		return Product.builder()
				.product_name(product_name)
				.product_price(product_price)
				.product_categoryName(product_categoryName)
				.build();
	}
}
