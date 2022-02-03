package com.springboot.starbucks.web.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.springboot.starbucks.domain.admin.Product;
import com.springboot.starbucks.domain.admin.ProductDtl;
import com.springboot.starbucks.domain.admin.ProductRepository;
import com.springboot.starbucks.web.dto.review.ProductReviewReqDto;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ReviewServiceImpl implements ReviewService {

	@Value("${file.path}")
	private String filePath;

	private final ProductRepository productRepository;

	@Override
	public Product productReviewPage(int product_code) {
		return productRepository.getProductByProduct(product_code);
	}

	@Override
	public List<String> productReviewFiles(ProductReviewReqDto productReviewReqDto) {

		MultipartFile[] multipartFiles = productReviewReqDto.getReview_files();
		ArrayList<String> productReviewFiles = new ArrayList<String>();

		for (MultipartFile multipartFile : multipartFiles) {
			String originReviewFileName = multipartFile.getOriginalFilename();

			String originFileExtension = originReviewFileName.substring(originReviewFileName.lastIndexOf("."));
			String tempFile = UUID.randomUUID().toString().replaceAll("-", "") + originFileExtension;
			String productFolder = filePath + "productReview/" + productReviewReqDto.getProduct_name() + "/" + tempFile;
			productReviewFiles.add(tempFile);
			
			File file = new File(productFolder);

			if (!file.exists()) {
				file.mkdirs();
			}
			try {
				multipartFile.transferTo(file);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
			
		}
		return productReviewFiles;
	}

	@Override
	public int productReviewUpload(ProductReviewReqDto productReviewReqDto) {
		List<String> productReviewFiles = productReviewFiles(productReviewReqDto);
		ProductDtl productDtl = productReviewReqDto.toDtlEntity();
		productDtl.setReview_files(productReviewFiles);
		
		return productRepository.insertProductReview(productDtl);
	}

}
