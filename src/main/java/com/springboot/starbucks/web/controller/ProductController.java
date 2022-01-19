package com.springboot.starbucks.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class ProductController {

	@GetMapping("/category/{productCategoryName}")
	public String productCategoryPage(@PathVariable String productCategoryName) {
		return null;
	}
}
