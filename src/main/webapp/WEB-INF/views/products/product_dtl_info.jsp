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
    <link rel="stylesheet" href="/css/product_dtl_info.css">
</head>
<body>
    <div class="container">
    <jsp:include page="../include/main_header.jsp"></jsp:include>
        <div class="product-dtl-container">
            <div class="product-dtl-body">
                <div class="product-pay-info">
                    <div class="product-pay-info-left">
                        <img src="/image/products/${productDtl.product_img }" class="product-img">
                        <div class="product-reaction">
                            <p>리뷰수</p>
                            <strong>435</strong>
                            <p>ㆍ 사용자 총 평점</p>
                            <strong>4.9</strong>/
                            <strong>5</strong>
                        </div>
                    </div>
                    <div class="product-pay-info-right">
                        <div class="product-name-price">
                            <div class="product-name">
                                <h3>${productDtl.product_name }</h3>
                            </div>
                            <div class="product-price">
                                <span class="price">${productDtl.product_price }</span>
                                <span class="won">원</span>
                            </div>
                        </div>
                        <div class="pay-point">
                            <div class="pay-point-name">
                            <c:choose>
	                            <c:when test="${not empty principal.name}">
	                                <span>${principal.user.name }</span>
	                                <span>님만을 위한 혜택</span>
	                            </c:when>
	                            <c:otherwise>
                            		<span>스타벅스 고객을 위한 혜택</span>
	                            </c:otherwise>
                            </c:choose>
                            </div>
                            <div class="point-save">
                                <div class="max-point-save">
                                    <span>최대 적립 포인트</span>
                                    <span>340원</span>
                                </div>
                                <div class="min-point-save">
                                    <span>기본적립</span>
                                    <span>190원</span>
                                </div>
                            </div>
                            <div class="another-point-save">
                                <div class="another-point-save-info">
                                    <span>
                                        <i>TIP.</i>
                                        포인트 더 받는 방법
                                    </span>
                                    <span>
                                        +최대
                                        <strong class="another-point-save-price">
                                            300
                                        </strong>
                                        원
                                    </span>
                                </div>
                                <div class="another-point-save-dtl">
                                    <ul class="another-point-save-dtl-list">
                                        <li>
                                            <a href="">로그인구매시 5%추가 적립</a>
                                            <span>700원</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <a href="" class="signin-banner">
                            <span>5% 적립</span>
                            포기하시겠어요?
                            <div>받기</div>
                            <p>></p>
                        </a>
                        <div class="pay-info">
                            <span>무이자 할부</span>
                        </div>
                        <div class="pay-info">
                            <span>최대구매5개(1회) / 5개(1인)</span>
                        </div>
                        <div class="pay-info">
                            <div class="product-shipping">
                                <span>택배 배송</span>
                                <div></div>
                                <strong>3000</strong>
                                <span>원(주문시 결제)</span>
                            </div>
                            <div class="free-shipping-message">
                                <p>30,000원이상 구매 시 무료</p>
                            </div>
                        </div>
                        <div class="pay-info">
                            <div class="product-num">
                                <button>-</button>
                                <span>1</span>
                                <button>+</button>
                            </div>
                        </div>
                        <div class="product-price-box">
                            <span>총 상품 금액</span>
                            <div class="product-total-price">
                                <p>총 수량 1개</p>
                                <div></div>
                                <h1>${productDtl.product_price }</h1>
                                <strong>원</strong>
                            </div>
                        </div>
                        <div class="product-buy-box">
                            <a href="" class="product-buy">
                                구매하기
                            </a>
                            <div class="product-another-info">
                                <a href="" class="product-like">
                                    <i class="fas fa-heart"></i>
                                    찜하기
                                    <span>999</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="product-tag-list">
                    <button>상세정보</button>
                    <button>리뷰<span></span></button>
                    <button>반품/교환정보</button>
                </div>
                <div class="product-dtl-info">
                    <img src="coffeImg/product-info1.jpg" alt="">
                    <img src="coffeImg/product-info2.jpg" alt="">
                    <img src="coffeImg/product-info3.jpg" alt="">
                </div>
                <div class="product-comment" style="display: none;">
                    <div class="product-comment-nav">
                        <strong>리뷰 <span>200</span>건</strong>
                        <div class="comment-nav">
                            <a href="">최신순</a>
                            <a href="">평점 높은순</a>
                            <a href="">평점 낮은순</a>
                        </div>
                    </div>
                    <div class="product-comment-list">
                        <div class="product-comment-user">
                            <div class="product-user-info">
                                <div class="user-upload-date">
                                    <img src="coffeImg/onthego.png" alt="">
                                    <div class="user-date">
                                        <i class="fas fa-heart"></i><i class="fas fa-heart"></i><i class="fas fa-heart"></i><i class="fas fa-heart"></i><i class="fas fa-heart"></i>
                                        <div class="user-dtl-info">
                                            <span>coqja2013</span>ㆍ<span>2022.01.13</span>
                                        </div>
                                    </div>
                                </div>
                                <pre>
                                    sdadsadsadsadsa
                                    asdasdasdasdsa
                                    dasdsadsadadsa
                                </pre>
                            </div>
                            <img src="coffeImg/product1.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="../include/main_footer.jsp"></jsp:include>
    </div>
    <script src="https://kit.fontawesome.com/7e652321d1.js" crossorigin="anonymous"></script>
</body>
</html>