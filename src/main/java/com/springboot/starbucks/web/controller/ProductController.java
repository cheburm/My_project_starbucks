package com.springboot.starbucks.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.springboot.starbucks.web.dto.admin.ProductDto;
import com.springboot.starbucks.web.service.ProductUploadService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ProductController {
	
	private final ProductUploadService productUploadService;
	
	@PostMapping("/admin/productUpload")
	public String productUpload(ProductDto productDto) {
		System.out.println(productDto);
		productUploadService.productUpload(productDto);
	
		return "admin/admin_product_upload";
	}
}
