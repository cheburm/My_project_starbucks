package com.springboot.starbucks.web.controller;

import java.util.List;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.springboot.starbucks.config.auth.PrincipalDetails;
import com.springboot.starbucks.domain.admin.Product;
import com.springboot.starbucks.web.dto.admin.ProductReqDto;
import com.springboot.starbucks.web.dto.admin.ProductRespDto;
import com.springboot.starbucks.web.dto.review.ProductReviewReqDto;
import com.springboot.starbucks.web.dto.review.ProductReviewRespDto;
import com.springboot.starbucks.web.service.ProductService;
import com.springboot.starbucks.web.service.ReviewService;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class ProductController {

	private final ProductService productService;
	private final ReviewService reviewService;

	@GetMapping({ "/", "/index" })
	public ModelAndView indexPage() {
		ModelAndView mav = new ModelAndView("/index");
		mav.addObject("productAll", productService.getIndexProductAllList());
		mav.addObject("bestProduct",productService.getIndexBestProductList());
		return mav;
	}
	
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
	
	@GetMapping("/category/{productCategoryName}/{freeShippingFlag}")
	public List<Product> freeShippingProductList(@PathVariable String productCategoryName,@PathVariable boolean freeShippingFlag) {
		return productService.getFreeShippingProductList(productCategoryName, freeShippingFlag);
	}

	@GetMapping("/product/{product_code}")
	public ModelAndView productDtlPage(@PathVariable int product_code) {
		ModelAndView mav = new ModelAndView("/products/product_dtl_info");
		mav.addObject("productDtl", productService.getProductDtl(product_code));
		mav.addObject("reviewAndScore",productService.getProductScoreAndReview(product_code));
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
		String result = Integer.toString(reviewService.productReviewUpload(productReviewReqDto));
		return result;
	}
	
	@GetMapping("/totalReviewShow/{product_code}")
	public List<ProductReviewRespDto> getProductReview(@PathVariable int product_code) {
		return reviewService.getProductReview(product_code);
	}
	
	@GetMapping("/product_order/{product_code}")
	public String productOrder(@PathVariable int product_code, @AuthenticationPrincipal PrincipalDetails principalDetails) {
		int result = productService.productOrderUpload(product_code, principalDetails);
		System.out.println(result);
		return Integer.toString(result);
	}
	
	@GetMapping("/mypage_product_dtl/{mypageProductDtlType}")
	public ModelAndView mypageProductDtl(@PathVariable String mypageProductDtlType, @AuthenticationPrincipal PrincipalDetails principalDetails) {
		ModelAndView mav = new ModelAndView("/mypage/mypage_product_dtl");
		mav.addObject("mypageProductDtlType", mypageProductDtlType);
		if (mypageProductDtlType.equals("order_list")) {
			mav.addObject("productOrderList", productService.getProductOrderList(principalDetails));
		}
		System.out.println(mav);
		return mav;
	}

}
