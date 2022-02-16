package com.springboot.starbucks.domain.admin;

import java.time.LocalDateTime;
import java.util.List;

import com.springboot.starbucks.web.dto.admin.ProductRespDto;
import com.springboot.starbucks.web.dto.payment.ProductOrderRespDto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Product {
	
	private int product_code;
	private String product_name;
	private int product_price;
	private String product_img;
	private List<String> product_categoryNames;
	private String product_categoryName;
	private String product_introduction_img;
	private int total_review;
	private double total_score;
	
	private LocalDateTime create_date;
	private LocalDateTime update_date;
	
	public ProductOrderRespDto toProductOrderEntity() {
		return ProductOrderRespDto.builder()
				.product_code(product_code)
				.build();
	}

}
