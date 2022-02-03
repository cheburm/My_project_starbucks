package com.springboot.starbucks.web.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.springboot.starbucks.web.dto.admin.ProductReqDto;
import com.springboot.starbucks.web.dto.review.ProductReviewReqDto;
import com.springboot.starbucks.web.service.ProductService;
import com.springboot.starbucks.web.service.ReviewService;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class ProductController {

	private final ProductService productService;
	private final ReviewService reviewService;

	@PostMapping("/admin/productUpload")
	public String productUpload(ProductReqDto productReqDto) {
		productService.productUpload(productReqDto);
		return null;
	}

	@GetMapping("/category/{productCategoryName}")
	public ModelAndView producytListPage(@PathVariable String productCategoryName) {
		ModelAndView mav = new ModelAndView("/products/product_list");
		mav.addObject("product", productService.getProductList(productCategoryName));
		return mav;
	}

	@GetMapping("/product/{product_code}")
	public ModelAndView productDtlPage(@PathVariable int product_code) {
		ModelAndView mav = new ModelAndView("/products/product_dtl_info");
		mav.addObject("productDtl", productService.getProductDtl(product_code));
		return mav;
	}

	@GetMapping("/review/{product_code}")
	public ModelAndView revieWritePage(@PathVariable int product_code) {
		ModelAndView mav = new ModelAndView("/review_write");
		mav.addObject("product", reviewService.productReviewPage(product_code));
		return mav;
	}

	@PostMapping("/review-insert")
	public String productReviewUpload(ProductReviewReqDto productReviewReqDto) {
		System.out.println("sdsd"+productReviewReqDto);
		return Integer.toString(reviewService.productReviewUpload(productReviewReqDto));
	}

}
