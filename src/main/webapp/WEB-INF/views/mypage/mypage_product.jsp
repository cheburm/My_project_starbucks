<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>스타벅스 내정보</title>
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/mypage_product.css">
</head>

<body>
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
        <div class="mypage-body-list-body">
            <div class="mypage-body-list">
                <div class="name-profileimg-group info-group">
                    <h2>주문확인/주문취소</h2>
                    <div class="mypage-info">
                        <div class="mypage-content">
                            <div class="mypage-order-info">
                                <span>페이지에서 상품을 구매한 내역을 볼수있고<br>
                               		또는 구매한 상품을 취소할 수 있습니다.
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="mypage-btn-box">
                        <button class="mypage-btn" onclick="location.href='/mypage_product_dtl/order_list'">이동하기</button>
                    </div>
                </div>
                <div class="name-profileimg-group info-group">
                    <h2>상품 찜</h2>
                    <div class="mypage-info">
                        <div class="mypage-content">
                            <div class="product-basket">
                                <span>내가 찜한 상품의 목록을 확인할수있는 페이지로<br>
                                	이동합니다.
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="mypage-btn-box">
                        <button class="mypage-btn" onclick="location.href='/mypage_product_dtl/product_like'">이동하기</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="/js/mypage_product.js"></script>
</body>

</html>