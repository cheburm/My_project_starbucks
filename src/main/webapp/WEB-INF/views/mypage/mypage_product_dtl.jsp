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
    <title>스타벅스 내정보</title>
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/mypage_product_dtl.css">
</head>

<body>
	<input type="hidden" class="user-id" value="${principal.user.id }">
    <input type="hidden" class="mypage-product-dtl-value" value="${mypageProductDtlType }">
    <div class="container">
        <div class="mypage-header">
            <div class="mypage-banner">
                <h1>
                    <span class="brand-name" onclick="location.href ='/index'">STARBUCKS</span>
                    <span class="mypage-msg">내정보</span>
                </h1>
            </div>
            <div class="mypage-banner-msgbox">
                <div class="mypage-banner-msg">
                    <div class="mypage-myinfo"><a href="/mypage">회원정보</a></div>
                    <div class="product-myinfo"><a href="/mypage_product">상품정보</a></div>
                </div>
            </div>
        </div>
        <div class="mypage-dtl-body">
            <div class="mypage-dtl-content">
                <div class="order-information-modify" style="display: none;">
                    <div class="mypage-dtl-banner">
                        <h2 class="mypage-dtl-guide">주문확인/주문취소</h2>
                        <p class="mypage-dtl-guide-msg">
                            페이지에서 상품을 구매한 내역을 볼수있고
                            또는 구매한 상품을 취소할 수 있습니다.
                        </p>
                    </div>
                    <div class="order-information-list">
                    	<c:forEach var="productOrder" items="${productOrderList }">
	                        <div class="order-information-box">
	                            <div class="order-product-information">
	                                <img src="/image/products/${productOrder.product_img }" alt="">
	                                <div class="order-product-info">
	                                    <p>${productOrder.product_name }</p>
	                                    <ul class="order-product-dtl-info">
	                                        <li class="order-product-price">${productOrder.product_price }원</li>
	                                        <li class="order-product-date">${productOrder.create_date }</li>
	                                    </ul>
	                                    <span class="buy-success">결제완료</span>
	                                    <span class="buy-cancel" style="display: none">결제취소</span>
	                                    <div class="buy-success-msg">
	                                        구매가 완료되었습니다. 이용해주셔서 감사합니다.
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="buy-cancel-btn">
	                                <button>주문 취소</button>
	                            </div>
	                        </div>
                    	</c:forEach>
                    </div>
                </div>
                <div class="order-information-modify" style="display: none;">
                    <div class="mypage-dtl-banner">
                        <h2 class="mypage-dtl-guide">상품 찜</h2>
                        <p class="mypage-dtl-guide-msg">
                            내가 찜한 상품의 목록을 확인할수있는 페이지로
                            이동합니다.
                        </p>
                    </div>
                    <div class="like-product-list">
                        <div class="like-product-box">
                            <img src="/coffeImg/best1.png" alt="">
                            <div class="like-product-info">
                                <div class="like-product-date">
                                    2022.01.18
                                </div>
                                <div href="" class="like-product-name">
                                    <a href="">스타벅스 머그컵</a>
                                </div>
                                <div class="like-product-price">
                                    33000<span>원</span>
                                </div>
                                <div class="like-product-brand-name">
                                    스타벅스
                                </div>
                            </div>
                            <div class="like-product-close">
                                <i class="fas fa-times"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://kit.fontawesome.com/7e652321d1.js" crossorigin="anonymous"></script>
    <script src="/js/mypage_product_dtl.js"></script>
</body>

</html>