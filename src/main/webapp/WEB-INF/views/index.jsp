<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>스타벅스</title>
    <link rel="stylesheet" href="/css/index.css">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
    <div class="container">
    	<jsp:include page="./include/main_header.jsp"></jsp:include>
        <div class="main-content">
            <div class="event-banner-box">    
                <img src="coffeImg/event1.png" alt="">
                <a href=""><div class="event-banner"></div></a>
            </div>
            <div class="product-box">
                <div class="product">
                    <span class="product-text">일상 속 스타벅스 상품</span>
                    <ul class="life-product-list">
                        <a href="">
                            <img src="coffeImg/home.png">
                            <p>Home ></p>
                        </a>
                        <a href="">
                            <img src="coffeImg/onthego.png">
                            <p>On-the-Go ></p>
                        </a>
                        <a href="">
                            <img src="coffeImg/work.png">
                            <p>Work ></p>
                        </a>
                    </ul>
                </div>
            </div>
            <div class="product-box">
                <div class="product">
                    <span class="product-text">베스트 상품</span>
                    <ul class="best-product-list">
                    <c:forEach var="bestProduct" items="${bestProduct }">
                        <li class="best-product">
                    	<label class="best-num-text"></label>
                            <a href="/product/${bestProduct.product_code }" class="best-product-img"><img src="/image/products/${bestProduct.product_img }"></a>
                            <a href="/product/${bestProduct.product_code }" class="best-product-info">
                                <div class="product-price">${bestProduct.product_price }<span>원</span></div>
                                <div class="product-name"><span>${bestProduct.product_name }</span></div>
                                <div class="product-score">평점 <span>${bestProduct.total_score }</span> · 리뷰 <span>${bestProduct.total_review }</span></div>
                                <div class="brand-name">스타벅스</div>
                                <!-- <div class="sold-out"><p>SOLDOUT</p></div> -->
                            </a>
                        </li>
                    </c:forEach>
                    </ul>
                </div>
            </div>
            <div class="stabucks-like">
                <img src="coffeImg/stabucks-like.png" alt="">
            </div>
            <div class="product-box">
                <div class="all-products">
                    <div class="all-product-text">
                        <span>전체 상품</span>
                        <ul class="list-deployment">
                            <button>인기도순</button>
                            <button>낮은 가격순</button>
                            <button>최신등록순</button>
                            <button>리뷰 많은수</button>
                            <button>평점 높은순</button>
                        </ul>
                    </div>
                    <ul class="all-product-list">
                   		<c:forEach var="product" items="${productAll }">
	                        <li class="all-product">
	                            <a href="/product/${product.product_code }" class="all-product-img">
	                                <img src="/image/products/${product.product_img }">
	                            </a>
	                            <a href="/product/${product.product_code }" class="all-product-info">
	                                <div class="product-price">${product.product_price }<span>원</span></div>
	                                <div class="product-name"><span>${product.product_name }</span></div>
	                                <div class="product-score">평점 <span>${product.total_score }</span> · 리뷰 <span>${product.total_review }</span></div>
	                                <div class="brand-name">스타벅스</div>
	                                <!-- <div class="sold-out"><p>SOLDOUT</p></div> -->
	                            </a>
	                        </li>
                   		</c:forEach>
                    </ul>
                </div>
            </div>
            <div class="discount-banner">
                <div class="dicount-box">
                    <div class="discount-img">
                        <img src="coffeImg/dicount.png" alt="">
                    </div>
                    <div class="dicount-text">
                        <div>스타벅스 고객님을 위한 혜택</div>
                        <p>현금처럼 쓰는 적립금이 최대 5%, 네이버플러스 멤버십</p>
                        <a href="">자세히보기</a>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="./include/main_footer.jsp"></jsp:include>
    </div>
    <script src="/js/main_header.js"></script>
    <script src="/js/index.js"></script>
    <script src="https://kit.fontawesome.com/7e652321d1.js" crossorigin="anonymous"></script>
</body>
</html>