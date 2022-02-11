package com.springboot.starbucks.web.dto.payment;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ProductOrderRespDto {

	private int user_id;
	private int product_code;
	private String order_charge;
	
}
