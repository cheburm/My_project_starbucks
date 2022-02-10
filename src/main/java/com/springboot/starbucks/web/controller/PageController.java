package com.springboot.starbucks.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

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
	@GetMapping("/mypage_dtl/{mypageDtlType}")
	public ModelAndView mypageDtl(@PathVariable String mypageDtlType) {
		ModelAndView mav = new ModelAndView("/mypage/mypage_dtl");
		mav.addObject("mypageDtlType", mypageDtlType);
		return mav;
	}
	@GetMapping("/mypage_product")
	public String mypageProduct() {
		return "/mypage/mypage_product";
	}
}
