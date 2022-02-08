package com.springboot.starbucks.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PageController {

	@GetMapping({ "/", "/index" })
	public String indexPage() {
		return "index";
	}

	@GetMapping("/auth/signin")
	public String signinPage() {
		return "auth/signin";
	}

	@GetMapping("/auth/signup")
	public String signupPage() {
		return "auth/signup";
	}

	@GetMapping("/admin/admin_product_upload")
	public String adminPage() {
		return "admin/admin_product_upload";
	}

	@GetMapping("/products/product_lists")
	public String productCategory() {
		return "/products/product_list";
	}
	
	@GetMapping("/mypage")
	public String mypage() {
		return "/mypage/mypage";
	}
	
	@GetMapping("/mypage_dtl")
	public String mypageDtl() {
		return "/mypage/mypage_dtl";
	}
	@GetMapping("/mypage_product")
	public String mypageProduct() {
		return "/mypage/mypage_product";
	}
}
