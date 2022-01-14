<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>스타벅스</title>
    <link rel="stylesheet" href="css/index.css">
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
                        <li class="best-product">
                            <a href="" class="best-product-img"><img src="coffeImg/best1.png"></a>
                            <a href="" class="best-product-info">
                                <div class="product-price">111,111<span>원</span></div>
                                <div class="product-name"><span>그린 사이렌 도트 머그 237ml</span></div>
                                <div class="product-score">평점 <span>5.0</span> · 리뷰 <span>655</span></div>
                                <div class="brand-name">스타벅스</div>
                                <div class="sold-out"><p>SOLDOUT</p></div>
                            </a>
                        </li>
                        <li class="best-product">
                            <a href="" class="best-product-img"><img src="coffeImg/best2.png"></a>
                            <a href="" class="best-product-info">
                                <div class="product-price">111,111<span>원</span></div>
                                <div class="product-name"><span>그린 사이렌 도트 머그 237ml</span></div>
                                <div class="product-score">평점 <span>5.0</span> · 리뷰 <span>655</span></div>
                                <div class="brand-name">스타벅스</div>
                                <div class="sold-out"><p>SOLDOUT</p></div>
                            </a>
                        </li>
                        <li class="best-product">
                            <a href="" class="best-product-img"><img src="coffeImg/best3.png"></a>
                            <a href="" class="best-product-info">
                                <div class="product-price">111,111<span>원</span></div>
                                <div class="product-name"><span>그린 사이렌 도트 머그 237ml</span></div>
                                <div class="product-score">평점 <span>5.0</span> · 리뷰 <span>655</span></div>
                                <div class="brand-name">스타벅스</div>
                                <div class="sold-out"><p>SOLDOUT</p></div>
                            </a>
                        </li>
                        <li class="best-product">
                            <a href="" class="best-product-img"><img src="coffeImg/best4.png"></a>
                            <a href="" class="best-product-info">
                                <div class="product-price">111,111<span>원</span></div>
                                <div class="product-name"><span>그린 사이렌 도트 머그 237ml</span></div>
                                <div class="product-score">평점 <span>5.0</span> · 리뷰 <span>655</span></div>
                                <div class="brand-name">스타벅스</div>
                                <div class="sold-out"><p>SOLDOUT</p></div>
                            </a>
                        </li>
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
                        <li class="all-product">
                            <a href="" class="all-product-img">
                                <img src="coffeImg/best1.png">
                            </a>
                            <a href="" class="all-product-info">
                                <div class="product-price">111,111<span>원</span></div>
                                <div class="product-name"><span>그린 사이렌 도트 머그 237ml</span></div>
                                <div class="product-score">평점 <span>5.0</span> · 리뷰 <span>655</span></div>
                                <div class="brand-name">스타벅스</div>
                                <div class="sold-out"><p>SOLDOUT</p></div>
                            </a>
                        </li>
                        <li class="all-product">
                            <a href="" class="all-product-img">
                                <img src="coffeImg/best2.png">
                            </a>
                            <a href="" class="all-product-info">
                                <div class="product-price">111,111<span>원</span></div>
                                <div class="product-name"><span>그린 사이렌 도트 머그 237ml</span></div>
                                <div class="product-score">평점 <span>5.0</span> · 리뷰 <span>655</span></div>
                                <div class="brand-name">스타벅스</div>
                                <div class="sold-out"><p>SOLDOUT</p></div>
                            </a>
                        </li>
                        <li class="all-product">
                            <a href="" class="all-product-img">
                                <img src="coffeImg/best3.png">
                            </a>
                            <a href="" class="all-product-info">
                                <div class="product-price">111,111<span>원</span></div>
                                <div class="product-name"><span>그린 사이렌 도트 머그 237ml</span></div>
                                <div class="product-score">평점 <span>5.0</span> · 리뷰 <span>655</span></div>
                                <div class="brand-name">스타벅스</div>
                                <div class="sold-out"><p>SOLDOUT</p></div>
                            </a>
                        </li>
                        <li class="all-product">
                            <a href="" class="all-product-img">
                                <img src="coffeImg/best4.png">
                            </a>
                            <a href="" class="all-product-info">
                                <div class="product-price">111,111<span>원</span></div>
                                <div class="product-name"><span>그린 사이렌 도트 머그 237ml</span></div>
                                <div class="product-score">평점 <span>5.0</span> · 리뷰 <span>655</span></div>
                                <div class="brand-name">스타벅스</div>
                                <div class="sold-out"><p>SOLDOUT</p></div>
                            </a>
                        </li>
                        <li class="all-product">
                            <a href="" class="all-product-img">
                                <img src="coffeImg/best4.png">
                            </a>
                            <a href="" class="all-product-info">
                                <div class="product-price">111,111<span>원</span></div>
                                <div class="product-name"><span>그린 사이렌 도트 머그 237ml</span></div>
                                <div class="product-score">평점 <span>5.0</span> · 리뷰 <span>655</span></div>
                                <div class="brand-name">스타벅스</div>
                                <div class="sold-out"><p>SOLDOUT</p></div>
                            </a>
                        </li>
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
    <script src="https://kit.fontawesome.com/7e652321d1.js" crossorigin="anonymous"></script>
</body>
</html>