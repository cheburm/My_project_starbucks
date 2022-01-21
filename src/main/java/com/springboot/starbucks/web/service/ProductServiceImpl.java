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

import com.springboot.starbucks.domain.admin.Product;
import com.springboot.starbucks.domain.admin.ProductRepository;
import com.springboot.starbucks.web.dto.admin.ProductReqDto;
import com.springboot.starbucks.web.dto.admin.ProductRespDto;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ProductServiceImpl implements ProductService{
	
	@Value("${file.path}")
	private String filePath;

	private final ProductRepository productRepository;
	
	@Override
	public void productUpload(ProductReqDto productReqDto) {
		String originFileName = productReqDto.getProduct_img().getOriginalFilename();
		String originFileExtension = originFileName.substring(originFileName.lastIndexOf("."));
		String tempFileName = UUID.randomUUID().toString().replaceAll("-", "") + originFileExtension;
		String adminFolder = "products/";
		String imageFilePath = filePath + adminFolder + tempFileName;
		
		File productImgFile = new File(imageFilePath);
		
		if (!productImgFile.exists()) {
			productImgFile.mkdirs();
		}
		
		try {
			productReqDto.getProduct_img().transferTo(productImgFile);
			Product productEntity = productReqDto.toProductEntity();
			productEntity.setProduct_img(tempFileName);
			productRepository.insertProduct(productEntity);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public ProductRespDto getproductList(String productCategoryName) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("tumbler", "텀블러");
		map.put("coldCup", "콜드컵");
		map.put("thermos", "보온병");
		map.put("waterBottle", "워터보틀");
		map.put("mugAndCup", "머그,컵");
		map.put("lifeStyle", "라이프스타일");
		map.put("teaAndCoffeeSupplie", "티,커피용품");
		map.put("productAll", "전체상품");
		
		
		ProductRespDto productRespDto = new ProductRespDto();
		List<Product> productListAll = (productRepository.getProductByProductCategoryName(map.get(productCategoryName)));
		productRespDto.setProductList(productListAll);
		productRespDto.setProductName(map.get(productCategoryName));

		return productRespDto;
	}

}
