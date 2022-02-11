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
    <title>스타벅스</title>
    <link rel="stylesheet" href="/css/product_list.css">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
    <div class="container">
    <jsp:include page="../include/main_header.jsp"></jsp:include>
        <div class="product-list-container">
            <div class="product-nav">
                <div class="product-info">
                    <span class="product-kind-name">${product.productCategoryName }</span>
                    <button class="product-kind-view" type="button">
                        <span>${product.productCategoryName }</span>(총 <span>01</span>개)
                        <i class="fas fa-sort-down"></i>
                        <ul class="product-kind-list">
                            <li>텀블러</li>
                            <li>콜드컵</li>
                            <li>보온병</li>
                            <li>워터보틀</li>
                            <li>머그컵</li>
                            <li>라이프스타일</li>
                            <li>커피용품</li>
                            <li>전체상품</li>
                            <li>추천상품</li>
                        </ul>
                    </button>
                </div>
                <div class="product-view">
                    <ul class="product-view-info">
                        <li><i class="fas fa-check"></i>인기도순</li>
                        <li>낮은가격순</li>
                        <li>최신등록순</li>
                        <li>리뷰많은순</li>
                        <li>평점높은순</li>
                    </ul>
                    <div class="product-view-info-num">
	                        <a href="../admin/admin_product_upload" class="admin-product-upload">
	                            상품등록
	                        </a>
                        <button class="free-shipping">
                            <span>무료배송</span>
                            <div class="switch-on-off">
                                <div class="switch-control"></div>
                                <p class="switch-on">on</p>
                                <p class="switch-off">off</p>
                            </div>
                        </button>
                        <button class="product-number-view" type="button">
                            <span>20</span>개씩 보기
                            <i class="fas fa-sort-down"></i>
                            <ul class="product-number-list">
                                <li>20개씩 보기</li>
                                <li>40개씩 보기</li>
                                <li>60개씩 보기</li>
                                <li>80개씩 보기</li>
                            </ul>
                        </button>
                    </div>
                </div>
            </div>
            <div class="product-list">
            <c:forEach var="product" items="${product.productList }">
                <div class="product">
                    <a href="/product/${product.product_code }" class="product-link">
                        <img src="/image/products/${product.product_img }">
                        <div class="product-name"><strong>${product.product_name }</strong></div>
                        <strong class="product-price"><span>${product.product_price }</span>원</strong>
                    </a>
                    <div class="product-score">평점 <span>5.0</span> · 리뷰 <span>655</span></div>
                </div>
            </c:forEach>
            </div>
            <div class="product-page-num">
                <a href="">1</a>
            </div>
        </div>
        <jsp:include page="../include/main_footer.jsp"></jsp:include>
    </div>
    <script src="/js/main_header.js"></script>
    <script src="/js/product_list.js"></script>
    <script src="https://kit.fontawesome.com/7e652321d1.js" crossorigin="anonymous"></script>
</body>

</html>