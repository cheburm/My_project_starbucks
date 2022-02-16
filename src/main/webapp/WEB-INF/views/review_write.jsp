<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/review_write.css">
    <title>리뷰쓰기</title>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>

<body>
    <div class="container">
        <div class="review-write-banner">
            리뷰쓰기
        </div>
        <div class="review-write-container">
            <div class="photo-review-banner">
                <div class="photo-review-guide-box">
                    <div class="photo-review-guide">
                        <i class="fas fa-camera"></i>
                        포토 첨부시 포인트 <span>250원</span>
                    </div>
                    <i class="fas fa-chevron-down"></i>
                </div>
                <ul class="review-another-guide">
                    <li>텍스트 리뷰 <span>100원</span></li>
                    <li>포토 리뷰 <span>250원</span></li>
                </ul>
            </div>
            <div class="review-product-info">
                <img src="/image/products/${product.product_img }" alt="">
                <div class="review-productdtl-info">
                    <p>[네이버] 스타벅스</p>
                    <h2>${product.product_name }</h2>
                </div>
            </div>
            <form>
	            <div class="review-product-score">
	                <strong class="review-product-score-msg">상품은 만족하셨나요?</strong>
	                <div class="product-score-give-box">
	                    <div class="product-score-give">
	                    	<input type="hidden" class="total-score" name="total_score">
	                        <button type="button" class="score-btn"><i class="fas fa-star"></i></button>
	                        <button type="button" class="score-btn"><i class="fas fa-star"></i></button>
	                        <button type="button" class="score-btn"><i class="fas fa-star"></i></button>
	                        <button type="button" class="score-btn"><i class="fas fa-star"></i></button>
	                        <button type="button" class="score-btn"><i class="fas fa-star"></i></button>
	                    </div>
	                    <span class="score-msg">선택하세요.</span>
	                </div>
	            </div>
	            <div class="review-product-write">
		            <div class="review-product-write-msg">
		                <strong>어떤 점이 좋았나요?</strong>
		            </div>
	                <div class="review-write-box">
	                    <textarea class="review-write" name="review_write" placeholder="최소 10자 이상 입력해주세요."></textarea>
	                    <div class="review-write-count">
	                        <span>0</span>/5,000
	                    </div>
	                </div>
	                <div class="review-photo-box">
	                    <input class="review-photo-onload" type="file" name="review_files" onchange="filePreView()" multiple style="display: none;">
	                    <div class="review-photo-btn" onclick="document.all.review_files.click()"><i class="fas fa-camera"></i>사진 첨부하기</div>
	                    <div class="review-photo-list">
	                    </div>
	                    <p>상품과 무관한 사진/동영상을 첨부한 리뷰는 통보없이 삭제 및 적립 혜택이 회수됩니다.</p>
	                </div>
	            </div>
	            <div class="product-review-upload">
	                <div class="product-review-btn">
	                    <button type="button" class="review-cancel-btn">취소</button>
	                    <button type="button" class="review-upload-btn">등록</button>
	                </div>
	            </div>
	            <input type="hidden" value="${principal.user.id }" name="user_id">
	            <input type="hidden" class="product-code" value="${product.product_code }" name="product_code" >
	            <input type="hidden" value="${product.product_name }" name="product_name">
	        </form>
        </div>
    </div>
    <script src="/js/review_write.js"></script>
    <script src="https://kit.fontawesome.com/7e652321d1.js" crossorigin="anonymous"></script>
</body>

</html>