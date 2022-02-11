package com.springboot.starbucks.web.dto.payment;

import java.time.LocalDate;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ProductOrderReqDto {

	private int user_id;
	private int product_code;
	private String product_name;
	private int product_price;
	private String product_img;
	private String order_charge;
	private LocalDate create_date;
}
