package com.springboot.starbucks.web.service;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.springboot.starbucks.domain.admin.Product;
import com.springboot.starbucks.domain.admin.ProductRepository;
import com.springboot.starbucks.web.dto.admin.ProductDto;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ProductUploadServiceImpl implements ProductUploadService{
	
	@Value("${file.path}")
	private String filePath;

	private final ProductRepository productRepository;
	
	@Override
	public void productUpload(ProductDto productDto) {
		String originFileName = productDto.getProduct_img().getOriginalFilename();
		String originFileExtension = originFileName.substring(originFileName.lastIndexOf("."));
		String tempFileName = UUID.randomUUID().toString().replaceAll("-", "") + originFileExtension;
		String adminFolder = "products/";
		String imageFilePath = filePath + adminFolder + tempFileName;
		
		File productImgFile = new File(imageFilePath);
		
		if (!productImgFile.exists()) {
			productImgFile.mkdirs();
		}
		
		try {
			productDto.getProduct_img().transferTo(productImgFile);
			Product productEntity = productDto.toProductEntity();
			productEntity.setProduct_img(tempFileName);
			productRepository.insertProduct(productEntity);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		
	}

}
