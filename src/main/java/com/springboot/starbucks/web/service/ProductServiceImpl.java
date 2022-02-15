package com.springboot.starbucks.web.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.springboot.starbucks.config.auth.PrincipalDetails;
import com.springboot.starbucks.domain.admin.Product;
import com.springboot.starbucks.domain.admin.ProductDtl;
import com.springboot.starbucks.domain.admin.ProductRepository;
import com.springboot.starbucks.web.dto.admin.ProductReqDto;
import com.springboot.starbucks.web.dto.admin.ProductRespDto;
import com.springboot.starbucks.web.dto.payment.ProductOrderReqDto;
import com.springboot.starbucks.web.dto.payment.ProductOrderRespDto;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ProductServiceImpl implements ProductService {

	@Value("${file.path}")
	private String filePath;

	private final ProductRepository productRepository;

	@Override
	public void productUpload(ProductReqDto productReqDto) {
		String productFile[] = { productReqDto.getProduct_img().getOriginalFilename(),
				productReqDto.getProduct_introduction_img().getOriginalFilename() };
		String adminFolder;
		Product productEntity = productReqDto.toProductEntity();

		for (int i = 0; i < productFile.length; i++) {
			String originFileName = productFile[i];
			String originFileExtension = originFileName.substring(originFileName.lastIndexOf("."));
			String tempFileName = UUID.randomUUID().toString().replaceAll("-", "") + originFileExtension;
			if (i == 0) {
				adminFolder = "products/";
			} else {
				adminFolder = "productDtls/";
			}
			String imageFilePath = filePath + adminFolder + tempFileName;
			File productImgFile = new File(imageFilePath);

			if (!productImgFile.exists()) {
				productImgFile.mkdirs();
			}

			if (i == 0) {
				try {
					productReqDto.getProduct_img().transferTo(productImgFile);
					productEntity.setProduct_img(tempFileName);
				} catch (IllegalStateException | IOException e) {
					e.printStackTrace();
				}
			} else {
				try {
					productReqDto.getProduct_introduction_img().transferTo(productImgFile);
					productEntity.setProduct_introduction_img(tempFileName);
				} catch (IllegalStateException | IOException e) {
					e.printStackTrace();
				}
			}
		}
		productRepository.insertProduct(productEntity);
	}

	@Override
	public ProductRespDto getProductList(String productCategoryName) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("tumbler", "텀블러");
		map.put("coldCup", "콜드컵");
		map.put("thermos", "보온병");
		map.put("waterBottle", "워터보틀");
		map.put("mugAndCup", "머그컵");
		map.put("lifeStyle", "라이프스타일");
		map.put("teaAndCoffeeSupplie", "커피용품");
		map.put("productAll", "전체상품");

		ProductRespDto productRespDto = new ProductRespDto();
		List<Product> productListAll = null;
		if (productCategoryName.equals("productAll")) {
			productListAll = (productRepository.getProductByProductCategoryAll(map.get(productCategoryName)));
		} else {
			productListAll = (productRepository.getProductByProductCategoryName(map.get(productCategoryName)));
		}
		productRespDto.setProductList(productListAll);
		productRespDto.setProductCategoryName(map.get(productCategoryName));

		return productRespDto;
	}

	@Override
	public Product getProductDtl(int product_code) {
		Product productDtl = productRepository.getProductByProductDtl(product_code);
		return productDtl;
	}

	@Override
	public int productOrderUpload(int product_code, PrincipalDetails principalDetails) {
		ProductOrderRespDto productOrderRespDto = productRepository.getProductInfoByProductCode(product_code)
				.toProductOrderEntity();
		productOrderRespDto.setOrder_charge("결제완료");
		productOrderRespDto.setUser_id(principalDetails.getUser().getId());
		int result = productRepository.insertOrderProduct(productOrderRespDto);
		return result;
	}

	@Override
	public List<ProductOrderReqDto> getProductOrderList(PrincipalDetails principalDetails) {
		return productRepository.getProductOrderListByUserId(principalDetails.getUser().getId());
	}

	@Override
	public ProductRespDto getProductScoreAndReview(int product_code) {
		ProductRespDto productRespDto = new ProductRespDto();
		int totalReview = 0;
		double totalScore = 0;
		double totalAddScore = 0;
		List<Integer> scoreAndReview = productRepository.getProductReviewByProductCode(product_code);
		if (scoreAndReview.indexOf(null) == -1) {
			for (int reviewSore : scoreAndReview) {
				++totalReview;
				totalAddScore += reviewSore;
			}
			totalScore = totalAddScore / totalReview;
		}


		productRespDto.setTotal_review(totalReview);
		productRespDto.setTotal_score(totalScore);

		return productRespDto;
	}

}
