package com.springboot.starbucks.web.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.springboot.starbucks.web.dto.admin.ProductReqDto;
import com.springboot.starbucks.web.service.ProductService;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class ProductController {
	
	private final ProductService productService;
	
	@PostMapping("/admin/productUpload")
	public String productUpload(ProductReqDto productReqDto) {
		productService.productUpload(productReqDto);
		return null;
	}
	
	@GetMapping("/category/{productCategoryName}")
	public String producytListPage(@PathVariable String productCategoryName) {
		String product = productService.getproductList(productCategoryName).toString();
		return product;
	}
	
}
