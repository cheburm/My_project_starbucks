package com.springboot.starbucks.web.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.springboot.starbucks.domain.admin.Product;
import com.springboot.starbucks.domain.admin.ProductDtl;
import com.springboot.starbucks.domain.admin.ProductRepository;
import com.springboot.starbucks.web.dto.review.ProductReviewReqDto;
import com.springboot.starbucks.web.dto.review.ProductReviewRespDto;

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
			String productFolder = filePath + "productReview/" + productReviewReqDto.getProduct_code() + "/" + tempFile;
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
		int result = productRepository.insertProductReview(productDtl);

		int product_total_review = 0;
		double product_total_score = 0;
		double totalAddScore = 0;
		List<Integer> scoreAndReview = productRepository.getProductDtlInfoByProductDtl(productReviewReqDto.getProduct_code());

		for (int reviewSore : scoreAndReview) {
			++product_total_review;
			totalAddScore += reviewSore;
		}
		product_total_score = totalAddScore / product_total_review;
		ProductDtl productDtlEntity = ProductDtl.builder()
				.product_code(productReviewReqDto.getProduct_code())
				.product_total_review(product_total_review)
				.product_total_score(Math.round(product_total_score*10)/10.0)
				.build();
		
		productRepository.updateProductDtlInfoByProductDtl(productDtlEntity);
		return result;
	}

	@Override
	public List<ProductReviewRespDto> getProductReview(int product_code) {
		List<ProductDtl> reviewEntityList = productRepository.getProductDtlByProductDtl(product_code);
		List<ProductReviewRespDto> reviewList = new ArrayList<ProductReviewRespDto>();

		// 리뷰 코드를 중복없이 담기위해 SET추가
		Set<Integer> reviewCountSet = new HashSet<Integer>();
		// foreach문으로 리뷰코드를 중복없이 담는다
		for (ProductDtl productDtl : reviewEntityList) {
			reviewCountSet.add(productDtl.getReview_code());
		}

		System.out.println("set count: " + reviewCountSet.size());
		int j = 0;
		for (int i = 0; i < reviewCountSet.size(); i++) {
			ProductDtl productDtl = reviewEntityList.get(j);
			// 윗줄에 레파지토리의 result값을 List로 변수에담아 j번째의값을 RespDto에 담는다
			ProductReviewRespDto productReviewRespDto = ProductReviewRespDto.builder()
					.review_code(productDtl.getReview_code()).product_code(productDtl.getProduct_code())
					.user_id(productDtl.getUser_id()).username(productDtl.getUsername())
					.profile_img(productDtl.getProfile_img()).total_score(productDtl.getTotal_score())
					.review_write(productDtl.getReview_write()).create_date(productDtl.getCreate_date().toLocalDate())
					.build();

			List<String> review_files = new ArrayList<String>();
			// 105번째의 j번째 리뷰 코드와 90번째줄 코드를 비교하면서 코드가 다를때까지 파일명을 윗줄에 추가한List에 add시키면서 j++를
			// 무한반복한다.
			// try catch문은 데이터베이스에 마지막인덱스를 초과했을시 Exception이 떴을때 catch문을 실행해 while문 탈출
			while (true) {
				try {
					ProductDtl nowProductDtl = reviewEntityList.get(j);
					if (productDtl.getReview_code() != nowProductDtl.getReview_code()) {
						break;
					}
					review_files.add(nowProductDtl.getReview_file());
					j++;
				} catch (Exception e) {
					break;
				}
			}
			// 100번째줄 추가한List에 담은 파일리스트들을 RespDto안에 파일 List에 옮겨준다
			productReviewRespDto.setReview_files(review_files); // 하나의 리스트만담고
			reviewList.add(productReviewRespDto); // respDto에 추가
		}

		return reviewList;
	}

}
